--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sinc_entrada.vhf
-- /___/   /\     Timestamp : 11/04/2024 13:27:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/sinc_entrada.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/sinc_entrada.sch
--Design Name: sinc_entrada
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sincroniza_MUSER_sinc_entrada is
   port ( ck        : in    std_logic; 
          dato_ent  : in    std_logic; 
          dato_sinc : out   std_logic);
end sincroniza_MUSER_sinc_entrada;

architecture BEHAVIORAL of sincroniza_MUSER_sinc_entrada is
   attribute BOX_TYPE   : string ;
   signal XLXN_4    : std_logic;
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
                D=>dato_ent,
                Q=>XLXN_4);
   
   XLXI_2 : FD
      port map (C=>ck,
                D=>XLXN_4,
                Q=>dato_sinc);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity nivel_a_pulso_MUSER_sinc_entrada is
   port ( ck      : in    std_logic; 
          entrada : in    std_logic; 
          salida  : out   std_logic);
end nivel_a_pulso_MUSER_sinc_entrada;

architecture BEHAVIORAL of nivel_a_pulso_MUSER_sinc_entrada is
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

entity sinc_entrada is
   port ( ck_MHz            : in    std_logic; 
          codigo_tecla_KHz  : in    std_logic_vector (3 downto 0); 
          tecla_pulsada_KHz : in    std_logic; 
          codigo_tecla_MHz  : out   std_logic_vector (3 downto 0); 
          tecla_pulsada_MHz : out   std_logic);
end sinc_entrada;

architecture BEHAVIORAL of sinc_entrada is
   signal XLXN_33           : std_logic;
   component nivel_a_pulso_MUSER_sinc_entrada
      port ( salida  : out   std_logic; 
             ck      : in    std_logic; 
             entrada : in    std_logic);
   end component;
   
   component sincroniza_MUSER_sinc_entrada
      port ( dato_sinc : out   std_logic; 
             ck        : in    std_logic; 
             dato_ent  : in    std_logic);
   end component;
   
begin
   XLXI_9 : nivel_a_pulso_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                entrada=>XLXN_33,
                salida=>tecla_pulsada_MHz);
   
   XLXI_10 : sincroniza_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                dato_ent=>tecla_pulsada_KHz,
                dato_sinc=>XLXN_33);
   
   XLXI_17_0 : sincroniza_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(0),
                dato_sinc=>codigo_tecla_MHz(0));
   
   XLXI_17_1 : sincroniza_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(1),
                dato_sinc=>codigo_tecla_MHz(1));
   
   XLXI_17_2 : sincroniza_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(2),
                dato_sinc=>codigo_tecla_MHz(2));
   
   XLXI_17_3 : sincroniza_MUSER_sinc_entrada
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(3),
                dato_sinc=>codigo_tecla_MHz(3));
   
end BEHAVIORAL;


