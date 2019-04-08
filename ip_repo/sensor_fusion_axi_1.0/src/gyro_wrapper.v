`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/25/2019 05:22:00 AM
// Design Name: 
// Module Name: gyro_wrapper
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


module gyro_wrapper(
    input wire clk,
    input wire rst,
    input wire start,
    input wire interrupt,
    input wire miso,
    output wire mosi,
    output wire sclk,
    output wire chip_select,
    output wire signed [15:0] x,
    output wire signed [15:0] y,
    output wire signed [15:0] z,
    output wire done_init,
    output wire done_read
    );
    
    wire signed [15:0] x_raw;
    wire signed [15:0] y_raw;
    wire signed [15:0] z_raw;
    
    parameter [6:0] x_zero_rate = 7'b1111001; // -7
    parameter [6:0] y_zero_rate = 7'b0000111; // 7
    parameter [6:0] z_zero_rate = 7'b1110011; //-28
    
    assign x = x_raw + {{9{x_zero_rate[6]}} ,x_zero_rate};
    assign y = y_raw + {{9{y_zero_rate[6]}} ,y_zero_rate};
    assign z = z_raw + {{9{z_zero_rate[6]}} ,z_zero_rate};
    
    gyro_interface ugyro_interface(
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
endmodule
