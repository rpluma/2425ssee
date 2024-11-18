--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : teclado_hexa_completo.vhf
-- /___/   /\     Timestamp : 11/14/2024 11:39:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/teclado_hexa_completo.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/teclado_hexa_completo.sch
--Design Name: teclado_hexa_completo
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR8_HXILINX_teclado_hexa_completo -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR8_HXILINX_teclado_hexa_completo is
  
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
end OR8_HXILINX_teclado_hexa_completo;

architecture OR8_HXILINX_teclado_hexa_completo_V of OR8_HXILINX_teclado_hexa_completo is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end OR8_HXILINX_teclado_hexa_completo_V;
----- CELL FD4CE_HXILINX_teclado_hexa_completo -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_teclado_hexa_completo is
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
end FD4CE_HXILINX_teclado_hexa_completo;

architecture Behavioral of FD4CE_HXILINX_teclado_hexa_completo is

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

entity cont_anillo_ce_MUSER_teclado_hexa_completo is
   port ( ce  : in    std_logic; 
          ck  : in    std_logic; 
          ce1 : out   std_logic; 
          ce2 : out   std_logic; 
          ce3 : out   std_logic; 
          ce4 : out   std_logic);
end cont_anillo_ce_MUSER_teclado_hexa_completo;

architecture BEHAVIORAL of cont_anillo_ce_MUSER_teclado_hexa_completo is
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

entity teclado_4x4_MUSER_teclado_hexa_completo is
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
end teclado_4x4_MUSER_teclado_hexa_completo;

architecture BEHAVIORAL of teclado_4x4_MUSER_teclado_hexa_completo is
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
   component FD4CE_HXILINX_teclado_hexa_completo
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
   
   component cont_anillo_ce_MUSER_teclado_hexa_completo
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_1";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_3";
begin
   fila1 <= fila1_DUMMY;
   fila2 <= fila2_DUMMY;
   fila3 <= fila3_DUMMY;
   fila4 <= fila4_DUMMY;
   XLXI_1 : FD4CE_HXILINX_teclado_hexa_completo
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
   
   XLXI_2 : cont_anillo_ce_MUSER_teclado_hexa_completo
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
   
   XLXI_9 : FD4CE_HXILINX_teclado_hexa_completo
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
   
   XLXI_12 : FD4CE_HXILINX_teclado_hexa_completo
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
   
   XLXI_15 : FD4CE_HXILINX_teclado_hexa_completo
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity detector_MUSER_teclado_hexa_completo is
   port ( ck      : in    std_logic; 
          dato    : in    std_logic; 
          dato_ok : out   std_logic);
end detector_MUSER_teclado_hexa_completo;

architecture BEHAVIORAL of detector_MUSER_teclado_hexa_completo is
   attribute BOX_TYPE   : string ;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>ck,
                D=>dato,
                Q=>dato_ok);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity nivel_a_pulso_MUSER_teclado_hexa_completo is
   port ( ck      : in    std_logic; 
          entrada : in    std_logic; 
          salida  : out   std_logic);
end nivel_a_pulso_MUSER_teclado_hexa_completo;

architecture BEHAVIORAL of nivel_a_pulso_MUSER_teclado_hexa_completo is
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

entity codif_tecla_MUSER_teclado_hexa_completo is
   port ( ck_teclado    : in    std_logic; 
          tecla         : in    std_logic_vector (15 downto 0); 
          codigo_tecla  : out   std_logic_vector (3 downto 0); 
          tecla_pulsada : out   std_logic);
end codif_tecla_MUSER_teclado_hexa_completo;

