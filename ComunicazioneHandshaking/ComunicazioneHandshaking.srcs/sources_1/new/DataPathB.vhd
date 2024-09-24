----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa ricevitore
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPathB is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		d_in: IN std_logic_vector(7 downto 0);
		counter_incr: IN std_logic;			-- Segnale di controllo per incrementare il contatore
		sum: IN std_logic;					-- Segnale di controllo per effettuare la somma
		mem_write: IN std_logic;			-- Segnale per effettuare la scrittura in memoria della somma
		mem_read: IN std_logic;				-- Segnale di controllo per leggere dalla memoria
		rom_read: IN std_logic;				-- Segnale di controllo per leggere il valore in ROM	
		rx_read: IN std_logic;				-- Segnale per la lettura del dato in ingresso
		
		-- Uscite
		sum_out: OUT std_logic_vector(8 downto 0)
	);
end DataPathB;

architecture Structural of DataPathB is
-- Segnali di interconnessione
signal counter_out: std_logic_vector(2 downto 0);
signal rom_out: std_logic_vector(7 downto 0);
signal reg_out: std_logic_vector(7 downto 0);
signal sum_tmp: std_logic_vector(8 downto 0);
begin
	rx_reg: entity work.RX_Register generic map(N => 8) port map(
		CLK => CLK,
		RST => RST,
		EN => rx_read,
		x =>  d_in,
		y => reg_out
	);
	
	rom: entity work.ROM port map(
		CLK => CLK,
		RST => RST,
		addr => counter_out,
		READ => rom_read,
		data_out => rom_out
	);
	
	mem: entity work.Memoria generic map(N => 9, M => 8) port map(
		CLK => CLK,
		RST => RST,
		read => mem_read,
		write => mem_write,
		data_in => sum_tmp,
		addr => counter_out,
		data_out => sum_out
	);
	
	counter: entity work.Contatore generic map(N => 8) port map(
		CLK => CLK,
		RST => RST,
		EN => counter_incr,
		counter_value => counter_out
	);
	
	adder: entity work.RippleCarryAdder port map(
		a => reg_out,
		b => rom_out,
		y => sum_tmp 
	);

end Structural;
