----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Priority encoder, sviluppato secondo un approccio strutturale
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PriorityEncoder is
	Port (
		-- Input
		x: IN std_logic_vector(9 downto 0);
		-- Output
		y: OUT std_logic_vector(3 downto 0)
	);
end PriorityEncoder;

architecture Behavioral of PriorityEncoder is
-- Segnali di interconnessione
signal conn: std_logic_vector(9 downto 0);

begin

	arbiter: entity work.Arbiter port map(x => x, y => conn);
	encoder: entity work.Encoder port map(x => conn, y => y);

end Behavioral;
