library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity col_mix_TB is
--  Port ( );
end col_mix_TB;

architecture Behavioral of col_mix_TB is
signal x,y: std_logic_vector(127 downto 0);
begin

	uut: entity work.ColumnMixer port map(
		x => x,
		y => y
	);
	
	x <= x"876e46a6f24ce78c4d904ad897ecc395";

end Behavioral;
