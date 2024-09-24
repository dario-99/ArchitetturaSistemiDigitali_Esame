library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;


entity Mux is
	generic(
		N: integer := 32
	);
	Port (
		input_0: std_logic_vector(N-1 downto 0);
		input_1: std_logic_vector(N-1 downto 0);
		s: IN std_logic;
		y: OUT std_logic_vector(N-1 downto 0)
	);
end Mux;

architecture Behavioral of Mux is

begin
	y <= input_0 when s='0' else input_1;
	
end Behavioral;
