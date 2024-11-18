--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sincroniza.vhf
-- /___/   /\     Timestamp : 11/02/2024 15:04:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/sincroniza.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/sincroniza.sch
--Design Name: sincroniza
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

entity sincroniza is
   port ( ck        : in    std_logic; 
          dato_ent  : in    std_logic; 
          dato_sinc : out   std_logic);
end sincroniza;

architecture BEHAVIORAL of sincroniza is
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


