`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 04:31:57 PM
// Design Name: 
// Module Name: mux_5x1
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


module mux_6x1#(
    parameter WIDTH = 4
    )(
    input wire [WIDTH-1:0] D0,
    input wire [WIDTH-1:0] D1,
    input wire [WIDTH-1:0] D2,
    input wire [WIDTH-1:0] D3,
    input wire [WIDTH-1:0] D4,
    input wire [WIDTH-1:0] D5,
    input wire [2:0] sel,
    output reg [WIDTH-1:0] out
    );
    
    always @(*) begin
        case(sel)
            3'h0: out = D0;
            3'h1: out = D1;
            3'h2: out = D2;
            3'h3: out = D3;
            3'h4: out = D4;
            3'h5: out = D5;
            default: out = 0;
        endcase
    end
endmodule
