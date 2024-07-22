library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_TB is
--  Port ( );
end FF_TB;

architecture Behavioral of FF_TB is
-- segnali input
signal input: std_logic_vector(0 to 3) := "0000";
signal s: std_logic_vector(1 downto 0) := "00";

-- segnali output
signal y: std_logic;

-- Costanti di simulazione
constant wait_time: time := 50ns;
begin

	uut: entity work.mux_4_1 port map(
		input => input,
		s => s,
		y => y
	);	 
	
	stim_proc: process
	begin 
		input <= "1010";
		s <= "00";
		wait for wait_time;
		assert(y = '1');
		s <= "01";
		wait for wait_time;
		assert(y = '0');
		s <= "10";
		wait for wait_time;
		assert(y = '1');
		s <= "11";
		wait for wait_time;
		assert(y = '0');
		wait;
	end process;

end Behavioral;
