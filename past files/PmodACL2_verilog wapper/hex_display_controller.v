`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/04/2019 01:01:03 PM
// Design Name: 
// Module Name: hex_display_controller
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


module hex_display_controller #(
    parameter cnt_val = 45000
    )(
    input wire rst,
    input wire clk,
    input wire [15:0] num,
    output wire o_clk,
    output wire [7:0] anodes,
    output wire [6:0] cathodes,
    output wire dp
    );
    
    wire display_clk;
    wire [2:0] sel;
    wire negative;
    wire [15:0] converted_num;
    wire [3:0] D0, D1, D2, D3, D4, D5;
    wire [3:0] out_mux_d;
    wire out_mux_negative;
    reg [5:0] sel_decode;
    
    assign anodes = {{2{1'b1}}, ~sel_decode};
    assign negative = num[15];
    assign converted_num = (negative) ? (~num + 1) : num;
    assign o_clk = display_clk;
    
    always @(sel) begin: anode_decode
        case(sel)
            3'h0: sel_decode = 6'b000001;
            3'h1: sel_decode = 6'b000010;
            3'h2: sel_decode = 6'b000100;
            3'h3: sel_decode = 6'b001000;
            3'h4: sel_decode = 6'b010000;
            3'h5: sel_decode = 6'b100000;
            default: sel_decode = 0;
        endcase
    end
    
    clk_divider #(
        .cnt_val(cnt_val)
    ) uclk_divider(
        .in_clk(clk),
        .out_clk(display_clk),
        .reset(rst)
    );
    
    bcd ubcd(
        .num(converted_num),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4)
    );
    
    segment_decoder useg_decoder(
        .digit(out_mux_d),
        .dp_in(1'b1),
        .negative(out_mux_negative),
        .segments(cathodes),
        .dp_out(dp)
    );
    
    mux_6x1 #(
        .WIDTH(4)
    ) umux_digit(
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .D5(4'h0),
        .sel(sel),
        .out(out_mux_d)
    );
    
    mux_6x1 #(
        .WIDTH(1)
    ) umux_negative(
        .D0(1'b0),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(negative),
        .sel(sel),
        .out(out_mux_negative)
    );
    
    counter #(
        .WIDTH(3),
        .cnt_val(6)
    ) ucounter(
        .clk(display_clk),
        .rst(~rst),
        .count(sel)
    );
endmodule
