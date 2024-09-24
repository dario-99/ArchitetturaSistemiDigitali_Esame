
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rowShifter_TB is
--  Port ( );
end rowShifter_TB;

architecture Behavioral of rowShifter_TB is
signal x,y: std_logic_vector(127 downto 0);
begin
	uut: entity work.rowShifter port map(
		input => x,
		output => y
	);
--	x <= x"5468617473206D79204B756E67204675";
	x <= x"000102030405060708090A0B0C0D0E0F";
end Behavioral;