architecture BEHAVIORAL of codif_tecla_MUSER_teclado_hexa_completo is
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
   component OR8_HXILINX_teclado_hexa_completo
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
   
   component FD4CE_HXILINX_teclado_hexa_completo
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
   
   component nivel_a_pulso_MUSER_teclado_hexa_completo
      port ( salida  : out   std_logic; 
             ck      : in    std_logic; 
             entrada : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_5";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_6";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_7";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_8";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_4";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_9";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_10";
begin
   XLXI_1 : OR8_HXILINX_teclado_hexa_completo
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(11),
                I5=>tecla(10),
                I6=>tecla(9),
                I7=>tecla(8),
                O=>tecla_codif3);
   
   XLXI_3 : OR8_HXILINX_teclado_hexa_completo
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(11),
                I3=>tecla(10),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(3),
                I7=>tecla(2),
                O=>tecla_codif1);
   
   XLXI_4 : OR8_HXILINX_teclado_hexa_completo
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(5),
                I7=>tecla(4),
                O=>tecla_codif2);
   
   XLXI_5 : OR8_HXILINX_teclado_hexa_completo
      port map (I0=>tecla(15),
                I1=>tecla(13),
                I2=>tecla(11),
                I3=>tecla(9),
                I4=>tecla(7),
                I5=>tecla(5),
                I6=>tecla(3),
                I7=>tecla(1),
                O=>tecla_codif0);
   
   XLXI_10 : FD4CE_HXILINX_teclado_hexa_completo
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
   
   XLXI_13 : OR8_HXILINX_teclado_hexa_completo
      port map (I0=>tecla(7),
                I1=>tecla(6),
                I2=>tecla(5),
                I3=>tecla(4),
                I4=>tecla(3),
                I5=>tecla(2),
                I6=>tecla(1),
                I7=>tecla(0),
                O=>XLXN_209);
   
   XLXI_14 : OR8_HXILINX_teclado_hexa_completo
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
   
   XLXI_41 : nivel_a_pulso_MUSER_teclado_hexa_completo
      port map (ck=>ck_teclado,
                entrada=>tecla_pulsada_nivel,
                salida=>ce_tecla_pulsada);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity teclado_hexa_completo is
   port ( ck_teclado    : in    std_logic; 
          col1          : in    std_logic; 
          col2          : in    std_logic; 
          col3          : in    std_logic; 
          col4          : in    std_logic; 
          codigo_tecla  : out   std_logic_vector (3 downto 0); 
          fila1         : out   std_logic; 
          fila2         : out   std_logic; 
          fila3         : out   std_logic; 
          fila4         : out   std_logic; 
          tecla         : out   std_logic_vector (15 downto 0); 
          tecla_pulsada : out   std_logic);
end teclado_hexa_completo;

architecture BEHAVIORAL of teclado_hexa_completo is
   signal col_ok1       : std_logic;
   signal col_ok2       : std_logic;
   signal col_ok3       : std_logic;
   signal col_ok4       : std_logic;
   signal tecla_DUMMY   : std_logic_vector (15 downto 0);
   component teclado_4x4_MUSER_teclado_hexa_completo
      port ( col1       : in    std_logic; 
             col2       : in    std_logic; 
             col3       : in    std_logic; 
             col4       : in    std_logic; 
             tecla      : out   std_logic_vector (15 downto 0); 
             fila4      : out   std_logic; 
             fila1      : out   std_logic; 
             fila2      : out   std_logic; 
             fila3      : out   std_logic; 
             ck_teclado : in    std_logic);
   end component;
   
   component detector_MUSER_teclado_hexa_completo
      port ( dato    : in    std_logic; 
             ck      : in    std_logic; 
             dato_ok : out   std_logic);
   end component;
   
   component codif_tecla_MUSER_teclado_hexa_completo
      port ( ck_teclado    : in    std_logic; 
             codigo_tecla  : out   std_logic_vector (3 downto 0); 
             tecla_pulsada : out   std_logic; 
             tecla         : in    std_logic_vector (15 downto 0));
   end component;
   
begin
   tecla(15 downto 0) <= tecla_DUMMY(15 downto 0);
   XLXI_1 : teclado_4x4_MUSER_teclado_hexa_completo
      port map (ck_teclado=>ck_teclado,
                col1=>col_ok1,
                col2=>col_ok2,
                col3=>col_ok3,
                col4=>col_ok4,
                fila1=>fila1,
                fila2=>fila2,
                fila3=>fila3,
                fila4=>fila4,
                tecla(15 downto 0)=>tecla_DUMMY(15 downto 0));
   
   XLXI_5 : detector_MUSER_teclado_hexa_completo
      port map (ck=>ck_teclado,
                dato=>col1,
                dato_ok=>col_ok1);
   
   XLXI_6 : detector_MUSER_teclado_hexa_completo
      port map (ck=>ck_teclado,
                dato=>col2,
                dato_ok=>col_ok2);
   
   XLXI_7 : detector_MUSER_teclado_hexa_completo
      port map (ck=>ck_teclado,
                dato=>col3,
                dato_ok=>col_ok3);
   
   XLXI_8 : detector_MUSER_teclado_hexa_completo
      port map (ck=>ck_teclado,
                dato=>col4,
                dato_ok=>col_ok4);
   
   XLXI_39 : codif_tecla_MUSER_teclado_hexa_completo
      port map (ck_teclado=>ck_teclado,
                tecla(15 downto 0)=>tecla_DUMMY(15 downto 0),
                codigo_tecla(3 downto 0)=>codigo_tecla(3 downto 0),
                tecla_pulsada=>tecla_pulsada);
   
end BEHAVIORAL;


