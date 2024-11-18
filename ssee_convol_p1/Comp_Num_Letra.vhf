--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Comp_Num_Letra.vhf
-- /___/   /\     Timestamp : 10/31/2024 21:24:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Comp_Num_Letra.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Comp_Num_Letra.sch
--Design Name: Comp_Num_Letra
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM4_HXILINX_Comp_Num_Letra -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_Comp_Num_Letra is
  
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMPM4_HXILINX_Comp_Num_Letra;

architecture COMPM4_HXILINX_Comp_Num_Letra_V of COMPM4_HXILINX_Comp_Num_Letra is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_Comp_Num_Letra_V;
----- CELL FD4RE_HXILINX_Comp_Num_Letra -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4RE_HXILINX_Comp_Num_Letra is
  port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC;
    R   : in STD_LOGIC
    );
end FD4RE_HXILINX_Comp_Num_Letra;

architecture Behavioral of FD4RE_HXILINX_Comp_Num_Letra is

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      Q3 <= '0';
      Q2 <= '0';
      Q1 <= '0';
      Q0 <= '0';
    elsif (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;

----- CELL COMP4_HXILINX_Comp_Num_Letra -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_Comp_Num_Letra is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_Comp_Num_Letra;

architecture COMP4_HXILINX_Comp_Num_Letra_V of COMP4_HXILINX_Comp_Num_Letra is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_Comp_Num_Letra_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Comp_Num_Letra is
   port ( ck            : in    std_logic; 
          cod_tecla     : in    std_logic_vector (3 downto 0); 
          entZ_sal      : in    std_logic; 
          tecla_pulsada : in    std_logic; 
          carga_cifra   : out   std_logic; 
          cifra         : out   std_logic_vector (3 downto 0); 
          letra_a       : out   std_logic; 
          letra_c       : out   std_logic);
end Comp_Num_Letra;

architecture BEHAVIORAL of Comp_Num_Letra is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal cero           : std_logic;
   signal ce_carga_cifra : std_logic;
   signal ce_letra_a     : std_logic;
   signal ce_letra_c     : std_logic;
   signal uno            : std_logic;
   signal XLXN_19        : std_logic;
   signal XLXN_64        : std_logic;
   signal XLXN_169       : std_logic;
   signal XLXN_170       : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component COMPM4_HXILINX_Comp_Num_Letra
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component FD4RE_HXILINX_Comp_Num_Letra
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             R  : in    std_logic; 
             Q0 : out   std_logic; 
             Q1 : out   std_logic; 
             Q2 : out   std_logic; 
             Q3 : out   std_logic);
   end component;
   
   component COMP4_HXILINX_Comp_Num_Letra
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_24";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_25";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_23";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_26";
begin
   XLXI_2 : GND
      port map (G=>cero);
   
   XLXI_3 : VCC
      port map (P=>uno);
   
   XLXI_4 : COMPM4_HXILINX_Comp_Num_Letra
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>uno,
                B2=>cero,
                B3=>uno,
                GT=>open,
                LT=>XLXN_19);
   
   XLXI_6 : FD
      port map (C=>ck,
                D=>ce_carga_cifra,
                Q=>carga_cifra);
   
   XLXI_14 : FD4RE_HXILINX_Comp_Num_Letra
      port map (C=>ck,
                CE=>ce_carga_cifra,
                D0=>cod_tecla(0),
                D1=>cod_tecla(1),
                D2=>cod_tecla(2),
                D3=>cod_tecla(3),
                R=>XLXN_64,
                Q0=>cifra(0),
                Q1=>cifra(1),
                Q2=>cifra(2),
                Q3=>cifra(3));
   
   XLXI_15 : GND
      port map (G=>XLXN_64);
   
   XLXI_24 : COMP4_HXILINX_Comp_Num_Letra
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>uno,
                B2=>cero,
                B3=>uno,
                EQ=>XLXN_169);
   
   XLXI_26 : FD
      port map (C=>ck,
                D=>ce_letra_a,
                Q=>letra_a);
   
   XLXI_35 : COMP4_HXILINX_Comp_Num_Letra
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>cero,
                B2=>uno,
                B3=>uno,
                EQ=>XLXN_170);
   
   XLXI_36 : AND2
      port map (I0=>tecla_pulsada,
                I1=>XLXN_170,
                O=>ce_letra_c);
   
   XLXI_37 : FD
      port map (C=>ck,
                D=>ce_letra_c,
                Q=>letra_c);
   
   XLXI_40 : AND3B1
      port map (I0=>entZ_sal,
                I1=>tecla_pulsada,
                I2=>XLXN_169,
                O=>ce_letra_a);
   
   XLXI_42 : AND3B1
      port map (I0=>entZ_sal,
                I1=>tecla_pulsada,
                I2=>XLXN_19,
                O=>ce_carga_cifra);
   
end BEHAVIORAL;


