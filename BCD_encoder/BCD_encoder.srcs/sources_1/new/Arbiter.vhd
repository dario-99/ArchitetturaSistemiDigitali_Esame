----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Priority arbiter, da in uscita la stringa corrispettiva al bit piu' significativo
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Arbiter is
	Port (
		-- Input
		x: IN std_logic_vector(9 downto 0);
		-- Output
		y: OUT std_logic_vector(9 downto 0)
	);
end Arbiter;

architecture Behavioral of Arbiter is

begin
	y <= "1000000000" when x(9) = '1' else
		 "0100000000" when x(8) = '1' else
		 "0010000000" when x(7) = '1' else
		 "0001000000" when x(6) = '1' else
		 "0000100000" when x(5) = '1' else
		 "0000010000" when x(4) = '1' else
		 "0000001000" when x(3) = '1' else
		 "0000000100" when x(2) = '1' else
		 "0000000010" when x(1) = '1' else
		 "0000000001" when x(0) = '1' else
		 "----------";
end Behavioral;
