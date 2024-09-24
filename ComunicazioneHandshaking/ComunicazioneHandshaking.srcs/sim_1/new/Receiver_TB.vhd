library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Receiver_TB is
--  Port ( );
end Receiver_TB;

architecture Behavioral of Receiver_TB is
-- Segnali di ingresso
signal CLK,RST,rts: std_logic := '0';
signal d_rx: std_logic_vector(7 downto 0);

-- Segnali di uscita
signal sum_out: std_logic_vector(8 downto 0);
signal ACK: std_logic;
-- Costanti di simulazione
constant clk_period: time := 10ns;
begin
	uut: entity work.Receiver port map(
		CLK => CLK,
		RST => RST,
		rts => rts,
		d_rx => d_rx,
		sum_out => sum_out,
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
		rts <= '1';
		wait until ACK = '1';
		d_rx <= x"A1";
		rts <= '0';
		wait;
	end process;

end Behavioral;
