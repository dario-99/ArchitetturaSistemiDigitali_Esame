----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: mux 2 1 con parallellimo a 8 bit
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2_1_parallel is
	Port (
		-- Ingressi
		a: IN std_logic_vector(7 downto 0);
		b: IN std_logic_vector(7 downto 0);
		s: IN std_logic;
		-- Uscite
		y: OUT std_logic_vector(7 downto 0)
	);
end Mux_2_1_parallel;

architecture Behavioral of Mux_2_1_parallel is

begin
	with s select
		y <= a when '0',
			 b when '1',
			 (others => '0') when others;
end Behavioral;
