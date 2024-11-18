--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bCalcConv_drc.vhf
-- /___/   /\     Timestamp : 10/30/2024 09:23:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl bCalcConv_drc.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/bCalcConv.sch
--Design Name: bCalcConv
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

entity bCalcConv is
   port ( ck            : in    std_logic; 
          dato_ent      : in    std_logic_vector (7 downto 0); 
          dato_nuevo    : in    std_logic; 
          reset         : in    std_logic; 
          dato_sal      : out   std_logic_vector (7 downto 0); 
          dato_sal_sync : out   std_logic);
end bCalcConv;

architecture BEHAVIORAL of bCalcConv is
begin
end BEHAVIORAL;


