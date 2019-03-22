`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/13/2019 03:09:08 AM
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


module acc_wrapper(
    input wire clk,
    input wire rst,
    input wire filter_rst,
    input wire interrupt,
    input wire start,
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

    wire signed [15:0] x_axis_raw;
    wire signed [15:0] y_axis_raw;
    wire signed [15:0] z_axis_raw;
    
    // HACK
    assign x = x_axis_raw;
    assign y = y_axis_raw;
    assign z = z_axis_raw;
     
    
    acc_interface uacc_interface(
        .clk(clk),
        .rst(rst),
        .interrupt(interrupt),
        .start(start),
        .miso(miso),
        .mosi(mosi),
        .sclk(sclk),
        .chip_select(chip_select),
        .x_axis(x_axis_raw),
        .y_axis(y_axis_raw),
        .z_axis(z_axis_raw),
        .done_init(done_init),
        .done_read(done_read)
    );    
endmodule
