`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/25/2019 05:21:11 AM
// Design Name: 
// Module Name: sensor_fusion
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sensor_fusion(
    input wire clk,
    input wire rst,
    input wire start,
    input wire interrupt_gyro0,
    input wire miso_gyro0,
    output wire mosi_gyro0,
    output wire sclk_gyro0,
    output wire chip_select_gyro0,
    input wire interrupt_gyro1,
    input wire miso_gyro1,
    output wire mosi_gyro1,
    output wire sclk_gyro1,
    output wire chip_select_gyro1,
    input wire interrupt_acl,
    input wire miso_acl,
    output wire mosi_acl,
    output wire sclk_acl,
    output wire chip_select_acl,
    output wire signed [15:0] pitch,
    output wire signed [15:0] roll,
    output wire signed [15:0] yaw,
    output wire signed [15:0] finger_angle,
    output wire x_motion,
    output wire y_motion,
    output wire z_motion,
    output wire signed [15:0] x_raw_gyro,
    output wire signed [15:0] y_raw_gyro,
    output wire signed [15:0] z_raw_gyro,
    output wire signed [15:0] x_raw_acl,
    output wire signed [15:0] y_raw_acl,
    output wire signed [15:0] z_raw_acl,
    output wire done,
    output wire done_init
    );
    
    wire signed [15:0] finger_angle_raw;
    
    wire signed [15:0] acl_x;
    wire signed [15:0] acl_y;
    
    wire done_init_gyro0;
    wire done_gyro0;
    wire done_init_gyro1;
    wire done_gyro1;
    wire done_init_acl;
    wire done_acl;
    
    wire start_filter;
    reg done_gyro_latch;
    reg done_acl_latch;
    assign start_filter = done_gyro_latch & done_acl_latch;
    
    always @(posedge clk) begin
        if (rst == 1'b1 || start_filter == 1'b1) begin
            done_gyro_latch <= 0;
            done_acl_latch <= 0;
        end else begin
            if (done_gyro0)
                done_gyro_latch <= 1;
            if (done_acl)
                done_acl_latch <= 1;
        end
    end
    
    reg done_init_gyro0_latch;
    reg done_init_gyro1_latch;
    reg done_init_acl_latch;
    assign done_init = done_init_gyro0_latch & done_init_gyro1_latch & done_init_acl_latch;
    
    always @(posedge clk) begin
        if (rst == 1'b1 || done_init == 1'b1) begin
            done_init_gyro0_latch <= 0;
            done_init_gyro1_latch <= 0;
            done_init_acl_latch <= 0;
        end else begin
            if (done_init_gyro0)
                done_init_gyro0_latch <= 1;
            if (done_init_gyro1)
                done_init_gyro1_latch <= 1;
            if (done_init_acl)
                done_init_acl_latch <= 1;
        end
    end
    
    gyro_wrapper ugyro_wrapper0(
        .clk(clk),
        .rst(rst),
        .start(start),
        .interrupt(interrupt_gyro0),
        .miso(miso_gyro0),
        .mosi(mosi_gyro0),
        .sclk(sclk_gyro0),
        .chip_select(chip_select_gyro0),
        .x(x_raw_gyro),
        .y(y_raw_gyro),
        .z(z_raw_gyro),
        .done_init(done_init_gyro0),
        .done_read(done_gyro0)
    );
    
    gyro_wrapper ugyro_wrapper1(
        .clk(clk),
        .rst(rst),
        .start(start),
        .interrupt(interrupt_gyro1),
        .miso(miso_gyro1),
        .mosi(mosi_gyro1),
        .sclk(sclk_gyro1),
        .chip_select(chip_select_gyro1),
        .x(finger_angle_raw),
        .y(),
        .z(),
        .done_init(done_init_gyro1),
        .done_read(done_gyro1)
    );
    
    yaw_filter finger_angle_integrator(
        .clk(clk),
        .rst(rst),
        .ce(done_gyro1),
        .axis_data(finger_angle_raw),
        .out(finger_angle),
        .axis_motion(),
        .done()
    );
    
    acl_wrapper uacl_wrapper(
        .clk(clk),
        .rst(rst),
        .interrupt(interrupt_acl),
        .start(start),
        .miso(miso_acl),
        .mosi(mosi_acl),
        .sclk(sclk_acl),
        .chip_select(chip_select_acl),
        .done(done_acl),
        .done_init(done_init_acl),
        .x(x_raw_acl),
        .y(y_raw_acl),
        .z(z_raw_acl),
        .pitch(acl_x),
        .roll(acl_y)
    );
    
    complementary_filter ucomplementary_filter(
        .clk(clk),
        .rst(rst),
        .ce(start_filter),
        .pitch_gyro(x_raw_gyro),
        .pitch_acl(acl_x),
        .roll_gyro(y_raw_gyro),
        .roll_acl(acl_y),
        .yaw_gyro(z_raw_gyro),
        .yaw_acl(z_raw_gyro),
        .pitch(pitch),
        .roll(roll),
        .yaw(yaw),
        .x_motion(x_motion),
        .y_motion(y_motion),
        .z_motion(z_motion),
        .done(done)
    );
endmodule
