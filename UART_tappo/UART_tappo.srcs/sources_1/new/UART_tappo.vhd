----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2024 11:33:40
-- Design Name: 
-- Module Name: UART_tappo - Behavioral
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
-- a) UART_TAPPO: il componente acquisisce una stringa di 8 bit (fornita 
-- attraverso gli switch della board di sviluppo) e la serializza tramite la 
-- sezione di trasmissione del dispositivo UART; l'output seriale della UART 
-- viene re-inviato in ingresso alla sezione di ricezione dello stesso dispositivo 
-- (configurazione a tappo), e il dato deserializzato viene visualizzato sui led 
-- della board di sviluppo. 
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

entity UART_tappo is
	Port (
		-- Input 
		CLK, RST: IN std_logic;
		DBIN: IN std_logic_vector(7 downto 0); 		-- Dato letto da switch
		WR_STROBE: IN std_logic := '0';				-- Strobe di scrittura per il trasmettitore, verra' collegato ad un bottone per iniziare la trasmissione al ricevitore 
		
		-- Output
		data_out: OUT std_logic_vector(7 downto 0) := "00000000"
	);
end UART_tappo;

architecture Behavioral of UART_tappo is
-- Signals declaration
-- Input signals
signal RST_n: std_logic;
signal RD: std_logic := '1'; -- Read strobe 0 attiva
signal WR_STROBE_CLRD: std_logic; -- Write strobe debounced

-- Control signals
signal PE, FE, OE: std_logic;
signal TBE: std_logic := '1';
signal RDA: std_logic;

-- In-Out
signal tappo: std_logic := '1'; -- Default 1 in quanto la linea e' tenuta alta per la sincronizzazione tramite  lo start bit basso

-- Output
signal DBOUT: std_logic_vector(7 downto 0);

begin
-- RST negato perche' 0 attivo
RST_n <= not RST;



-- component declaration
rs232: entity work.Rs232RefComp(Behavioral)
	port map
	(
		TXD => tappo,
    	RXD => tappo,					
    	CLK => CLK,					--Master Clock
		DBIN => DBIN, 				--Data Bus in
		DBOUT => DBOUT,				--Data Bus out
		RDA	=> RDA,					--Read Data Available(è alto quando il dato è disponibile nel registro rdReg)
		TBE => TBE,					--Transfer Bus Empty(se è 0 significa che il bus è occupato per una trasmissione)
		RD => RD,					--Read Strobe(se è 0 significa "leggi")
		WR => WR_STROBE_CLRD,					--Write Strobe(se è 1 significa "scrivi")
		PE => PE,					--Parity Error Flag
		FE => FE,					--Frame Error Flag
		OE => OE,					--Overwrite Error Flag
		RST => RST_n					--Master Reset
	);

-- Debouncer
debouncer: entity work.ButtonDebouncer
	generic map(
		CLK_period => 20,
		btn_noise_time => 6500000
	)
	port map(
		CLK => CLK,
		RST => RST_n,
		BTN => WR_STROBE,
		CLEARED_BTN => WR_STROBE_CLRD
	);
	 

-- Read data and reset process
process(CLK, RST, RDA, WR_STROBE_CLRD)
begin
	if rising_edge(CLK) then
		if RST_n = '1' then
			data_out <= (others => '0');
			RD <= '0';
		elsif RDA = '1' then
			data_out <= DBOUT;
			RD <= '1';
		end if;
	end if;
end process;


end Behavioral;
