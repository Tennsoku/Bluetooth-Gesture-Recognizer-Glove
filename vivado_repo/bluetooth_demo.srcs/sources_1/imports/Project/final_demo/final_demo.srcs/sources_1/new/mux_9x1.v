`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2019 11:50:53 AM
// Design Name: 
// Module Name: mux_9x1
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


module mux_9x1(
    input wire signed [15:0] d0,
    input wire signed [15:0] d1,
    input wire signed [15:0] d2,
    input wire signed [15:0] d3,
    input wire signed [15:0] d4,
    input wire signed [15:0] d5,
    input wire signed [15:0] d6,
    input wire signed [15:0] d7,
    input wire signed [15:0] d8,
    input wire [3:0] sel,
    output reg signed [15:0] num
    );
    
    always @(*) begin
        case(sel)
            4'b0000: num = d0;
            4'b0001: num = d1;
            4'b0010: num = d2;
            4'b0100: num = d3;
            4'b0101: num = d4;
            4'b0110: num = d5;
            4'b1000: num = d6;
            4'b1001: num = d7;
            4'b1010: num = d8;
            default: num = 0;
        endcase
    end
endmodule
