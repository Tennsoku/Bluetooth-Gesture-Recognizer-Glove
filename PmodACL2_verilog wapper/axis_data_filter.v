`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/10/2019 06:27:26 PM
// Design Name: 
// Module Name: axis_data_filter
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


module axis_data_filter(
    input wire clk,
    input wire rst,
    input wire ce,
    input wire signed [15:0] axis_data,
    output wire signed [15:0] out,
    output wire signed [15:0] out_avg,
    output wire axis_motion
    );
    
    wire axis_pos;
    wire axis_neg;
    
    assign axis_pos = (axis_data[15]) ? 0 : (axis_data > 500);
    assign axis_neg = (axis_data[15]) ? (axis_data < -500) : 0;
    assign axis_motion = axis_pos | axis_neg;
    
    parameter mem_length = 4;
    parameter [6:0] zero_rate = 7'b1010001;
    
    wire [15:0] filter_data_out;
    wire [15:0] filter_data_2cmp;
    wire [16:0] temp;
    wire filter_enable;
    wire [15:0] axis_normalized_cmp;
    wire [24:0] product_cmp;
    wire negative;
    
    wire signed [9:0] factor;
    wire [47:0] acc_cmp;
    reg signed [15:0] axis_normalized;
    reg signed [25:0] increment;
    reg signed [47:0] acc;
    wire [18:0] fraction;
    wire [16:0] num;
    
    assign factor = 10'b0101101111;
    
//    assign out = filter_data_out;
    assign negative = acc[47];
    assign fraction = (negative == 1'b1) ? acc_cmp[18:0] : acc[18:0];
    assign num = (negative == 1'b1) ? acc_cmp[34:19] : acc[34:19];
    assign acc_cmp = ~acc + 1'b1;
    
    assign out = (negative == 1'b1) ? ~num + 1'b1 : num;
    assign out_avg = filter_data_out;
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            axis_normalized <= 0;
            increment <= 0;
            acc <= 0;
        end else begin
            if (ce == 1'b1) begin
                axis_normalized <= axis_data + {{9{zero_rate[6]}}, zero_rate};
                increment <= axis_normalized * factor;
                acc <= acc + increment;
            end
        end
    end
    
    boxcar #(
        .IW(16),
        .OW(16),
        .LGMEM(mem_length)
    ) ufilter(
        .i_clk(clk),
        .i_reset(rst),
        .i_navg(1'b1 << mem_length),
        .i_ce(ce),
        .i_sample(axis_data),
        .o_result(filter_data_out)
    );
    
    
endmodule
