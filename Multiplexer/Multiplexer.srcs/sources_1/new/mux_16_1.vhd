----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: Mux 16 a 1, definito tramite approcio strutturale come composizione di mux_4_1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_16_1 is
	Port (
		-- Input
		x: IN std_logic_vector(0 to 15);
		s: IN std_logic_vector(3 downto 0);
		
		-- Output
		y: OUT std_logic
	);
end mux_16_1;

architecture Structural of mux_16_1 is

-- Segnali di interconnessione
signal conn: std_logic_vector(0 to 3);

begin

mux_for: for i in 0 to 4 generate
	mux_first_layer: if i < 4 generate
		mux: entity work.mux_4_1 port map(x => x(i*4 to i*4+3), s => s(1 downto 0), y => conn(i));
	end generate;
	mux_last_layer: if i = 4 generate
		last_mux: entity work.mux_4_1 port map(x => conn, s => s(3 downto 2), y => y);
	end generate;
end generate;

end Structural;
