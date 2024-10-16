----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2024 10:31:50
-- Design Name: 
-- Module Name: comunicazione_2_uart - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- TRACCIA:
-- b) 2_UART: il componente acquisisce una stringa di 8 bit (fornita dall'utente 
-- tramite gli switch della board di sviluppo), la serializza tramite la sezione 
-- di trasmissione di un primo dispositivo UART, la deserializza tramite la 
-- sezione di ricezione di un secondo dispositivo UART collegato a valle del 
-- primo, e mostra le stringa led della board di sviluppo.

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comunicazione_2_uart is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		data_in: IN std_logic_vector(7 downto 0); 	-- Stringa 8 bit inserita dall'utente tramite gli switch della board
		write_strobe: IN std_logic; 				-- Strobe di scrittura, 1 attivo, indica che il trasmettitore puo' iniziare la trasmissione del dato su DBIN
		read_strobe: IN std_logic; 					-- Strobe di lettura, 0 attivo, indica che il ricevitore e' pronto a ricevere. 
		
		-- Output
		data_out: OUT std_logic_vector(7 downto 0) 	-- Stringa 8 bit mostrata in output sui led della board
		
	);
end comunicazione_2_uart;

architecture Behavioral of comunicazione_2_uart is
	-- Reset 0 attivo
	signal RST_n: std_logic;
	
	-- read_strobe 0 attivo
	signal read_strobe_n: std_logic;
	
	-- Segnali per il trasmettitore
	signal TBE: std_logic := '1';
	
	-- Segnali per il ricevitore
	signal RDA: std_logic; 		-- Read Data available, 1 se il dato puo' essere letto, si abbassa se abbasso la linea RD
	signal PE,FE,OE: std_logic;	-- Bit di error detection (Parity error, Frame error, OverRun error)
	
	-- Segnale di interconnessione tra i due UART
	signal conn: std_logic := '1';	-- Valore di default 1 per il protocollo di comunicazione asincrona 

begin
	RST_n <= not RST;
	read_strobe_n <= not read_strobe;
	
	-- Definizione due UART
	trasmettitore: entity work.RS232RefComp
		port map(
			CLK => CLK,
			RST => RST_n,
			TXD => conn,
			RXD => '0',
			DBIN => data_in,
			DBOUT => open,
			RDA => open,
			TBE => TBE,
			RD => '1',				-- 0 attivo
			WR => write_strobe,
			PE => open,
			FE => open,
			OE => open
		);
	ricevitore: entity work.RS232RefComp
			port map(
				CLK => CLK,
				RST => RST_n,
				TXD => open,
				RXD => conn,
				DBIN => "00000000",
				DBOUT => data_out,
				RDA => RDA,
				RD => read_strobe_n,
				WR => '0',
				PE => PE,
				FE => FE,
				OE => OE
			);

end Behavioral;
