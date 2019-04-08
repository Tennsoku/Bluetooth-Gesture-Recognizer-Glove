// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Mar 27 23:55:41 2019
// Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jason/Documents/University/Year_4/ECE532/Project/bluetooth_demo/bluetooth_demo.srcs/sources_1/bd/bluetooth_demo/ip/bluetooth_demo_mux_9x1_0_0/bluetooth_demo_mux_9x1_0_0_stub.v
// Design      : bluetooth_demo_mux_9x1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux_9x1,Vivado 2018.1" *)
module bluetooth_demo_mux_9x1_0_0(d0, d1, d2, d3, d4, d5, d6, d7, d8, sel, num)
/* synthesis syn_black_box black_box_pad_pin="d0[15:0],d1[15:0],d2[15:0],d3[15:0],d4[15:0],d5[15:0],d6[15:0],d7[15:0],d8[15:0],sel[3:0],num[15:0]" */;
  input [15:0]d0;
  input [15:0]d1;
  input [15:0]d2;
  input [15:0]d3;
  input [15:0]d4;
  input [15:0]d5;
  input [15:0]d6;
  input [15:0]d7;
  input [15:0]d8;
  input [3:0]sel;
  output [15:0]num;
endmodule
