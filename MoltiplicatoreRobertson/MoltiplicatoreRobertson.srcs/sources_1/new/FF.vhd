----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Flip Flop che contiene il bit di segno
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		q0: IN std_logic;
		m7: IN std_logic;
		-- Uscite
		y: OUT std_logic
	);
end FF;

architecture Behavioral of FF is
signal reg: std_logic := '0';
begin
	y <= reg;
	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				reg <= '0';
			else
				reg <= (q0 and m7) or reg;
			end if;
		end if;
	end process;
end Behavioral;
