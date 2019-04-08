`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/24/2019 10:01:32 PM
// Design Name: 
// Module Name: cordic_sqrt
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


module cordic_sqrt(
    input wire clk,
    input wire rst,
    input wire start,
    input wire [31:0] i_num,
    output reg [31:0] o_num,
    output reg done
    );
    
    wire [63:0] product;
    wire inc;
    reg [31:0] base;
    wire [63:0] x_shifted;
    reg [31:0] x;
    reg [31:0] y;
    reg signed [5:0] count;
    reg load;
    reg en;
    
    assign x_shifted = x << 32;
    assign product = (y + base) * (y + base);
    assign inc = (product <= x_shifted) ? 1 : 0;
    
    always @(posedge clk) begin : iteration_counter
        if (rst == 1'b1) begin
            count <= 0;
        end else if (load) begin
            count <= 0;
        end else if (en) begin
            count <= count + 1;
        end
    end
    
    always @(posedge clk) begin : cordic_block
        if (rst == 1'b1) begin
            x <= 0;
            y <= 0;
            base <= 0;
        end else if (load) begin
            x <= i_num;
            y <= 0;
            base <= 1'b1 << 31;
        end else if (en) begin
            if (inc) begin
                y <= y + base;
            end
            
            base <= base >> 1;
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
            done <= 0;
            en <= 0;
            load <= 0;
            o_num <= 0;
            STATE <= IDLE;
        end else begin
            case (STATE)
                IDLE:
                    begin
                        done <= 0;
                        en <= 0;
                        load <= 0;
                        
                        if (start == 1'b1) begin
                            load <= 1'b1;
                            STATE <= LOAD;
                        end
                    end
                    
                LOAD:
                    begin
                        load <= 1'b0;
                        en <= 1'b1;
                        STATE <= RUNNING;
                    end
                    
                RUNNING:
                    begin
                        if (count == 31) begin
                            en <= 0;
                            STATE <= DONE;
                        end
                    end
                    
                DONE:
                    begin
                        o_num <= y;
                        done <= 1'b1;
                        STATE <= IDLE;
                    end
            endcase
        end
    end
endmodule
