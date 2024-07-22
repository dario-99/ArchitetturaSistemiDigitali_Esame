----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: TESTBENCH Shift register ad N valori, con possibilita' di cambiare direzione di shifting e numero di shift (1 o 2)
--				L'implementazione non permette il caricamento parallelo
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister_TB is
--  Port ( );
end ShiftRegister_TB;

architecture Behavioral of ShiftRegister_TB is
-- Segnali di ingresso
signal CLK,RST,x,direction,qta,read_strobe: std_logic := '0';
-- Segnali di uscita
signal y: std_logic;
-- Costanti di simulazione
constant clock_period: time := 10ns;

begin

	uut: entity work.ShiftRegister(Structural)
		generic map( N => 8)
		port map(x => x, CLK => CLK, RST => RST, y => y, direction => direction, qta => qta, read_strobe => read_strobe);
	
	clock_proc: process
	begin
		CLK <= '0';
		wait for clock_period/2;
		CLK <= '1';
		wait for clock_period/2;
	end process;
	
	stim_proc: process
		procedure test(x_t: std_logic_vector(0 to 7)) is
		begin 
			RST <= '1';
			wait for clock_period;
			RST <= '0';
			for i in 0 to 7 loop
				x <= x_t(i);
				read_strobe <= '1';
				wait for clock_period;
				read_strobe <= '0';
			end loop;
		end procedure;
	begin
		-- Testing direzione a destra, qta = 0
		qta <= '0';
		direction <= '0';
		test("10010000");
		-- Testing direzione a destra, qta = 1
		wait for 20ns;
		qta <= '1';
		direction <= '0';
		test("10010000");
		-- Testing direzione a sinistra, qta = 0
		wait for 20ns;
		qta <= '0';
		direction <= '1';
		test("10010000");
		-- Testing direzione a sinistra, qta = 1
		wait for 20ns;
		qta <= '1';
		direction <= '1';
		test("10010000");
		wait;
	end process;
end Behavioral;
