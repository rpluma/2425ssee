--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : detector.vhf
-- /___/   /\     Timestamp : 11/19/2024 13:15:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/siselec/Downloads/practica1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/siselec/Downloads/practica1/detector.vhf -w C:/Users/siselec/Downloads/practica1/detector.sch
--Design Name: detector
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

entity detector is
   port ( ck      : in    std_logic; 
          dato    : in    std_logic; 
          dato_ok : out   std_logic);
end detector;

architecture BEHAVIORAL of detector is
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


