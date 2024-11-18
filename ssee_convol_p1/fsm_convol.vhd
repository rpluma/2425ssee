-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : fsm_convol
-- Author      : Usuario_UMA
-- Company     : UMA
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/fsm_convol/fsm_convol/compile/fsm_convol.vhd
-- Generated   : Thu Nov 14 10:50:07 2024
-- From        : c:/My_Designs/fsm_convol/fsm_convol/src/fsm_convol.asf
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
		indice: out STD_LOGIC_VECTOR (2 downto 0);
		multiplicar: out STD_LOGIC;
		acumular: out STD_LOGIC;
		guardar: out STD_LOGIC;
		dato_sal_sync: out STD_LOGIC
);
end fsm_convol;

architecture fsm_convol_arch of fsm_convol is

-- BINARY ENCODED state machine: Sreg0
attribute ENUM_ENCODING: string;
type Sreg0_type is (
	S1, S2, S3, S4, S5, S6, S7, S8
);
attribute ENUM_ENCODING of Sreg0_type: type is
	"000 " &		-- S1
	"001 " &		-- S2
	"010 " &		-- S3
	"011 " &		-- S4
	"100 " &		-- S5
	"101 " &		-- S6
	"110 " &		-- S7
	"111" ;		-- S8

signal Sreg0: Sreg0_type;

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 INITIAL_STATE=S1
-- Aldec enum Machine_Sreg0 STATES=S2,S3,S4,S5,S6,S7,S8
-- Aldec enum Machine_Sreg0 TRANS=S1->S2,S2->S3,S3->S4,S4->S4,S4->S5,S5->S6,S6->S7,S7->S8,S8->S1

-- User statements

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
Sreg0_machine: process (ck, reset)
-- machine variables declarations
variable vIndice: STD_LOGIC_VECTOR (3 downto 0);

begin
	if reset='1' then
		Sreg0 <= S1;
		-- Set reset or default values for outputs, signals and variables
		inicializar<='1';
		indice<="000";
		multiplicar<='0';
		acumular<='0';
		guardar<='0';
		dato_sal_sync<='0';
	elsif ck'event and ck = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case Sreg0 is
			when S1 =>
				if dato_nuevo='1' then
					Sreg0 <= S2;
					inicializar<='0';
					multiplicar <= '1';
					indice <= "001";
				end if;
			when S2 =>
				Sreg0 <= S3;
				vIndice := "0010";
				indice <= "010";
				acumular <= '1';
			when S3 =>
				Sreg0 <= S4;
				vIndice:=vIndice+1;
				indice <= vIndice(2 DOWNTO 0);
			when S4 =>
				if vIndice="1000" then
					Sreg0 <= S5;
					multiplicar <= '0';
				else
					Sreg0 <= S4;
					vIndice:=vIndice+1;
					indice <= vIndice(2 DOWNTO 0);
				end if;
			when S5 =>
				Sreg0 <= S6;
				acumular <='0';
			when S6 =>
				Sreg0 <= S7;
				guardar<='1';
			when S7 =>
				Sreg0 <= S8;
				guardar <='0';
				dato_sal_sync <='1';
			when S8 =>
				Sreg0 <= S1;
				inicializar <= '1';
				indice <= "000";
				multiplicar <= '0';
				acumular <= '0';
				guardar <= '0';
				dato_sal_sync<='0';
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end fsm_convol_arch;
