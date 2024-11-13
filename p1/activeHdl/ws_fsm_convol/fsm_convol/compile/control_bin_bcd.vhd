-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : media_nexys3
-- Author      : albertod
-- Company     : Dep Elca
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\albertod\Documents\_Doc_\Aldec_Designs\media_nexys3\media_nexys3\compile\control_bin_bcd.vhd
-- Generated   : 11/10/14 19:50:03
-- From        : c:\Users\albertod\Documents\_Doc_\Aldec_Designs\media_nexys3\media_nexys3\src\control_bin_bcd.asf
-- By          : FSM2VHDL ver. 5.0.7.2
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity control_bin_bcd is 
	port (
		CK: in STD_LOGIC;
		inicio: in STD_LOGIC;
		reset: in STD_LOGIC;
		ce_reg_salida: out STD_LOGIC;
		dato_nuevo: out STD_LOGIC;
		initZ: out STD_LOGIC;
		load: out STD_LOGIC);
end control_bin_bcd;

architecture control_bin_bcd_arch of control_bin_bcd is

-- SYMBOLIC ENCODED state machine: Sreg0
type Sreg0_type is (
    S1, S2, S3, S4, S5, S6
);
-- attribute enum_encoding of Sreg0_type: type is ... -- enum_encoding attribute is not supported for symbolic encoding

signal Sreg0: Sreg0_type;

begin

-- concurrent signals assignments

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
Sreg0_machine: process (CK, reset)
-- machine variables declarations
variable contador: STD_LOGIC_VECTOR (3 downto 0);

begin
	if reset='1' then
		Sreg0 <= S1;
		-- Set default values for outputs, signals and variables
		-- ...
		initZ <= '0';
		load <= '0';
		dato_nuevo <= '0';
		ce_reg_salida <= '0';
		contador := (others => '0');
	elsif CK'event and CK = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case Sreg0 is
			when S1 =>
				if inicio = '1' then
					Sreg0 <= S2;
					load <= '1';
				end if;
			when S2 =>
				Sreg0 <= S3;
				load <= '0';
				initZ <= '1';
				contador := contador + 1;
			when S3 =>
				if contador < 8 then
					Sreg0 <= S3;
					load <= '0';
					initZ <= '1';
					contador := contador + 1;
				else
					Sreg0 <= S4;
					initZ <= '0';
					ce_reg_salida <= '1';
				end if;
			when S4 =>
				Sreg0 <= S5;
				ce_reg_salida <= '0';
				dato_nuevo <= '1';
			when S5 =>
				Sreg0 <= S6;
				dato_nuevo <= '0';
			when S6 =>
				if inicio = '0' then
					Sreg0 <= S1;
					initZ <= '0';
					load <= '0';
					dato_nuevo <= '0';
					ce_reg_salida <= '0';
					contador := (others => '0');
				end if;
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end control_bin_bcd_arch;
