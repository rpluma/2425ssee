--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : codif_tecla.vhf
-- /___/   /\     Timestamp : 11/14/2024 11:39:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/codif_tecla.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/codif_tecla.sch
--Design Name: codif_tecla
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR8_HXILINX_codif_tecla -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR8_HXILINX_codif_tecla is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic
  );
end OR8_HXILINX_codif_tecla;

architecture OR8_HXILINX_codif_tecla_V of OR8_HXILINX_codif_tecla is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end OR8_HXILINX_codif_tecla_V;
----- CELL FD4CE_HXILINX_codif_tecla -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_codif_tecla is
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
end FD4CE_HXILINX_codif_tecla;

architecture Behavioral of FD4CE_HXILINX_codif_tecla is

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

entity nivel_a_pulso_MUSER_codif_tecla is
   port ( ck      : in    std_logic; 
          entrada : in    std_logic; 
          salida  : out   std_logic);
end nivel_a_pulso_MUSER_codif_tecla;

architecture BEHAVIORAL of nivel_a_pulso_MUSER_codif_tecla is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>ck,
                D=>entrada,
                Q=>XLXN_1);
   
   XLXI_2 : AND2B1
      port map (I0=>XLXN_1,
                I1=>entrada,
                O=>salida);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity codif_tecla is
   port ( ck_teclado    : in    std_logic; 
          tecla         : in    std_logic_vector (15 downto 0); 
          codigo_tecla  : out   std_logic_vector (3 downto 0); 
          tecla_pulsada : out   std_logic);
end codif_tecla;

architecture BEHAVIORAL of codif_tecla is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ce_tecla_pulsada    : std_logic;
   signal tecla_codif0        : std_logic;
   signal tecla_codif1        : std_logic;
   signal tecla_codif2        : std_logic;
   signal tecla_codif3        : std_logic;
   signal tecla_pulsada_nivel : std_logic;
   signal XLXN_141            : std_logic;
   signal XLXN_209            : std_logic;
   signal XLXN_210            : std_logic;
   component OR8_HXILINX_codif_tecla
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FD4CE_HXILINX_codif_tecla
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component nivel_a_pulso_MUSER_codif_tecla
      port ( salida  : out   std_logic; 
             ck      : in    std_logic; 
             entrada : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_13";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_14";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_15";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_11";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_16";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_17";
begin
   XLXI_1 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(11),
                I5=>tecla(10),
                I6=>tecla(9),
                I7=>tecla(8),
                O=>tecla_codif3);
   
   XLXI_3 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(11),
                I3=>tecla(10),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(3),
                I7=>tecla(2),
                O=>tecla_codif1);
   
   XLXI_4 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(5),
                I7=>tecla(4),
                O=>tecla_codif2);
   
   XLXI_5 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(15),
                I1=>tecla(13),
                I2=>tecla(11),
                I3=>tecla(9),
                I4=>tecla(7),
                I5=>tecla(5),
                I6=>tecla(3),
                I7=>tecla(1),
                O=>tecla_codif0);
   
   XLXI_10 : FD4CE_HXILINX_codif_tecla
      port map (C=>ck_teclado,
                CE=>ce_tecla_pulsada,
                CLR=>XLXN_141,
                D0=>tecla_codif0,
                D1=>tecla_codif1,
                D2=>tecla_codif2,
                D3=>tecla_codif3,
                Q0=>codigo_tecla(0),
                Q1=>codigo_tecla(1),
                Q2=>codigo_tecla(2),
                Q3=>codigo_tecla(3));
   
   XLXI_11 : GND
      port map (G=>XLXN_141);
   
   XLXI_12 : FD
      port map (C=>ck_teclado,
                D=>ce_tecla_pulsada,
                Q=>tecla_pulsada);
   
   XLXI_13 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(7),
                I1=>tecla(6),
                I2=>tecla(5),
                I3=>tecla(4),
                I4=>tecla(3),
                I5=>tecla(2),
                I6=>tecla(1),
                I7=>tecla(0),
                O=>XLXN_209);
   
   XLXI_14 : OR8_HXILINX_codif_tecla
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(11),
                I5=>tecla(10),
                I6=>tecla(9),
                I7=>tecla(8),
                O=>XLXN_210);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_210,
                I1=>XLXN_209,
                O=>tecla_pulsada_nivel);
   
   XLXI_41 : nivel_a_pulso_MUSER_codif_tecla
      port map (ck=>ck_teclado,
                entrada=>tecla_pulsada_nivel,
                salida=>ce_tecla_pulsada);
   
end BEHAVIORAL;


