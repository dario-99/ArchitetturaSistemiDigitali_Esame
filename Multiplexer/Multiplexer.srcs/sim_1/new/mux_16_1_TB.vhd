----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: TB per il mux 16-1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_16_1_TB is
--  Port ( );
end mux_16_1_TB;

architecture Behavioral of mux_16_1_TB is
-- Input signals
signal x: std_logic_vector(0 to 15) := x"0000";
signal s: std_logic_vector(3 downto 0) := "0000";
-- Output signals
signal y: std_logic;
-- Simulation constants
constant wait_time: time := 50ns;
begin

uut: entity work.mux_16_1
	port map(
		x => x,
		s => s,
		y => y
	);

stim_proc: process
	procedure test(x_t: IN std_logic_vector(0 to 15)) is
	begin
		x <= x_t;
		s <= "0000";
		assert(y = x(0));
		wait for wait_time;
		s <= "0001";
		assert(y = x(1));
		wait for wait_time;
		s <= "0010";
		assert(y = x(2));
		wait for wait_time;
		s <= "0011";
		assert(y = x(3));
		wait for wait_time;
		s <= "0100";
		assert(y = x(4));
		wait for wait_time;
		s <= "0101";
		assert(y = x(5));
		wait for wait_time;
		s <= "0110";
		assert(y = x(6));
		wait for wait_time;
		s <= "0111";
		assert(y = x(7));
		wait for wait_time;
		s <= "1000";
		assert(y = x(8));
		wait for wait_time;
		s <= "1001";
		assert(y = x(9));
		wait for wait_time;
		s <= "1010";
		assert(y = x(10));
		wait for wait_time;
		s <= "1011";
		assert(y = x(11));
		wait for wait_time;
		s <= "1100";
		assert(y = x(12));
		wait for wait_time;
		s <= "1101";
		assert(y = x(13));
		wait for wait_time;
		s <= "1110";
		assert(y = x(14));
		wait for wait_time;
		s <= "1111";
		assert(y = x(15));
		wait for wait_time;
	end procedure;
begin
	test(x"AAAA");
	wait;
end process;

end Behavioral;
