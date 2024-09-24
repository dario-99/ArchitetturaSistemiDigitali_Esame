library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES_encoderOnBoard is
	Port (
		-- Input
		CLK,RST_N: IN std_logic;
		start: IN std_logic;
		next_msg: IN std_logic;
		-- Output
		done: OUT std_logic;
		encrypted_msg: OUT std_logic_vector(127 downto 0)
	);
end AES_encoderOnBoard;

architecture Behavioral of AES_encoderOnBoard is
-- Dichiaro la chiave come costante
constant key: std_logic_vector(127 downto 0) := x"2b7e151628aed2a6abf7158809cf4f3c";
signal msg: std_logic_vector(127 downto 0);
signal enc_msg: std_logic_vector(127 downto 0);
signal RST: std_logic;	-- RST 1 attivo
signal cnt_value: std_logic_vector(1 downto 0);
begin
	RST <= not RST_n;
	-- Contatore
	msg_cntr: entity work.Contatore generic map( N => 4 )port map(
		CLK => CLK,
		RST => RST,
		EN => next_msg,
		cnt_value => cnt_value
	);
	
	-- Rom
	rom_msg: entity work.ROM port map(
		CLK => CLK,
		RST => RST,
		READ => start,
		addr => cnt_value,
		data => msg
	);	
	
	-- AES encoder
	aes_enc: entity work. AES_encoder port map(
		CLK => CLK,
		RST => RST,
		msg => msg,
		key => key,
		start => start,
		done => done,
		encrypted_msg => enc_msg
	);
	
	encrypted_msg <= enc_msg;
end Behavioral;
