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
-- Generated   : Wed Oct 30 15:25:31 2024
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
		incrementar: out STD_LOGIC
);
end fsm_convol;

architecture fsm_convol_arch of fsm_convol is

-- USER DEFINED ENCODED state machine: Sreg0
attribute ENUM_ENCODING: string;
type Sreg0_type is (
	S2, S3, S4, S1
);
attribute ENUM_ENCODING of Sreg0_type: type is
	"01 " &		-- S2
	"10 " &		-- S3
	"11 " &		-- S4
	"00" ;		-- S1

signal Sreg0, NextState_Sreg0: Sreg0_type;

-- Declarations of pre-registered internal signals
signal int_inicializar, next_inicializar: STD_LOGIC;
signal int_acumular, next_acumular: STD_LOGIC;
signal int_dato_sal_sync, next_dato_sal_sync: STD_LOGIC;
signal int_incrementar, next_incrementar: STD_LOGIC;

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 NEXT=NextState_Sreg0
-- Aldec enum Machine_Sreg0 INITIAL_STATE=S1
-- Aldec enum Machine_Sreg0 STATES=S2,S3,S4
-- Aldec enum Machine_Sreg0 TRANS=S1->S2,S2->S3,S3->S3,S3->S4,S4->S1

-- User statements

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
------------------------------------
-- Next State Logic (combinatorial)
------------------------------------
Sreg0_NextState: process (dato_nuevo, int_inicializar, int_acumular, int_dato_sal_sync, int_incrementar,
	Sreg0)
-- machine variables declarations
variable indice: UNSIGNED (2 downto 0);

begin
	NextState_Sreg0 <= Sreg0;
	-- Set default values for outputs and signals
	next_inicializar <= int_inicializar;
	next_acumular <= int_acumular;
	next_dato_sal_sync <= int_dato_sal_sync;
	next_incrementar <= int_incrementar;
	indice := "000";
	case Sreg0 is
		when S2 =>
			NextState_Sreg0 <= S3;
			next_acumular <= '1';
		when S3 =>
			indice := indice + 1;
			case indice is
				when "111" =>
					NextState_Sreg0 <= S4;
					next_dato_sal_sync <= '1';
				when others =>
					NextState_Sreg0 <= S3;
					next_acumular <= '1';
			end case;
		when S4 =>
			NextState_Sreg0 <= S1;
			next_inicializar <= '1';
			next_incrementar <= '0';
			next_acumular <= '0';
			next_dato_sal_sync <= '0';
			indice := "000";
		when S1 =>
			case dato_nuevo is
				when '1' =>
					NextState_Sreg0 <= S2;
					next_inicializar <= '0';
					next_incrementar <= '1';
				when others =>
					null;
			end case;
--vhdl_cover_off
		when others =>
			null;
--vhdl_cover_on
	end case;
end process;

------------------------------------
-- Current State Logic (sequential)
------------------------------------
Sreg0_CurrentState: process (ck)
begin
	if ck'event and ck = '1' then
		if reset='1' then
			Sreg0 <= S1;
		else
			Sreg0 <= NextState_Sreg0;
		end if;
	end if;
end process;

------------------------------------
-- Registered Outputs Logic
------------------------------------
Sreg0_RegOutput: process (ck)
begin
	if ck'event and ck = '1' then
		if reset='1' then
			int_inicializar <= '1';
			int_incrementar <= '0';
			int_acumular <= '0';
			int_dato_sal_sync <= '0';
		else
			int_inicializar <= next_inicializar;
			int_acumular <= next_acumular;
			int_dato_sal_sync <= next_dato_sal_sync;
			int_incrementar <= next_incrementar;
		end if;
	end if;
end process;

-- Copy temporary signals to target ports
inicializar <= int_inicializar;
acumular <= int_acumular;
dato_sal_sync <= int_dato_sal_sync;
incrementar <= int_incrementar;

end fsm_convol_arch;