----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2024 17:41:01
-- Design Name: 
-- Module Name: UART_pc_connection - Behavioral
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
-- 
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

entity UART_pc_connection is
	Port (
		-- Input ports
		CLK,RST: IN std_logic;
		UART_TXD_IN: IN std_logic;
		
		-- switch data
		d_in: IN std_logic_vector(7 downto 0);
		-- Send button
		write_strobe: std_logic;
		
		-- Output
		UART_RXD_OUT: OUT std_logic;
		d_out: OUT std_logic_vector(7 downto 0)
	);
end UART_pc_connection;

architecture Behavioral of UART_pc_connection is

-- Reset 0 attivo
signal RST_n: std_logic;

-- UART signals
signal RDA: std_logic;
signal TBE: std_logic;
signal PE, FE, OE: std_logic; 		-- Error checking signals

signal RD: std_logic := '0';		-- 0 attivo, read strobe


begin
RST_n <= not RST;

uart: entity work.RS232RefComp
	port map
	(
		CLK => CLK,
		RST => RST_n,
		TXD => UART_RXD_OUT,
		RXD => UART_TXD_IN,
		DBIN => d_in,
		DBOUT => d_out,
		RDA => RDA,
		TBE => TBE,
		RD => RD,
		WR => write_strobe,
		PE => PE,
		FE => FE,
		OE => OE
	);
end Behavioral;
