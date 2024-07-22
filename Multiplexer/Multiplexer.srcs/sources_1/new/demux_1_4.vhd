----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: demux 1 a 4
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1_4 is
	Port (
		-- Input
		x: IN std_logic;
		d: IN std_logic_vector(1 downto 0);
		
		-- Output
		y: OUT std_logic_vector(0 to 3)
	);
end demux_1_4;

architecture Behavioral of demux_1_4 is

begin

with d select
	y <= "000" & x when "11",
		 "00" & x & "0" when "10",
		 "0" & x & "00" when "01",
		 x & "000" when "00",
		 "----" when others;

end Behavioral;
