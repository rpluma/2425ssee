
-- VHDL Instantiation Created from source file fsm_convol.vhd -- 18:54:08 10/31/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT fsm_convol
	PORT(
		ck : IN std_logic;
		dato_nuevo : IN std_logic;
		reset : IN std_logic;          
		inicializar : OUT std_logic;
		acumular : OUT std_logic;
		dato_sal_sync : OUT std_logic;
		indice : OUT std_logic_vector(3 downto 0);
		multiplicar : OUT std_logic;
		guardar : OUT std_logic
		);
	END COMPONENT;

	Inst_fsm_convol: fsm_convol PORT MAP(
		ck => ,
		dato_nuevo => ,
		reset => ,
		inicializar => ,
		acumular => ,
		dato_sal_sync => ,
		indice => ,
		multiplicar => ,
		guardar => 
	);


