// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Mar 27 23:56:08 2019
// Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluetooth_demo_hex_display_controll_0_1_stub.v
// Design      : bluetooth_demo_hex_display_controll_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hex_display_controller,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, clk, num, anodes, cathodes, dp)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,num[15:0],anodes[7:0],cathodes[6:0],dp" */;
  input rst;
  input clk;
  input [15:0]num;
  output [7:0]anodes;
  output [6:0]cathodes;
  output dp;
endmodule
