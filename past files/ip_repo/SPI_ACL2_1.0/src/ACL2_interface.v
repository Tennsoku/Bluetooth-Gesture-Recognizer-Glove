`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/07/2019 03:22:33 AM
// Design Name: 
// Module Name: gyro_interface
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


module acc_interface(
    input wire clk,
    input wire rst,
    input wire interrupt,
    input wire start,
    input wire miso,
    output wire mosi,
    output wire sclk,
    output wire chip_select,
    output wire [15:0] x_axis,
    output wire [15:0] y_axis,
    output wire [15:0] z_axis,
    output wire done_init,
    output wire done_read
    );
    
    
    wire end_transmission;
    wire [7:0] send_data;
    wire [7:0] received_data;
    wire begin_transmission;
    
    SPImaster C0(
        .clk(clk),
        .rst(rst),
        .interrupt(interrupt),
        .start(start),
        .end_transmission(end_transmission),
        .chip_select(chip_select),
        .received_data(received_data),
        
        .begin_transmission(begin_transmission),
        .send_data(send_data),
        .done_init(done_init),
        .done_read(done_read),
        .x_axis(x_axis),
        .y_axis(y_axis),
        .z_axis(z_axis)
    );

    SPIinterface C1(
        .send_data(send_data), 
        .begin_transmission(begin_transmission),
        .miso(miso),
        .clk(clk),
        .rst(rst),

        .recieved_data(received_data),
        .end_transmission(end_transmission),
        .mosi(mosi),
        .sclk(sclk),
        .chip_select(chip_select)
    );
endmodule
