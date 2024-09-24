----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa moltiplicatore di robertson
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is
	Port (	
		-- Ingressi
		CLK,RST: IN std_logic;
		x:IN std_logic_vector(7 downto 0);
		y: IN std_logic_vector(7 downto 0);
		-- Segnali di controllo
		load_a_reg: IN std_logic;		-- Caricamento parallelo shift reg A
		load_q_reg: IN std_logic;		-- Caricamento parallelo shift reg Q
		load_m_reg: IN std_logic;		-- Caricamento parallelo reg M
		countr_incr: IN std_logic;		-- Incremento contatore
		shift: IN std_logic;			-- Shift dei registri a scorrimento
		sottrazione: IN std_logic;		-- Segnale che indica al RCA di sottrarre
		mux_sel: IN std_logic;			-- Segnale che indica se siamo all'ultima iterazione
		
		-- Uscite
		data_out: OUT std_logic_vector(15 downto 0); 	-- Risultato della moltiplicazione
		counter_out: OUT std_logic_vector(2 downto 0)
	);
end Datapath;

architecture Structural of Datapath is
-- Segnali di interconnesione
signal ff_out: std_logic;								-- Uscita FlipFlop
signal addr_out: std_logic_vector(7 downto 0); 			-- Uscita RCA
signal a_parallel_out: std_logic_vector(7 downto 0);	-- Uscita parallela registro A
signal a_serial_out: std_logic;							-- Bit Meno significativo del reg A
signal q_parallel_out: std_logic_vector(7 downto 0);	-- Uscita parallela registro Q
signal q_serial_out: std_logic;							-- Bit Meno significativo del registro Q
signal m_parallel_out: std_logic_vector(7 downto 0);	-- Contenuto registro M
signal mux_out: std_logic_vector(7 downto 0);			-- Uscita del multiplexer
signal a_serial_in: std_logic;							-- Segnale che equivale ad F tranne nell'ultima iterazione quando sottraiamo, in quel caso e' uguale al MSB di A
begin
	
	data_out <= a_parallel_out & q_parallel_out;

	mux_a_in: entity work.mux_2_1 port map(
		a => ff_out,
		b => a_parallel_out(7),
		s => mux_sel,
		y => a_serial_in
	);

	-- Istanziazione componenti
	A: entity work.ShiftRegister port map(
		CLK => CLK,
		RST => RST,
		load => load_a_reg,
		shift => shift,
		x => a_serial_in,
		parallel_in => addr_out,
		parallel_out => a_parallel_out,
		y => a_serial_out
	);
	Q: entity work.ShiftRegister port map(
		CLK => CLK,
		RST => RST,
		load => load_q_reg,
		shift => shift,
		x => a_serial_out,
		parallel_in => x,
		parallel_out => q_parallel_out,
		y => q_serial_out
	);
	M: entity work.Registro port map(
		CLK => CLK,
		RST => RST,
		load => load_m_reg,
		parallel_in => y,
		y => m_parallel_out
	);
	counter: entity work.Contatore generic map(N => 8)port map(
		CLK => CLK,
		RST => RST,
		EN => countr_incr,
		cnt_value => counter_out
	);
	rca: entity work.RippleCarryAdder port map(
		c_in => sottrazione,
		a => a_parallel_out,
		b => mux_out,
		y => addr_out,
		c_out => open
	);
	mux: entity work.Mux_2_1_parallel port map(
		a => (others => '0'),
		b => m_parallel_out,
		s => q_serial_out,
		y => mux_out
	);
	-- FF ci dice se inserire in testa un 1 in A nel caso di Y < 0
	ff: entity work.FF port map(
		CLK => CLK,
		RST => RST,
		q0 => q_serial_out,
		m7 => m_parallel_out(7),		
		y => ff_out
	);
	

end Structural;
