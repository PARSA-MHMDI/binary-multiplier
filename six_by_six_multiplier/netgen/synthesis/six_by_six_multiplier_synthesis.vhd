--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: six_by_six_multiplier_synthesis.vhd
-- /___/   /\     Timestamp: Sat Mar 04 23:38:23 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm six_by_six_multiplier -w -dir netgen/synthesis -ofmt vhdl -sim six_by_six_multiplier.ngc six_by_six_multiplier_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: six_by_six_multiplier.ngc
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL1\six_by_six_multiplier\netgen\synthesis\six_by_six_multiplier_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: six_by_six_multiplier
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity six_by_six_multiplier is
  port (
    A : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
    P : out STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end six_by_six_multiplier;

architecture Structure of six_by_six_multiplier is
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_1 : STD_LOGIC; 
  signal A_3_IBUF_2 : STD_LOGIC; 
  signal A_4_IBUF_3 : STD_LOGIC; 
  signal A_5_IBUF_4 : STD_LOGIC; 
  signal A_0_IBUF_5 : STD_LOGIC; 
  signal B_0_IBUF_6 : STD_LOGIC; 
  signal B_1_IBUF_7 : STD_LOGIC; 
  signal B_2_IBUF_8 : STD_LOGIC; 
  signal B_3_IBUF_9 : STD_LOGIC; 
  signal B_4_IBUF_10 : STD_LOGIC; 
  signal B_5_IBUF_11 : STD_LOGIC; 
  signal P_0_OBUF_18 : STD_LOGIC; 
  signal P_1_OBUF_24 : STD_LOGIC; 
  signal Cout1 : STD_LOGIC; 
  signal P_2_OBUF_30 : STD_LOGIC; 
  signal P_3_OBUF_35 : STD_LOGIC; 
  signal Cout3 : STD_LOGIC; 
  signal P_4_OBUF_41 : STD_LOGIC; 
  signal Cout4 : STD_LOGIC; 
  signal P_10_OBUF_43 : STD_LOGIC; 
  signal P_9_OBUF_44 : STD_LOGIC; 
  signal P_8_OBUF_45 : STD_LOGIC; 
  signal P_7_OBUF_46 : STD_LOGIC; 
  signal P_6_OBUF_47 : STD_LOGIC; 
  signal P_5_OBUF_48 : STD_LOGIC; 
  signal P_11_OBUF_49 : STD_LOGIC; 
  signal binary_adder5_carr_4_Q : STD_LOGIC; 
  signal binary_adder5_carr_2_Q : STD_LOGIC; 
  signal binary_adder4_carr_5_Q : STD_LOGIC; 
  signal binary_adder4_carr_3_Q : STD_LOGIC; 
  signal binary_adder4_carr_1_Q : STD_LOGIC; 
  signal binary_adder3_carr_5_Q : STD_LOGIC; 
  signal binary_adder3_carr_3_Q : STD_LOGIC; 
  signal binary_adder3_carr_1_Q : STD_LOGIC; 
  signal binary_adder2_carr_5_Q : STD_LOGIC; 
  signal binary_adder2_carr_3_Q : STD_LOGIC; 
  signal binary_adder1_carr_4_Q : STD_LOGIC; 
  signal binary_adder1_carr_2_Q : STD_LOGIC; 
  signal Y2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Y4 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Y5 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal S1 : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal S2 : STD_LOGIC_VECTOR ( 5 downto 2 ); 
  signal S3 : STD_LOGIC_VECTOR ( 5 downto 2 ); 
  signal S4 : STD_LOGIC_VECTOR ( 5 downto 2 ); 
begin
  Y2_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_2_IBUF_8,
      O => Y2(1)
    );
  Y4_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_4_IBUF_10,
      O => Y4(1)
    );
  Y5_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_5_IBUF_11,
      O => Y5(1)
    );
  Y2_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => B_2_IBUF_8,
      O => Y2(2)
    );
  Y2_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_2_IBUF_8,
      O => Y2(0)
    );
  Y5_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_5_IBUF_11,
      O => Y5(0)
    );
  P_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => B_0_IBUF_6,
      I1 => A_0_IBUF_5,
      O => P_0_OBUF_18
    );
  binary_adder1_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"7888"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_1_IBUF_7,
      I2 => A_1_IBUF_0,
      I3 => B_0_IBUF_6,
      O => P_1_OBUF_24
    );
  binary_adder5_fa2_carrout1 : LUT6
    generic map(
      INIT => X"E88E8EE888888888"
    )
    port map (
      I0 => S4(2),
      I1 => Y5(1),
      I2 => binary_adder4_carr_1_Q,
      I3 => S3(2),
      I4 => Y4(1),
      I5 => Y5(0),
      O => binary_adder5_carr_2_Q
    );
  binary_adder5_fa2_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"9666669666969666"
    )
    port map (
      I0 => S4(2),
      I1 => Y5(1),
      I2 => Y5(0),
      I3 => binary_adder4_carr_1_Q,
      I4 => S3(2),
      I5 => Y4(1),
      O => P_6_OBUF_47
    );
  binary_adder2_fa3_carrout1 : LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
    port map (
      I0 => S1(3),
      I1 => Y2(2),
      I2 => S1(2),
      I3 => Y2(1),
      I4 => S1(1),
      I5 => Y2(0),
      O => binary_adder2_carr_3_Q
    );
  binary_adder2_fa3_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"9996966696669666"
    )
    port map (
      I0 => S1(3),
      I1 => Y2(2),
      I2 => S1(2),
      I3 => Y2(1),
      I4 => S1(1),
      I5 => Y2(0),
      O => S2(2)
    );
  binary_adder3_fa1_ha1_c1 : LUT6
    generic map(
      INIT => X"8008088008800880"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_3_IBUF_9,
      I2 => S1(2),
      I3 => Y2(1),
      I4 => S1(1),
      I5 => Y2(0),
      O => binary_adder3_carr_1_Q
    );
  binary_adder1_fa2_carrout1 : LUT5
    generic map(
      INIT => X"80808000"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_0_IBUF_6,
      I2 => B_1_IBUF_7,
      I3 => A_0_IBUF_5,
      I4 => A_2_IBUF_1,
      O => binary_adder1_carr_2_Q
    );
  binary_adder1_fa2_ha2_Mxor_s_xo_0_1 : LUT5
    generic map(
      INIT => X"F7088888"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_1_IBUF_7,
      I2 => A_0_IBUF_5,
      I3 => A_2_IBUF_1,
      I4 => B_0_IBUF_6,
      O => S1(1)
    );
  binary_adder1_fa5_ha2_Mxor_s_xo_0_1 : LUT5
    generic map(
      INIT => X"87777888"
    )
    port map (
      I0 => A_4_IBUF_3,
      I1 => B_1_IBUF_7,
      I2 => A_5_IBUF_4,
      I3 => B_0_IBUF_6,
      I4 => binary_adder1_carr_4_Q,
      O => S1(4)
    );
  binary_adder1_fa6_ha2_c1 : LUT5
    generic map(
      INIT => X"88808000"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => B_1_IBUF_7,
      I2 => B_0_IBUF_6,
      I3 => binary_adder1_carr_4_Q,
      I4 => A_4_IBUF_3,
      O => Cout1
    );
  binary_adder1_fa6_ha2_Mxor_s_xo_0_1 : LUT5
    generic map(
      INIT => X"64280888"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => B_1_IBUF_7,
      I2 => B_0_IBUF_6,
      I3 => A_4_IBUF_3,
      I4 => binary_adder1_carr_4_Q,
      O => S1(5)
    );
  binary_adder2_fa4_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => B_2_IBUF_8,
      I2 => binary_adder2_carr_3_Q,
      I3 => S1(4),
      O => S2(3)
    );
  binary_adder2_fa5_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_2_IBUF_8,
      I1 => A_4_IBUF_3,
      I2 => S1(4),
      I3 => A_3_IBUF_2,
      I4 => binary_adder2_carr_3_Q,
      I5 => S1(5),
      O => binary_adder2_carr_5_Q
    );
  binary_adder2_fa5_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S1(5),
      I1 => A_4_IBUF_3,
      I2 => B_2_IBUF_8,
      I3 => S1(4),
      I4 => binary_adder2_carr_3_Q,
      I5 => A_3_IBUF_2,
      O => S2(4)
    );
  binary_adder2_fa6_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => B_2_IBUF_8,
      I2 => binary_adder2_carr_5_Q,
      I3 => Cout1,
      O => S2(5)
    );
  binary_adder4_fa1_ha1_c1 : LUT6
    generic map(
      INIT => X"8008088008800880"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_4_IBUF_10,
      I2 => binary_adder3_carr_1_Q,
      I3 => S2(2),
      I4 => A_1_IBUF_0,
      I5 => B_3_IBUF_9,
      O => binary_adder4_carr_1_Q
    );
  binary_adder4_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7887878787787878"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_4_IBUF_10,
      I2 => binary_adder3_carr_1_Q,
      I3 => A_1_IBUF_0,
      I4 => B_3_IBUF_9,
      I5 => S2(2),
      O => P_4_OBUF_41
    );
  binary_adder3_fa3_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_3_IBUF_9,
      I1 => A_2_IBUF_1,
      I2 => S2(2),
      I3 => A_1_IBUF_0,
      I4 => binary_adder3_carr_1_Q,
      I5 => S2(3),
      O => binary_adder3_carr_3_Q
    );
  binary_adder3_fa3_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S2(3),
      I1 => A_2_IBUF_1,
      I2 => B_3_IBUF_9,
      I3 => S2(2),
      I4 => binary_adder3_carr_1_Q,
      I5 => A_1_IBUF_0,
      O => S3(2)
    );
  binary_adder3_fa4_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => B_3_IBUF_9,
      I2 => binary_adder3_carr_3_Q,
      I3 => S2(4),
      O => S3(3)
    );
  binary_adder3_fa5_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_3_IBUF_9,
      I1 => A_4_IBUF_3,
      I2 => S2(4),
      I3 => A_3_IBUF_2,
      I4 => binary_adder3_carr_3_Q,
      I5 => S2(5),
      O => binary_adder3_carr_5_Q
    );
  binary_adder3_fa5_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S2(5),
      I1 => A_4_IBUF_3,
      I2 => B_3_IBUF_9,
      I3 => S2(4),
      I4 => binary_adder3_carr_3_Q,
      I5 => A_3_IBUF_2,
      O => S3(4)
    );
  binary_adder3_fa6_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => B_3_IBUF_9,
      I2 => Cout1,
      I3 => B_2_IBUF_8,
      I4 => binary_adder2_carr_5_Q,
      I5 => binary_adder3_carr_5_Q,
      O => Cout3
    );
  binary_adder3_fa6_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => binary_adder3_carr_5_Q,
      I1 => B_3_IBUF_9,
      I2 => A_5_IBUF_4,
      I3 => Cout1,
      I4 => binary_adder2_carr_5_Q,
      I5 => B_2_IBUF_8,
      O => S3(5)
    );
  binary_adder4_fa4_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => B_4_IBUF_10,
      I2 => binary_adder4_carr_3_Q,
      I3 => S3(4),
      O => S4(3)
    );
  binary_adder4_fa5_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_4_IBUF_10,
      I1 => A_4_IBUF_3,
      I2 => S3(4),
      I3 => A_3_IBUF_2,
      I4 => binary_adder4_carr_3_Q,
      I5 => S3(5),
      O => binary_adder4_carr_5_Q
    );
  binary_adder4_fa5_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S3(5),
      I1 => A_4_IBUF_3,
      I2 => B_4_IBUF_10,
      I3 => S3(4),
      I4 => binary_adder4_carr_3_Q,
      I5 => A_3_IBUF_2,
      O => S4(4)
    );
  binary_adder4_fa6_carrout1 : LUT4
    generic map(
      INIT => X"E888"
    )
    port map (
      I0 => binary_adder4_carr_5_Q,
      I1 => Cout3,
      I2 => A_5_IBUF_4,
      I3 => B_4_IBUF_10,
      O => Cout4
    );
  binary_adder4_fa6_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => B_4_IBUF_10,
      I2 => binary_adder4_carr_5_Q,
      I3 => Cout3,
      O => S4(5)
    );
  binary_adder5_fa3_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => B_5_IBUF_11,
      I2 => binary_adder5_carr_2_Q,
      I3 => S4(3),
      O => P_7_OBUF_46
    );
  binary_adder5_fa4_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_5_IBUF_11,
      I1 => A_3_IBUF_2,
      I2 => S4(3),
      I3 => A_2_IBUF_1,
      I4 => binary_adder5_carr_2_Q,
      I5 => S4(4),
      O => binary_adder5_carr_4_Q
    );
  binary_adder5_fa4_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S4(4),
      I1 => A_3_IBUF_2,
      I2 => B_5_IBUF_11,
      I3 => S4(3),
      I4 => binary_adder5_carr_2_Q,
      I5 => A_2_IBUF_1,
      O => P_8_OBUF_45
    );
  binary_adder5_fa5_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_4_IBUF_3,
      I1 => B_5_IBUF_11,
      I2 => binary_adder5_carr_4_Q,
      I3 => S4(5),
      O => P_9_OBUF_44
    );
  binary_adder5_fa6_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_5_IBUF_11,
      I1 => A_5_IBUF_4,
      I2 => S4(5),
      I3 => A_4_IBUF_3,
      I4 => binary_adder5_carr_4_Q,
      I5 => Cout4,
      O => P_11_OBUF_49
    );
  binary_adder5_fa6_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => Cout4,
      I1 => A_5_IBUF_4,
      I2 => B_5_IBUF_11,
      I3 => S4(5),
      I4 => binary_adder5_carr_4_Q,
      I5 => A_4_IBUF_3,
      O => P_10_OBUF_43
    );
  A_5_IBUF : IBUF
    port map (
      I => A(5),
      O => A_5_IBUF_4
    );
  A_4_IBUF : IBUF
    port map (
      I => A(4),
      O => A_4_IBUF_3
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_2
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_1
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_0
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_5
    );
  B_5_IBUF : IBUF
    port map (
      I => B(5),
      O => B_5_IBUF_11
    );
  B_4_IBUF : IBUF
    port map (
      I => B(4),
      O => B_4_IBUF_10
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_9
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_8
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_7
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_6
    );
  P_11_OBUF : OBUF
    port map (
      I => P_11_OBUF_49,
      O => P(11)
    );
  P_10_OBUF : OBUF
    port map (
      I => P_10_OBUF_43,
      O => P(10)
    );
  P_9_OBUF : OBUF
    port map (
      I => P_9_OBUF_44,
      O => P(9)
    );
  P_8_OBUF : OBUF
    port map (
      I => P_8_OBUF_45,
      O => P(8)
    );
  P_7_OBUF : OBUF
    port map (
      I => P_7_OBUF_46,
      O => P(7)
    );
  P_6_OBUF : OBUF
    port map (
      I => P_6_OBUF_47,
      O => P(6)
    );
  P_5_OBUF : OBUF
    port map (
      I => P_5_OBUF_48,
      O => P(5)
    );
  P_4_OBUF : OBUF
    port map (
      I => P_4_OBUF_41,
      O => P(4)
    );
  P_3_OBUF : OBUF
    port map (
      I => P_3_OBUF_35,
      O => P(3)
    );
  P_2_OBUF : OBUF
    port map (
      I => P_2_OBUF_30,
      O => P(2)
    );
  P_1_OBUF : OBUF
    port map (
      I => P_1_OBUF_24,
      O => P(1)
    );
  P_0_OBUF : OBUF
    port map (
      I => P_0_OBUF_18,
      O => P(0)
    );
  binary_adder1_fa4_carrout1 : LUT6
    generic map(
      INIT => X"E8808880A0808000"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => B_1_IBUF_7,
      I2 => B_0_IBUF_6,
      I3 => binary_adder1_carr_2_Q,
      I4 => A_4_IBUF_3,
      I5 => A_2_IBUF_1,
      O => binary_adder1_carr_4_Q
    );
  binary_adder1_fa4_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"87D82888D8782888"
    )
    port map (
      I0 => B_0_IBUF_6,
      I1 => A_4_IBUF_3,
      I2 => A_3_IBUF_2,
      I3 => binary_adder1_carr_2_Q,
      I4 => B_1_IBUF_7,
      I5 => A_2_IBUF_1,
      O => S1(3)
    );
  binary_adder4_fa3_carrout1 : LUT6
    generic map(
      INIT => X"FAF8A88888808000"
    )
    port map (
      I0 => B_4_IBUF_10,
      I1 => A_2_IBUF_1,
      I2 => S3(2),
      I3 => A_1_IBUF_0,
      I4 => binary_adder4_carr_1_Q,
      I5 => S3(3),
      O => binary_adder4_carr_3_Q
    );
  binary_adder4_fa3_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"959A9A6A956A6A6A"
    )
    port map (
      I0 => S3(3),
      I1 => A_2_IBUF_1,
      I2 => B_4_IBUF_10,
      I3 => S3(2),
      I4 => binary_adder4_carr_1_Q,
      I5 => A_1_IBUF_0,
      O => S4(2)
    );
  binary_adder1_fa3_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"B4B8787888888888"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => B_0_IBUF_6,
      I2 => A_2_IBUF_1,
      I3 => A_0_IBUF_5,
      I4 => A_1_IBUF_0,
      I5 => B_1_IBUF_7,
      O => S1(2)
    );
  binary_adder3_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"669696665A5AAAAA"
    )
    port map (
      I0 => S1(2),
      I1 => A_1_IBUF_0,
      I2 => A_0_IBUF_5,
      I3 => S1(1),
      I4 => B_3_IBUF_9,
      I5 => B_2_IBUF_8,
      O => P_3_OBUF_35
    );
  binary_adder2_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"07F87878F7088888"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => B_1_IBUF_7,
      I2 => A_0_IBUF_5,
      I3 => A_2_IBUF_1,
      I4 => B_0_IBUF_6,
      I5 => B_2_IBUF_8,
      O => P_2_OBUF_30
    );
  binary_adder5_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7887878787787878"
    )
    port map (
      I0 => A_0_IBUF_5,
      I1 => B_5_IBUF_11,
      I2 => S3(2),
      I3 => A_1_IBUF_0,
      I4 => B_4_IBUF_10,
      I5 => binary_adder4_carr_1_Q,
      O => P_5_OBUF_48
    );

end Structure;

