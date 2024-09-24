library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES_encoder_TB is
--  Port ( );
end AES_encoder_TB;

architecture Behavioral of AES_encoder_TB is
signal CLK,RST,start: std_logic := '0';
signal msg,key,encrypted_msg: std_logic_vector(127 downto 0);
signal done: std_logic;

begin

	clk_proc: process
	begin
		CLK <= '1';
		wait for 10ns;
		CLK <= '0';
		wait for 10ns;
	end process;

	uut: entity work.AES_encoder port map(
		CLK => CLK,
		RST => RST,
		msg => msg,
		key => key,
		start => start,
		done => done,
		encrypted_msg => encrypted_msg
	);
	
	stim_proc: process
	begin
		rst <= '1';
		wait for 50ns;
		rst <= '0';
		msg <= x"30c81c46a35ce411e5fbc1191a0a52ef";
		key <= x"2b7e151628aed2a6abf7158809cf4f3c";
		start <= '1';
		wait for 50ns;
		start <= '0';
		wait;
	end process;

end Behavioral;
