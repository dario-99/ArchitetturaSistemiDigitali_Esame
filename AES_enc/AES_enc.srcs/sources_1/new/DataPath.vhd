----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa dell' encrypter AES
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPath is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		key: IN std_logic_vector(127 downto 0);
		message: IN std_logic_vector(127 downto 0);
		-- Segnali di controllo
		inc_counter: IN std_logic;
		update_reg: IN std_logic;
		mux_sel: IN std_logic;
		mux_key: IN std_logic;
		mux_last: IN std_logic;
		-- Output
		cnt_value: OUT std_logic_vector(3 downto 0);
		encrypted_msg: OUT std_logic_vector(127 downto 0)
	);
end DataPath;

architecture Behavioral of DataPath is
signal mix_col_output: std_logic_vector(127 downto 0);
signal mux_out: std_logic_vector(127 downto 0);
signal reg_in: std_logic_vector(127 downto 0);
signal reg_out: std_logic_vector(127 downto 0);
signal cnt_out: std_logic_vector(3 downto 0);			-- Contatore modulo 11 ha bisogno di 4 bit
signal round_const: std_logic_vector(7 downto 0);		-- Costante per il calcolo della round key
signal round_key: std_logic_vector(127 downto 0);
signal key_adder_out: std_logic_vector(127 downto 0);
signal sub_out: std_logic_vector(127 downto 0);
signal shifter_out: std_logic_vector(127 downto 0);
begin
	
	-- Multiplexer che da in ingresso al registro il valore del messaggio alla prima iterazione
	-- alle successive l'uscita dell'ultimo step dell'algoritmo
	mux_load_compute: entity work.mux_2_1 port map(
		a => reg_in,
		b => message,
		s => mux_sel,
		y => mux_out
	);
	
	-- Multiplexer che all'ultima iterazione permette di saltare il passo di colMix come specificato dall'algoritmo
	mux_skip_col_mix: entity work.mux_2_1 port map(
		a => mix_col_output,
		b => shifter_out,
		s => mux_last,
		y => reg_in 
	);

	-- Registro contenente il valore criptato ad ogni iterazione
	reg: entity work.reg generic map(N => 128) port map(
		CLK => CLK,
		RST => RST,
		EN => update_reg,
		d => mux_out,
		q => reg_out 
	);
	
	-- Contatore delle iterazioni
	counter: entity work.Contatore generic map( N => 11) port map(
		CLK => CLK,
		RST => RST,
		EN => inc_counter,
		cnt_value => cnt_out
	);
	
	-- Round const LUT
	roundConstLut: entity work.RoundConstLUT port map(
		idx => cnt_out,
		round_const => round_const
	);	
	
	-- Key scheduler, si occupa di generare la round key all'iterazione corrente, in base al valore della round const e della key
	keyGenerator: entity work.KeyRoundGenerator port map(
		CLK => CLK,
		RST => RST,
		update_reg => update_reg,
		key => key,
		round_const => round_const,
		mux_sel => mux_key,
		round_key => round_key
	);
	
	-- Key round adder
	keyAdder: entity work.KeyAdder port map(
		x => reg_out,
		round_key => round_key,
		y => key_adder_out
	);
	
	-- Sbox: sostituisci i bit secondo la LUT prevista dall'algoritmo
	SubBox: entity work.SostitutoreByte port map(
		x => key_adder_out,
		y => sub_out
	);
	
	-- RowShifter: effettua lo shift delle righe
	rowShifter: entity work.rowShifter port map(
		input => sub_out,
		output => shifter_out
	);
	
	-- Column mixer: effettua l'operazione di column mixing che effettua l'operazioni di prodotto matriciale con la matrice costante
	colMix: entity work.ColumnMixer port map(
		x => shifter_out,
		y => mix_col_output
	);
	
	-- Collego l'uscita del contatore
	cnt_value <= cnt_out;
	-- collego l'uscita con l'uscita dell'addizionatore
	encrypted_msg <= key_adder_out;

end Behavioral;
