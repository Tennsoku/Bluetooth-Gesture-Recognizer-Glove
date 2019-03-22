`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 12:16:41 PM
// Design Name: 
// Module Name: segment_decoder
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


module segment_decoder(
    input wire [3:0] digit,
    input wire dp_in,
    input wire negative,
    output wire [6:0] segments,
    output wire dp_out
    );
    
    reg [6:0] hex_out;
    assign dp_out = dp_in;
    
    always @(*) begin
        if (negative == 1'b1) begin
            hex_out = 7'b1111110;
        end else begin
            case (digit)
                // DP, CA, CB, CC, CD, CE, CF, CG
                4'b0000 :   hex_out = 7'b0000001;
                4'b0001 :   hex_out = 7'b1001111;
                4'b0010 :   hex_out = 7'b0010010;
                4'b0011 :   hex_out = 7'b0000110;
                4'b0100 :   hex_out = 7'b1001100;
                4'b0101 :   hex_out = 7'b0100100;
                4'b0110 :   hex_out = 7'b0100000;
                4'b0111 :   hex_out = 7'b0001111;
                4'b1000 :   hex_out = 7'b0000000;
                4'b1001 :   hex_out = 7'b0000100;
                4'b1010 :   hex_out = 7'b0001000;
                4'b1011 :   hex_out = 7'b1100000;
                4'b1100 :   hex_out = 7'b0110001;
                4'b1101 :   hex_out = 7'b1000010;
                4'b1110 :   hex_out = 7'b0110000;
                4'b1111 :   hex_out = 7'b0111000;
            endcase
        end
    end
        
    assign segments = hex_out;
endmodule
