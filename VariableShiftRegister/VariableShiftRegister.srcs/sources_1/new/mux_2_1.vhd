----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Implementazione Mux 2 ingressi
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity mux_2_1 is
	Port (
		input: IN std_logic_vector(0 to 1);
		s: IN std_logic;
		y: OUT std_logic
  );
end mux_2_1;

architecture Behavioral of mux_2_1 is

begin
	with s select 
		y <= input(0) when '0',
			 input(1) when '1',
			 '-' when others;
end Behavioral;
