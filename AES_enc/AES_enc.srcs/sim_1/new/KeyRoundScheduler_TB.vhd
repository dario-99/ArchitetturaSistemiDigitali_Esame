

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyRoundScheduler_TB is
--  Port ( );
end KeyRoundScheduler_TB;

architecture Behavioral of KeyRoundScheduler_TB is
signal subkey: std_logic_vector(127 downto 0);
signal round_const: std_logic_vector(7 downto 0);
signal next_subkey: std_logic_vector(127 downto 0);
begin

	uut: entity work.KeyRoundScheduler port map(
		subkey => subkey,
		round_const => round_const,
		next_subkey => next_subkey
	);
	
	stim_proc: process
		variable temp:  std_logic_vector(127 downto 0);
	begin
		subkey <= (others => '0');
		round_const <= x"01";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"02";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"04";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"08";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"10";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"20";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"40";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"80";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"1B";
		wait for 10ns;
		temp := next_subkey;
		subkey <= temp;
		round_const <= x"36";
		wait for 10ns;
		temp := next_subkey;
		wait;
	end process;

end Behavioral;
