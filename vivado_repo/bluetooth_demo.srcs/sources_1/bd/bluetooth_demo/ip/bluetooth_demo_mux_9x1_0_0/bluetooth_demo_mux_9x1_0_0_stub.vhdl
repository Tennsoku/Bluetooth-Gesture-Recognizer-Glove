-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Mar 27 23:55:41 2019
-- Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jason/Documents/University/Year_4/ECE532/Project/bluetooth_demo/bluetooth_demo.srcs/sources_1/bd/bluetooth_demo/ip/bluetooth_demo_mux_9x1_0_0/bluetooth_demo_mux_9x1_0_0_stub.vhdl
-- Design      : bluetooth_demo_mux_9x1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bluetooth_demo_mux_9x1_0_0 is
  Port ( 
    d0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    num : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end bluetooth_demo_mux_9x1_0_0;

architecture stub of bluetooth_demo_mux_9x1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d0[15:0],d1[15:0],d2[15:0],d3[15:0],d4[15:0],d5[15:0],d6[15:0],d7[15:0],d8[15:0],sel[3:0],num[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux_9x1,Vivado 2018.1";
begin
end;
