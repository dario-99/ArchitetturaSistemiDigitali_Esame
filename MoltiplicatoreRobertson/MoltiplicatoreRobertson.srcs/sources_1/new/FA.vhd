----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Full adder
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
	Port (
		-- Ingressi
		a,b: IN std_logic;
		c_in: IN std_logic;
		
		-- Uscite
		c_out: OUT std_logic;
		s: OUT std_logic
	);
end FA;

architecture Behavioral of FA is

begin

	s <= a xor b xor c_in;
	c_out <= (a and b) or (c_in and (a xor b));

end Behavioral;
