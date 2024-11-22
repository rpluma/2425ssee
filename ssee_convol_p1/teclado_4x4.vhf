--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : teclado_4x4.vhf
-- /___/   /\     Timestamp : 11/19/2024 13:15:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/siselec/Downloads/practica1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/siselec/Downloads/practica1/teclado_4x4.vhf -w C:/Users/siselec/Downloads/practica1/teclado_4x4.sch
--Design Name: teclado_4x4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD4CE_HXILINX_teclado_4x4 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_teclado_4x4 is
port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );
end FD4CE_HXILINX_teclado_4x4;

architecture Behavioral of FD4CE_HXILINX_teclado_4x4 is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q3 <= '0';
    Q2 <= '0';
    Q1 <= '0';
    Q0 <= '0';
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cont_anillo_ce_MUSER_teclado_4x4 is
   port ( ce  : in    std_logic; 
          ck  : in    std_logic; 
          ce1 : out   std_logic; 
          ce2 : out   std_logic; 
          ce3 : out   std_logic; 
          ce4 : out   std_logic);
end cont_anillo_ce_MUSER_teclado_4x4;

architecture BEHAVIORAL of cont_anillo_ce_MUSER_teclado_4x4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_14   : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_17   : std_logic;
   signal ce1_DUMMY : std_logic;
   signal ce2_DUMMY : std_logic;
   signal ce3_DUMMY : std_logic;
   signal ce4_DUMMY : std_logic;
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDSE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             S  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDSE : component is "BLACK_BOX";
   
begin
   ce1 <= ce1_DUMMY;
   ce2 <= ce2_DUMMY;
   ce3 <= ce3_DUMMY;
   ce4 <= ce4_DUMMY;
   XLXI_1 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_14,
                D=>ce1_DUMMY,
                Q=>ce2_DUMMY);
   
   XLXI_2 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_15,
                D=>ce2_DUMMY,
                Q=>ce3_DUMMY);
   
   XLXI_3 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_16,
                D=>ce3_DUMMY,
                Q=>ce4_DUMMY);
   
   XLXI_8 : GND
      port map (G=>XLXN_14);
   
   XLXI_9 : GND
      port map (G=>XLXN_15);
   
   XLXI_10 : GND
      port map (G=>XLXN_16);
   
   XLXI_11 : GND
      port map (G=>XLXN_17);
   
   XLXI_12 : FDSE
      port map (C=>ck,
                CE=>ce,
                D=>ce4_DUMMY,
                S=>XLXN_17,
                Q=>ce1_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity teclado_4x4 is
   port ( ck_teclado : in    std_logic; 
          col1       : in    std_logic; 
          col2       : in    std_logic; 
          col3       : in    std_logic; 
          col4       : in    std_logic; 
          fila1      : out   std_logic; 
          fila2      : out   std_logic; 
          fila3      : out   std_logic; 
          fila4      : out   std_logic; 
          tecla      : out   std_logic_vector (15 downto 0));
end teclado_4x4;

architecture BEHAVIORAL of teclado_4x4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ce_cuenta   : std_logic;
   signal cuenta      : std_logic_vector (2 downto 0);
   signal XLXN_13     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_45     : std_logic;
   signal XLXN_51     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_67     : std_logic;
   signal XLXN_77     : std_logic;
   signal XLXN_83     : std_logic;
   signal fila1_DUMMY : std_logic;
   signal fila2_DUMMY : std_logic;
   signal fila3_DUMMY : std_logic;
   signal fila4_DUMMY : std_logic;
   component FD4CE_HXILINX_teclado_4x4
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component cont_anillo_ce_MUSER_teclado_4x4
      port ( ck  : in    std_logic; 
             ce  : in    std_logic; 
             ce4 : out   std_logic; 
             ce3 : out   std_logic; 
             ce2 : out   std_logic; 
             ce1 : out   std_logic);
   end component;
   
   component cont_3b
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (2 downto 0));
   end component;
   
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_11";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_12";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_13";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_14";
begin
   fila1 <= fila1_DUMMY;
   fila2 <= fila2_DUMMY;
   fila3 <= fila3_DUMMY;
   fila4 <= fila4_DUMMY;
   XLXI_1 : FD4CE_HXILINX_teclado_4x4
      port map (C=>ck_teclado,
                CE=>XLXN_13,
                CLR=>XLXN_19,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(1),
                Q1=>tecla(2),
                Q2=>tecla(3),
                Q3=>tecla(15));
   
   XLXI_2 : cont_anillo_ce_MUSER_teclado_4x4
      port map (ce=>ce_cuenta,
                ck=>ck_teclado,
                ce1=>fila1_DUMMY,
                ce2=>fila2_DUMMY,
                ce3=>fila3_DUMMY,
                ce4=>fila4_DUMMY);
   
   XLXI_3 : cont_3b
      port map (clk=>ck_teclado,
                q(2 downto 0)=>cuenta(2 downto 0));
   
   XLXI_4 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila1_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_13);
   
   XLXI_5 : GND
      port map (G=>XLXN_19);
   
   XLXI_9 : FD4CE_HXILINX_teclado_4x4
      port map (C=>ck_teclado,
                CE=>XLXN_45,
                CLR=>XLXN_51,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(7),
                Q1=>tecla(8),
                Q2=>tecla(9),
                Q3=>tecla(13));
   
   XLXI_10 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila1_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila3_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_45);
   
   XLXI_11 : GND
      port map (G=>XLXN_51);
   
   XLXI_12 : FD4CE_HXILINX_teclado_4x4
      port map (C=>ck_teclado,
                CE=>XLXN_61,
                CLR=>XLXN_67,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(4),
                Q1=>tecla(5),
                Q2=>tecla(6),
                Q3=>tecla(14));
   
   XLXI_13 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila1_DUMMY,
                I3=>fila2_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_61);
   
   XLXI_14 : GND
      port map (G=>XLXN_67);
   
   XLXI_15 : FD4CE_HXILINX_teclado_4x4
      port map (C=>ck_teclado,
                CE=>XLXN_77,
                CLR=>XLXN_83,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(10),
                Q1=>tecla(0),
                Q2=>tecla(11),
                Q3=>tecla(12));
   
   XLXI_16 : AND5B3
      port map (I0=>fila1_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila4_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_77);
   
   XLXI_17 : GND
      port map (G=>XLXN_83);
   
   XLXI_18 : AND3
      port map (I0=>cuenta(2),
                I1=>cuenta(1),
                I2=>cuenta(0),
                O=>ce_cuenta);
   
end BEHAVIORAL;


