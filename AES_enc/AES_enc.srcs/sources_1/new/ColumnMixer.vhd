----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Formato da 4 column multiplier che effettuano la moltiplicazione con la matrice costante per ogni colonna
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ColumnMixer is
	Port (
		-- Input
		x: IN std_logic_vector(127 downto 0);
		-- Output
		y: OUT std_logic_vector(127 downto 0)
	);
end ColumnMixer;

architecture Behavioral of ColumnMixer is

begin

	col_mul_0: entity work.ColumnMultiplier port map(
		x => x(31 downto 0),
		y => y(31 downto 0)
	);
	col_mul_1: entity work.ColumnMultiplier port map(
		x => x(63 downto 32),
		y => y(63 downto 32)
	);
	col_mul_2: entity work.ColumnMultiplier port map(
		x => x(95 downto 64),
		y => y(95 downto 64)
	);
	col_mul_3: entity work.ColumnMultiplier port map(
		x => x(127 downto 96),
		y => y(127 downto 96)
	);
end Behavioral;
