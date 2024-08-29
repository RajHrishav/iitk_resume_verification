-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Mar 17 15:40:23 2023
-- Host        : DESKTOP-O5B1OJN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {f:/IIT/2nd Sem/Design For
--               Sec/Incomplete_multipliers/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.vhdl}
-- Design      : xbip_dsp48_macro_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xbip_dsp48_macro_0 is
  Port ( 
    CLK : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end xbip_dsp48_macro_0;

architecture stub of xbip_dsp48_macro_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SEL[1:0],A[24:0],B[17:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_2,Vivado 2022.2";
begin
end;
