--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : nivel_a_pulso.vhf
-- /___/   /\     Timestamp : 10/31/2024 21:24:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/nivel_a_pulso.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/nivel_a_pulso.sch
--Design Name: nivel_a_pulso
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

entity nivel_a_pulso is
   port ( ck      : in    std_logic; 
          entrada : in    std_logic; 
          salida  : out   std_logic);
end nivel_a_pulso;

architecture BEHAVIORAL of nivel_a_pulso is
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


