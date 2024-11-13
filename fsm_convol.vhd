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
-- Generated   : Sat Nov  2 14:32:32 2024
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
		indice: out STD_LOGIC_VECTOR (3 downto 0);
		multiplicar: out STD_LOGIC;
		guardar: out STD_LOGIC
);
end fsm_convol;

architecture fsm_convol_arch of fsm_convol is

-- USER DEFINED ENCODED state machine: Sreg0
attribute ENUM_ENCODING: string;
type Sreg0_type is (
	S1Ini, S2Dir, S3Load, S5Acc, S9Fin, S4Mul, S7FinAcc, S8Sto, S6FinMul
);
attribute ENUM_ENCODING of Sreg0_type: type is
	"0010 " &		-- S2Dir
	"0011 " &		-- S3Load
	"0101 " &		-- S5Acc
	"1001 " &		-- S9Fin
	"0000 " &		-- S1Ini
	"0100 " &		-- S4Mul
	"0111 " &		-- S7FinAcc
	"1000 " &		-- S8Sto
	"0110" ;		-- S6FinMul

signal Sreg0: Sreg0_type;

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 INITIAL_STATE=S1Ini
-- Aldec enum Machine_Sreg0 STATES=S2Dir,S3Load,S4Mul,S5Acc,S6FinMul,S7FinAcc,S8Sto,S9Fin
-- Aldec enum Machine_Sreg0 TRANS=S1Ini->S2Dir,S2Dir->S3Load,S3Load->S4Mul,S4Mul->S5Acc,S5Acc->S5Acc
-- Aldec enum Machine_Sreg0 TRANS=S5Acc->S6FinMul,S6FinMul->S7FinAcc,S7FinAcc->S8Sto,S8Sto->S9Fin
-- Aldec enum Machine_Sreg0 TRANS=S9Fin->S1Ini

-- User statements

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
Sreg0_machine: process (ck, reset)
-- machine variables declarations
variable vIndice: UNSIGNED (3 downto 0);

begin
	if reset='1' then
		Sreg0 <= S1Ini;
		-- Set reset or default values for outputs, signals and variables
		inicializar<='1';
		multiplicar<='0';
		acumular<='0';
		guardar<='0';
		dato_sal_sync<='0';
	elsif ck'event and ck = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case Sreg0 is
			when S2Dir =>
				Sreg0 <= S3Load;
				indice <= "0001";
				multiplicar <= '1';
			when S3Load =>
				Sreg0 <= S4Mul;
				indice<="0010";
				vIndice := "0010";
			when S5Acc =>
				if vIndice=8 then
					Sreg0 <= S6FinMul;
					multiplicar<='0';
				else
					Sreg0 <= S5Acc;
					vIndice := vIndice + 1;
					indice <=std_logic_vector(vIndice);
					acumular <= '1';
				end if;
			when S9Fin =>
				Sreg0 <= S1Ini;
				inicializar <= '1';
				multiplicar <= '0';
				acumular <= '0';
				guardar <= '0';
				dato_sal_sync <= '0';
			when S1Ini =>
				if dato_nuevo='1' then
					Sreg0 <= S2Dir;
					inicializar <= '0';
					indice <= "0000";
				end if;
			when S4Mul =>
				Sreg0 <= S5Acc;
				vIndice := vIndice + 1;
				indice <=std_logic_vector(vIndice);
				acumular <= '1';
			when S7FinAcc =>
				Sreg0 <= S8Sto;
				guardar<='1';
			when S8Sto =>
				Sreg0 <= S9Fin;
				guardar <= '0';
				dato_sal_sync <= '1';
			when S6FinMul =>
				Sreg0 <= S7FinAcc;
				acumular<='0';
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end fsm_convol_arch;
