----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Implementazione Mux 4 ingressi
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

entity mux_4_1 is
	Port (
		input: IN std_logic_vector(0 to 3);
		s: IN std_logic_vector(1 downto 0);
		y: OUT std_logic
  );
end mux_4_1;

architecture Behavioral of mux_4_1 is

begin
	y <= input(to_integer(unsigned(s)));
end Behavioral;
