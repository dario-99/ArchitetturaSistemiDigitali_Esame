----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: LUT contenente le Round Constants, supponendo un AES128 abbiammo bisogno di 11 round const
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RoundConstLUT is
	Port (
		-- Input
		idx: IN std_logic_vector(3 downto 0); 				-- 2^4 = 16, utilizzeremo solo le prime 11 posizioni
		-- Output	
		round_const: OUT std_logic_vector(7 downto 0)	
	);
end RoundConstLUT;

architecture Behavioral of RoundConstLUT is

begin

	with idx select round_const <=
		x"01" when x"0",
		x"02" when x"1",
		x"04" when x"2",
		x"08" when x"3",
		x"10" when x"4",
		x"20" when x"5",
		x"40" when x"6",
		x"80" when x"7",
		x"1B" when x"8",
		x"36" when x"9",
		x"6C" when x"A",
		x"00" when others; 
end Behavioral;
