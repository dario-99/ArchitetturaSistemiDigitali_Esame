----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Priority encoder con cifra visibile su display
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PriorityEncoderOnDisplay is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		x: IN std_logic_vector(9 downto 0);
		
		-- Output
		cathodes_out: OUT std_logic_vector(7 downto 0);
		anodes_out: OUT std_logic_vector(7 downto 0)
	);
end PriorityEncoderOnDisplay;

architecture Behavioral of PriorityEncoderOnDisplay is

-- temp signals
signal y_encoder: std_logic_vector(3 downto 0);

-- Negated reset 
signal RST_n: std_logic;

begin
	-- Pongo RST_n  al negato di RST, poiche' il bottone RST sulla board e' 0 attivo
	RST_n <= not RST;

	priorityEncoder: entity work.PriorityEncoder port map(x => x, y => y_encoder);
	seven_seg: entity work.seven_segment_array 
		port map(
			CLK => CLK,
			RST => RST_n,
			value => x"0000000" &y_encoder,
			enable => "00000001",
			dots => "00000000",
			anodes => anodes_out,
			cathodes => cathodes_out
		);

end Behavioral;
