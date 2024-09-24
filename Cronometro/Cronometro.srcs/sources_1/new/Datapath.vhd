----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		SET: IN std_logic;
		mem_read,mem_write: IN std_logic;
		mem_read_countr_incr: IN std_logic;
		mem_write_countr_incr: IN std_logic;
		mux_visore_sel: IN std_logic;				-- 0 cronometro, 1 memoria
		mux_addr_sel: IN std_logic;					-- 0 contatore di save, 1 contatore di read
		SEL: IN std_logic_vector(0 to 2);	-- Segnale di selezione per il SET (0 => h, 1 => min, 2 => h
		EN: IN std_logic;					-- Segnale di Enable
		parallel_in: IN std_logic_vector(5 downto 0);
		
		-- Uscite
		cathodes_out: OUT std_logic_vector(7 downto 0);
		anodes_out: OUT std_logic_vector(7 downto 0)
	);
end Datapath;

architecture Structural of Datapath is
-- Segnali di uscita dei singoli contatori, codifica binaria
signal sec_b, min_b: std_logic_vector(5 downto 0);
signal h_b: std_logic_vector(4 downto 0);

-- Segnali encoded in decimale
signal sec_d, min_d, h_d: std_logic_vector(7 downto 0);

-- Segnale uscita del mux
signal mux_visore_out: std_logic_vector(31 downto 0);
signal mux_addr_out: std_logic_vector(2 downto 0);

-- Segnali composto dei contatori
signal cronometro_out: std_logic_vector(31 downto 0);

-- Contatore che cicla nelle posizioni della memoria
signal cntr_read_out, cntr_write_out: std_logic_vector(2 downto 0);

-- Uscita della memoria
signal mem_out: std_logic_vector(31 downto 0);

---- Bottoni debounced
signal SEL_clrd: std_logic_vector(0 to 2);

begin
	-- metto in AND il segnale di SET_clrd con i segnali di selezione
	SEL_clrd <= SEL when SET = '1' else
				"000" when SET = '0';
	
	-- Compongo le uscite dei contatori
	cronometro_out <= x"00" & h_d & min_d & sec_d;
	
	-- Contatore modulo 8 che cicla nella ram per la lettura
	counter_read: entity work.counter_mod8 port map(
		clock => CLK,
		reset => RST,
		enable => mem_read_countr_incr,
		counter => cntr_read_out
	);
	-- Contatore modulo 8 che cicla nella ram per la scrittura
	counter_write: entity work.counter_mod8 port map(
		clock => CLK,
		reset => RST,
		enable => mem_write_countr_incr,
		counter => cntr_write_out
	);
	
					
	-- Mux Visore
	mux_visore: entity work.Mux generic map(N => 32) port map(
		input_0 => cronometro_out,
		input_1 => mem_out,
		s => mux_visore_sel,
		y => mux_visore_out	
	);
	
	-- Mux addr memoria
	mux_addr: entity work.Mux generic map(N => 3) port map(
		input_0 => cntr_read_out,
		input_1 => cntr_write_out,
		s => mux_addr_sel,
		y => mux_addr_out	
	);
	
	-- Memoria
	mem: entity work.Memoria generic map(N => 32, M => 8) port map(
		CLK => CLK,
		RST => RST,
		read => mem_read,
		write => mem_write,
		data_in => cronometro_out,
		addr => mux_addr_out,
		data_out => mem_out
	);
	
	orologio: entity work.Orologio port map(
		-- Ingressi
		CLK => CLK, 
		RST => RST,
		EN => EN,
		sel => SEL_clrd,
		parallel => parallel_in,
		-- Uscite
		sec_out => sec_b,
		min_out => min_b,
		hour_out => h_b,
		day_cnt => open		-- Tramite la parola chiave OPEN posso ignorare l'uscita
	);
	encoder_sec: entity work.DecimalEncoder generic map(N => 6) port map(x => sec_b, y => sec_d);
	encoder_min: entity work.DecimalEncoder generic map(N => 6) port map(x => min_b, y => min_d);
	encoder_h: entity work.DecimalEncoder generic map(N => 5) port map(x => h_b, y => h_d);
	
	display: entity work.seven_segment_array port map(
		CLK => CLK,
		RST => RST,
		value => mux_visore_out,
		enable => "00111111",
		dots => "00010100",
		anodes => anodes_out,
		cathodes => cathodes_out
	);

end Structural;
