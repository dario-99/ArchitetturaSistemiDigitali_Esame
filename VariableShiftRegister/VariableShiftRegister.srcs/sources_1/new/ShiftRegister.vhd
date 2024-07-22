----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Shift register ad N valori, con possibilita' di cambiare direzione di shifting e numero di shift (1 o 2)
--				L'implementazione non permette il caricamento parallelo
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister is
	generic(
		N: integer := 8						-- Numero di celle
	);
	Port (
		-- Input
		CLK,RST: IN std_logic;
		x: IN std_logic;					-- Ingresso dato
		read_strobe: IN std_logic;			-- Segnale di strobing per effettuare la lettura
		direction: IN std_logic;			-- 0 => shift a destra, 1 => shift a sinistra
		qta: IN std_logic;					-- 0 => shift di una posizione, 1 => shift a due posizioni
		
		-- Output
		y: OUT std_logic
	);
end ShiftRegister;

architecture Behavioral of ShiftRegister is

-- Segnale per tenere traccia degli N valori su cui shiftare
signal reg: std_logic_vector(0 to N-1) := (others => '0');			-- valore di default 0 per tutti le celle

begin
	-- Collego le uscite al valore piu' a sinistra e piu' a destra in base alla direzione
	with direction select
		y <= reg(0) when '1',
			 reg(N-1) when '0',
			 '-' when others; 

	shift_proc: process(CLK, RST, read_strobe)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				reg <= (others => '0');
			end if;
			-- Controllo strobe di lettura
			if read_strobe = '1' then
				if direction = '0' then			-- Shift a destra
					if qta = '0' then
						reg <= x & reg(0 to N-2);
					else
						reg <= '0' & x & reg(0 to N-3);
					end if;
				else							-- Shift a sinistra
					if qta = '0' then
						reg <= reg(1 to N-1) & x;
					else 
						reg <= reg(2 to N-1) & x & '0';
					end if;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

architecture Structural of ShiftRegister is
-- Segnali di interconnessione
signal ff_in: std_logic_vector(0 to N-1);
signal ff_out: std_logic_vector(0 to N+3); -- aggiungo due valori a '0' nel caso qta = 1 e devo usare il primo mux o l'ultimo
-- Segnale di selezion
signal s: std_logic_vector(1 downto 0);

begin
	ff_out(0) <= '0';
	ff_out(1) <= x;
	ff_out(N+3) <= '0';
	ff_out(N+2) <= x;
	s <= direction & qta;
	
	-- mux_2_1 per la scelta dell'uscita in base alla direzione
	mux_2_1: entity work.mux_2_1 port map(
		input(0) => ff_out(N-1),
		input(1) => ff_out(2),
		s => direction,
		y => y
	);

	flip_flops: for i in 0 to N-1 generate
		FF: entity work.FF_D port map(
			CLK => CLK, RST => RST, EN => read_strobe, d => ff_in(i), y => ff_out(i+2)
		);
	end generate;
	mux_s: for i in 0 to N-1 generate
		-- Shift di 2 posizioni in avanti 
		mux_4_1: entity work.mux_4_1 port map(
			input(0) => ff_out(i+3),
			input(1) => ff_out(i+4),
			input(2) => ff_out(i+1),
			input(3) => ff_out(i),
			s => s,
			y => ff_in(i)
		);
	end generate;
end Structural;

