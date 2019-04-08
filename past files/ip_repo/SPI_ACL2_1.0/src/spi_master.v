`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason Pinheiro
// 
// Create Date: 03/06/2019 05:57:13 PM
// Design Name: 
// Module Name: spi_master
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


module SPImaster(
    input wire clk,
    input wire rst,
    input wire interrupt,
    input wire start,
    input wire end_transmission,
    input wire chip_select,
    input wire [7:0] received_data,

    output reg begin_transmission,
    output reg [7:0] send_data,
    output reg done_init,
    output reg done_read,
    output reg [15:0] x_axis,
    output reg [15:0] y_axis,
    output reg [15:0] z_axis
    );
    
    reg [3:0] STATE, PREV_STATE;
    parameter [3:0]
        IDLE = 0,
        INIT = 1,
        RUN = 2,
        TRANSFER_COMMAND = 3,
        TRANSFER_ADDRESS = 4,
        TRANSFER_DATA = 5,
        TRANSFER_END = 6,
        READ_X_L = 7,
        READ_X_H = 8,
        READ_Y_L = 9,
        READ_Y_H = 10,
        READ_Z_L = 11,
        READ_Z_H = 12,
        DONE_READ = 13;

    //Commands before addr assign
    parameter [7:0]
        READ_REG = 8'h0B,
        WRITE_REG = 8'h0A,
        READ_FIFO = 8'h0D;

    // Reg Address
    parameter [7:0]
        XDATA_L = 8'h0E,        // 0x0E - 0x13 : XDATA_L - ZDATA_H. Burst Read supported
        TIME_ACT = 8'h22,
        THRESH_ACT_L = 8'h20,   // 0x20 - 0x21
        THRESH_INACT_L = 8'h23, // 0x23 - 0x24
        TIME_INACT_L = 8'h25,   // 0x25 - 0x26
        ACT_INACT_CTL = 8'h27,  // default
        INTMAP1 = 8'h2A,        // 0x01
        INTMAP2 = 8'h2B,
        FILTER_CTL = 8'h2C,     // 0101 0011 (4g 100Hz) 0x53
        POWER_CTL = 8'h2D;      // 0000 0010 0x02

    // Configuration Value
    parameter [7:0]
        V_TIME_ACT = 8'h03,
        V_THRESH_ACT = 8'h0F,
        V_THRESH_INACT = 8'h08,
        V_TIME_INACT = 8'h04,
        V_ACT_INACT_CTL = 8'h00,  
        V_FILTER_CTL = 8'h53,
        V_POWER_CTL = 8'h02;
    
    reg [47:0] axis_data;
    reg [7:0] ADDRESS;
    reg [7:0] DATA;
    
    reg [3:0] transfer_count;
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            begin_transmission <= 1'b0;
            transfer_count <= 0;
            ADDRESS <= 0;
            DATA <= 0;
            send_data <= 0;
            done_read <= 0;
            done_init <= 0;
            axis_data <= 0;
            x_axis <= 0;
            y_axis <= 0;
            z_axis <= 0;
            
            STATE <= IDLE;
        end else begin
            case (STATE)
                IDLE:
                    begin
                        begin_transmission <= 1'b0;
                        transfer_count <= 0;
                        send_data <= 8'ha0;
                        done_init <= 0;
                        
                        if (start == 1'b1) begin
                            STATE <= INIT;
                        end
                    end
                    
                INIT:
                    begin                        
                        PREV_STATE <= INIT;
                        STATE <= TRANSFER_COMMAND;
                        
                        if (transfer_count < 8) begin
                            case (transfer_count)
                                0:
                                    begin
                                        ADDRESS <= THRESH_ACT_L; // Sets activity threshold to 300 mg - Low byte
                                        DATA    <= 8'h2C;
                                    end
                                    
                                1:
                                    begin
                                        ADDRESS <= THRESH_ACT_L + 1'b1; // Sets activity threshold to 300 mg - High byte
                                        DATA    <= 8'h01;
                                    end
                                    
                                2:
                                    begin
                                        ADDRESS <= THRESH_INACT_L; // Sets inactivity threshold to 200 mg
                                        DATA    <= 8'hC8;
                                    end

                                3:
                                    begin
                                        ADDRESS <= TIME_INACT_L; //  Sets inactivity timer to 30 samples or about 5 seconds.
                                        DATA    <= 8'h1E;
                                    end

                                4:
                                    begin
                                        ADDRESS <= ACT_INACT_CTL; // Configures motion detection in loop mode and enables referenced activity and inactivity detection.
                                        DATA    <= 8'h3F;
                                    end

                                5:
                                    begin
                                        ADDRESS <= INTMAP2; // Map the AWAKE bit to INT2. 
                                        DATA    <= 8'h40;
                                    end
                                    
                                6:
                                    begin
                                        ADDRESS <= FILTER_CTL; // (4g 100Hz)
                                        DATA    <= V_FILTER_CTL;
                                    end

                                7:
                                    begin
                                        ADDRESS <= POWER_CTL; // begins the measurement in wake-up mode.
                                        DATA    <= 8'h0A;
                                    end
                                    
                            endcase
                        end else begin
                            done_init <= 1'b1;
                            STATE <= RUN;
                        end
                    end

                TRANSFER_COMMAND:
                    begin
                        begin_transmission <= 1'b1;
                        
                        if (PREV_STATE == INIT) begin
                            send_data <= WRITE_REG;
                        end else begin
                            send_data <= READ_REG;
                        end

                        if (end_transmission == 1'b1) begin
                            send_data <= ADDRESS;
                            STATE <= TRANSFER_ADDRESS;
                        end
                        
                    end


                TRANSFER_ADDRESS:
                    begin
                        send_data <= ADDRESS;
                        
                        if (end_transmission == 1'b1) begin
                            send_data <= DATA;
                            
                            if (PREV_STATE == INIT) begin
                                STATE <= TRANSFER_DATA;
                            end else begin
                                STATE <= READ_X_L;
                            end
                        end
                    end
                
                TRANSFER_DATA:
                    begin
                        send_data <= DATA;
                        
                        if (end_transmission == 1'b1) begin
                            send_data <= 8'h00;
                            STATE <= TRANSFER_END;
                            begin_transmission <= 1'b0;
                        end
                    end
                    
                TRANSFER_END:
                    begin
                        begin_transmission <= 1'b0;
                        
                        if (chip_select == 1'b1) begin
                            if (PREV_STATE == INIT) begin
                                transfer_count <= transfer_count + 1;
                            end
                            STATE <= PREV_STATE;
                        end
                    end
                    
                READ_X_L:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= READ_X_H;
                            axis_data[7:0] <= received_data;
                        end
                    end
                    
                READ_X_H:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= READ_Y_L;
                            axis_data[15:8] <= received_data;
                        end
                    end
                    
                READ_Y_L:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= READ_Y_H;
                            axis_data[23:16] <= received_data;
                        end
                    end
                    
                READ_Y_H:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= READ_Z_L;
                            axis_data[31:24] <= received_data;
                        end
                    end
                    
                READ_Z_L:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= READ_Z_H;
                            axis_data[39:32] <= received_data;
                        end
                    end
                    
                READ_Z_H:
                    begin
                        if (end_transmission == 1'b1) begin
                            STATE <= DONE_READ;
                            done_read <= 1;
                            axis_data[47:40] <= received_data;
                        end
                    end
                    
                DONE_READ:
                    begin
                        done_read <= 0;
                        begin_transmission <= 0;
                        x_axis <= axis_data[15:0];
                        y_axis <= axis_data[31:16];
                        z_axis <= axis_data[47:32];
                        STATE <= TRANSFER_END;
                    end
                    
                RUN:
                    begin
                        if (start == 1'b0) begin
                            ADDRESS <= 0;
                            DATA <= 0;
                            PREV_STATE <= IDLE;
                            STATE <= IDLE;
                            axis_data <= 0;
                            x_axis <= 0;
                            y_axis <= 0;
                            z_axis <= 0;
                        end else if (interrupt == 1'b1) begin
                            ADDRESS <= XDATA_L;
                            PREV_STATE <= RUN;
                            STATE <= TRANSFER_COMMAND;
//                         end else begin                  // Interrupt is 0 at this moment
//                             ADDRESS <= XDATA_L;
//                             PREV_STATE <= RUN;
//                             STATE <= TRANSFER_COMMAND;
                         end
                    end
            endcase
        end
    end
        
endmodule
