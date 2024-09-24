----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Mux a 2 ingressi
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity mux_2_1 is
	Port (
		-- Input
		a: IN std_logic_vector(127 downto 0);
		b: IN std_logic_vector(127 downto 0);
		s: IN std_logic;
		
		-- Output
		y: OUT std_logic_vector(127 downto 0)
	);
end mux_2_1;

architecture Behavioral of mux_2_1 is

begin
	with s select y <=
		a when '0',
		b when '1',
		(others => '0') when others;
end Behavioral;
