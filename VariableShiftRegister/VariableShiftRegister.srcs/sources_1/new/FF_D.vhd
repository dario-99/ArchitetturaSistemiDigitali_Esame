----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Flip Flop di tipo D
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_D is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		EN: IN std_logic;			-- Segnale di Enable
		d: IN std_logic;
			
		-- Output
		y: OUT std_logic
	);
end FF_D;

architecture Behavioral of FF_D is
signal reg: std_logic;
begin
	y <= reg;
	process(CLK,RST)
	begin
		if rising_edge(CLK) then
			if rst = '1' then
				reg <= '0';	
			else
				if EN = '1' then
					reg <= d;
				end if;
			end if;
		end if;
	end process;
	
end Behavioral;
