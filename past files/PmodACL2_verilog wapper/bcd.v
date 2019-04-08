`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 12:30:06 PM
// Design Name: 
// Module Name: bcd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: code from http://www.deathbylogic.com/2013/12/binary-to-binary-coded-decimal-bcd-converter/
// Link accessed on 3/4/2019
//////////////////////////////////////////////////////////////////////////////////


module bcd(
    input wire [15:0] num,
    output reg [3:0] D0,
    output reg [3:0] D1,
    output reg [3:0] D2,
    output reg [3:0] D3,
    output reg [3:0] D4
    );
    
    reg [35:0] shift;
    integer i;
    
    always @(num) begin
        shift[35:16] = 0;
        shift[15:0] = num;
        
        for (i = 0; i < 16; i = i + 1) begin
            if (shift[19:16] >= 5)
                shift[19:16] = shift[19:16] + 3;
            
            if (shift[23:20] >= 5)
                shift[23:20] = shift[23:20] + 3;
            
            if (shift[27:24] >= 5)
                shift[27:24] = shift[27:24] + 3;
            
            if (shift[31:28] >= 5)
                shift[31:28] = shift[31:28] + 3;
            
            if (shift[35:32] >= 5)
                shift[35:28] = shift[35:28] + 3;
                
            shift = shift << 1;
        end
        
        D4 = shift[35:32];
        D3 = shift[31:28];
        D2 = shift[27:24];
        D1 = shift[23:20];
        D0 = shift[19:16];
    end
endmodule
