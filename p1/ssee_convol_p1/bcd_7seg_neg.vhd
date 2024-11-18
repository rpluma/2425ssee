----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:25 10/29/2015 
-- Design Name: 
-- Module Name:    bcd_7seg_neg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_7seg_neg is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           SEGMENTO_NEG : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd_7seg_neg;

architecture Behavioral of bcd_7seg_neg is

begin
-- Conversor combinacional de BCD (HEXA) a 7 Segmentos (NEGADOS)
--   BCD:   in    STD_LOGIC_VECTOR (3 downto 0);
--   SEGMENTO:   out   STD_LOGIC_VECTOR (6 downto 0);
-- 
-- Numeración de segmentos
--      A
--     ---  
--  F |   | B
--     ---   <- G
--  E |   | C
--     ---
--      D

   
    with BCD select
-- Orden:       GFEDCBA
   SEGMENTO_NEG <= "1111001" when "0001",   --1
                   "0100100" when "0010",   --2
                   "0110000" when "0011",   --3
                   "0011001" when "0100",   --4
                   "0010010" when "0101",   --5
                   "0000010" when "0110",   --6
                   "1111000" when "0111",   --7
                   "0000000" when "1000",   --8
                   "0010000" when "1001",   --9
                   "0001000" when "1010",   --A
                   "0000011" when "1011",   --b
                   "1000110" when "1100",   --C
                   "0100001" when "1101",   --d
                   "0000110" when "1110",   --E
                   "0001110" when "1111",   --F
                   "1000000" when others;   --0
end Behavioral;

