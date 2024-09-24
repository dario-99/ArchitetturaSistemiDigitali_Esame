----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Circuito combinatorio per la generazione della chiave del round corrente
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyRoundScheduler is
	port (		
		-- Input
		subkey : IN std_logic_vector(127 downto 0);			-- Chiave all'iterazione corrente
		round_const : IN std_logic_vector(7 downto 0);		-- Costante relativa al round
		-- Output
		next_subkey : OUT std_logic_vector(127 downto 0)	-- Risultato
	);
end KeyRoundScheduler;

architecture behavioral of KeyRoundScheduler is
	signal substitued_sk : std_logic_vector(31 downto 0);
	signal shifted_sk : std_logic_vector(31 downto 0);
	signal xor_rconst: std_logic_vector(31 downto 0);
	signal w3, w2, w1, w0 : std_logic_vector(31 downto 0);
	
	alias x0: std_logic_vector(31 downto 0) is subkey(127 downto 96);
	alias x1: std_logic_vector(31 downto 0) is subkey(95 downto 64);
	alias x2: std_logic_vector(31 downto 0) is subkey(63 downto 32);
	alias x3: std_logic_vector(31 downto 0) is subkey(31 downto 0);
begin
	-- ROTWORD
	-- Eseguo lo shift di 1 byte della stringa sostituita
	shifted_sk <= subkey(23 downto 0) & subkey(31 downto 24);
	-- SUBWORD
	-- Sostituzione con la LUT degli ultimi 4 Byte
	gen_sboxes : for i in 0 to 3 generate
		sbox_inst : entity work.sbox
			port map(
				input_byte  => shifted_sk((i + 1)*8 - 1 downto i*8),
				output_byte => substitued_sk((i + 1)*8 - 1 downto i*8)
			);			
	end generate gen_sboxes;
	
	
	-- Effettuo lo XOR con la stringa round_const & x"000000"
	xor_rconst <= (substitued_sk(31 downto 24) xor round_const) & substitued_sk(23 downto 0);
	-- RCON
	-- effettuo l'operazione di somma delle word
	w0 <= xor_rconst xor x0;
	w1 <= w0 xor x1;
	w2 <= w1 xor x2;
	w3 <= w2 xor x3;
    -- Genero la RoundKey, possso porre in input la next_subkey a questo componente per ottenere la prossimma RoundKey
	next_subkey <= w0 & w1 & w2 & w3;
		
	
end architecture behavioral;
