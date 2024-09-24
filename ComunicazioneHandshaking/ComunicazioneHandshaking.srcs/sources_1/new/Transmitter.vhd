----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Trasemettitore
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transmitter is
	Port (
		-- Ingressi 
		CLK, RST: IN std_logic;
		ACK: IN std_logic;
		-- Uscite
		d_out: OUT std_logic_vector(7 downto 0);
		rts: OUT std_logic := '0'
	);
end Transmitter;

architecture Structural of Transmitter is
-- Segnali di interconnessione
signal counter_incr, rom_read: std_logic;
begin

	dataPath: entity work.DataPathA port map(
		CLK => CLK,
		RST => RST,
		counter_incr => counter_incr,
		rom_read => rom_read,
		d_out => d_out
	);
	cu: entity work.ControlUnitA port map(
		CLK => CLK,
		RST => RST,
		ACK => ACK,
		counter_incr => counter_incr,
		rom_read => rom_read,
		RTS => rts
	);

end Structural;
