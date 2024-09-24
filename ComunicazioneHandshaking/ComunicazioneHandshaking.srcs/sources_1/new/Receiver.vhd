----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Ricevitore
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Receiver is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		rts: IN std_logic;
		d_rx: IN std_logic_vector(7 downto 0);
		-- Uscite
		sum_out: OUT std_logic_vector(8 downto 0);
		ACK: OUT std_logic
	);
end Receiver;

architecture Structural of Receiver is
-- Segnali di interconnessione
signal counter_incr, sum, mem_write, mem_read, rom_read, rx_read: std_logic;
begin

	datapath: entity work.DataPathB port map(
		CLK => CLK,
		RST => RST,
		d_in => d_rx,
		counter_incr => counter_incr,
		sum => sum,
		mem_write => mem_write,
		mem_read => mem_read,
		rom_read => rom_read,
		rx_read => rx_read,
		sum_out => sum_out
	);
	cu: entity work.ControlUnitB port map(
		CLK => CLK,
		RST => RST,
		RTS => rts,
		counter_incr => counter_incr,
		sum => sum,
		mem_write => mem_write,
		mem_read => mem_read,
		rom_read => rom_read,
		rx_read => rx_read,
		ACK => ACK
	);

end Structural;
