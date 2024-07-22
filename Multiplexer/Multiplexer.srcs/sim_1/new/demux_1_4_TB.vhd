----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: TB per demux 1 a 4
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1_4_TB is
--  Port ( );
end demux_1_4_TB;

architecture Behavioral of demux_1_4_TB is

-- Input signals
signal x: std_logic;
signal d: std_logic_vector(1 downto 0);
-- Output signals
signal y: std_logic_vector(0 to 3);
-- Simulation constants
constant wait_time: time := 50ns;
begin

	uut: entity work.demux_1_4 port map( x => x, d => d, y => y);
	
	stim_proc: process 
	begin
		x <= '1';
		d <= "00";
		wait for wait_time;
		assert(y = "1000");
		d <= "01";
		wait for wait_time;
		assert(y = "0100");
		d <= "10";
		wait for wait_time;
		assert(y = "0010");
		d <= "11";
		wait for wait_time;
		assert(y = "0001");
		wait;
	end process;

end Behavioral;
