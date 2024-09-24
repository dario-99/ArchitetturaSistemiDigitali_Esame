----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: MicroRom per i segnali di controllo
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity MicroRom is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		pc: IN std_logic_vector(2 downto 0);			-- Program counter, abbiamo 7 istruzioni possibili
		
		-- Uscita
		-- load_a_reg, load_q_reg, load_m_reg, countr_incr, shift, sottrazione, mux_sel
		control_out: OUT std_logic_vector(0 to 9)	-- 7 segnali di controllo + pc_next
		
	);
end MicroRom;

architecture Behavioral of MicroRom is
type t_ROM is array(6 downto 0) of std_logic_vector(0 to 9);
signal ROM: t_ROM := (
	"0000101000",								-- last shift: mux_sel = shift = 1 | pc_next = idle
	"1000010110",								-- subtract: sottrazione = 1, load_a_reg = 1 | pc_next = last_shift
	"0001000010",								-- increment counter: countr_incr = 1| pc_next = add
	"0000100100",								-- shift: shift = 1 | pc_next = incr
	"1000000011",								-- ADD set a: load_a_reg = 1 | pc_next = shift
	"0110000010",								-- SET Q and M: load_q_reg = load_m_reg = 1 | pc_next = add_set
	"0000000000"								-- IDLE/RST: RST = 1| pc_next = idle
);

-- Dico al compilatore di sintetizzare la ROM nelle celle di memoria presenti sull'FPGA
attribute rom_style : string;
attribute rom_style of ROM : signal is "block";
begin

	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				control_out <= ROM(conv_integer("000"));
			else
				control_out <= ROM(conv_integer(pc));
			end if;
		end if;
	end process;

end Behavioral;
