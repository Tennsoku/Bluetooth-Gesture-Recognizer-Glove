`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/23/2019 11:44:39 PM
// Design Name: 
// Module Name: cordic_atan
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
// based on description of algorithm found at http://bsvi.ru/uploads/CORDIC--_10EBA/cordic.pdf
//////////////////////////////////////////////////////////////////////////////////


module cordic_atan(
    input wire clk,
    input wire rst,
    input wire start,
    input wire signed [31:0] x_val,
    input wire signed [31:0] y_val,
    output reg signed [15:0] angle,
    output reg done,
    output wire busy
    );
    
    parameter [3:0] stages = 15;
    parameter [4:0] max = 31;
    
    reg load;
    reg en;
    reg [31:0] tan_values[15:0];
    reg signed [31:0] x;
    reg signed [31:0] y;
    reg signed [31:0] angle_acc;
    wire signed [31:0] angle_cmp;
    reg [3:0] resolution;
    wire sign;
    reg sign_prev;
    wire signed [31:0] inc_value;
    wire inc;
    reg [4:0] iterations;
    
    assign sign = y < 0;
    assign busy = en;
    assign inc_value = (sign) ? -tan_values[resolution] : tan_values[resolution];
    assign inc = sign ^ sign_prev;
    assign angle_cmp = ~angle_acc + 1'b1;
    
    initial begin
        $readmemh("tan_values.mem", tan_values);
    end
    
    always @(posedge clk) begin : sign_latching
        if (rst == 1'b1) begin
            sign_prev <= 0;
        end else begin
            sign_prev <= sign;
        end
    end
    
    always @(posedge clk) begin : iteration_counter
        if (rst == 1'b1) begin
            resolution <= 0;
            iterations <= 0;
        end else begin
            if (en == 1'b1) begin
                if (inc) begin
                    resolution <= resolution + 1;
                end else begin
                    resolution <= resolution;
                end
                
                iterations <= iterations + 1;
            end else begin
                resolution <= 0;
                iterations <= 0;
            end
        end
    end
    
    always @(posedge clk) begin : cordic_block
        if (rst == 1'b1) begin
            x <= 0;
            y <= 0;
            angle_acc <= 0;
        end else begin
            if (load == 1'b1) begin
                x <= x_val;
                y <= y_val;
                angle_acc <= 0;
            end else if (en == 1'b1) begin
                if (y == 0) begin
                    x <= x;
                    y <= y;
                    angle_acc <= angle_acc;
                end else begin
                    if (sign == 1'b0) begin
                        x <= x + (y >>> resolution);
                        y <= y - (x >>> resolution);
                        angle_acc <= angle_acc + tan_values[resolution];
                    end else begin
                        x <= x - (y >>> resolution);
                        y <= y + (x >>> resolution);
                        angle_acc <= angle_acc - tan_values[resolution];
                    end
                end
            end
        end
    end
    
    
    reg [1:0] STATE;
    parameter [1:0]
        IDLE = 0,
        LOAD = 1,
        RUNNING = 2,
        DONE = 3;
        
        
    always @(posedge clk) begin : state_machine
        if (rst == 1'b1) begin
            en <= 0;
            done <= 0;
            load <= 0;
            angle <= 0;
            STATE <= IDLE;
        end else begin
            case (STATE)
                IDLE:
                    begin
                        en <= 1'b0;
                        done <= 1'b0;
                        load <= 1'b0;
                        
                        if (start == 1'b1) begin
                            load <= 1'b1;
                            STATE <= LOAD;
                        end
                    end
                LOAD:
                    begin
                        en <= 1'b1;
                        load <= 1'b0;
                        STATE <= RUNNING;
                    end
                    
                RUNNING:
                    begin
                        if ((resolution == stages) || (y == 0) || (iterations == max)) begin
                            en <= 1'b0;
                            STATE <= DONE;
                        end
                    end
                    
                DONE:
                    begin
                        angle <= angle_acc[31] ? ~angle_cmp[31:16] + 1'b1 : angle_acc[31:16];
                        done <= 1'b1;
                        STATE <= IDLE;
                    end
            endcase
        end
    end
endmodule
