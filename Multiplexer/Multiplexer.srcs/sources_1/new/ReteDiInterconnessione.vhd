----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: Rete di interconnessione 16 a 4, utilizziamo un approccio strutturale con un mux16_1 e un demux 1_4
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ReteDiInterconnessione is
	Port (
		-- Input 
		x: IN std_logic_vector(0 to 15);
		src: IN std_logic_vector(3 downto 0);
		dst: IN std_logic_vector(1 downto 0);
		
		-- Output
		y: OUT std_logic_vector(0 to 3)	
	);
end ReteDiInterconnessione;

architecture Structural of ReteDiInterconnessione is

-- Segnale di interconnessione
signal conn: std_logic;

-- Segnale valore di default
signal default_value: std_logic_vector(0 to 15) := x"AAAA";

begin
	x <= default_value;
	mux_16_1: entity work.mux_16_1 port map(x => x, s => src, y => conn);
	demux_1_4: entity work.demux_1_4 port map(x => conn, d => dst, y => y);

end Structural;
