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
    input wire signed [15:0] gyro_data,
    input wire signed [15:0] acl_data,
    output wire signed [15:0] out,
    output wire axis_motion,
    output wire done
    );
    
    wire axis_pos;
    wire axis_neg;
    
    assign axis_pos = (gyro_data[15]) ? 0 : (gyro_data > 500);
    assign axis_neg = (gyro_data[15]) ? (gyro_data < -500) : 0;
    assign axis_motion = axis_pos | axis_neg;
    
    parameter [6:0] zero_rate_gyro = 7'b1010001;
    parameter [15:0] zero_rate_acl = 16'b1111111111111011;
    
    reg [4:0] en;
    wire negative;
    wire signed [9:0] factor;
    reg signed [15:0] gyro_axis_norm;
    reg signed [15:0] acl_axis_norm;
    reg signed [25:0] increment;
    reg signed [34:0] acc;
    wire signed [34:0] acc_cmp;
    wire [18:0] fraction;
    wire [16:0] num;
    wire signed [4:0] weight0;
    wire signed [4:0] weight1;
    reg signed [34:0] sum0;
    reg signed [39:0] product0;
    reg signed [20:0] product1_0;
    reg signed [20:0] product1_1;
    reg signed [20:0] product1_2;
    
    assign weight0 = 5'b01111; // 4 fraction bits
    assign weight1 = 5'b00001; // 4 fraction bits
    assign factor = 10'b0101101111; // 19 fraction bits
    
    assign negative = acc[34];
    assign acc_cmp = ~acc + 1'b1;
    assign num = (negative == 1'b1) ? acc_cmp[34:19] : acc[34:19];
    assign out = (negative == 1'b1) ? ~num + 1'b1 : num;
    
    assign done = en[4];
    
    always @(posedge clk) begin
        if (rst) begin
            en <= 0;
        end else begin
            en[0] <= ce;
            en[4:1] <= en[3:0];
        end
    end
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            gyro_axis_norm <= 0;
            increment <= 0;
            acc <= 0;
        end else begin
            if (ce == 1'b1) begin
                // stage 1
                gyro_axis_norm <= gyro_data; // Q16.0
                acl_axis_norm <= acl_data; // Q16.0
            end if (en[0]) begin
                // stage 2
                increment <= gyro_axis_norm * factor; // Q7.19
                product1_0 <= acl_axis_norm * weight1; // Q17.4
            end if (en[1]) begin
                // stage 3
                sum0 <= increment + acc; // Q16.19
                product1_1 <= product1_0; // Q17.4
            end if (en[2]) begin
                // stage 4
                product0 <= sum0 * weight0; // Q17.23
                product1_2 <= product1_1; // Q17.4
            end if (en[3]) begin
                // stage 5
                acc <= product0[38:4] + {product1_2, 15'b000000000000000}; // Q16.19
            end
        end
    end    
endmodule