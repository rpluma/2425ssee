component fsm_convol
	port (
		ck: in STD_LOGIC;
		dato_nuevo: in STD_LOGIC;
		reset: in STD_LOGIC;
		inicializar: out STD_LOGIC;
		indice: out STD_LOGIC_VECTOR (2 downto 0);
		multiplicar: out STD_LOGIC;
		acumular: out STD_LOGIC;
		guardar: out STD_LOGIC;
		dato_salida_sync: out STD_LOGIC);
end component;


instance_name : fsm_convol
( ck => ,
 dato_nuevo => ,
 reset => ,
 inicializar => ,
 indice => ,
 multiplicar => ,
 acumular => ,
 guardar => ,
 dato_salida_sync => );
