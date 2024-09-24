----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Sistema che contiene entrambi i nodi e li collega opportunamente
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SistemaComunicazione is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		-- Uscite
		d_out: OUT std_logic_vector(8 downto 0)
	);
end SistemaComunicazione;

architecture Structural of SistemaComunicazione is
-- Segnali di interconnessione
signal ack, rts: std_logic;
signal data_line: std_logic_vector(7 downto 0);
begin

	tx: entity work.Transmitter port map(
		CLK => CLK,
		RST => RST,
		ACK => ack,
		d_out => data_line,
		rts => rts
	);
	
	rx: entity work.Receiver port map(
		CLK => CLK,
		RST => RST,
		rts => rts,
		d_rx => data_line,
		sum_out => d_out,
		ack => ack
	);

end Structural;
