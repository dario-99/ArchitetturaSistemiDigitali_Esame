----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: mux 2 1 con parallellimo a 8 bit
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2_1 is
	Port (
		-- Ingressi
		a: IN std_logic;
		b: IN std_logic;
		s: IN std_logic;
		-- Uscite
		y: OUT std_logic
	);
end Mux_2_1;

architecture Behavioral of Mux_2_1 is

begin
	with s select
		y <= a when '0',
			 b when '1',
			 '0' when others;
end Behavioral;
