`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/25/2019 03:42:07 AM
// Design Name: 
// Module Name: complementary_filter
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


module complementary_filter(
    input wire clk,
    input wire rst,
    input wire ce,
    input wire signed [15:0] pitch_gyro,
    input wire signed [15:0] pitch_acl,
    input wire signed [15:0] roll_gyro,
    input wire signed [15:0] roll_acl,
    input wire signed [15:0] yaw_gyro,
    input wire signed [15:0] yaw_acl,
    output wire signed [15:0] pitch,
    output wire signed [15:0] roll,
    output wire signed [15:0] yaw,
    output wire x_motion,
    output wire y_motion,
    output wire z_motion,
    output wire done
    );
    
    parameter [7:0] gyro_x = 7'b1111001;
    parameter [7:0] gyro_y = 7'b0000111;
    parameter [7:0] gyro_z = 7'b1110011;
    
    parameter [15:0] acl_x = 16'b1111111111111011;
    parameter [15:0] acl_y = 16'b1111111111000110;
    parameter [15:0] acl_z = 16'b1111111101100100;
    
    wire done_x;
    wire done_y;
    wire done_z;
    
    reg done_latch_x;
    reg done_latch_y;
    reg done_latch_z;
    assign done = done_latch_x & done_latch_y & done_latch_z;
    
    always @(posedge clk) begin
        if (rst || done) begin
            done_latch_x <= 0;
            done_latch_y <= 0;
            done_latch_z <= 0;
        end else begin
            if (done_x)
                done_latch_x <= 1;
            if (done_y)
                done_latch_y <= 1;
            if (done_z)
                done_latch_z <= 1;
        end
    end
    
    axis_data_filter #(
        .zero_rate_gyro(gyro_x),
        .zero_rate_acl(acl_x)
    ) pitch_filter(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .gyro_data(pitch_gyro),
        .acl_data(pitch_acl),
        .out(pitch),
        .axis_motion(x_motion),
        .done(done_x)
    );
    
    axis_data_filter #(
        .zero_rate_gyro(gyro_y),
        .zero_rate_acl(acl_y)
    ) roll_filter(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .gyro_data(roll_gyro),
        .acl_data(roll_acl),
        .out(roll),
        .axis_motion(y_motion),
        .done(done_y)
    );
    
    yaw_filter #(
        .zero_rate(gyro_z)
    ) uyaw_filter(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .axis_data(yaw_gyro),
        .out(yaw),
        .axis_motion(z_motion),
        .done(done_z)
    );
endmodule
