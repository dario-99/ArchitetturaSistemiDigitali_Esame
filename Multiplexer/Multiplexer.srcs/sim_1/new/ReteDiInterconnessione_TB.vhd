----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Decription: TB per Rete di interconnessione 16 a 4, utilizziamo un approccio strutturale con un mux16_1 e un demux 1_4
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ReteDiInterconnessione_TB is
--  Port ( );
end ReteDiInterconnessione_TB;

architecture Behavioral of ReteDiInterconnessione_TB is
-- Input signals
signal x: std_logic_vector(0 to 15) := (others => '0');
signal src: std_logic_vector(3 downto 0) := (others => '0');
signal dst: std_logic_vector(1 downto 0) := (others => '0');
-- Output signals
signal y: std_logic_vector(0 to 3);
-- Simulation constants
constant wait_time: time := 50ns;
begin

	uut: entity work.ReteDiInterconnessione port map(x => x, src => src, dst => dst, y => y);
	
	stim_proc: process
		variable shift: std_logic_vector(0 to 3);
	begin
		x <= x"AAAA";
		src <= "0000";
		dst <= "00";
		wait for wait_time;
		assert(y = x(0)&"000");
		src <= "0000";
		dst <= "01";
		wait for wait_time;
		assert(y = "0"&x(0)&"00");
		src <= "0000";
		dst <= "10";
		wait for wait_time;
		assert(y = "00"&x(0)&"0");
		src <= "0000";
		dst <= "11";
		wait for wait_time;
		assert(y = "000"&x(0));
		------------------------------------------
		src <= "0010";
		dst <= "00";
		wait for wait_time;
		assert(y = x(2)&"000");
		dst <= "01";
		wait for wait_time;
		assert(y = "0"&x(2)&"00");
		dst <= "10";
		wait for wait_time;
		assert(y = "00"&x(2)&"0");
		dst <= "11";
		wait for wait_time;
		assert(y = "000"&x(2));
		wait;
	end process;

end Behavioral;
