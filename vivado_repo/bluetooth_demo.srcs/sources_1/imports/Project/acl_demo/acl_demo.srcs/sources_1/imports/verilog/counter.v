`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 04:40:19 PM
// Design Name: 
// Module Name: counter
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


module counter #(
    parameter WIDTH = 3,
    parameter cnt_val = 6
    )(
    input wire clk,
    input wire rst,
    output reg [WIDTH-1:0] count
    );
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            count <= 0;
        end else begin
            if (count == cnt_val - 1) begin
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
