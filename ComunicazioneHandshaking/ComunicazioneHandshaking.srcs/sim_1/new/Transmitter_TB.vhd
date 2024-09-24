library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transmitter_TB is
--  Port ( );
end Transmitter_TB;

architecture Behavioral of Transmitter_TB is
-- Segnali di ingresso
signal CLK,RST,ACK: std_logic := '0';

-- Segnali di uscita
signal d_out: std_logic_vector(7 downto 0);
signal rts: std_logic;

-- Costanti di simulazione
constant clk_period: time := 10ns;
begin
	uut: entity work.Transmitter port map(
		CLK => CLK,
		RST => RST,
		rts => rts,
		d_out => d_out,
		ack => ack
	);
	
	clock_proc: process
	begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
	end process;
	
	stim_proc: process
	begin 
		wait until rts = '1';
		ack <= '1';
		wait until rts = '0';
		ack <= '0';
		wait;
	end process;

end Behavioral;
