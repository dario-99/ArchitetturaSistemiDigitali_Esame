

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyAdder_TB is
--  Port ( );
end KeyAdder_TB;

architecture Behavioral of KeyAdder_TB is
signal x,round_key,y: std_logic_vector(127 downto 0);
begin

	uut: entity work.KeyAdder port map(
		x => x,
		round_key => round_key,
		y => y
	);
	
	x <= x"473794ed40d4e4a5a3703aa64c9f42bc";
	round_key <= x"ac7766f319fadc2128d12941575c006a";

end Behavioral;
