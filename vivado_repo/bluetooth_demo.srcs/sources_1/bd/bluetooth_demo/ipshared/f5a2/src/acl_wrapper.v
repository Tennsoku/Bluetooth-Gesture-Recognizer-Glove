`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/25/2019 01:08:38 AM
// Design Name: 
// Module Name: acl_wrapper
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


module acl_wrapper(
    input wire clk,
    input wire rst,
    input wire start,
    input wire interrupt,
    input wire miso,
    output wire mosi,
    output wire sclk,
    output wire chip_select,
    output wire done,
    output wire done_init,
    output wire signed [15:0] x,
    output wire signed [15:0] y,
    output wire signed [15:0] z,
    output wire signed [15:0] pitch,
    output wire signed [15:0] roll
    );
    
    wire done_read;
    wire done_sqrt0;
    wire done_sqrt1;
    wire done_atan0;
    wire done_atan1;
    wire signed [31:0] x_sq;
    wire signed [31:0] y_sq;
    wire signed [31:0] z_sq;
    wire signed [32:0] yz;
    wire signed [32:0] xz;
    wire signed [31:0] d0;
    wire signed [31:0] d1;
    wire signed [15:0] x_raw;
    wire signed [15:0] y_raw;
    wire signed [15:0] z_raw;
    wire signed [15:0] x_norm;
    wire signed [15:0] y_norm;
    wire signed [15:0] z_norm;
    
    parameter [15:0] x_zero_rate = 16'b1111111111111011;
    parameter [15:0] y_zero_rate = 16'b1111111111000110;
    parameter [15:0] z_zero_rate = 16'b1111111101100100;
    
    assign x_sq = x_norm * x_norm;
    assign y_sq = y_norm * y_norm;
    assign z_sq = z_norm * z_norm;
    
    assign yz = y_sq + z_sq;
    assign xz = x_sq + z_sq;
    
    assign x_norm = x_raw + x_zero_rate;
    assign y_norm = y_raw + y_zero_rate;
    assign z_norm = z_raw + z_zero_rate;
    
    assign x = x_norm;
    assign y = y_norm;
    assign z = z_norm;
    
    reg start_atan0;
    reg start_atan1;
    wire start_atan = start_atan0 & start_atan1;
    
    always @(posedge clk) begin
        if (rst == 1'b1 || start_atan == 1'b1) begin
            start_atan0 <= 0;
            start_atan1 <= 0;
        end else begin
            if (done_sqrt0)
                start_atan0 <= 1;
            if (done_sqrt1)
                start_atan1 <= 1;
        end
    end
    
    reg done_atan0_latch;
    reg done_atan1_latch;
    assign done = done_atan0_latch & done_atan1_latch;
    always @(posedge clk) begin
        if (rst == 1'b1 || done == 1'b1) begin
            done_atan0_latch <= 0;
            done_atan1_latch <= 0;
        end else begin
            if (done_atan0)
                done_atan0_latch <= 1;
            if (done_atan1)
                done_atan1_latch <= 1;
        end
    end
    
    acl_interface uacl_interface(
        .clk(clk),
        .rst(rst),
        .interrupt(interrupt),
        .start(start),
        .miso(miso),
        .mosi(mosi),
        .sclk(sclk),
        .chip_select(chip_select),
        .x_axis(x_raw),
        .y_axis(y_raw),
        .z_axis(z_raw),
        .done_init(done_init),
        .done_read(done_read)
    );
    
    cordic_sqrt sqrt0(
        .clk(clk),
        .rst(rst),
        .start(done_read),
        .i_num(yz[31:0]),
        .o_num(d0),
        .done(done_sqrt0)
    );
    
    cordic_sqrt sqrt1(
        .clk(clk),
        .rst(rst),
        .start(done_read),
        .i_num(xz[31:0]),
        .o_num(d1),
        .done(done_sqrt1)
    );
    
    
    wire signed [31:0] d0_norm;
    wire signed [31:0] d1_norm;
    
    assign d0_norm = (z_norm[15]) ? ~d0 + 1'b1 : d0;
    assign d1_norm = (z_norm[15]) ? ~d1 + 1'b1 : d1;
    
    cordic_atan atan0(
        .clk(clk),
        .rst(rst),
        .start(start_atan),
        .x_val(d0_norm),
        .y_val({x_raw, 16'd0}),
        .angle(pitch),
        .done(done_atan0),
        .busy()
    );
    
    cordic_atan atan1(
        .clk(clk),
        .rst(rst),
        .start(start_atan),
        .x_val(d1_norm),
        .y_val({y_raw, 16'd0}),
        .angle(roll),
        .done(done_atan1),
        .busy()
    );
endmodule
