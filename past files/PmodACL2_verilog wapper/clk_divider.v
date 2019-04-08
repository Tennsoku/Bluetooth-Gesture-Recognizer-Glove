`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 02:04:36 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider #(
    parameter cnt_val = 10
    )(
    input wire in_clk,
    input wire reset,
    output wire out_clk
    );
    
    reg [15:0] counter;
    
    always @(posedge in_clk) begin
        if (reset == 1'b1) begin
            counter <= 0;
        end else begin
            if (counter == cnt_val - 1) begin
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end
    
    assign out_clk = (counter >= cnt_val/2);
endmodule
