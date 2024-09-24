----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Control Unit implementata attraverso logica microprogrammata
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		start: IN std_logic;
		counter_value: IN std_logic_vector(2 downto 0);
		
		-- Uscite
		load_a_reg: OUT std_logic;
		load_q_reg: OUT std_logic;
		load_m_reg: OUT std_logic;
		countr_incr: OUT std_logic;
		shift: OUT std_logic;
		sottrazione: OUT std_logic;
		mux_sel: OUT std_logic
	);
end ControlUnit;

architecture Behavioral of ControlUnit is

constant IDLE: std_logic_vector(2 downto 0) := "000";
constant LOAD_Q_M: std_logic_vector(2 downto 0) := "001";
constant ADD: std_logic_vector(2 downto 0) := "010";
constant SHIFT_reg: std_logic_vector(2 downto 0) := "011";
constant INCR: std_logic_vector(2 downto 0) := "100";
constant SUB: std_logic_vector(2 downto 0) := "101";
constant LAST_SHIFT: std_logic_vector(2 downto 0) := "110";

-- Segnali di interconnessione
signal PC_next: std_logic_vector(2 downto 0);
signal pc: std_logic_vector(2 downto 0);
signal PC_SET: std_logic_vector(2 downto 0);
signal control_out: std_logic_vector(0 to 9);
begin

	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				PC_SET <= IDLE;
			elsif PC_next = IDLE and start = '1' then
				PC_SET <= LOAD_Q_M;
			elsif PC_next = ADD and counter_value = "110" then
				PC_SET <= SUB;
			else
				PC_SET <= PC_next;
			end if;
		end if;
	end process;

	program_counter: entity work.ProgramCounter port map(
		CLK => CLK,
		RST => RST,
		parallel_in => PC_SET,
		pc => pc
	);
	micro_rom: entity work.MicroRom port map(
		CLK => CLK,
		RST => RST,
		pc => pc,
		control_out => control_out
	);
	
	-- Divido il segnale di controllo
	load_a_reg <= control_out(0);
	load_q_reg <= control_out(1);
	load_m_reg <= control_out(2);
	countr_incr <= control_out(3);
	shift <= control_out(4);
	sottrazione <= control_out(5);
	mux_sel <= control_out(6);
	
	pc_next(2) <= control_out(7);
	pc_next(1) <= control_out(8);
	pc_next(0) <= control_out(9);
				
end Behavioral;
