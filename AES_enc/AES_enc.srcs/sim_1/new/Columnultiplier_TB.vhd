library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ColumnMultiplier_TB is
--  Port ( );
end ColumnMultiplier_TB;

architecture Behavioral of ColumnMultiplier_TB is
signal x,y: std_logic_vector(31 downto 0);
begin
	
	x <= x"F24CE78C";
	uut: entity work.ColumnMultiplier port map(
		x => x,
		y => y
	);

end Behavioral;
