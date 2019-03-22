`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/10/2019 09:21:46 PM
// Design Name: 
// Module Name: board_wrapper
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


module board_wrapper(
    input wire BTNC,
    input wire CLK100MHZ,
    input wire [15:0] SW,
    output wire [7:0] AN,
    output wire [6:0] SEG,
    output wire DP,
    inout wire [5:1] JA,
    output wire [15:0] LED
    );
    
    wire [15:0] x;
    wire [15:0] y;
    wire [15:0] z;
    wire x_motion;
    wire y_motion;
    wire z_motion;
    reg [15:0] num;

    wire done_init;
    wire done_read;
    
    // assign LED[0] = done_init;
    // assign LED[1] = done_read;
    // assign LED[2] = 1;
    assign LED[15:0] =  (SW[15:13] == 3'b000) ? JA[5] :
                        (SW[15:13] == 3'b001) ? x :
                        (SW[15:13] == 3'b010) ? y :
                        (SW[15:13] == 3'b011) ? z :
                        done_init;
    
    always @(*) begin
        case(SW[2:1])
            2'b00: num = x;
            2'b01: num = y;
            2'b10: num = z;
            default: num = 0;
        endcase
    end
    
    acc_wrapper uacc_wrapper(
        .clk(CLK100MHZ),
        .rst(BTNC),
        .filter_rst(BTNC | ~SW[0]),
        .interrupt(JA[5]),
        .start(SW[0]),
        .miso(JA[3]),
        .mosi(JA[2]),
        .sclk(JA[4]),
        .chip_select(JA[1]),
        .x(x),
        .y(y),
        .z(z),
        .done_init(done_init),
        .done_read(done_read)
    );
    
    hex_display_controller #(
        .cnt_val(25000)
    ) uhex_controller(
        .rst(BTNC),
        .clk(CLK100MHZ),
        .num(num),
        .o_clk(),
        .anodes(AN),
        .cathodes(SEG),
        .dp(DP)
    );
    
endmodule
