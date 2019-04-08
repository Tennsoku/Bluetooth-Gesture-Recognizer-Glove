// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Mar 27 23:54:36 2019
// Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jason/Documents/University/Year_4/ECE532/Project/bluetooth_demo/bluetooth_demo.srcs/sources_1/bd/bluetooth_demo/ip/bluetooth_demo_sensor_fusion_axi_0_0/bluetooth_demo_sensor_fusion_axi_0_0_stub.v
// Design      : bluetooth_demo_sensor_fusion_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sensor_fusion_axi_v1_0,Vivado 2018.1" *)
module bluetooth_demo_sensor_fusion_axi_0_0(clk, rst, JA, JB, JC, pitch, roll, yaw, x_raw_gyro, 
  y_raw_gyro, z_raw_gyro, x_raw_acl, y_raw_acl, z_raw_acl, x_motion, y_motion, z_motion, 
  s_axi_intr_awaddr, s_axi_intr_awprot, s_axi_intr_awvalid, s_axi_intr_awready, 
  s_axi_intr_wdata, s_axi_intr_wstrb, s_axi_intr_wvalid, s_axi_intr_wready, 
  s_axi_intr_bresp, s_axi_intr_bvalid, s_axi_intr_bready, s_axi_intr_araddr, 
  s_axi_intr_arprot, s_axi_intr_arvalid, s_axi_intr_arready, s_axi_intr_rdata, 
  s_axi_intr_rresp, s_axi_intr_rvalid, s_axi_intr_rready, s_axi_intr_aclk, 
  s_axi_intr_aresetn, irq, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, 
  s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,JA[5:1],JB[5:1],JC[5:1],pitch[15:0],roll[15:0],yaw[15:0],x_raw_gyro[15:0],y_raw_gyro[15:0],z_raw_gyro[15:0],x_raw_acl[15:0],y_raw_acl[15:0],z_raw_acl[15:0],x_motion,y_motion,z_motion,s_axi_intr_awaddr[4:0],s_axi_intr_awprot[2:0],s_axi_intr_awvalid,s_axi_intr_awready,s_axi_intr_wdata[31:0],s_axi_intr_wstrb[3:0],s_axi_intr_wvalid,s_axi_intr_wready,s_axi_intr_bresp[1:0],s_axi_intr_bvalid,s_axi_intr_bready,s_axi_intr_araddr[4:0],s_axi_intr_arprot[2:0],s_axi_intr_arvalid,s_axi_intr_arready,s_axi_intr_rdata[31:0],s_axi_intr_rresp[1:0],s_axi_intr_rvalid,s_axi_intr_rready,s_axi_intr_aclk,s_axi_intr_aresetn,irq,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input clk;
  input rst;
  inout [5:1]JA;
  inout [5:1]JB;
  inout [5:1]JC;
  output [15:0]pitch;
  output [15:0]roll;
  output [15:0]yaw;
  output [15:0]x_raw_gyro;
  output [15:0]y_raw_gyro;
  output [15:0]z_raw_gyro;
  output [15:0]x_raw_acl;
  output [15:0]y_raw_acl;
  output [15:0]z_raw_acl;
  output x_motion;
  output y_motion;
  output z_motion;
  input [4:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_awprot;
  input s_axi_intr_awvalid;
  output s_axi_intr_awready;
  input [31:0]s_axi_intr_wdata;
  input [3:0]s_axi_intr_wstrb;
  input s_axi_intr_wvalid;
  output s_axi_intr_wready;
  output [1:0]s_axi_intr_bresp;
  output s_axi_intr_bvalid;
  input s_axi_intr_bready;
  input [4:0]s_axi_intr_araddr;
  input [2:0]s_axi_intr_arprot;
  input s_axi_intr_arvalid;
  output s_axi_intr_arready;
  output [31:0]s_axi_intr_rdata;
  output [1:0]s_axi_intr_rresp;
  output s_axi_intr_rvalid;
  input s_axi_intr_rready;
  input s_axi_intr_aclk;
  input s_axi_intr_aresetn;
  output irq;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
