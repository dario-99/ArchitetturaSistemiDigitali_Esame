----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa trasmettitore
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPathA is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		counter_incr: IN std_logic;			-- Segnale di controllo per incrementare il contatore
		rom_read: IN std_logic;				-- Segnale di controllo per leggere il valore in ROM	
		
		-- Uscite
		d_out: OUT std_logic_vector(7 downto 0)
	);
end DataPathA;

architecture Structural of DataPathA is
-- Segnali di interconnessione
signal counter_out: std_logic_vector(2 downto 0);
signal rom_out: std_logic_vector(7 downto 0);
begin
	d_out <= rom_out;
	rom: entity work.ROM port map(
		CLK => CLK,
		RST => RST,
		addr => counter_out,
		READ => rom_read,
		data_out => rom_out
	);
	
	counter: entity work.Contatore generic map(N => 8) port map(
		CLK => CLK,
		RST => RST,
		EN => counter_incr,
		counter_value => counter_out
	);

end Structural;
