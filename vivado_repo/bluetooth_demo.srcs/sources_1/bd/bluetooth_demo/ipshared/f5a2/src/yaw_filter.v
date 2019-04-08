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


module yaw_filter(
    input wire clk,
    input wire rst,
    input wire ce,
    input wire signed [15:0] axis_data,
    output wire signed [15:0] out,
    output wire axis_motion,
    output wire done
    );
    
    wire axis_pos;
    wire axis_neg;
    assign axis_pos = (axis_data[15]) ? 0 : (axis_data > 500);
    assign axis_neg = (axis_data[15]) ? (axis_data < -500) : 0;
    assign axis_motion = axis_pos | axis_neg;
    
    parameter [6:0] zero_rate = 7'b1010001;
    
    reg [2:0] en;
    wire negative;
    wire signed [9:0] factor;
    wire [47:0] acc_cmp;
    reg signed [15:0] axis_normalized;
    reg signed [25:0] increment;
    reg signed [47:0] acc;
    wire [16:0] num;
    
    assign factor = 10'b0101101111;
    
    assign negative = acc[47];
    assign num = (negative == 1'b1) ? acc_cmp[34:19] : acc[34:19];
    assign acc_cmp = ~acc + 1'b1;
    assign out = (negative == 1'b1) ? ~num + 1'b1 : num;
    assign done = en[2];
    
    always @(posedge clk) begin
        if (rst) begin
            en <= 0;
        end else begin
            en[0] <= ce;
            en[2:1] <= en[1:0];
        end
    end
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            axis_normalized <= 0;
            increment <= 0;
            acc <= 0;
        end else begin
            if (ce == 1'b1) begin
                axis_normalized <= axis_data; // Q16.0
            end if (en[0]) begin
                increment <= axis_normalized * factor; // Q7.19
            end if (en[1]) begin
                acc <= acc + increment; // Q29.19
            end
        end
    end
endmodule