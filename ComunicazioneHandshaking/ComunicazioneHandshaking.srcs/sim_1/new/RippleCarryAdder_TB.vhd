library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdder_TB is
--  Port ( );
end RippleCarryAdder_TB;

architecture Behavioral of RippleCarryAdder_TB is
-- Segnali di ingresso
signal a,b: std_logic_vector(7 downto 0) := (others => '0');

-- Segnali di uscita
signal y: std_logic_vector(8 downto 0);
-- costanti di simulazione
constant wait_time: time := 50ns;
begin

	uut: entity work.RippleCarryAdder port map(
		a => a,
		b => b,
		y => y
	);
	
	stim_proc: process
		procedure test(a_t: IN std_logic_vector(7 downto 0); b_t: IN std_logic_vector(7 downto 0); y_t: IN std_logic_vector(8 downto 0)) is
		begin
			a <= a_t;
			b <= b_t;
			wait for wait_time;
			assert(y = y_t);
		end procedure;
	begin
		test(x"12",x"6C","0" & x"7E");
		test(x"FF",x"FF","1" & x"FE");
		test(x"45",x"68","0" & x"AD");
		wait;
	end process;

end Behavioral;
