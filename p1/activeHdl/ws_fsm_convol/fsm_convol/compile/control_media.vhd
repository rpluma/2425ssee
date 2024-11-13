-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : media_nexys3
-- Author      : albertod
-- Company     : Dep Elca
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\albertod\Documents\_Doc_\Aldec_Designs\media_nexys3\media_nexys3\compile\control_media.vhd
-- Generated   : 11/17/14 13:10:21
-- From        : c:\Users\albertod\Documents\_Doc_\Aldec_Designs\media_nexys3\media_nexys3\src\control_media.asf
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


entity control_media is 
	port (
		calcular_media: in STD_LOGIC;
		CK: in STD_LOGIC;
		dato_nuevo: in STD_LOGIC;
		reset: in STD_LOGIC;
		ce_divisor: out STD_LOGIC;
		ce_lec_ram: out STD_LOGIC;
		dir_esc: out STD_LOGIC_VECTOR (5 downto 0);
		dir_lec: out STD_LOGIC_VECTOR (4 downto 0);
		media_calculada: out STD_LOGIC);
end control_media;

architecture control_media_arch of control_media is

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
variable cuenta: STD_LOGIC_VECTOR (4 downto 0);
variable dir_esc_int: STD_LOGIC_VECTOR (5 downto 0);
variable dir_lec_int: STD_LOGIC_VECTOR (4 downto 0);

begin
	if reset = '1' then
		Sreg0 <= S1;
		-- Set default values for outputs, signals and variables
		-- ...
		dir_esc <= (others => '0');
		dir_lec <= (others => '0');
		ce_lec_ram <= '0';
		ce_divisor <= '0';
		media_calculada <= '0';
		dir_lec_int := (others => '0');
		dir_esc_int := (others => '0');
		cuenta := (others => '0');
	elsif CK'event and CK = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case Sreg0 is
			when S1 =>
				if dato_nuevo = '1' then
					Sreg0 <= S2;
					dir_esc_int := dir_esc_int + 1;
					dir_esc <= dir_esc_int;
				end if;
			when S2 =>
				if calcular_media = '1' or
					dir_esc_int = 32 then
					Sreg0 <= S3;
					ce_lec_ram <= '1';
				elsif dato_nuevo = '1' then
					Sreg0 <= S2;
					dir_esc_int := dir_esc_int + 1;
					dir_esc <= dir_esc_int;
				end if;
			when S3 =>
				if dir_lec_int =
					dir_esc_int - 1 then
					Sreg0 <= S4;
					ce_lec_ram <= '0';
					ce_divisor <= '1';
				else
					Sreg0 <= S3;
					dir_lec_int := dir_lec_int + 1;
					dir_lec <= dir_lec_int;
					ce_lec_ram <= '1';
				end if;
			when S4 =>
				Sreg0 <= S5;
				cuenta := cuenta + 1;
			when S5 =>
				if cuenta = 23 then
					Sreg0 <= S6;
					media_calculada <= '1';
					ce_divisor <= '0';
				else
					Sreg0 <= S5;
					cuenta := cuenta + 1;
				end if;
			when S6 =>
				Sreg0 <= S1;
				dir_esc <= (others => '0');
				dir_lec <= (others => '0');
				ce_lec_ram <= '0';
				ce_divisor <= '0';
				media_calculada <= '0';
				dir_lec_int := (others => '0');
				dir_esc_int := (others => '0');
				cuenta := (others => '0');
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end control_media_arch;
