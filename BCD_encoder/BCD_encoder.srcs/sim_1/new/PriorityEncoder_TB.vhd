----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Testbench priority encoder
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PriorityEncoder_TB is
--  Port ( );
end PriorityEncoder_TB;

architecture Behavioral of PriorityEncoder_TB is
-- Segnali di input
signal x: std_logic_vector(9 downto 0);

-- Segnali di output
signal y: std_logic_vector(3 downto 0);

-- Costanti di simmulazione
constant wait_time: time := 50ns;
begin

	uut: entity work.PriorityEncoder port map(x => x, y => y);
	
	stim_proc: process
		procedure test(x_t: std_logic_vector(9 downto 0); y_t: std_logic_vector(3 downto 0)) is 
		begin
			x <= x_t;
			wait for wait_time;
			assert(y = y_t);
		end procedure;
	begin
		test("0000000001","0000");
		test("0000000011","0001");
		test("0000000101","0010");
		test("0000001001","0011");
		test("0000010001","0100");
		test("0000100001","0101");
		test("0001000001","0110");
		test("0010000001","0111");
		test("0100000001","1000");
		test("1101000001","1001");
		wait;
	end process; 


end Behavioral;
