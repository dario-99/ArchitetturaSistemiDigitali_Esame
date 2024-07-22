----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: TB per il mux 4-1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1_TB is
--  Port ( );
end mux_4_1_TB;

architecture Behavioral of mux_4_1_TB is
-- Input signals
signal x: std_logic_vector(0 to 3) := "0000";
signal s: std_logic_vector(1 downto 0) := "00";
-- Output signals
signal y: std_logic;
-- Simulation constants
constant wait_time: time := 50ns;
begin

uut: entity work.mux_4_1
	port map(
		x => x,
		s => s,
		y => y
	);

stim_proc: process
	procedure test(x_t: IN std_logic_vector(0 to 3)) is
	begin
		x <= x_t;
		s <= "00";
		assert(y = x(0));
		wait for wait_time;
		s <= "01";
		assert(y = x(1));
		wait for wait_time;
		s <= "10";
		assert(y = x(2));
		wait for wait_time;
		s <= "11";
		assert(y = x(3));
		wait for wait_time;
	end procedure;
begin
	test("0001");
	test("0010");
	test("0100");
	test("1000");
	wait;
end process;

end Behavioral;
