----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: shift register a 8 bit con caricamento parallelo
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		load: IN std_logic;			-- Se 1 caricamento parallelo
		shift: IN std_logic;		-- Shift del registro
		x: IN std_logic;
		parallel_in: IN std_logic_vector(7 downto 0);
		-- Uscite 
		parallel_out: OUT std_logic_vector(7 downto 0);
		y: OUT std_logic
	);
end ShiftRegister;

architecture Behavioral of ShiftRegister is

signal reg: std_logic_vector(7 downto 0);

begin
	parallel_out <= reg;
	y <= reg(0);
	
	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				reg <= (others => '0');
			elsif shift = '1' then
				reg <= x & reg(7 downto 1);
			elsif load = '1' then
				reg <= parallel_in;
			end if;			
		end if;
	end process;
	
end Behavioral;
