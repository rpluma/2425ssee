-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : ds_fsm_convol
-- Author      : Usuario_UMA
-- Company     : UMA
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/Usuario_UMA/Desktop/activeHdl/ws_fsm_convol/ds_fsm_convol/compile/fsm_convol.vhd
-- Generated   : Thu Oct 31 09:43:38 2024
-- From        : C:/Users/Usuario_UMA/Desktop/activeHdl/ws_fsm_convol/ds_fsm_convol/src/fsm_convol.asf
-- By          : Active-HDL Student Edition FSM Code Generator ver. 6.0
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

entity fsm_convol is 
	port (
		ck: in STD_LOGIC;
		dato_nuevo: in STD_LOGIC;
		reset: in STD_LOGIC;
		inicializar: out STD_LOGIC;
		acumular: out STD_LOGIC;
		dato_sal_sync: out STD_LOGIC;
		indice: out UNSIGNED (2 downto 0);
		multiplicar: out STD_LOGIC
);
end fsm_convol;

architecture fsm_convol_arch of fsm_convol is

-- USER DEFINED ENCODED state machine: Sreg0
attribute ENUM_ENCODING: string;
type Sreg0_type is (
	S2, S3, S4, S1, S5, S6
);
attribute ENUM_ENCODING of Sreg0_type: type is
	"01 " &		-- S2
	"10 " &		-- S3
	"11 " &		-- S4
	"00 " &		-- S1
	"00 " &		-- S5
	"00" ;		-- S6

signal Sreg0: Sreg0_type;

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 INITIAL_STATE=S1
-- Aldec enum Machine_Sreg0 STATES=S2,S3,S4,S5,S6
-- Aldec enum Machine_Sreg0 TRANS=S1->S2,S2->S5,S3->S3,S3->S6,S4->S1,S5->S3,S6->S4

-- User statements

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
Sreg0_machine: process (ck)
-- machine variables declarations
variable vIndice: UNSIGNED (2 downto 0);

begin
	if ck'event and ck = '1' then
		if reset='1' then
			Sreg0 <= S1;
			-- Set reset or default values for outputs, signals and variables
			inicializar<='1';
			multiplicar<='0';
			acumular<='0';
			dato_sal_sync<='0';
			vIndice:="000";
			indice<=vIndice;
		else
			-- Set default values for outputs, signals and variables
			-- ...
			case Sreg0 is
				when S2 =>
					Sreg0 <= S5;
					multiplicar <= '1';
					vIndice := vIndice +1;
					indice <= vIndice;
				when S3 =>
					if vIndice=0 then
						Sreg0 <= S6;
						multiplicar<='0';
					else
						Sreg0 <= S3;
						vIndice := vIndice + 1;
						indice <= vIndice;
						acumular <= '1';
					end if;
				when S4 =>
					Sreg0 <= S1;
					inicializar <= '1';
					multiplicar <= '0';
					acumular <= '0';
					dato_sal_sync <= '0';
					vIndice := "000";
					indice <= vIndice;
				when S1 =>
					if dato_nuevo='1' then
						Sreg0 <= S2;
						inicializar <= '0';
					end if;
				when S5 =>
					Sreg0 <= S3;
					vIndice := vIndice + 1;
					indice <= vIndice;
					acumular <= '1';
				when S6 =>
					Sreg0 <= S4;
					dato_sal_sync <= '1';
					acumular <= '0';
--vhdl_cover_off
				when others =>
					null;
--vhdl_cover_on
			end case;
		end if;
	end if;
end process;

end fsm_convol_arch;
