-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Jul 31 17:19:55 2024
-- Host        : dario-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/Desktop/magistrale/1_anno/1
--               SEMESTRE/architettura/esercizi/ESERCIZI
--               TESINA/Cronometro/Cronometro.sim/sim_1/synth/func/xsim/Cronometro_TB_func_synth.vhd}
-- Design      : OrologioOnBoard
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer is
  port (
    count_clrd : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    count_IBUF : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC
  );
end ButtonDebouncer;

architecture STRUCTURE of ButtonDebouncer is
  signal \BTN_state_i_10__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_1__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_3__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_4__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_5__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_6__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_7__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_8__0_n_0\ : STD_LOGIC;
  signal \BTN_state_i_9__0_n_0\ : STD_LOGIC;
  signal BTN_state_reg_n_0 : STD_LOGIC;
  signal CLEARED_BTN : STD_LOGIC;
  signal \CLEARED_BTN_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_clrd\ : STD_LOGIC;
  signal \deb.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_10__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_11__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_4__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_5__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_6__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_7__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_8__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_9__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[10]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[11]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[12]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[13]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[14]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[15]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[16]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[17]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[18]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[19]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[20]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[21]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[22]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[23]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[24]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[25]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[26]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[27]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[28]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[29]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[30]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[31]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[3]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[4]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[5]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[6]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[7]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[8]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_deb.count_reg[31]_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_deb.count_reg[31]_i_3__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CLEARED_BTN_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \deb.count[0]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deb.count_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[16]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[20]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[24]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[28]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[31]_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[8]_i_1__0\ : label is 35;
begin
  count_clrd <= \^count_clrd\;
\BTN_state_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[17]\,
      I1 => \deb.count_reg_n_0_[27]\,
      I2 => \deb.count_reg_n_0_[10]\,
      I3 => \deb.count_reg_n_0_[4]\,
      O => \BTN_state_i_10__0_n_0\
    );
\BTN_state_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => count_IBUF,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      O => \BTN_state_i_1__0_n_0\
    );
\BTN_state_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \BTN_state_i_3__0_n_0\,
      I1 => \BTN_state_i_4__0_n_0\,
      I2 => \BTN_state_i_5__0_n_0\,
      I3 => \BTN_state_i_6__0_n_0\,
      O => CLEARED_BTN
    );
\BTN_state_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \deb.count_reg_n_0_[12]\,
      I1 => \deb.count_reg_n_0_[8]\,
      I2 => \deb.count_reg_n_0_[30]\,
      I3 => \deb.count_reg_n_0_[20]\,
      I4 => \BTN_state_i_7__0_n_0\,
      O => \BTN_state_i_3__0_n_0\
    );
\BTN_state_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \deb.count_reg_n_0_[14]\,
      I1 => \deb.count_reg_n_0_[1]\,
      I2 => \deb.count_reg_n_0_[15]\,
      I3 => \deb.count_reg_n_0_[28]\,
      I4 => \BTN_state_i_8__0_n_0\,
      O => \BTN_state_i_4__0_n_0\
    );
\BTN_state_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[22]\,
      I1 => \deb.count_reg_n_0_[3]\,
      I2 => \deb.count_reg_n_0_[21]\,
      I3 => \deb.count_reg_n_0_[24]\,
      I4 => \BTN_state_i_9__0_n_0\,
      O => \BTN_state_i_5__0_n_0\
    );
\BTN_state_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[23]\,
      I1 => \deb.count_reg_n_0_[26]\,
      I2 => \deb.count_reg_n_0_[6]\,
      I3 => \deb.count_reg_n_0_[13]\,
      I4 => \BTN_state_i_10__0_n_0\,
      O => \BTN_state_i_6__0_n_0\
    );
\BTN_state_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[0]\,
      I1 => \deb.count_reg_n_0_[25]\,
      I2 => \deb.count_reg_n_0_[7]\,
      I3 => \deb.count_reg_n_0_[16]\,
      O => \BTN_state_i_7__0_n_0\
    );
\BTN_state_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[29]\,
      I1 => \deb.count_reg_n_0_[11]\,
      I2 => \deb.count_reg_n_0_[19]\,
      I3 => \deb.count_reg_n_0_[5]\,
      O => \BTN_state_i_8__0_n_0\
    );
\BTN_state_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[2]\,
      I1 => \deb.count_reg_n_0_[9]\,
      I2 => \deb.count_reg_n_0_[18]\,
      I3 => \deb.count_reg_n_0_[31]\,
      O => \BTN_state_i_9__0_n_0\
    );
BTN_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \BTN_state_i_1__0_n_0\,
      Q => BTN_state_reg_n_0,
      R => SR(0)
    );
\CLEARED_BTN_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^count_clrd\,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      I3 => RST_IBUF,
      O => \CLEARED_BTN_i_1__0_n_0\
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \CLEARED_BTN_i_1__0_n_0\,
      Q => \^count_clrd\,
      R => '0'
    );
\deb.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BTN_state_reg_n_0,
      I1 => RST_IBUF,
      I2 => \deb.count_reg_n_0_[0]\,
      O => \deb.count[0]_i_1_n_0\
    );
\deb.count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \deb.count[31]_i_4__1_n_0\,
      I1 => \deb.count[31]_i_5__1_n_0\,
      I2 => \deb.count[31]_i_6__1_n_0\,
      I3 => \deb.count[31]_i_7__1_n_0\,
      I4 => BTN_state_reg_n_0,
      I5 => RST_IBUF,
      O => \deb.count[31]_i_1_n_0\
    );
\deb.count[31]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[8]\,
      I1 => \deb.count_reg_n_0_[7]\,
      I2 => \deb.count_reg_n_0_[10]\,
      I3 => \deb.count_reg_n_0_[12]\,
      O => \deb.count[31]_i_10__1_n_0\
    );
\deb.count[31]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[19]\,
      I1 => \deb.count_reg_n_0_[20]\,
      I2 => \deb.count_reg_n_0_[16]\,
      I3 => \deb.count_reg_n_0_[17]\,
      O => \deb.count[31]_i_11__1_n_0\
    );
\deb.count[31]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RST_IBUF,
      I1 => BTN_state_reg_n_0,
      O => \deb.count[31]_i_2__0_n_0\
    );
\deb.count[31]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[23]\,
      I1 => \deb.count_reg_n_0_[24]\,
      I2 => \deb.count_reg_n_0_[21]\,
      I3 => \deb.count_reg_n_0_[22]\,
      I4 => \deb.count[31]_i_8__1_n_0\,
      O => \deb.count[31]_i_4__1_n_0\
    );
\deb.count[31]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[4]\,
      I1 => \deb.count_reg_n_0_[5]\,
      I2 => \deb.count_reg_n_0_[6]\,
      I3 => \deb.count_reg_n_0_[27]\,
      I4 => \deb.count[31]_i_9__1_n_0\,
      O => \deb.count[31]_i_5__1_n_0\
    );
\deb.count[31]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \deb.count_reg_n_0_[1]\,
      I1 => \deb.count_reg_n_0_[2]\,
      I2 => \deb.count_reg_n_0_[18]\,
      I3 => \deb.count_reg_n_0_[0]\,
      I4 => \deb.count[31]_i_10__1_n_0\,
      O => \deb.count[31]_i_6__1_n_0\
    );
\deb.count[31]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[30]\,
      I1 => \deb.count_reg_n_0_[15]\,
      I2 => \deb.count_reg_n_0_[14]\,
      I3 => \deb.count_reg_n_0_[13]\,
      I4 => \deb.count[31]_i_11__1_n_0\,
      O => \deb.count[31]_i_7__1_n_0\
    );
\deb.count[31]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[11]\,
      I1 => \deb.count_reg_n_0_[25]\,
      I2 => \deb.count_reg_n_0_[9]\,
      I3 => \deb.count_reg_n_0_[26]\,
      O => \deb.count[31]_i_8__1_n_0\
    );
\deb.count[31]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[28]\,
      I1 => \deb.count_reg_n_0_[3]\,
      I2 => \deb.count_reg_n_0_[29]\,
      I3 => \deb.count_reg_n_0_[31]\,
      O => \deb.count[31]_i_9__1_n_0\
    );
\deb.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \deb.count[0]_i_1_n_0\,
      Q => \deb.count_reg_n_0_[0]\,
      R => '0'
    );
\deb.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[12]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[10]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[12]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[11]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[12]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[12]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[8]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[12]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[12]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[12]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[12]_i_1__0_n_4\,
      O(2) => \deb.count_reg[12]_i_1__0_n_5\,
      O(1) => \deb.count_reg[12]_i_1__0_n_6\,
      O(0) => \deb.count_reg[12]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[12]\,
      S(2) => \deb.count_reg_n_0_[11]\,
      S(1) => \deb.count_reg_n_0_[10]\,
      S(0) => \deb.count_reg_n_0_[9]\
    );
\deb.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[16]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[13]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[16]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[14]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[16]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[15]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[16]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[16]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[12]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[16]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[16]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[16]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[16]_i_1__0_n_4\,
      O(2) => \deb.count_reg[16]_i_1__0_n_5\,
      O(1) => \deb.count_reg[16]_i_1__0_n_6\,
      O(0) => \deb.count_reg[16]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[16]\,
      S(2) => \deb.count_reg_n_0_[15]\,
      S(1) => \deb.count_reg_n_0_[14]\,
      S(0) => \deb.count_reg_n_0_[13]\
    );
\deb.count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[20]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[17]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[20]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[18]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[20]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[19]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[4]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[1]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[20]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[20]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[16]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[20]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[20]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[20]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[20]_i_1__0_n_4\,
      O(2) => \deb.count_reg[20]_i_1__0_n_5\,
      O(1) => \deb.count_reg[20]_i_1__0_n_6\,
      O(0) => \deb.count_reg[20]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[20]\,
      S(2) => \deb.count_reg_n_0_[19]\,
      S(1) => \deb.count_reg_n_0_[18]\,
      S(0) => \deb.count_reg_n_0_[17]\
    );
\deb.count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[24]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[21]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[24]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[22]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[24]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[23]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[24]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[24]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[20]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[24]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[24]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[24]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[24]_i_1__0_n_4\,
      O(2) => \deb.count_reg[24]_i_1__0_n_5\,
      O(1) => \deb.count_reg[24]_i_1__0_n_6\,
      O(0) => \deb.count_reg[24]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[24]\,
      S(2) => \deb.count_reg_n_0_[23]\,
      S(1) => \deb.count_reg_n_0_[22]\,
      S(0) => \deb.count_reg_n_0_[21]\
    );
\deb.count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[28]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[25]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[28]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[26]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[28]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[27]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[28]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[28]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[24]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[28]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[28]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[28]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[28]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[28]_i_1__0_n_4\,
      O(2) => \deb.count_reg[28]_i_1__0_n_5\,
      O(1) => \deb.count_reg[28]_i_1__0_n_6\,
      O(0) => \deb.count_reg[28]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[28]\,
      S(2) => \deb.count_reg_n_0_[27]\,
      S(1) => \deb.count_reg_n_0_[26]\,
      S(0) => \deb.count_reg_n_0_[25]\
    );
\deb.count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[31]_i_3__0_n_7\,
      Q => \deb.count_reg_n_0_[29]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[4]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[2]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[31]_i_3__0_n_6\,
      Q => \deb.count_reg_n_0_[30]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[31]_i_3__0_n_5\,
      Q => \deb.count_reg_n_0_[31]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[28]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_deb.count_reg[31]_i_3__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \deb.count_reg[31]_i_3__0_n_2\,
      CO(0) => \deb.count_reg[31]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_deb.count_reg[31]_i_3__0_O_UNCONNECTED\(3),
      O(2) => \deb.count_reg[31]_i_3__0_n_5\,
      O(1) => \deb.count_reg[31]_i_3__0_n_6\,
      O(0) => \deb.count_reg[31]_i_3__0_n_7\,
      S(3) => '0',
      S(2) => \deb.count_reg_n_0_[31]\,
      S(1) => \deb.count_reg_n_0_[30]\,
      S(0) => \deb.count_reg_n_0_[29]\
    );
\deb.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[4]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[3]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[4]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[4]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deb.count_reg[4]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[4]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[4]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[4]_i_1__0_n_3\,
      CYINIT => \deb.count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[4]_i_1__0_n_4\,
      O(2) => \deb.count_reg[4]_i_1__0_n_5\,
      O(1) => \deb.count_reg[4]_i_1__0_n_6\,
      O(0) => \deb.count_reg[4]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[4]\,
      S(2) => \deb.count_reg_n_0_[3]\,
      S(1) => \deb.count_reg_n_0_[2]\,
      S(0) => \deb.count_reg_n_0_[1]\
    );
\deb.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[8]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[5]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[8]_i_1__0_n_6\,
      Q => \deb.count_reg_n_0_[6]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[8]_i_1__0_n_5\,
      Q => \deb.count_reg_n_0_[7]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[8]_i_1__0_n_4\,
      Q => \deb.count_reg_n_0_[8]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[4]_i_1__0_n_0\,
      CO(3) => \deb.count_reg[8]_i_1__0_n_0\,
      CO(2) => \deb.count_reg[8]_i_1__0_n_1\,
      CO(1) => \deb.count_reg[8]_i_1__0_n_2\,
      CO(0) => \deb.count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[8]_i_1__0_n_4\,
      O(2) => \deb.count_reg[8]_i_1__0_n_5\,
      O(1) => \deb.count_reg[8]_i_1__0_n_6\,
      O(0) => \deb.count_reg[8]_i_1__0_n_7\,
      S(3) => \deb.count_reg_n_0_[8]\,
      S(2) => \deb.count_reg_n_0_[7]\,
      S(1) => \deb.count_reg_n_0_[6]\,
      S(0) => \deb.count_reg_n_0_[5]\
    );
\deb.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__0_n_0\,
      D => \deb.count_reg[12]_i_1__0_n_7\,
      Q => \deb.count_reg_n_0_[9]\,
      R => \deb.count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer_0 is
  port (
    save_clrd : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    save_IBUF : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ButtonDebouncer_0 : entity is "ButtonDebouncer";
end ButtonDebouncer_0;

architecture STRUCTURE of ButtonDebouncer_0 is
  signal \BTN_state_i_10__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_1__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_3__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_4__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_5__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_6__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_7__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_8__1_n_0\ : STD_LOGIC;
  signal \BTN_state_i_9__1_n_0\ : STD_LOGIC;
  signal BTN_state_reg_n_0 : STD_LOGIC;
  signal CLEARED_BTN : STD_LOGIC;
  signal \CLEARED_BTN_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_10__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_11__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_4__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_5__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_6__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_7__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_8__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_9__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[10]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[11]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[12]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[13]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[14]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[15]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[16]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[17]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[18]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[19]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[20]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[21]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[22]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[23]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[24]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[25]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[26]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[27]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[28]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[29]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[30]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[31]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[3]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[4]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[5]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[6]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[7]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[8]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[9]\ : STD_LOGIC;
  signal \^save_clrd\ : STD_LOGIC;
  signal \NLW_deb.count_reg[31]_i_3__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_deb.count_reg[31]_i_3__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CLEARED_BTN_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \deb.count[0]_i_1\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deb.count_reg[12]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[16]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[20]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[24]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[28]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[31]_i_3__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[4]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[8]_i_1__1\ : label is 35;
begin
  save_clrd <= \^save_clrd\;
\BTN_state_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[1]\,
      I1 => \deb.count_reg_n_0_[23]\,
      I2 => \deb.count_reg_n_0_[7]\,
      I3 => \deb.count_reg_n_0_[22]\,
      O => \BTN_state_i_10__1_n_0\
    );
\BTN_state_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => save_IBUF,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      O => \BTN_state_i_1__1_n_0\
    );
\BTN_state_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \BTN_state_i_3__1_n_0\,
      I1 => \BTN_state_i_4__1_n_0\,
      I2 => \BTN_state_i_5__1_n_0\,
      I3 => \BTN_state_i_6__1_n_0\,
      O => CLEARED_BTN
    );
\BTN_state_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[30]\,
      I1 => \deb.count_reg_n_0_[16]\,
      I2 => \deb.count_reg_n_0_[28]\,
      I3 => \deb.count_reg_n_0_[15]\,
      I4 => \BTN_state_i_7__1_n_0\,
      O => \BTN_state_i_3__1_n_0\
    );
\BTN_state_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \deb.count_reg_n_0_[25]\,
      I1 => \deb.count_reg_n_0_[19]\,
      I2 => \deb.count_reg_n_0_[17]\,
      I3 => \deb.count_reg_n_0_[5]\,
      I4 => \BTN_state_i_8__1_n_0\,
      O => \BTN_state_i_4__1_n_0\
    );
\BTN_state_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[11]\,
      I1 => \deb.count_reg_n_0_[3]\,
      I2 => \deb.count_reg_n_0_[4]\,
      I3 => \deb.count_reg_n_0_[0]\,
      I4 => \BTN_state_i_9__1_n_0\,
      O => \BTN_state_i_5__1_n_0\
    );
\BTN_state_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[26]\,
      I1 => \deb.count_reg_n_0_[8]\,
      I2 => \deb.count_reg_n_0_[6]\,
      I3 => \deb.count_reg_n_0_[13]\,
      I4 => \BTN_state_i_10__1_n_0\,
      O => \BTN_state_i_6__1_n_0\
    );
\BTN_state_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[10]\,
      I1 => \deb.count_reg_n_0_[27]\,
      I2 => \deb.count_reg_n_0_[14]\,
      I3 => \deb.count_reg_n_0_[31]\,
      O => \BTN_state_i_7__1_n_0\
    );
\BTN_state_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \deb.count_reg_n_0_[12]\,
      I1 => \deb.count_reg_n_0_[2]\,
      I2 => \deb.count_reg_n_0_[18]\,
      I3 => \deb.count_reg_n_0_[24]\,
      O => \BTN_state_i_8__1_n_0\
    );
\BTN_state_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[20]\,
      I1 => \deb.count_reg_n_0_[21]\,
      I2 => \deb.count_reg_n_0_[9]\,
      I3 => \deb.count_reg_n_0_[29]\,
      O => \BTN_state_i_9__1_n_0\
    );
BTN_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \BTN_state_i_1__1_n_0\,
      Q => BTN_state_reg_n_0,
      R => SR(0)
    );
\CLEARED_BTN_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^save_clrd\,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      I3 => RST_IBUF,
      O => \CLEARED_BTN_i_1__1_n_0\
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \CLEARED_BTN_i_1__1_n_0\,
      Q => \^save_clrd\,
      R => '0'
    );
\deb.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BTN_state_reg_n_0,
      I1 => RST_IBUF,
      I2 => \deb.count_reg_n_0_[0]\,
      O => \deb.count[0]_i_1_n_0\
    );
\deb.count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \deb.count[31]_i_4__2_n_0\,
      I1 => \deb.count[31]_i_5__2_n_0\,
      I2 => \deb.count[31]_i_6__2_n_0\,
      I3 => \deb.count[31]_i_7__2_n_0\,
      I4 => BTN_state_reg_n_0,
      I5 => RST_IBUF,
      O => \deb.count[31]_i_1_n_0\
    );
\deb.count[31]_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[10]\,
      I1 => \deb.count_reg_n_0_[12]\,
      I2 => \deb.count_reg_n_0_[8]\,
      I3 => \deb.count_reg_n_0_[7]\,
      O => \deb.count[31]_i_10__2_n_0\
    );
\deb.count[31]_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[16]\,
      I1 => \deb.count_reg_n_0_[17]\,
      I2 => \deb.count_reg_n_0_[20]\,
      I3 => \deb.count_reg_n_0_[19]\,
      O => \deb.count[31]_i_11__2_n_0\
    );
\deb.count[31]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RST_IBUF,
      I1 => BTN_state_reg_n_0,
      O => \deb.count[31]_i_2__1_n_0\
    );
\deb.count[31]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[23]\,
      I1 => \deb.count_reg_n_0_[24]\,
      I2 => \deb.count_reg_n_0_[22]\,
      I3 => \deb.count_reg_n_0_[21]\,
      I4 => \deb.count[31]_i_8__2_n_0\,
      O => \deb.count[31]_i_4__2_n_0\
    );
\deb.count[31]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[5]\,
      I1 => \deb.count_reg_n_0_[4]\,
      I2 => \deb.count_reg_n_0_[27]\,
      I3 => \deb.count_reg_n_0_[6]\,
      I4 => \deb.count[31]_i_9__2_n_0\,
      O => \deb.count[31]_i_5__2_n_0\
    );
\deb.count[31]_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \deb.count_reg_n_0_[1]\,
      I1 => \deb.count_reg_n_0_[2]\,
      I2 => \deb.count_reg_n_0_[18]\,
      I3 => \deb.count_reg_n_0_[0]\,
      I4 => \deb.count[31]_i_10__2_n_0\,
      O => \deb.count[31]_i_6__2_n_0\
    );
\deb.count[31]_i_7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[30]\,
      I1 => \deb.count_reg_n_0_[15]\,
      I2 => \deb.count_reg_n_0_[14]\,
      I3 => \deb.count_reg_n_0_[13]\,
      I4 => \deb.count[31]_i_11__2_n_0\,
      O => \deb.count[31]_i_7__2_n_0\
    );
\deb.count[31]_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[25]\,
      I1 => \deb.count_reg_n_0_[11]\,
      I2 => \deb.count_reg_n_0_[26]\,
      I3 => \deb.count_reg_n_0_[9]\,
      O => \deb.count[31]_i_8__2_n_0\
    );
\deb.count[31]_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[3]\,
      I1 => \deb.count_reg_n_0_[28]\,
      I2 => \deb.count_reg_n_0_[31]\,
      I3 => \deb.count_reg_n_0_[29]\,
      O => \deb.count[31]_i_9__2_n_0\
    );
\deb.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \deb.count[0]_i_1_n_0\,
      Q => \deb.count_reg_n_0_[0]\,
      R => '0'
    );
\deb.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[12]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[10]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[12]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[11]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[12]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[12]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[8]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[12]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[12]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[12]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[12]_i_1__1_n_4\,
      O(2) => \deb.count_reg[12]_i_1__1_n_5\,
      O(1) => \deb.count_reg[12]_i_1__1_n_6\,
      O(0) => \deb.count_reg[12]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[12]\,
      S(2) => \deb.count_reg_n_0_[11]\,
      S(1) => \deb.count_reg_n_0_[10]\,
      S(0) => \deb.count_reg_n_0_[9]\
    );
\deb.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[16]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[13]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[16]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[14]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[16]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[15]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[16]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[16]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[12]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[16]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[16]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[16]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[16]_i_1__1_n_4\,
      O(2) => \deb.count_reg[16]_i_1__1_n_5\,
      O(1) => \deb.count_reg[16]_i_1__1_n_6\,
      O(0) => \deb.count_reg[16]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[16]\,
      S(2) => \deb.count_reg_n_0_[15]\,
      S(1) => \deb.count_reg_n_0_[14]\,
      S(0) => \deb.count_reg_n_0_[13]\
    );
\deb.count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[20]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[17]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[20]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[18]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[20]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[19]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[4]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[1]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[20]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[20]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[16]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[20]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[20]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[20]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[20]_i_1__1_n_4\,
      O(2) => \deb.count_reg[20]_i_1__1_n_5\,
      O(1) => \deb.count_reg[20]_i_1__1_n_6\,
      O(0) => \deb.count_reg[20]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[20]\,
      S(2) => \deb.count_reg_n_0_[19]\,
      S(1) => \deb.count_reg_n_0_[18]\,
      S(0) => \deb.count_reg_n_0_[17]\
    );
\deb.count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[24]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[21]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[24]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[22]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[24]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[23]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[24]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[24]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[20]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[24]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[24]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[24]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[24]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[24]_i_1__1_n_4\,
      O(2) => \deb.count_reg[24]_i_1__1_n_5\,
      O(1) => \deb.count_reg[24]_i_1__1_n_6\,
      O(0) => \deb.count_reg[24]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[24]\,
      S(2) => \deb.count_reg_n_0_[23]\,
      S(1) => \deb.count_reg_n_0_[22]\,
      S(0) => \deb.count_reg_n_0_[21]\
    );
\deb.count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[28]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[25]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[28]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[26]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[28]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[27]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[28]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[28]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[24]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[28]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[28]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[28]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[28]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[28]_i_1__1_n_4\,
      O(2) => \deb.count_reg[28]_i_1__1_n_5\,
      O(1) => \deb.count_reg[28]_i_1__1_n_6\,
      O(0) => \deb.count_reg[28]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[28]\,
      S(2) => \deb.count_reg_n_0_[27]\,
      S(1) => \deb.count_reg_n_0_[26]\,
      S(0) => \deb.count_reg_n_0_[25]\
    );
\deb.count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[31]_i_3__1_n_7\,
      Q => \deb.count_reg_n_0_[29]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[4]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[2]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[31]_i_3__1_n_6\,
      Q => \deb.count_reg_n_0_[30]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[31]_i_3__1_n_5\,
      Q => \deb.count_reg_n_0_[31]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]_i_3__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[28]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_deb.count_reg[31]_i_3__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \deb.count_reg[31]_i_3__1_n_2\,
      CO(0) => \deb.count_reg[31]_i_3__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_deb.count_reg[31]_i_3__1_O_UNCONNECTED\(3),
      O(2) => \deb.count_reg[31]_i_3__1_n_5\,
      O(1) => \deb.count_reg[31]_i_3__1_n_6\,
      O(0) => \deb.count_reg[31]_i_3__1_n_7\,
      S(3) => '0',
      S(2) => \deb.count_reg_n_0_[31]\,
      S(1) => \deb.count_reg_n_0_[30]\,
      S(0) => \deb.count_reg_n_0_[29]\
    );
\deb.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[4]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[3]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[4]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[4]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deb.count_reg[4]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[4]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[4]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[4]_i_1__1_n_3\,
      CYINIT => \deb.count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[4]_i_1__1_n_4\,
      O(2) => \deb.count_reg[4]_i_1__1_n_5\,
      O(1) => \deb.count_reg[4]_i_1__1_n_6\,
      O(0) => \deb.count_reg[4]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[4]\,
      S(2) => \deb.count_reg_n_0_[3]\,
      S(1) => \deb.count_reg_n_0_[2]\,
      S(0) => \deb.count_reg_n_0_[1]\
    );
\deb.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[8]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[5]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[8]_i_1__1_n_6\,
      Q => \deb.count_reg_n_0_[6]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[8]_i_1__1_n_5\,
      Q => \deb.count_reg_n_0_[7]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[8]_i_1__1_n_4\,
      Q => \deb.count_reg_n_0_[8]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[4]_i_1__1_n_0\,
      CO(3) => \deb.count_reg[8]_i_1__1_n_0\,
      CO(2) => \deb.count_reg[8]_i_1__1_n_1\,
      CO(1) => \deb.count_reg[8]_i_1__1_n_2\,
      CO(0) => \deb.count_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[8]_i_1__1_n_4\,
      O(2) => \deb.count_reg[8]_i_1__1_n_5\,
      O(1) => \deb.count_reg[8]_i_1__1_n_6\,
      O(0) => \deb.count_reg[8]_i_1__1_n_7\,
      S(3) => \deb.count_reg_n_0_[8]\,
      S(2) => \deb.count_reg_n_0_[7]\,
      S(1) => \deb.count_reg_n_0_[6]\,
      S(0) => \deb.count_reg_n_0_[5]\
    );
\deb.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__1_n_0\,
      D => \deb.count_reg[12]_i_1__1_n_7\,
      Q => \deb.count_reg_n_0_[9]\,
      R => \deb.count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer_1 is
  port (
    SET_clrd : out STD_LOGIC;
    CLEARED_BTN_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLEARED_BTN_reg_1 : out STD_LOGIC;
    CLEARED_BTN_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLEARED_BTN_reg_3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    SET_IBUF : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    SEL_IBUF : in STD_LOGIC_VECTOR ( 0 to 2 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ButtonDebouncer_1 : entity is "ButtonDebouncer";
end ButtonDebouncer_1;

architecture STRUCTURE of ButtonDebouncer_1 is
  signal BTN_state_i_10_n_0 : STD_LOGIC;
  signal BTN_state_i_1_n_0 : STD_LOGIC;
  signal BTN_state_i_3_n_0 : STD_LOGIC;
  signal BTN_state_i_4_n_0 : STD_LOGIC;
  signal BTN_state_i_5_n_0 : STD_LOGIC;
  signal BTN_state_i_6_n_0 : STD_LOGIC;
  signal BTN_state_i_7_n_0 : STD_LOGIC;
  signal BTN_state_i_8_n_0 : STD_LOGIC;
  signal BTN_state_i_9_n_0 : STD_LOGIC;
  signal BTN_state_reg_n_0 : STD_LOGIC;
  signal CLEARED_BTN : STD_LOGIC;
  signal CLEARED_BTN_i_1_n_0 : STD_LOGIC;
  signal \^set_clrd\ : STD_LOGIC;
  signal \count__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \deb.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_10__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_11__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_7__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_8__0_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_9__0_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_deb.count_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_deb.count_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CLEARED_BTN_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cntr[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cntr[0]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cntr[5]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cntr[5]_i_4__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \deb.count[0]_i_1\ : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deb.count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[8]_i_1\ : label is 35;
begin
  SET_clrd <= \^set_clrd\;
BTN_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => SET_IBUF,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      O => BTN_state_i_1_n_0
    );
BTN_state_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \count__0\(1),
      I1 => \count__0\(23),
      I2 => \count__0\(7),
      I3 => \count__0\(22),
      O => BTN_state_i_10_n_0
    );
BTN_state_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => BTN_state_i_3_n_0,
      I1 => BTN_state_i_4_n_0,
      I2 => BTN_state_i_5_n_0,
      I3 => BTN_state_i_6_n_0,
      O => CLEARED_BTN
    );
BTN_state_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \count__0\(30),
      I1 => \count__0\(16),
      I2 => \count__0\(28),
      I3 => \count__0\(15),
      I4 => BTN_state_i_7_n_0,
      O => BTN_state_i_3_n_0
    );
BTN_state_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \count__0\(25),
      I1 => \count__0\(19),
      I2 => \count__0\(17),
      I3 => \count__0\(5),
      I4 => BTN_state_i_8_n_0,
      O => BTN_state_i_4_n_0
    );
BTN_state_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \count__0\(11),
      I1 => \count__0\(3),
      I2 => \count__0\(4),
      I3 => \count__0\(0),
      I4 => BTN_state_i_9_n_0,
      O => BTN_state_i_5_n_0
    );
BTN_state_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \count__0\(26),
      I1 => \count__0\(8),
      I2 => \count__0\(6),
      I3 => \count__0\(13),
      I4 => BTN_state_i_10_n_0,
      O => BTN_state_i_6_n_0
    );
BTN_state_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \count__0\(10),
      I1 => \count__0\(27),
      I2 => \count__0\(14),
      I3 => \count__0\(31),
      O => BTN_state_i_7_n_0
    );
BTN_state_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \count__0\(12),
      I1 => \count__0\(2),
      I2 => \count__0\(18),
      I3 => \count__0\(24),
      O => BTN_state_i_8_n_0
    );
BTN_state_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count__0\(20),
      I1 => \count__0\(21),
      I2 => \count__0\(9),
      I3 => \count__0\(29),
      O => BTN_state_i_9_n_0
    );
BTN_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => BTN_state_i_1_n_0,
      Q => BTN_state_reg_n_0,
      R => SR(0)
    );
CLEARED_BTN_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^set_clrd\,
      I1 => CLEARED_BTN,
      I2 => RST_IBUF,
      I3 => BTN_state_reg_n_0,
      O => CLEARED_BTN_i_1_n_0
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => CLEARED_BTN_i_1_n_0,
      Q => \^set_clrd\,
      R => '0'
    );
\cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => \^set_clrd\,
      I2 => SEL_IBUF(2),
      I3 => Q(0),
      O => CLEARED_BTN_reg_0(0)
    );
\cntr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => \^set_clrd\,
      I2 => SEL_IBUF(1),
      I3 => \cntr_reg[0]\(0),
      O => CLEARED_BTN_reg_2(0)
    );
\cntr[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => \^set_clrd\,
      I2 => SEL_IBUF(0),
      I3 => \cntr_reg[0]_0\(0),
      O => D(0)
    );
\cntr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^set_clrd\,
      I1 => SEL_IBUF(2),
      O => CLEARED_BTN_reg_1
    );
\cntr[5]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^set_clrd\,
      I1 => SEL_IBUF(1),
      O => CLEARED_BTN_reg_3
    );
\deb.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => RST_IBUF,
      I1 => BTN_state_reg_n_0,
      I2 => \count__0\(0),
      O => \deb.count[0]_i_1_n_0\
    );
\deb.count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \deb.count[31]_i_4__0_n_0\,
      I1 => \deb.count[31]_i_5__0_n_0\,
      I2 => \deb.count[31]_i_6__0_n_0\,
      I3 => \deb.count[31]_i_7__0_n_0\,
      I4 => RST_IBUF,
      I5 => BTN_state_reg_n_0,
      O => \deb.count[31]_i_1_n_0\
    );
\deb.count[31]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count__0\(10),
      I1 => \count__0\(12),
      I2 => \count__0\(8),
      I3 => \count__0\(7),
      O => \deb.count[31]_i_10__0_n_0\
    );
\deb.count[31]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count__0\(16),
      I1 => \count__0\(17),
      I2 => \count__0\(20),
      I3 => \count__0\(19),
      O => \deb.count[31]_i_11__0_n_0\
    );
\deb.count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BTN_state_reg_n_0,
      I1 => RST_IBUF,
      O => \deb.count[31]_i_2_n_0\
    );
\deb.count[31]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count__0\(23),
      I1 => \count__0\(24),
      I2 => \count__0\(22),
      I3 => \count__0\(21),
      I4 => \deb.count[31]_i_8__0_n_0\,
      O => \deb.count[31]_i_4__0_n_0\
    );
\deb.count[31]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count__0\(5),
      I1 => \count__0\(4),
      I2 => \count__0\(27),
      I3 => \count__0\(6),
      I4 => \deb.count[31]_i_9__0_n_0\,
      O => \deb.count[31]_i_5__0_n_0\
    );
\deb.count[31]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \count__0\(1),
      I1 => \count__0\(2),
      I2 => \count__0\(18),
      I3 => \count__0\(0),
      I4 => \deb.count[31]_i_10__0_n_0\,
      O => \deb.count[31]_i_6__0_n_0\
    );
\deb.count[31]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \count__0\(30),
      I1 => \count__0\(15),
      I2 => \count__0\(14),
      I3 => \count__0\(13),
      I4 => \deb.count[31]_i_11__0_n_0\,
      O => \deb.count[31]_i_7__0_n_0\
    );
\deb.count[31]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count__0\(25),
      I1 => \count__0\(11),
      I2 => \count__0\(26),
      I3 => \count__0\(9),
      O => \deb.count[31]_i_8__0_n_0\
    );
\deb.count[31]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count__0\(3),
      I1 => \count__0\(28),
      I2 => \count__0\(31),
      I3 => \count__0\(29),
      O => \deb.count[31]_i_9__0_n_0\
    );
\deb.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \deb.count[0]_i_1_n_0\,
      Q => \count__0\(0),
      R => '0'
    );
\deb.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[12]_i_1_n_6\,
      Q => \count__0\(10),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[12]_i_1_n_5\,
      Q => \count__0\(11),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[12]_i_1_n_4\,
      Q => \count__0\(12),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[8]_i_1_n_0\,
      CO(3) => \deb.count_reg[12]_i_1_n_0\,
      CO(2) => \deb.count_reg[12]_i_1_n_1\,
      CO(1) => \deb.count_reg[12]_i_1_n_2\,
      CO(0) => \deb.count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[12]_i_1_n_4\,
      O(2) => \deb.count_reg[12]_i_1_n_5\,
      O(1) => \deb.count_reg[12]_i_1_n_6\,
      O(0) => \deb.count_reg[12]_i_1_n_7\,
      S(3 downto 0) => \count__0\(12 downto 9)
    );
\deb.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[16]_i_1_n_7\,
      Q => \count__0\(13),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[16]_i_1_n_6\,
      Q => \count__0\(14),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[16]_i_1_n_5\,
      Q => \count__0\(15),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[16]_i_1_n_4\,
      Q => \count__0\(16),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[12]_i_1_n_0\,
      CO(3) => \deb.count_reg[16]_i_1_n_0\,
      CO(2) => \deb.count_reg[16]_i_1_n_1\,
      CO(1) => \deb.count_reg[16]_i_1_n_2\,
      CO(0) => \deb.count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[16]_i_1_n_4\,
      O(2) => \deb.count_reg[16]_i_1_n_5\,
      O(1) => \deb.count_reg[16]_i_1_n_6\,
      O(0) => \deb.count_reg[16]_i_1_n_7\,
      S(3 downto 0) => \count__0\(16 downto 13)
    );
\deb.count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[20]_i_1_n_7\,
      Q => \count__0\(17),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[20]_i_1_n_6\,
      Q => \count__0\(18),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[20]_i_1_n_5\,
      Q => \count__0\(19),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[4]_i_1_n_7\,
      Q => \count__0\(1),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[20]_i_1_n_4\,
      Q => \count__0\(20),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[16]_i_1_n_0\,
      CO(3) => \deb.count_reg[20]_i_1_n_0\,
      CO(2) => \deb.count_reg[20]_i_1_n_1\,
      CO(1) => \deb.count_reg[20]_i_1_n_2\,
      CO(0) => \deb.count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[20]_i_1_n_4\,
      O(2) => \deb.count_reg[20]_i_1_n_5\,
      O(1) => \deb.count_reg[20]_i_1_n_6\,
      O(0) => \deb.count_reg[20]_i_1_n_7\,
      S(3 downto 0) => \count__0\(20 downto 17)
    );
\deb.count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[24]_i_1_n_7\,
      Q => \count__0\(21),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[24]_i_1_n_6\,
      Q => \count__0\(22),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[24]_i_1_n_5\,
      Q => \count__0\(23),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[24]_i_1_n_4\,
      Q => \count__0\(24),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[20]_i_1_n_0\,
      CO(3) => \deb.count_reg[24]_i_1_n_0\,
      CO(2) => \deb.count_reg[24]_i_1_n_1\,
      CO(1) => \deb.count_reg[24]_i_1_n_2\,
      CO(0) => \deb.count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[24]_i_1_n_4\,
      O(2) => \deb.count_reg[24]_i_1_n_5\,
      O(1) => \deb.count_reg[24]_i_1_n_6\,
      O(0) => \deb.count_reg[24]_i_1_n_7\,
      S(3 downto 0) => \count__0\(24 downto 21)
    );
\deb.count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[28]_i_1_n_7\,
      Q => \count__0\(25),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[28]_i_1_n_6\,
      Q => \count__0\(26),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[28]_i_1_n_5\,
      Q => \count__0\(27),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[28]_i_1_n_4\,
      Q => \count__0\(28),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[24]_i_1_n_0\,
      CO(3) => \deb.count_reg[28]_i_1_n_0\,
      CO(2) => \deb.count_reg[28]_i_1_n_1\,
      CO(1) => \deb.count_reg[28]_i_1_n_2\,
      CO(0) => \deb.count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[28]_i_1_n_4\,
      O(2) => \deb.count_reg[28]_i_1_n_5\,
      O(1) => \deb.count_reg[28]_i_1_n_6\,
      O(0) => \deb.count_reg[28]_i_1_n_7\,
      S(3 downto 0) => \count__0\(28 downto 25)
    );
\deb.count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[31]_i_3_n_7\,
      Q => \count__0\(29),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[4]_i_1_n_6\,
      Q => \count__0\(2),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[31]_i_3_n_6\,
      Q => \count__0\(30),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[31]_i_3_n_5\,
      Q => \count__0\(31),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_deb.count_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \deb.count_reg[31]_i_3_n_2\,
      CO(0) => \deb.count_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_deb.count_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \deb.count_reg[31]_i_3_n_5\,
      O(1) => \deb.count_reg[31]_i_3_n_6\,
      O(0) => \deb.count_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => \count__0\(31 downto 29)
    );
\deb.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[4]_i_1_n_5\,
      Q => \count__0\(3),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[4]_i_1_n_4\,
      Q => \count__0\(4),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deb.count_reg[4]_i_1_n_0\,
      CO(2) => \deb.count_reg[4]_i_1_n_1\,
      CO(1) => \deb.count_reg[4]_i_1_n_2\,
      CO(0) => \deb.count_reg[4]_i_1_n_3\,
      CYINIT => \count__0\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[4]_i_1_n_4\,
      O(2) => \deb.count_reg[4]_i_1_n_5\,
      O(1) => \deb.count_reg[4]_i_1_n_6\,
      O(0) => \deb.count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \count__0\(4 downto 1)
    );
\deb.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[8]_i_1_n_7\,
      Q => \count__0\(5),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[8]_i_1_n_6\,
      Q => \count__0\(6),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[8]_i_1_n_5\,
      Q => \count__0\(7),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[8]_i_1_n_4\,
      Q => \count__0\(8),
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[4]_i_1_n_0\,
      CO(3) => \deb.count_reg[8]_i_1_n_0\,
      CO(2) => \deb.count_reg[8]_i_1_n_1\,
      CO(1) => \deb.count_reg[8]_i_1_n_2\,
      CO(0) => \deb.count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[8]_i_1_n_4\,
      O(2) => \deb.count_reg[8]_i_1_n_5\,
      O(1) => \deb.count_reg[8]_i_1_n_6\,
      O(0) => \deb.count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \count__0\(8 downto 5)
    );
\deb.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => \deb.count_reg[12]_i_1_n_7\,
      Q => \count__0\(9),
      R => \deb.count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer_2 is
  port (
    view_clrd : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    view_IBUF : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ButtonDebouncer_2 : entity is "ButtonDebouncer";
end ButtonDebouncer_2;

architecture STRUCTURE of ButtonDebouncer_2 is
  signal \BTN_state_i_1__2_n_0\ : STD_LOGIC;
  signal BTN_state_reg_n_0 : STD_LOGIC;
  signal CLEARED_BTN : STD_LOGIC;
  signal \CLEARED_BTN_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_10_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_11_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_12_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_2__2_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_5_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_6_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_7_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_8_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_9_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[31]_i_3__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[10]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[11]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[12]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[13]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[14]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[15]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[16]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[17]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[18]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[19]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[20]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[21]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[22]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[23]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[24]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[25]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[26]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[27]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[28]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[29]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[30]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[31]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[3]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[4]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[5]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[6]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[7]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[8]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[9]\ : STD_LOGIC;
  signal \^view_clrd\ : STD_LOGIC;
  signal \NLW_deb.count_reg[31]_i_3__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_deb.count_reg[31]_i_3__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CLEARED_BTN_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \deb.count[0]_i_1\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deb.count_reg[12]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[16]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[20]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[24]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[28]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[31]_i_3__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[4]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[8]_i_1__2\ : label is 35;
begin
  view_clrd <= \^view_clrd\;
\BTN_state_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => view_IBUF,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      O => \BTN_state_i_1__2_n_0\
    );
BTN_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \BTN_state_i_1__2_n_0\,
      Q => BTN_state_reg_n_0,
      R => SR(0)
    );
\CLEARED_BTN_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^view_clrd\,
      I1 => CLEARED_BTN,
      I2 => BTN_state_reg_n_0,
      I3 => RST_IBUF,
      O => \CLEARED_BTN_i_1__2_n_0\
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \CLEARED_BTN_i_1__2_n_0\,
      Q => \^view_clrd\,
      R => '0'
    );
\deb.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BTN_state_reg_n_0,
      I1 => RST_IBUF,
      I2 => \deb.count_reg_n_0_[0]\,
      O => \deb.count[0]_i_1_n_0\
    );
\deb.count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CLEARED_BTN,
      I1 => BTN_state_reg_n_0,
      I2 => RST_IBUF,
      O => \deb.count[31]_i_1_n_0\
    );
\deb.count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[23]\,
      I1 => \deb.count_reg_n_0_[11]\,
      I2 => \deb.count_reg_n_0_[8]\,
      I3 => \deb.count_reg_n_0_[27]\,
      O => \deb.count[31]_i_10_n_0\
    );
\deb.count[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[6]\,
      I1 => \deb.count_reg_n_0_[19]\,
      I2 => \deb.count_reg_n_0_[5]\,
      I3 => \deb.count_reg_n_0_[28]\,
      O => \deb.count[31]_i_11_n_0\
    );
\deb.count[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \deb.count_reg_n_0_[10]\,
      I1 => \deb.count_reg_n_0_[22]\,
      I2 => \deb.count_reg_n_0_[21]\,
      I3 => \deb.count_reg_n_0_[24]\,
      O => \deb.count[31]_i_12_n_0\
    );
\deb.count[31]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RST_IBUF,
      I1 => BTN_state_reg_n_0,
      O => \deb.count[31]_i_2__2_n_0\
    );
\deb.count[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \deb.count[31]_i_5_n_0\,
      I1 => \deb.count[31]_i_6_n_0\,
      I2 => \deb.count[31]_i_7_n_0\,
      I3 => \deb.count[31]_i_8_n_0\,
      O => CLEARED_BTN
    );
\deb.count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[29]\,
      I1 => \deb.count_reg_n_0_[0]\,
      I2 => \deb.count_reg_n_0_[4]\,
      I3 => \deb.count_reg_n_0_[14]\,
      I4 => \deb.count[31]_i_9_n_0\,
      O => \deb.count[31]_i_5_n_0\
    );
\deb.count[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \deb.count_reg_n_0_[17]\,
      I1 => \deb.count_reg_n_0_[1]\,
      I2 => \deb.count_reg_n_0_[2]\,
      I3 => \deb.count_reg_n_0_[15]\,
      I4 => \deb.count[31]_i_10_n_0\,
      O => \deb.count[31]_i_6_n_0\
    );
\deb.count[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[30]\,
      I1 => \deb.count_reg_n_0_[18]\,
      I2 => \deb.count_reg_n_0_[31]\,
      I3 => \deb.count_reg_n_0_[13]\,
      I4 => \deb.count[31]_i_11_n_0\,
      O => \deb.count[31]_i_7_n_0\
    );
\deb.count[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[9]\,
      I1 => \deb.count_reg_n_0_[12]\,
      I2 => \deb.count_reg_n_0_[20]\,
      I3 => \deb.count_reg_n_0_[7]\,
      I4 => \deb.count[31]_i_12_n_0\,
      O => \deb.count[31]_i_8_n_0\
    );
\deb.count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[26]\,
      I1 => \deb.count_reg_n_0_[3]\,
      I2 => \deb.count_reg_n_0_[25]\,
      I3 => \deb.count_reg_n_0_[16]\,
      O => \deb.count[31]_i_9_n_0\
    );
\deb.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \deb.count[0]_i_1_n_0\,
      Q => \deb.count_reg_n_0_[0]\,
      R => '0'
    );
\deb.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[12]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[10]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[12]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[11]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[12]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[12]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[8]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[12]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[12]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[12]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[12]_i_1__2_n_4\,
      O(2) => \deb.count_reg[12]_i_1__2_n_5\,
      O(1) => \deb.count_reg[12]_i_1__2_n_6\,
      O(0) => \deb.count_reg[12]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[12]\,
      S(2) => \deb.count_reg_n_0_[11]\,
      S(1) => \deb.count_reg_n_0_[10]\,
      S(0) => \deb.count_reg_n_0_[9]\
    );
\deb.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[16]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[13]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[16]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[14]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[16]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[15]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[16]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[16]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[12]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[16]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[16]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[16]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[16]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[16]_i_1__2_n_4\,
      O(2) => \deb.count_reg[16]_i_1__2_n_5\,
      O(1) => \deb.count_reg[16]_i_1__2_n_6\,
      O(0) => \deb.count_reg[16]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[16]\,
      S(2) => \deb.count_reg_n_0_[15]\,
      S(1) => \deb.count_reg_n_0_[14]\,
      S(0) => \deb.count_reg_n_0_[13]\
    );
\deb.count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[20]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[17]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[20]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[18]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[20]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[19]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[4]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[1]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[20]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[20]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[16]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[20]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[20]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[20]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[20]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[20]_i_1__2_n_4\,
      O(2) => \deb.count_reg[20]_i_1__2_n_5\,
      O(1) => \deb.count_reg[20]_i_1__2_n_6\,
      O(0) => \deb.count_reg[20]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[20]\,
      S(2) => \deb.count_reg_n_0_[19]\,
      S(1) => \deb.count_reg_n_0_[18]\,
      S(0) => \deb.count_reg_n_0_[17]\
    );
\deb.count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[24]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[21]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[24]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[22]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[24]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[23]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[24]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[24]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[20]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[24]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[24]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[24]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[24]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[24]_i_1__2_n_4\,
      O(2) => \deb.count_reg[24]_i_1__2_n_5\,
      O(1) => \deb.count_reg[24]_i_1__2_n_6\,
      O(0) => \deb.count_reg[24]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[24]\,
      S(2) => \deb.count_reg_n_0_[23]\,
      S(1) => \deb.count_reg_n_0_[22]\,
      S(0) => \deb.count_reg_n_0_[21]\
    );
\deb.count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[28]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[25]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[28]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[26]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[28]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[27]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[28]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[28]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[24]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[28]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[28]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[28]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[28]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[28]_i_1__2_n_4\,
      O(2) => \deb.count_reg[28]_i_1__2_n_5\,
      O(1) => \deb.count_reg[28]_i_1__2_n_6\,
      O(0) => \deb.count_reg[28]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[28]\,
      S(2) => \deb.count_reg_n_0_[27]\,
      S(1) => \deb.count_reg_n_0_[26]\,
      S(0) => \deb.count_reg_n_0_[25]\
    );
\deb.count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[31]_i_3__2_n_7\,
      Q => \deb.count_reg_n_0_[29]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[4]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[2]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[31]_i_3__2_n_6\,
      Q => \deb.count_reg_n_0_[30]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[31]_i_3__2_n_5\,
      Q => \deb.count_reg_n_0_[31]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]_i_3__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[28]_i_1__2_n_0\,
      CO(3 downto 2) => \NLW_deb.count_reg[31]_i_3__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \deb.count_reg[31]_i_3__2_n_2\,
      CO(0) => \deb.count_reg[31]_i_3__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_deb.count_reg[31]_i_3__2_O_UNCONNECTED\(3),
      O(2) => \deb.count_reg[31]_i_3__2_n_5\,
      O(1) => \deb.count_reg[31]_i_3__2_n_6\,
      O(0) => \deb.count_reg[31]_i_3__2_n_7\,
      S(3) => '0',
      S(2) => \deb.count_reg_n_0_[31]\,
      S(1) => \deb.count_reg_n_0_[30]\,
      S(0) => \deb.count_reg_n_0_[29]\
    );
\deb.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[4]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[3]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[4]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[4]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deb.count_reg[4]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[4]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[4]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[4]_i_1__2_n_3\,
      CYINIT => \deb.count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[4]_i_1__2_n_4\,
      O(2) => \deb.count_reg[4]_i_1__2_n_5\,
      O(1) => \deb.count_reg[4]_i_1__2_n_6\,
      O(0) => \deb.count_reg[4]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[4]\,
      S(2) => \deb.count_reg_n_0_[3]\,
      S(1) => \deb.count_reg_n_0_[2]\,
      S(0) => \deb.count_reg_n_0_[1]\
    );
\deb.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[8]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[5]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[8]_i_1__2_n_6\,
      Q => \deb.count_reg_n_0_[6]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[8]_i_1__2_n_5\,
      Q => \deb.count_reg_n_0_[7]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[8]_i_1__2_n_4\,
      Q => \deb.count_reg_n_0_[8]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[4]_i_1__2_n_0\,
      CO(3) => \deb.count_reg[8]_i_1__2_n_0\,
      CO(2) => \deb.count_reg[8]_i_1__2_n_1\,
      CO(1) => \deb.count_reg[8]_i_1__2_n_2\,
      CO(0) => \deb.count_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deb.count_reg[8]_i_1__2_n_4\,
      O(2) => \deb.count_reg[8]_i_1__2_n_5\,
      O(1) => \deb.count_reg[8]_i_1__2_n_6\,
      O(0) => \deb.count_reg[8]_i_1__2_n_7\,
      S(3) => \deb.count_reg_n_0_[8]\,
      S(2) => \deb.count_reg_n_0_[7]\,
      S(1) => \deb.count_reg_n_0_[6]\,
      S(0) => \deb.count_reg_n_0_[5]\
    );
\deb.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \deb.count[31]_i_2__2_n_0\,
      D => \deb.count_reg[12]_i_1__2_n_7\,
      Q => \deb.count_reg_n_0_[9]\,
      R => \deb.count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Contatore is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \data_out_reg[12]\ : out STD_LOGIC;
    \cntr_reg[2]_0\ : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SET_clrd : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cntr_reg[2]_1\ : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    sec2min : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_5\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_read : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Contatore;

architecture STRUCTURE of Contatore is
  signal \^d\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cntr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cntr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cntr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cntr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cntr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cntr[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \cntr[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \cntr[5]_i_5_n_0\ : STD_LOGIC;
  signal \div_clk_i_1__0_n_0\ : STD_LOGIC;
  signal min2h : STD_LOGIC;
  signal min_b : STD_LOGIC_VECTOR ( 5 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAM[7][10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \RAM[7][11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \RAM[7][12]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \RAM[7][13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \RAM[7][9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[6]_inst_i_21\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cntr[1]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cntr[3]_i_2__0\ : label is "soft_lutpair28";
begin
  D(5 downto 0) <= \^d\(5 downto 0);
  Q(0) <= \^q\(0);
\RAM[7][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1381C86C"
    )
        port map (
      I0 => min_b(1),
      I1 => min_b(2),
      I2 => min_b(5),
      I3 => min_b(3),
      I4 => min_b(4),
      O => \^d\(1)
    );
\RAM[7][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41082410"
    )
        port map (
      I0 => min_b(2),
      I1 => min_b(5),
      I2 => min_b(3),
      I3 => min_b(4),
      I4 => min_b(1),
      O => \^d\(2)
    );
\RAM[7][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6D3C492C"
    )
        port map (
      I0 => min_b(2),
      I1 => min_b(5),
      I2 => min_b(3),
      I3 => min_b(4),
      I4 => min_b(1),
      O => \^d\(3)
    );
\RAM[7][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A624"
    )
        port map (
      I0 => min_b(4),
      I1 => min_b(5),
      I2 => min_b(3),
      I3 => min_b(2),
      O => \^d\(4)
    );
\RAM[7][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => min_b(5),
      I1 => min_b(4),
      I2 => min_b(3),
      O => \^d\(5)
    );
\RAM[7][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A51A6186"
    )
        port map (
      I0 => min_b(1),
      I1 => min_b(4),
      I2 => min_b(3),
      I3 => min_b(5),
      I4 => min_b(2),
      O => \^d\(0)
    );
\cathodes_out_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F99FFFF"
    )
        port map (
      I0 => min_b(1),
      I1 => \^d\(3),
      I2 => \cathodes_out_OBUF[6]_inst_i_5\(1),
      I3 => mem_read,
      I4 => \cathodes_out_OBUF[6]_inst_i_4\,
      I5 => \cathodes_out_OBUF[6]_inst_i_4_0\,
      O => \cntr_reg[1]_0\
    );
\cathodes_out_OBUF[6]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303F3F505F505F"
    )
        port map (
      I0 => \^d\(3),
      I1 => \cathodes_out_OBUF[6]_inst_i_5\(2),
      I2 => \cathodes_out_OBUF[6]_inst_i_4_0\,
      I3 => \^q\(0),
      I4 => \cathodes_out_OBUF[6]_inst_i_5\(0),
      I5 => mem_read,
      O => \data_out_reg[12]\
    );
\cathodes_out_OBUF[6]_inst_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71CF"
    )
        port map (
      I0 => min_b(2),
      I1 => min_b(3),
      I2 => min_b(5),
      I3 => min_b(4),
      O => \cntr_reg[2]_0\
    );
\cntr[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80BFBF80"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => min_b(1),
      I4 => \^q\(0),
      O => \cntr[1]_i_1__0_n_0\
    );
\cntr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBB888"
    )
        port map (
      I0 => parallel_in_IBUF(1),
      I1 => \cntr_reg[2]_1\,
      I2 => min_b(1),
      I3 => \^q\(0),
      I4 => min_b(2),
      I5 => \cntr[5]_i_5_n_0\,
      O => \cntr[2]_i_1__0_n_0\
    );
\cntr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBB888"
    )
        port map (
      I0 => parallel_in_IBUF(2),
      I1 => \cntr_reg[2]_1\,
      I2 => \cntr[3]_i_2__0_n_0\,
      I3 => min_b(2),
      I4 => min_b(3),
      I5 => \cntr[5]_i_5_n_0\,
      O => \cntr[3]_i_1__0_n_0\
    );
\cntr[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => min_b(1),
      I1 => \^q\(0),
      O => \cntr[3]_i_2__0_n_0\
    );
\cntr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000AA3C3C3C"
    )
        port map (
      I0 => parallel_in_IBUF(3),
      I1 => min_b(4),
      I2 => \cntr[5]_i_3__0_n_0\,
      I3 => SEL_IBUF(0),
      I4 => SET_clrd,
      I5 => \cntr[5]_i_5_n_0\,
      O => \cntr[4]_i_1__0_n_0\
    );
\cntr[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => min2h,
      I1 => SEL_IBUF(1),
      I2 => SET_clrd,
      O => E(0)
    );
\cntr[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA3CCC"
    )
        port map (
      I0 => parallel_in_IBUF(4),
      I1 => min_b(5),
      I2 => \cntr[5]_i_3__0_n_0\,
      I3 => min_b(4),
      I4 => \cntr_reg[2]_1\,
      I5 => \cntr[5]_i_5_n_0\,
      O => \cntr[5]_i_2__0_n_0\
    );
\cntr[5]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => min_b(3),
      I1 => min_b(2),
      I2 => min_b(1),
      I3 => \^q\(0),
      O => \cntr[5]_i_3__0_n_0\
    );
\cntr[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => min_b(3),
      I1 => \^q\(0),
      I2 => min_b(1),
      I3 => min_b(5),
      I4 => min_b(4),
      I5 => min_b(2),
      O => \cntr[5]_i_5_n_0\
    );
\cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr_reg[0]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr[1]_i_1__0_n_0\,
      Q => min_b(1),
      R => SR(0)
    );
\cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr[2]_i_1__0_n_0\,
      Q => min_b(2),
      R => SR(0)
    );
\cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr[3]_i_1__0_n_0\,
      Q => min_b(3),
      R => SR(0)
    );
\cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr[4]_i_1__0_n_0\,
      Q => min_b(4),
      R => SR(0)
    );
\cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \cntr_reg[5]_0\(0),
      D => \cntr[5]_i_2__0_n_0\,
      Q => min_b(5),
      R => SR(0)
    );
\div_clk_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808080"
    )
        port map (
      I0 => \cntr[5]_i_5_n_0\,
      I1 => RST_IBUF,
      I2 => sec2min,
      I3 => SET_clrd,
      I4 => SEL_IBUF(0),
      O => \div_clk_i_1__0_n_0\
    );
div_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \div_clk_i_1__0_n_0\,
      Q => min2h,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Contatore_4 is
  port (
    sec2min : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    div_clk_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cntr_reg[2]_0\ : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SET_clrd : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cntr_reg[2]_1\ : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    cronometro_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Contatore_4 : entity is "Contatore";
end Contatore_4;

architecture STRUCTURE of Contatore_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \cntr[3]_i_3_n_0\ : STD_LOGIC;
  signal \cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \cntr[5]_i_3_n_0\ : STD_LOGIC;
  signal div_clk_i_1_n_0 : STD_LOGIC;
  signal \^sec2min\ : STD_LOGIC;
  signal sec_b : STD_LOGIC_VECTOR ( 5 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAM[7][1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \RAM[7][2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \RAM[7][3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \RAM[7][4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \RAM[7][5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \RAM[7][6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[6]_inst_i_23\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cntr[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cntr[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cntr[5]_i_3\ : label is "soft_lutpair36";
begin
  Q(0) <= \^q\(0);
  sec2min <= \^sec2min\;
\RAM[7][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9429A54A"
    )
        port map (
      I0 => sec_b(1),
      I1 => sec_b(2),
      I2 => sec_b(3),
      I3 => sec_b(5),
      I4 => sec_b(4),
      O => D(0)
    );
\RAM[7][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"592445A2"
    )
        port map (
      I0 => sec_b(4),
      I1 => sec_b(5),
      I2 => sec_b(3),
      I3 => sec_b(2),
      I4 => sec_b(1),
      O => D(1)
    );
\RAM[7][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04822018"
    )
        port map (
      I0 => sec_b(4),
      I1 => sec_b(5),
      I2 => sec_b(3),
      I3 => sec_b(2),
      I4 => sec_b(1),
      O => D(2)
    );
\RAM[7][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E830FE0"
    )
        port map (
      I0 => sec_b(1),
      I1 => sec_b(2),
      I2 => sec_b(3),
      I3 => sec_b(5),
      I4 => sec_b(4),
      O => D(3)
    );
\RAM[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A624"
    )
        port map (
      I0 => sec_b(4),
      I1 => sec_b(5),
      I2 => sec_b(3),
      I3 => sec_b(2),
      O => D(4)
    );
\RAM[7][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => sec_b(5),
      I1 => sec_b(4),
      I2 => sec_b(3),
      O => D(5)
    );
\cathodes_out_OBUF[6]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"71CF"
    )
        port map (
      I0 => sec_b(2),
      I1 => sec_b(3),
      I2 => sec_b(5),
      I3 => sec_b(4),
      O => \cntr_reg[2]_0\
    );
\cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80BFBF80"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => sec_b(1),
      I4 => \^q\(0),
      O => \cntr[1]_i_1_n_0\
    );
\cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBB888"
    )
        port map (
      I0 => parallel_in_IBUF(1),
      I1 => \cntr_reg[2]_1\,
      I2 => sec_b(1),
      I3 => \^q\(0),
      I4 => sec_b(2),
      I5 => \cntr[3]_i_3_n_0\,
      O => \cntr[2]_i_1_n_0\
    );
\cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BBBB888"
    )
        port map (
      I0 => parallel_in_IBUF(2),
      I1 => \cntr_reg[2]_1\,
      I2 => \cntr[3]_i_2_n_0\,
      I3 => sec_b(2),
      I4 => sec_b(3),
      I5 => \cntr[3]_i_3_n_0\,
      O => \cntr[3]_i_1_n_0\
    );
\cntr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec_b(1),
      I1 => \^q\(0),
      O => \cntr[3]_i_2_n_0\
    );
\cntr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => sec_b(3),
      I1 => \^q\(0),
      I2 => sec_b(1),
      I3 => sec_b(5),
      I4 => sec_b(4),
      I5 => sec_b(2),
      O => \cntr[3]_i_3_n_0\
    );
\cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC3C0AAAAC3CC"
    )
        port map (
      I0 => parallel_in_IBUF(3),
      I1 => sec_b(4),
      I2 => \cntr[5]_i_3_n_0\,
      I3 => sec_b(2),
      I4 => \cntr_reg[2]_1\,
      I5 => sec_b(5),
      O => \cntr[4]_i_1_n_0\
    );
\cntr[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^sec2min\,
      I1 => SEL_IBUF(1),
      I2 => SET_clrd,
      O => div_clk_reg_0(0)
    );
\cntr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACC30CCCC"
    )
        port map (
      I0 => parallel_in_IBUF(4),
      I1 => sec_b(5),
      I2 => sec_b(2),
      I3 => \cntr[5]_i_3_n_0\,
      I4 => sec_b(4),
      I5 => \cntr_reg[2]_1\,
      O => \cntr[5]_i_2_n_0\
    );
\cntr[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sec_b(3),
      I1 => \^q\(0),
      I2 => sec_b(1),
      O => \cntr[5]_i_3_n_0\
    );
\cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr_reg[0]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr[1]_i_1_n_0\,
      Q => sec_b(1),
      R => SR(0)
    );
\cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr[2]_i_1_n_0\,
      Q => sec_b(2),
      R => SR(0)
    );
\cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr[3]_i_1_n_0\,
      Q => sec_b(3),
      R => SR(0)
    );
\cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr[4]_i_1_n_0\,
      Q => sec_b(4),
      R => SR(0)
    );
\cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr[5]_i_2_n_0\,
      Q => sec_b(5),
      R => SR(0)
    );
div_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808080"
    )
        port map (
      I0 => \cntr[3]_i_3_n_0\,
      I1 => RST_IBUF,
      I2 => cronometro_en,
      I3 => SET_clrd,
      I4 => SEL_IBUF(0),
      O => div_clk_i_1_n_0
    );
div_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => div_clk_i_1_n_0,
      Q => \^sec2min\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Contatore__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SET_clrd : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \cntr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Contatore__parameterized0\ : entity is "Contatore";
end \Contatore__parameterized0\;

architecture STRUCTURE of \Contatore__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cntr[4]_i_3_n_0\ : STD_LOGIC;
  signal h_b : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAM[7][17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAM[7][18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAM[7][19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAM[7][20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAM[7][21]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cntr[4]_i_3\ : label is "soft_lutpair27";
begin
  Q(0) <= \^q\(0);
\RAM[7][17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2962"
    )
        port map (
      I0 => h_b(1),
      I1 => h_b(3),
      I2 => h_b(2),
      I3 => h_b(4),
      O => D(0)
    );
\RAM[7][18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6426"
    )
        port map (
      I0 => h_b(4),
      I1 => h_b(2),
      I2 => h_b(3),
      I3 => h_b(1),
      O => D(1)
    );
\RAM[7][19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0940"
    )
        port map (
      I0 => h_b(2),
      I1 => h_b(4),
      I2 => h_b(1),
      I3 => h_b(3),
      O => D(2)
    );
\RAM[7][20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D242"
    )
        port map (
      I0 => h_b(4),
      I1 => h_b(2),
      I2 => h_b(3),
      I3 => h_b(1),
      O => D(3)
    );
\RAM[7][21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => h_b(4),
      I1 => h_b(2),
      I2 => h_b(3),
      O => D(4)
    );
\cntr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80BFBF80"
    )
        port map (
      I0 => parallel_in_IBUF(0),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => h_b(1),
      I4 => \^q\(0),
      O => p_1_in(1)
    );
\cntr[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BFBF80BF80BF80"
    )
        port map (
      I0 => parallel_in_IBUF(1),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => h_b(2),
      I4 => \^q\(0),
      I5 => h_b(1),
      O => p_1_in(2)
    );
\cntr[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080BF8080BFBF80"
    )
        port map (
      I0 => parallel_in_IBUF(2),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => h_b(3),
      I4 => \cntr[4]_i_3_n_0\,
      I5 => h_b(4),
      O => p_1_in(3)
    );
\cntr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080BFBFBF808080"
    )
        port map (
      I0 => parallel_in_IBUF(3),
      I1 => SET_clrd,
      I2 => SEL_IBUF(0),
      I3 => h_b(3),
      I4 => \cntr[4]_i_3_n_0\,
      I5 => h_b(4),
      O => p_1_in(4)
    );
\cntr[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => h_b(2),
      I1 => \^q\(0),
      I2 => h_b(1),
      O => \cntr[4]_i_3_n_0\
    );
\cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \cntr_reg[0]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(1),
      Q => h_b(1),
      R => SR(0)
    );
\cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(2),
      Q => h_b(2),
      R => SR(0)
    );
\cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(3),
      Q => h_b(3),
      R => SR(0)
    );
\cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(4),
      Q => h_b(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ControlUnit is
  port (
    mux_addr_sel : out STD_LOGIC;
    countr_save_incr : out STD_LOGIC;
    countr_read_incr : out STD_LOGIC;
    mem_read : out STD_LOGIC;
    mem_write : out STD_LOGIC;
    cronometro_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    cronometro_en_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    SET_clrd : in STD_LOGIC;
    view_clrd : in STD_LOGIC;
    count_clrd : in STD_LOGIC;
    save_clrd : in STD_LOGIC
  );
end ControlUnit;

architecture STRUCTURE of ControlUnit is
  signal \__1/i__n_0\ : STD_LOGIC;
  signal \__2/i__n_0\ : STD_LOGIC;
  signal \__4/i__n_0\ : STD_LOGIC;
  signal \^cronometro_en\ : STD_LOGIC;
  signal cronometro_en_i_1_n_0 : STD_LOGIC;
  signal \^mem_write\ : STD_LOGIC;
  signal mux_addr_sel_i_1_n_0 : STD_LOGIC;
  signal stato : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \stato__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stato[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_stato[2]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stato_reg[0]\ : label is "s_countr_incr:100,s_idle:000,s_save:011,s_view:010,s_cronometro:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stato_reg[1]\ : label is "s_countr_incr:100,s_idle:000,s_save:011,s_view:010,s_cronometro:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stato_reg[2]\ : label is "s_countr_incr:100,s_idle:000,s_save:011,s_view:010,s_cronometro:001";
  attribute SOFT_HLUTNM of \__1/i_\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \__2/i_\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \__4/i_\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cronometro_en_i_1 : label is "soft_lutpair3";
begin
  cronometro_en <= \^cronometro_en\;
  mem_write <= \^mem_write\;
\FSM_sequential_stato[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05000547"
    )
        port map (
      I0 => stato(0),
      I1 => count_clrd,
      I2 => stato(1),
      I3 => stato(2),
      I4 => view_clrd,
      O => \stato__0\(0)
    );
\FSM_sequential_stato[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003AE02AE"
    )
        port map (
      I0 => view_clrd,
      I1 => stato(1),
      I2 => count_clrd,
      I3 => stato(0),
      I4 => save_clrd,
      I5 => stato(2),
      O => \stato__0\(1)
    );
\FSM_sequential_stato[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stato(2),
      I1 => stato(0),
      I2 => stato(1),
      O => \stato__0\(2)
    );
\FSM_sequential_stato_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \stato__0\(0),
      Q => stato(0),
      R => SR(0)
    );
\FSM_sequential_stato_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \stato__0\(1),
      Q => stato(1),
      R => SR(0)
    );
\FSM_sequential_stato_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \stato__0\(2),
      Q => stato(2),
      R => SR(0)
    );
\__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => stato(0),
      I1 => stato(2),
      I2 => stato(1),
      I3 => view_clrd,
      O => \__1/i__n_0\
    );
\__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => stato(2),
      I1 => stato(0),
      I2 => stato(1),
      O => \__2/i__n_0\
    );
\__4/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => stato(1),
      I1 => stato(2),
      I2 => stato(0),
      O => \__4/i__n_0\
    );
\cntr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^cronometro_en\,
      I1 => SEL_IBUF(0),
      I2 => SET_clrd,
      O => cronometro_en_reg_0(0)
    );
countr_read_incr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \__1/i__n_0\,
      Q => countr_read_incr,
      R => SR(0)
    );
countr_save_incr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \__2/i__n_0\,
      Q => countr_save_incr,
      R => SR(0)
    );
cronometro_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => stato(0),
      I1 => stato(2),
      I2 => stato(1),
      O => cronometro_en_i_1_n_0
    );
cronometro_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => cronometro_en_i_1_n_0,
      Q => \^cronometro_en\,
      R => SR(0)
    );
\data_out[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RST_IBUF,
      I1 => \^mem_write\,
      O => E(0)
    );
mem_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \__4/i__n_0\,
      Q => mem_read,
      R => SR(0)
    );
mem_write_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \stato__0\(2),
      Q => \^mem_write\,
      R => SR(0)
    );
mux_addr_sel_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => stato(0),
      I1 => stato(2),
      I2 => stato(1),
      O => mux_addr_sel_i_1_n_0
    );
mux_addr_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => mux_addr_sel_i_1_n_0,
      Q => mux_addr_sel,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Memoria is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[21]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \c_reg[2]\ : out STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    \data_out_reg[0]_0\ : in STD_LOGIC;
    \data_out_reg[0]_1\ : in STD_LOGIC;
    \data_out_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \cathodes_out_OBUF[6]_inst_i_5_0\ : in STD_LOGIC;
    mem_read : in STD_LOGIC;
    \cathodes_out_OBUF[0]_inst_i_1\ : in STD_LOGIC;
    \cathodes_out_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \cathodes_out_OBUF[0]_inst_i_1_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \RAM_reg[6][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[5][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[4][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[3][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[2][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[1][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RAM_reg[0][21]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Memoria;

architecture STRUCTURE of Memoria is
  signal \RAM[7]_0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[0]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[1]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[2]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[3]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[4]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[5]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[6]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \RAM_reg[7]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cathodes_out_OBUF[6]_inst_i_17_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_19_n_0\ : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[17]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[18]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[18]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[19]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[20]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[21]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[21]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_3_n_0\ : STD_LOGIC;
  attribute ROM_STYLE : string;
  attribute ROM_STYLE of \RAM_reg[0][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[0][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[1][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[2][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[3][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[4][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[5][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[6][9]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][0]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][10]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][11]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][12]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][13]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][14]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][16]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][17]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][18]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][19]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][1]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][20]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][21]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][2]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][3]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][4]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][5]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][6]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][8]\ : label is "block";
  attribute ROM_STYLE of \RAM_reg[7][9]\ : label is "block";
begin
  SR(0) <= \^sr\(0);
\FSM_sequential_stato[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => \^sr\(0)
    );
\RAM_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[0]\(0),
      R => \^sr\(0)
    );
\RAM_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[0]\(10),
      R => \^sr\(0)
    );
\RAM_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[0]\(11),
      R => \^sr\(0)
    );
\RAM_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[0]\(12),
      R => \^sr\(0)
    );
\RAM_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[0]\(13),
      R => \^sr\(0)
    );
\RAM_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[0]\(14),
      R => \^sr\(0)
    );
\RAM_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[0]\(16),
      R => \^sr\(0)
    );
\RAM_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[0]\(17),
      R => \^sr\(0)
    );
\RAM_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[0]\(18),
      R => \^sr\(0)
    );
\RAM_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[0]\(19),
      R => \^sr\(0)
    );
\RAM_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[0]\(1),
      R => \^sr\(0)
    );
\RAM_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[0]\(20),
      R => \^sr\(0)
    );
\RAM_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[0]\(21),
      R => \^sr\(0)
    );
\RAM_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[0]\(2),
      R => \^sr\(0)
    );
\RAM_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[0]\(3),
      R => \^sr\(0)
    );
\RAM_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[0]\(4),
      R => \^sr\(0)
    );
\RAM_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[0]\(5),
      R => \^sr\(0)
    );
\RAM_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[0]\(6),
      R => \^sr\(0)
    );
\RAM_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[0]\(8),
      R => \^sr\(0)
    );
\RAM_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[0][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[0]\(9),
      R => \^sr\(0)
    );
\RAM_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[1]\(0),
      R => \^sr\(0)
    );
\RAM_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[1]\(10),
      R => \^sr\(0)
    );
\RAM_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[1]\(11),
      R => \^sr\(0)
    );
\RAM_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[1]\(12),
      R => \^sr\(0)
    );
\RAM_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[1]\(13),
      R => \^sr\(0)
    );
\RAM_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[1]\(14),
      R => \^sr\(0)
    );
\RAM_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[1]\(16),
      R => \^sr\(0)
    );
\RAM_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[1]\(17),
      R => \^sr\(0)
    );
\RAM_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[1]\(18),
      R => \^sr\(0)
    );
\RAM_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[1]\(19),
      R => \^sr\(0)
    );
\RAM_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[1]\(1),
      R => \^sr\(0)
    );
\RAM_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[1]\(20),
      R => \^sr\(0)
    );
\RAM_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[1]\(21),
      R => \^sr\(0)
    );
\RAM_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[1]\(2),
      R => \^sr\(0)
    );
\RAM_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[1]\(3),
      R => \^sr\(0)
    );
\RAM_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[1]\(4),
      R => \^sr\(0)
    );
\RAM_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[1]\(5),
      R => \^sr\(0)
    );
\RAM_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[1]\(6),
      R => \^sr\(0)
    );
\RAM_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[1]\(8),
      R => \^sr\(0)
    );
\RAM_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[1][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[1]\(9),
      R => \^sr\(0)
    );
\RAM_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[2]\(0),
      R => \^sr\(0)
    );
\RAM_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[2]\(10),
      R => \^sr\(0)
    );
\RAM_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[2]\(11),
      R => \^sr\(0)
    );
\RAM_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[2]\(12),
      R => \^sr\(0)
    );
\RAM_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[2]\(13),
      R => \^sr\(0)
    );
\RAM_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[2]\(14),
      R => \^sr\(0)
    );
\RAM_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[2]\(16),
      R => \^sr\(0)
    );
\RAM_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[2]\(17),
      R => \^sr\(0)
    );
\RAM_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[2]\(18),
      R => \^sr\(0)
    );
\RAM_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[2]\(19),
      R => \^sr\(0)
    );
\RAM_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[2]\(1),
      R => \^sr\(0)
    );
\RAM_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[2]\(20),
      R => \^sr\(0)
    );
\RAM_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[2]\(21),
      R => \^sr\(0)
    );
\RAM_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[2]\(2),
      R => \^sr\(0)
    );
\RAM_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[2]\(3),
      R => \^sr\(0)
    );
\RAM_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[2]\(4),
      R => \^sr\(0)
    );
\RAM_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[2]\(5),
      R => \^sr\(0)
    );
\RAM_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[2]\(6),
      R => \^sr\(0)
    );
\RAM_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[2]\(8),
      R => \^sr\(0)
    );
\RAM_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[2][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[2]\(9),
      R => \^sr\(0)
    );
\RAM_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[3]\(0),
      R => \^sr\(0)
    );
\RAM_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[3]\(10),
      R => \^sr\(0)
    );
\RAM_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[3]\(11),
      R => \^sr\(0)
    );
\RAM_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[3]\(12),
      R => \^sr\(0)
    );
\RAM_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[3]\(13),
      R => \^sr\(0)
    );
\RAM_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[3]\(14),
      R => \^sr\(0)
    );
\RAM_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[3]\(16),
      R => \^sr\(0)
    );
\RAM_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[3]\(17),
      R => \^sr\(0)
    );
\RAM_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[3]\(18),
      R => \^sr\(0)
    );
\RAM_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[3]\(19),
      R => \^sr\(0)
    );
\RAM_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[3]\(1),
      R => \^sr\(0)
    );
\RAM_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[3]\(20),
      R => \^sr\(0)
    );
\RAM_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[3]\(21),
      R => \^sr\(0)
    );
\RAM_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[3]\(2),
      R => \^sr\(0)
    );
\RAM_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[3]\(3),
      R => \^sr\(0)
    );
\RAM_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[3]\(4),
      R => \^sr\(0)
    );
\RAM_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[3]\(5),
      R => \^sr\(0)
    );
\RAM_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[3]\(6),
      R => \^sr\(0)
    );
\RAM_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[3]\(8),
      R => \^sr\(0)
    );
\RAM_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[3][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[3]\(9),
      R => \^sr\(0)
    );
\RAM_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[4]\(0),
      R => \^sr\(0)
    );
\RAM_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[4]\(10),
      R => \^sr\(0)
    );
\RAM_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[4]\(11),
      R => \^sr\(0)
    );
\RAM_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[4]\(12),
      R => \^sr\(0)
    );
\RAM_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[4]\(13),
      R => \^sr\(0)
    );
\RAM_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[4]\(14),
      R => \^sr\(0)
    );
\RAM_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[4]\(16),
      R => \^sr\(0)
    );
\RAM_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[4]\(17),
      R => \^sr\(0)
    );
\RAM_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[4]\(18),
      R => \^sr\(0)
    );
\RAM_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[4]\(19),
      R => \^sr\(0)
    );
\RAM_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[4]\(1),
      R => \^sr\(0)
    );
\RAM_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[4]\(20),
      R => \^sr\(0)
    );
\RAM_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[4]\(21),
      R => \^sr\(0)
    );
\RAM_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[4]\(2),
      R => \^sr\(0)
    );
\RAM_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[4]\(3),
      R => \^sr\(0)
    );
\RAM_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[4]\(4),
      R => \^sr\(0)
    );
\RAM_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[4]\(5),
      R => \^sr\(0)
    );
\RAM_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[4]\(6),
      R => \^sr\(0)
    );
\RAM_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[4]\(8),
      R => \^sr\(0)
    );
\RAM_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[4][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[4]\(9),
      R => \^sr\(0)
    );
\RAM_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[5]\(0),
      R => \^sr\(0)
    );
\RAM_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[5]\(10),
      R => \^sr\(0)
    );
\RAM_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[5]\(11),
      R => \^sr\(0)
    );
\RAM_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[5]\(12),
      R => \^sr\(0)
    );
\RAM_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[5]\(13),
      R => \^sr\(0)
    );
\RAM_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[5]\(14),
      R => \^sr\(0)
    );
\RAM_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[5]\(16),
      R => \^sr\(0)
    );
\RAM_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[5]\(17),
      R => \^sr\(0)
    );
\RAM_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[5]\(18),
      R => \^sr\(0)
    );
\RAM_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[5]\(19),
      R => \^sr\(0)
    );
\RAM_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[5]\(1),
      R => \^sr\(0)
    );
\RAM_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[5]\(20),
      R => \^sr\(0)
    );
\RAM_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[5]\(21),
      R => \^sr\(0)
    );
\RAM_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[5]\(2),
      R => \^sr\(0)
    );
\RAM_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[5]\(3),
      R => \^sr\(0)
    );
\RAM_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[5]\(4),
      R => \^sr\(0)
    );
\RAM_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[5]\(5),
      R => \^sr\(0)
    );
\RAM_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[5]\(6),
      R => \^sr\(0)
    );
\RAM_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[5]\(8),
      R => \^sr\(0)
    );
\RAM_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[5][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[5]\(9),
      R => \^sr\(0)
    );
\RAM_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(0),
      Q => \RAM_reg[6]\(0),
      R => \^sr\(0)
    );
\RAM_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(9),
      Q => \RAM_reg[6]\(10),
      R => \^sr\(0)
    );
\RAM_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(10),
      Q => \RAM_reg[6]\(11),
      R => \^sr\(0)
    );
\RAM_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(11),
      Q => \RAM_reg[6]\(12),
      R => \^sr\(0)
    );
\RAM_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(12),
      Q => \RAM_reg[6]\(13),
      R => \^sr\(0)
    );
\RAM_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(13),
      Q => \RAM_reg[6]\(14),
      R => \^sr\(0)
    );
\RAM_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(14),
      Q => \RAM_reg[6]\(16),
      R => \^sr\(0)
    );
\RAM_reg[6][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(15),
      Q => \RAM_reg[6]\(17),
      R => \^sr\(0)
    );
\RAM_reg[6][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(16),
      Q => \RAM_reg[6]\(18),
      R => \^sr\(0)
    );
\RAM_reg[6][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(17),
      Q => \RAM_reg[6]\(19),
      R => \^sr\(0)
    );
\RAM_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(1),
      Q => \RAM_reg[6]\(1),
      R => \^sr\(0)
    );
\RAM_reg[6][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(18),
      Q => \RAM_reg[6]\(20),
      R => \^sr\(0)
    );
\RAM_reg[6][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(19),
      Q => \RAM_reg[6]\(21),
      R => \^sr\(0)
    );
\RAM_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(2),
      Q => \RAM_reg[6]\(2),
      R => \^sr\(0)
    );
\RAM_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(3),
      Q => \RAM_reg[6]\(3),
      R => \^sr\(0)
    );
\RAM_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(4),
      Q => \RAM_reg[6]\(4),
      R => \^sr\(0)
    );
\RAM_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(5),
      Q => \RAM_reg[6]\(5),
      R => \^sr\(0)
    );
\RAM_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(6),
      Q => \RAM_reg[6]\(6),
      R => \^sr\(0)
    );
\RAM_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(7),
      Q => \RAM_reg[6]\(8),
      R => \^sr\(0)
    );
\RAM_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \RAM_reg[6][21]_0\(0),
      D => D(8),
      Q => \RAM_reg[6]\(9),
      R => \^sr\(0)
    );
\RAM_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \RAM_reg[7]\(0),
      R => \^sr\(0)
    );
\RAM_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(9),
      Q => \RAM_reg[7]\(10),
      R => \^sr\(0)
    );
\RAM_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(10),
      Q => \RAM_reg[7]\(11),
      R => \^sr\(0)
    );
\RAM_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(11),
      Q => \RAM_reg[7]\(12),
      R => \^sr\(0)
    );
\RAM_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(12),
      Q => \RAM_reg[7]\(13),
      R => \^sr\(0)
    );
\RAM_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(13),
      Q => \RAM_reg[7]\(14),
      R => \^sr\(0)
    );
\RAM_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(14),
      Q => \RAM_reg[7]\(16),
      R => \^sr\(0)
    );
\RAM_reg[7][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(15),
      Q => \RAM_reg[7]\(17),
      R => \^sr\(0)
    );
\RAM_reg[7][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(16),
      Q => \RAM_reg[7]\(18),
      R => \^sr\(0)
    );
\RAM_reg[7][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(17),
      Q => \RAM_reg[7]\(19),
      R => \^sr\(0)
    );
\RAM_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \RAM_reg[7]\(1),
      R => \^sr\(0)
    );
\RAM_reg[7][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(18),
      Q => \RAM_reg[7]\(20),
      R => \^sr\(0)
    );
\RAM_reg[7][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(19),
      Q => \RAM_reg[7]\(21),
      R => \^sr\(0)
    );
\RAM_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \RAM_reg[7]\(2),
      R => \^sr\(0)
    );
\RAM_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \RAM_reg[7]\(3),
      R => \^sr\(0)
    );
\RAM_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \RAM_reg[7]\(4),
      R => \^sr\(0)
    );
\RAM_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \RAM_reg[7]\(5),
      R => \^sr\(0)
    );
\RAM_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => \RAM_reg[7]\(6),
      R => \^sr\(0)
    );
\RAM_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => \RAM_reg[7]\(8),
      R => \^sr\(0)
    );
\RAM_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(8),
      Q => \RAM_reg[7]\(9),
      R => \^sr\(0)
    );
\cathodes_out_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_out(21),
      I1 => D(19),
      I2 => \cathodes_out_OBUF[6]_inst_i_5_0\,
      I3 => data_out(17),
      I4 => mem_read,
      I5 => D(15),
      O => \data_out_reg[21]_0\
    );
\cathodes_out_OBUF[6]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_out(20),
      I1 => D(18),
      I2 => \cathodes_out_OBUF[6]_inst_i_5_0\,
      I3 => data_out(16),
      I4 => mem_read,
      I5 => D(14),
      O => \cathodes_out_OBUF[6]_inst_i_17_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => data_out(0),
      I1 => D(0),
      I2 => \cathodes_out_OBUF[6]_inst_i_5_0\,
      I3 => data_out(4),
      I4 => mem_read,
      I5 => D(4),
      O => \cathodes_out_OBUF[6]_inst_i_19_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC77FC44"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_17_n_0\,
      I1 => \cathodes_out_OBUF[0]_inst_i_1\,
      I2 => \cathodes_out_OBUF[0]_inst_i_1_0\,
      I3 => \cathodes_out_OBUF[0]_inst_i_1_1\,
      I4 => \cathodes_out_OBUF[6]_inst_i_19_n_0\,
      O => \c_reg[2]\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(0),
      I1 => \RAM_reg[2]\(0),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(0),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(0),
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(0),
      I1 => \RAM_reg[6]\(0),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(0),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(0),
      O => \data_out[0]_i_3_n_0\
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(10),
      I1 => \RAM_reg[2]\(10),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(10),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(10),
      O => \data_out[10]_i_2_n_0\
    );
\data_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(10),
      I1 => \RAM_reg[6]\(10),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(10),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(10),
      O => \data_out[10]_i_3_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(11),
      I1 => \RAM_reg[2]\(11),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(11),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(11),
      O => \data_out[11]_i_2_n_0\
    );
\data_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(11),
      I1 => \RAM_reg[6]\(11),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(11),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(11),
      O => \data_out[11]_i_3_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(12),
      I1 => \RAM_reg[2]\(12),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(12),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(12),
      O => \data_out[12]_i_2_n_0\
    );
\data_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(12),
      I1 => \RAM_reg[6]\(12),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(12),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(12),
      O => \data_out[12]_i_3_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(13),
      I1 => \RAM_reg[2]\(13),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(13),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(13),
      O => \data_out[13]_i_2_n_0\
    );
\data_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(13),
      I1 => \RAM_reg[6]\(13),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(13),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(13),
      O => \data_out[13]_i_3_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(14),
      I1 => \RAM_reg[2]\(14),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(14),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(14),
      O => \data_out[14]_i_2_n_0\
    );
\data_out[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(14),
      I1 => \RAM_reg[6]\(14),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(14),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(14),
      O => \data_out[14]_i_3_n_0\
    );
\data_out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(16),
      I1 => \RAM_reg[2]\(16),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(16),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(16),
      O => \data_out[16]_i_2_n_0\
    );
\data_out[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(16),
      I1 => \RAM_reg[6]\(16),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(16),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(16),
      O => \data_out[16]_i_3_n_0\
    );
\data_out[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(17),
      I1 => \RAM_reg[2]\(17),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(17),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(17),
      O => \data_out[17]_i_2_n_0\
    );
\data_out[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(17),
      I1 => \RAM_reg[6]\(17),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(17),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(17),
      O => \data_out[17]_i_3_n_0\
    );
\data_out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(18),
      I1 => \RAM_reg[2]\(18),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(18),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(18),
      O => \data_out[18]_i_2_n_0\
    );
\data_out[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(18),
      I1 => \RAM_reg[6]\(18),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(18),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(18),
      O => \data_out[18]_i_3_n_0\
    );
\data_out[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(19),
      I1 => \RAM_reg[2]\(19),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(19),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(19),
      O => \data_out[19]_i_2_n_0\
    );
\data_out[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(19),
      I1 => \RAM_reg[6]\(19),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(19),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(19),
      O => \data_out[19]_i_3_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(1),
      I1 => \RAM_reg[2]\(1),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(1),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(1),
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(1),
      I1 => \RAM_reg[6]\(1),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(1),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(1),
      O => \data_out[1]_i_3_n_0\
    );
\data_out[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(20),
      I1 => \RAM_reg[2]\(20),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(20),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(20),
      O => \data_out[20]_i_2_n_0\
    );
\data_out[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(20),
      I1 => \RAM_reg[6]\(20),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(20),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(20),
      O => \data_out[20]_i_3_n_0\
    );
\data_out[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(21),
      I1 => \RAM_reg[2]\(21),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(21),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(21),
      O => \data_out[21]_i_4_n_0\
    );
\data_out[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(21),
      I1 => \RAM_reg[6]\(21),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(21),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(21),
      O => \data_out[21]_i_5_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(2),
      I1 => \RAM_reg[2]\(2),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(2),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(2),
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(2),
      I1 => \RAM_reg[6]\(2),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(2),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(2),
      O => \data_out[2]_i_3_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(3),
      I1 => \RAM_reg[2]\(3),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(3),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(3),
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(3),
      I1 => \RAM_reg[6]\(3),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(3),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(3),
      O => \data_out[3]_i_3_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(4),
      I1 => \RAM_reg[2]\(4),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(4),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(4),
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(4),
      I1 => \RAM_reg[6]\(4),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(4),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(4),
      O => \data_out[4]_i_3_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(5),
      I1 => \RAM_reg[2]\(5),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(5),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(5),
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(5),
      I1 => \RAM_reg[6]\(5),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(5),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(5),
      O => \data_out[5]_i_3_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(6),
      I1 => \RAM_reg[2]\(6),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(6),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(6),
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(6),
      I1 => \RAM_reg[6]\(6),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(6),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(6),
      O => \data_out[6]_i_3_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(8),
      I1 => \RAM_reg[2]\(8),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(8),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(8),
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(8),
      I1 => \RAM_reg[6]\(8),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(8),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(8),
      O => \data_out[8]_i_3_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(9),
      I1 => \RAM_reg[2]\(9),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[1]\(9),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[0]\(9),
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(9),
      I1 => \RAM_reg[6]\(9),
      I2 => \data_out_reg[0]_1\,
      I3 => \RAM_reg[5]\(9),
      I4 => \data_out_reg[0]_2\,
      I5 => \RAM_reg[4]\(9),
      O => \data_out[9]_i_3_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(0),
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \data_out[0]_i_3_n_0\,
      O => \RAM[7]_0\(0),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(10),
      Q => Q(7),
      R => '0'
    );
\data_out_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[10]_i_2_n_0\,
      I1 => \data_out[10]_i_3_n_0\,
      O => \RAM[7]_0\(10),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(11),
      Q => Q(8),
      R => '0'
    );
\data_out_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[11]_i_2_n_0\,
      I1 => \data_out[11]_i_3_n_0\,
      O => \RAM[7]_0\(11),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(12),
      Q => Q(9),
      R => '0'
    );
\data_out_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[12]_i_2_n_0\,
      I1 => \data_out[12]_i_3_n_0\,
      O => \RAM[7]_0\(12),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(13),
      Q => Q(10),
      R => '0'
    );
\data_out_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[13]_i_2_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      O => \RAM[7]_0\(13),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(14),
      Q => Q(11),
      R => '0'
    );
\data_out_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[14]_i_2_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      O => \RAM[7]_0\(14),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(16),
      Q => data_out(16),
      R => '0'
    );
\data_out_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[16]_i_2_n_0\,
      I1 => \data_out[16]_i_3_n_0\,
      O => \RAM[7]_0\(16),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(17),
      Q => data_out(17),
      R => '0'
    );
\data_out_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[17]_i_2_n_0\,
      I1 => \data_out[17]_i_3_n_0\,
      O => \RAM[7]_0\(17),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(18),
      Q => Q(12),
      R => '0'
    );
\data_out_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[18]_i_2_n_0\,
      I1 => \data_out[18]_i_3_n_0\,
      O => \RAM[7]_0\(18),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(19),
      Q => Q(13),
      R => '0'
    );
\data_out_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[19]_i_2_n_0\,
      I1 => \data_out[19]_i_3_n_0\,
      O => \RAM[7]_0\(19),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(1),
      Q => Q(0),
      R => '0'
    );
\data_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => \data_out[1]_i_3_n_0\,
      O => \RAM[7]_0\(1),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(20),
      Q => data_out(20),
      R => '0'
    );
\data_out_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[20]_i_2_n_0\,
      I1 => \data_out[20]_i_3_n_0\,
      O => \RAM[7]_0\(20),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(21),
      Q => data_out(21),
      R => '0'
    );
\data_out_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[21]_i_4_n_0\,
      I1 => \data_out[21]_i_5_n_0\,
      O => \RAM[7]_0\(21),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(2),
      Q => Q(1),
      R => '0'
    );
\data_out_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      O => \RAM[7]_0\(2),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(3),
      Q => Q(2),
      R => '0'
    );
\data_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      O => \RAM[7]_0\(3),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(4),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => \data_out[4]_i_3_n_0\,
      O => \RAM[7]_0\(4),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(5),
      Q => Q(3),
      R => '0'
    );
\data_out_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[5]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      O => \RAM[7]_0\(5),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(6),
      Q => Q(4),
      R => '0'
    );
\data_out_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[6]_i_2_n_0\,
      I1 => \data_out[6]_i_3_n_0\,
      O => \RAM[7]_0\(6),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(8),
      Q => Q(5),
      R => '0'
    );
\data_out_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[8]_i_2_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      O => \RAM[7]_0\(8),
      S => \data_out_reg[0]_0\
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out_reg[0]_3\(0),
      D => \RAM[7]_0\(9),
      Q => Q(6),
      R => '0'
    );
\data_out_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[9]_i_2_n_0\,
      I1 => \data_out[9]_i_3_n_0\,
      O => \RAM[7]_0\(9),
      S => \data_out_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_filter is
  port (
    clockfx : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end clock_filter;

architecture STRUCTURE of clock_filter is
  signal clockfx_0 : STD_LOGIC;
  signal \count_for_division.counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_division.counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_division.counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_division.counter[16]_i_5_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_4\ : STD_LOGIC;
  signal \counter0_carry__2_n_5\ : STD_LOGIC;
  signal \counter0_carry__2_n_6\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal counter_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clockfx_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_for_division.counter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_for_division.counter[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_for_division.counter[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_for_division.counter[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_for_division.counter[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_for_division.counter[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_for_division.counter[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_for_division.counter[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_for_division.counter[16]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_for_division.counter[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_for_division.counter[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_for_division.counter[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_for_division.counter[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_for_division.counter[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_for_division.counter[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_for_division.counter[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_for_division.counter[9]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
begin
clockfx_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      O => clockfx_0
    );
clockfx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => clockfx_0,
      Q => clockfx,
      R => SR(0)
    );
\count_for_division.counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_1(0)
    );
\count_for_division.counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__1_n_6\,
      O => counter_1(10)
    );
\count_for_division.counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__1_n_5\,
      O => counter_1(11)
    );
\count_for_division.counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__1_n_4\,
      O => counter_1(12)
    );
\count_for_division.counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__2_n_7\,
      O => counter_1(13)
    );
\count_for_division.counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__2_n_6\,
      O => counter_1(14)
    );
\count_for_division.counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__2_n_5\,
      O => counter_1(15)
    );
\count_for_division.counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__2_n_4\,
      O => counter_1(16)
    );
\count_for_division.counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(6),
      I3 => counter(5),
      I4 => \count_for_division.counter[16]_i_3_n_0\,
      I5 => \count_for_division.counter[16]_i_4_n_0\,
      O => \count_for_division.counter[16]_i_2_n_0\
    );
\count_for_division.counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter(0),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(2),
      I4 => counter(1),
      O => \count_for_division.counter[16]_i_3_n_0\
    );
\count_for_division.counter[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      I2 => counter(8),
      I3 => counter(7),
      I4 => \count_for_division.counter[16]_i_5_n_0\,
      O => \count_for_division.counter[16]_i_4_n_0\
    );
\count_for_division.counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(11),
      I2 => counter(14),
      I3 => counter(13),
      O => \count_for_division.counter[16]_i_5_n_0\
    );
\count_for_division.counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => counter0_carry_n_7,
      O => counter_1(1)
    );
\count_for_division.counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => counter0_carry_n_6,
      O => counter_1(2)
    );
\count_for_division.counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => counter0_carry_n_5,
      O => counter_1(3)
    );
\count_for_division.counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => counter0_carry_n_4,
      O => counter_1(4)
    );
\count_for_division.counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__0_n_7\,
      O => counter_1(5)
    );
\count_for_division.counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__0_n_6\,
      O => counter_1(6)
    );
\count_for_division.counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__0_n_5\,
      O => counter_1(7)
    );
\count_for_division.counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__0_n_4\,
      O => counter_1(8)
    );
\count_for_division.counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_for_division.counter[16]_i_2_n_0\,
      I1 => \counter0_carry__1_n_7\,
      O => counter_1(9)
    );
\count_for_division.counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(0),
      Q => counter(0),
      R => SR(0)
    );
\count_for_division.counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(10),
      Q => counter(10),
      R => SR(0)
    );
\count_for_division.counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(11),
      Q => counter(11),
      R => SR(0)
    );
\count_for_division.counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(12),
      Q => counter(12),
      R => SR(0)
    );
\count_for_division.counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(13),
      Q => counter(13),
      R => SR(0)
    );
\count_for_division.counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(14),
      Q => counter(14),
      R => SR(0)
    );
\count_for_division.counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(15),
      Q => counter(15),
      R => SR(0)
    );
\count_for_division.counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(16),
      Q => counter(16),
      R => SR(0)
    );
\count_for_division.counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(1),
      Q => counter(1),
      R => SR(0)
    );
\count_for_division.counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(2),
      Q => counter(2),
      R => SR(0)
    );
\count_for_division.counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(3),
      Q => counter(3),
      R => SR(0)
    );
\count_for_division.counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(4),
      Q => counter(4),
      R => SR(0)
    );
\count_for_division.counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(5),
      Q => counter(5),
      R => SR(0)
    );
\count_for_division.counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(6),
      Q => counter(6),
      R => SR(0)
    );
\count_for_division.counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(7),
      Q => counter(7),
      R => SR(0)
    );
\count_for_division.counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(8),
      Q => counter(8),
      R => SR(0)
    );
\count_for_division.counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => counter_1(9),
      Q => counter(9),
      R => SR(0)
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3) => counter0_carry_n_4,
      O(2) => counter0_carry_n_5,
      O(1) => counter0_carry_n_6,
      O(0) => counter0_carry_n_7,
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__0_n_4\,
      O(2) => \counter0_carry__0_n_5\,
      O(1) => \counter0_carry__0_n_6\,
      O(0) => \counter0_carry__0_n_7\,
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__1_n_4\,
      O(2) => \counter0_carry__1_n_5\,
      O(1) => \counter0_carry__1_n_6\,
      O(0) => \counter0_carry__1_n_7\,
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__2_n_4\,
      O(2) => \counter0_carry__2_n_5\,
      O(1) => \counter0_carry__2_n_6\,
      O(0) => \counter0_carry__2_n_7\,
      S(3 downto 0) => counter(16 downto 13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod8 is
  port (
    c : out STD_LOGIC_VECTOR ( 2 downto 0 );
    countr_read_incr : in STD_LOGIC;
    \c_reg[0]_0\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end counter_mod8;

architecture STRUCTURE of counter_mod8 is
  signal \^c\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair4";
begin
  c(2 downto 0) <= \^c\(2 downto 0);
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countr_read_incr,
      I1 => \^c\(0),
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^c\(0),
      I1 => countr_read_incr,
      I2 => \^c\(1),
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^c\(0),
      I1 => \^c\(1),
      I2 => countr_read_incr,
      I3 => \^c\(2),
      O => \c[2]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => \^c\(0),
      R => \c_reg[0]_0\
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[1]_i_1_n_0\,
      Q => \^c\(1),
      R => \c_reg[0]_0\
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[2]_i_1_n_0\,
      Q => \^c\(2),
      R => \c_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod8_3 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \c_reg[1]_0\ : out STD_LOGIC;
    \c_reg[0]_0\ : out STD_LOGIC;
    mem_write_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_write_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_write_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \c_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_write_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \c_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_write_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \c_reg[2]_2\ : out STD_LOGIC;
    mem_write : in STD_LOGIC;
    mux_addr_sel : in STD_LOGIC;
    c : in STD_LOGIC_VECTOR ( 2 downto 0 );
    countr_save_incr : in STD_LOGIC;
    \c_reg[0]_1\ : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of counter_mod8_3 : entity is "counter_mod8";
end counter_mod8_3;

architecture STRUCTURE of counter_mod8_3 is
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  signal \^c_reg[0]_0\ : STD_LOGIC;
  signal \^c_reg[1]_0\ : STD_LOGIC;
  signal \c_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_reg_n_0_[1]\ : STD_LOGIC;
  signal \c_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAM[7][21]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \c[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \c[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair5";
begin
  \c_reg[0]_0\ <= \^c_reg[0]_0\;
  \c_reg[1]_0\ <= \^c_reg[1]_0\;
\RAM[0][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000040404"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => E(0)
    );
\RAM[1][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000404040"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => mem_write_reg_0(0)
    );
\RAM[2][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000080808"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => mem_write_reg(0)
    );
\RAM[3][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => mem_write_reg_1(0)
    );
\RAM[4][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000454000000000"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => \c_reg_n_0_[2]\,
      I2 => mux_addr_sel,
      I3 => c(2),
      I4 => \^c_reg[1]_0\,
      I5 => mem_write,
      O => \c_reg[2]_0\(0)
    );
\RAM[5][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A8000000000"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => \c_reg_n_0_[2]\,
      I2 => mux_addr_sel,
      I3 => c(2),
      I4 => \^c_reg[1]_0\,
      I5 => mem_write,
      O => \c_reg[2]_1\(0)
    );
\RAM[6][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808000000"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => mem_write_reg_2(0)
    );
\RAM[7][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => mem_write,
      I2 => \^c_reg[0]_0\,
      I3 => \c_reg_n_0_[2]\,
      I4 => mux_addr_sel,
      I5 => c(2),
      O => mem_write_reg_3(0)
    );
\RAM[7][21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \c_reg_n_0_[1]\,
      I1 => mux_addr_sel,
      I2 => c(1),
      O => \^c_reg[1]_0\
    );
\RAM[7][21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => mux_addr_sel,
      I2 => c(0),
      O => \^c_reg[0]_0\
    );
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countr_save_incr,
      I1 => \c_reg_n_0_[0]\,
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => countr_save_incr,
      I2 => \c_reg_n_0_[1]\,
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => \c_reg_n_0_[1]\,
      I2 => countr_save_incr,
      I3 => \c_reg_n_0_[2]\,
      O => \c[2]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => \c_reg_n_0_[0]\,
      R => \c_reg[0]_1\
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[1]_i_1_n_0\,
      Q => \c_reg_n_0_[1]\,
      R => \c_reg[0]_1\
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[2]_i_1_n_0\,
      Q => \c_reg_n_0_[2]\,
      R => \c_reg[0]_1\
    );
\data_out[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \c_reg_n_0_[2]\,
      I1 => mux_addr_sel,
      I2 => c(2),
      O => \c_reg[2]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod8_5 is
  port (
    cathodes_out_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \c_reg[2]_0\ : out STD_LOGIC;
    \c_reg[1]_0\ : out STD_LOGIC;
    \c_reg[0]_0\ : out STD_LOGIC;
    anodes_out_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cathodes_out[6]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_read : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \cathodes_out_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \cathodes_out_OBUF[0]_inst_i_1_1\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4_0\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4_1\ : in STD_LOGIC;
    clockfx : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of counter_mod8_5 : entity is "counter_mod8";
end counter_mod8_5;

architecture STRUCTURE of counter_mod8_5 is
  signal \^anodes_out_obuf\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  signal \^c_reg[0]_0\ : STD_LOGIC;
  signal \^c_reg[1]_0\ : STD_LOGIC;
  signal \^c_reg[2]_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_15_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_16_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_20_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_22_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \cathodes_out_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anodes_out_OBUF[0]_inst_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \anodes_out_OBUF[1]_inst_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \anodes_out_OBUF[2]_inst_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \anodes_out_OBUF[3]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \anodes_out_OBUF[4]_inst_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \anodes_out_OBUF[5]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \c[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[0]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[1]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[2]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[3]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[4]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[5]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[6]_inst_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[6]_inst_i_20\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[6]_inst_i_22\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cathodes_out_OBUF[7]_inst_i_1\ : label is "soft_lutpair21";
begin
  anodes_out_OBUF(5 downto 0) <= \^anodes_out_obuf\(5 downto 0);
  \c_reg[0]_0\ <= \^c_reg[0]_0\;
  \c_reg[1]_0\ <= \^c_reg[1]_0\;
  \c_reg[2]_0\ <= \^c_reg[2]_0\;
\anodes_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[0]_0\,
      I2 => \^c_reg[1]_0\,
      O => \^anodes_out_obuf\(0)
    );
\anodes_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[0]_0\,
      I2 => \^c_reg[1]_0\,
      O => \^anodes_out_obuf\(1)
    );
\anodes_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[0]_0\,
      I2 => \^c_reg[1]_0\,
      O => \^anodes_out_obuf\(2)
    );
\anodes_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[0]_0\,
      I2 => \^c_reg[1]_0\,
      O => \^anodes_out_obuf\(3)
    );
\anodes_out_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[1]_0\,
      I2 => \^c_reg[0]_0\,
      O => \^anodes_out_obuf\(4)
    );
\anodes_out_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => \^c_reg[1]_0\,
      I2 => \^c_reg[2]_0\,
      O => \^anodes_out_obuf\(5)
    );
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clockfx,
      I1 => \^c_reg[0]_0\,
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => clockfx,
      I2 => \^c_reg[1]_0\,
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => \^c_reg[1]_0\,
      I2 => clockfx,
      I3 => \^c_reg[2]_0\,
      O => \c[2]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => \^c_reg[0]_0\,
      R => SR(0)
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[1]_i_1_n_0\,
      Q => \^c_reg[1]_0\,
      R => SR(0)
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \c[2]_i_1_n_0\,
      Q => \^c_reg[2]_0\,
      R => SR(0)
    );
\cathodes_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0816"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \cathodes_out[6]\,
      O => cathodes_out_OBUF(0)
    );
\cathodes_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C548"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out[6]\,
      I3 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      O => cathodes_out_OBUF(1)
    );
\cathodes_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6440"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out[6]\,
      I3 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      O => cathodes_out_OBUF(2)
    );
\cathodes_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"18C2"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \cathodes_out[6]\,
      O => cathodes_out_OBUF(3)
    );
\cathodes_out_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AB"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \cathodes_out[6]\,
      O => cathodes_out_OBUF(4)
    );
\cathodes_out_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7102"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I1 => \cathodes_out[6]\,
      I2 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      O => cathodes_out_OBUF(5)
    );
\cathodes_out_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0682"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \cathodes_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \cathodes_out[6]\,
      O => cathodes_out_OBUF(6)
    );
\cathodes_out_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => D(6),
      I1 => Q(8),
      I2 => mem_read,
      I3 => \^c_reg[1]_0\,
      I4 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_10_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000CA"
    )
        port map (
      I0 => D(1),
      I1 => Q(1),
      I2 => mem_read,
      I3 => \^c_reg[1]_0\,
      I4 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_11_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F3FF"
    )
        port map (
      I0 => Q(5),
      I1 => \^c_reg[1]_0\,
      I2 => \^c_reg[0]_0\,
      I3 => D(4),
      I4 => mem_read,
      O => \cathodes_out_OBUF[6]_inst_i_12_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FF0A0A88FF0AFF"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_20_n_0\,
      I1 => Q(7),
      I2 => \cathodes_out_OBUF[6]_inst_i_4_0\,
      I3 => \cathodes_out_OBUF[6]_inst_i_22_n_0\,
      I4 => mem_read,
      I5 => \cathodes_out_OBUF[6]_inst_i_4_1\,
      O => \cathodes_out_OBUF[6]_inst_i_15_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000CA"
    )
        port map (
      I0 => D(0),
      I1 => Q(0),
      I2 => mem_read,
      I3 => \^c_reg[1]_0\,
      I4 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_16_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200022202"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_6_n_0\,
      I1 => \cathodes_out_OBUF[6]_inst_i_7_n_0\,
      I2 => D(5),
      I3 => mem_read,
      I4 => Q(6),
      I5 => \^anodes_out_obuf\(2),
      O => \cathodes_out_OBUF[6]_inst_i_2_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_20_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \^c_reg[0]_0\,
      I1 => \^c_reg[1]_0\,
      I2 => Q(3),
      I3 => mem_read,
      O => \cathodes_out_OBUF[6]_inst_i_22_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBBBBBBB"
    )
        port map (
      I0 => \cathodes_out_OBUF[6]_inst_i_8_n_0\,
      I1 => \^c_reg[2]_0\,
      I2 => \cathodes_out_OBUF[6]_inst_i_9_n_0\,
      I3 => \cathodes_out_OBUF[6]_inst_i_10_n_0\,
      I4 => \cathodes_out_OBUF[6]_inst_i_11_n_0\,
      I5 => \cathodes_out_OBUF[6]_inst_i_12_n_0\,
      O => \cathodes_out_OBUF[6]_inst_i_3_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FFFFFF0F"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => \cathodes_out_OBUF[0]_inst_i_1_0\,
      I2 => \cathodes_out_OBUF[0]_inst_i_1_1\,
      I3 => \cathodes_out_OBUF[6]_inst_i_15_n_0\,
      I4 => \cathodes_out_OBUF[6]_inst_i_16_n_0\,
      I5 => \^c_reg[2]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_4_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF1D"
    )
        port map (
      I0 => D(2),
      I1 => mem_read,
      I2 => Q(2),
      I3 => \^c_reg[2]_0\,
      I4 => \^c_reg[0]_0\,
      I5 => \^c_reg[1]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_6_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CA00000000"
    )
        port map (
      I0 => D(8),
      I1 => Q(10),
      I2 => mem_read,
      I3 => \^c_reg[0]_0\,
      I4 => \^c_reg[1]_0\,
      I5 => \^c_reg[2]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_7_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^c_reg[1]_0\,
      I1 => Q(9),
      I2 => mem_read,
      I3 => D(7),
      I4 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_8_n_0\
    );
\cathodes_out_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E20000"
    )
        port map (
      I0 => D(3),
      I1 => mem_read,
      I2 => Q(4),
      I3 => \^c_reg[1]_0\,
      I4 => \^c_reg[0]_0\,
      O => \cathodes_out_OBUF[6]_inst_i_9_n_0\
    );
\cathodes_out_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \^c_reg[2]_0\,
      I1 => \^c_reg[1]_0\,
      I2 => \^c_reg[0]_0\,
      O => cathodes_out_OBUF(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Orologio is
  port (
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \cntr_reg[1]\ : out STD_LOGIC;
    \data_out_reg[12]\ : out STD_LOGIC;
    \cntr_reg[2]\ : out STD_LOGIC;
    \cntr_reg[2]_0\ : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SET_clrd : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 0 to 2 );
    \cntr_reg[2]_1\ : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    cronometro_en : in STD_LOGIC;
    \cntr_reg[2]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_read : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Orologio;

architecture STRUCTURE of Orologio is
  signal min_cntr_n_1 : STD_LOGIC;
  signal sec2min : STD_LOGIC;
  signal sec_cntr_n_2 : STD_LOGIC;
begin
h_cntr: entity work.\Contatore__parameterized0\
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(4 downto 0) => D(19 downto 15),
      E(0) => min_cntr_n_1,
      Q(0) => D(14),
      SEL_IBUF(0) => SEL_IBUF(0),
      SET_clrd => SET_clrd,
      SR(0) => SR(0),
      \cntr_reg[0]_0\(0) => \cntr_reg[0]_1\(0),
      parallel_in_IBUF(3 downto 0) => parallel_in_IBUF(3 downto 0)
    );
min_cntr: entity work.Contatore
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(5 downto 0) => D(13 downto 8),
      E(0) => min_cntr_n_1,
      Q(0) => D(7),
      RST_IBUF => RST_IBUF,
      SEL_IBUF(1) => SEL_IBUF(0),
      SEL_IBUF(0) => SEL_IBUF(1),
      SET_clrd => SET_clrd,
      SR(0) => SR(0),
      \cathodes_out_OBUF[6]_inst_i_4\ => \cathodes_out_OBUF[6]_inst_i_4\,
      \cathodes_out_OBUF[6]_inst_i_4_0\ => \cathodes_out_OBUF[6]_inst_i_4_0\,
      \cathodes_out_OBUF[6]_inst_i_5\(2 downto 0) => Q(2 downto 0),
      \cntr_reg[0]_0\(0) => \cntr_reg[0]_0\(0),
      \cntr_reg[1]_0\ => \cntr_reg[1]\,
      \cntr_reg[2]_0\ => \cntr_reg[2]\,
      \cntr_reg[2]_1\ => \cntr_reg[2]_2\,
      \cntr_reg[5]_0\(0) => sec_cntr_n_2,
      \data_out_reg[12]\ => \data_out_reg[12]\,
      mem_read => mem_read,
      parallel_in_IBUF(4 downto 0) => parallel_in_IBUF(4 downto 0),
      sec2min => sec2min
    );
sec_cntr: entity work.Contatore_4
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(5 downto 0) => D(6 downto 1),
      E(0) => E(0),
      Q(0) => D(0),
      RST_IBUF => RST_IBUF,
      SEL_IBUF(1) => SEL_IBUF(1),
      SEL_IBUF(0) => SEL_IBUF(2),
      SET_clrd => SET_clrd,
      SR(0) => SR(0),
      \cntr_reg[0]_0\(0) => \cntr_reg[0]\(0),
      \cntr_reg[2]_0\ => \cntr_reg[2]_0\,
      \cntr_reg[2]_1\ => \cntr_reg[2]_1\,
      cronometro_en => cronometro_en,
      div_clk_reg_0(0) => sec_cntr_n_2,
      parallel_in_IBUF(4 downto 0) => parallel_in_IBUF(4 downto 0),
      sec2min => sec2min
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_array is
  port (
    cathodes_out_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \c_reg[2]\ : out STD_LOGIC;
    \c_reg[1]\ : out STD_LOGIC;
    \c_reg[0]\ : out STD_LOGIC;
    anodes_out_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \cathodes_out[6]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_read : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \cathodes_out_OBUF[0]_inst_i_1\ : in STD_LOGIC;
    \cathodes_out_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4\ : in STD_LOGIC;
    \cathodes_out_OBUF[6]_inst_i_4_0\ : in STD_LOGIC
  );
end seven_segment_array;

architecture STRUCTURE of seven_segment_array is
  signal clockfx : STD_LOGIC;
begin
clk_filter: entity work.clock_filter
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      SR(0) => SR(0),
      clockfx => clockfx
    );
counter_instance: entity work.counter_mod8_5
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(8 downto 0) => D(8 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      anodes_out_OBUF(5 downto 0) => anodes_out_OBUF(5 downto 0),
      \c_reg[0]_0\ => \c_reg[0]\,
      \c_reg[1]_0\ => \c_reg[1]\,
      \c_reg[2]_0\ => \c_reg[2]\,
      \cathodes_out[6]\ => \cathodes_out[6]\,
      cathodes_out_OBUF(7 downto 0) => cathodes_out_OBUF(7 downto 0),
      \cathodes_out_OBUF[0]_inst_i_1_0\ => \cathodes_out_OBUF[0]_inst_i_1\,
      \cathodes_out_OBUF[0]_inst_i_1_1\ => \cathodes_out_OBUF[0]_inst_i_1_0\,
      \cathodes_out_OBUF[6]_inst_i_4_0\ => \cathodes_out_OBUF[6]_inst_i_4\,
      \cathodes_out_OBUF[6]_inst_i_4_1\ => \cathodes_out_OBUF[6]_inst_i_4_0\,
      clockfx => clockfx,
      mem_read => mem_read
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cathodes_out_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    anodes_out_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RST_IBUF : in STD_LOGIC;
    mem_write : in STD_LOGIC;
    mux_addr_sel : in STD_LOGIC;
    parallel_in_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SET_clrd : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC_VECTOR ( 0 to 2 );
    \cntr_reg[2]\ : in STD_LOGIC;
    cronometro_en : in STD_LOGIC;
    \cntr_reg[2]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_read : in STD_LOGIC;
    countr_save_incr : in STD_LOGIC;
    countr_read_incr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cntr_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Datapath;

architecture STRUCTURE of Datapath is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \RAM[0]_1\ : STD_LOGIC;
  signal \RAM[1]_3\ : STD_LOGIC;
  signal \RAM[2]_2\ : STD_LOGIC;
  signal \RAM[3]_4\ : STD_LOGIC;
  signal \RAM[4]_5\ : STD_LOGIC;
  signal \RAM[5]_7\ : STD_LOGIC;
  signal \RAM[6]_6\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^cntr_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cntr_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_write_n_1 : STD_LOGIC;
  signal counter_write_n_10 : STD_LOGIC;
  signal counter_write_n_2 : STD_LOGIC;
  signal counter_write_n_9 : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal data_out : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal display_n_10 : STD_LOGIC;
  signal display_n_8 : STD_LOGIC;
  signal display_n_9 : STD_LOGIC;
  signal mem_n_1 : STD_LOGIC;
  signal mem_n_16 : STD_LOGIC;
  signal orologio_n_13 : STD_LOGIC;
  signal orologio_n_14 : STD_LOGIC;
  signal orologio_n_15 : STD_LOGIC;
  signal orologio_n_18 : STD_LOGIC;
  signal orologio_n_20 : STD_LOGIC;
  signal orologio_n_21 : STD_LOGIC;
  signal orologio_n_22 : STD_LOGIC;
  signal orologio_n_23 : STD_LOGIC;
  signal orologio_n_3 : STD_LOGIC;
  signal orologio_n_4 : STD_LOGIC;
  signal orologio_n_6 : STD_LOGIC;
  signal orologio_n_7 : STD_LOGIC;
  signal orologio_n_8 : STD_LOGIC;
  signal y1 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  \cntr_reg[0]\(0) <= \^cntr_reg[0]\(0);
  \cntr_reg[0]_0\(0) <= \^cntr_reg[0]_0\(0);
counter_read: entity work.counter_mod8
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      c(2 downto 0) => c(2 downto 0),
      \c_reg[0]_0\ => \^sr\(0),
      countr_read_incr => countr_read_incr
    );
counter_write: entity work.counter_mod8_3
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => \RAM[0]_1\,
      c(2 downto 0) => c(2 downto 0),
      \c_reg[0]_0\ => counter_write_n_2,
      \c_reg[0]_1\ => \^sr\(0),
      \c_reg[1]_0\ => counter_write_n_1,
      \c_reg[2]_0\(0) => \RAM[4]_5\,
      \c_reg[2]_1\(0) => \RAM[5]_7\,
      \c_reg[2]_2\ => counter_write_n_10,
      countr_save_incr => countr_save_incr,
      mem_write => mem_write,
      mem_write_reg(0) => \RAM[2]_2\,
      mem_write_reg_0(0) => \RAM[1]_3\,
      mem_write_reg_1(0) => \RAM[3]_4\,
      mem_write_reg_2(0) => \RAM[6]_6\,
      mem_write_reg_3(0) => counter_write_n_9,
      mux_addr_sel => mux_addr_sel
    );
display: entity work.seven_segment_array
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(8) => data_in(19),
      D(7) => orologio_n_3,
      D(6) => orologio_n_6,
      D(5 downto 4) => data_in(11 downto 10),
      D(3) => orologio_n_13,
      D(2 downto 1) => data_in(3 downto 2),
      D(0) => orologio_n_18,
      Q(10 downto 9) => data_out(19 downto 18),
      Q(8 downto 7) => data_out(14 downto 13),
      Q(6 downto 5) => data_out(11 downto 10),
      Q(4 downto 3) => data_out(6 downto 5),
      Q(2 downto 0) => data_out(3 downto 1),
      SR(0) => \^sr\(0),
      anodes_out_OBUF(5 downto 0) => anodes_out_OBUF(5 downto 0),
      \c_reg[0]\ => display_n_10,
      \c_reg[1]\ => display_n_9,
      \c_reg[2]\ => display_n_8,
      \cathodes_out[6]\ => mem_n_16,
      cathodes_out_OBUF(7 downto 0) => cathodes_out_OBUF(7 downto 0),
      \cathodes_out_OBUF[0]_inst_i_1\ => mem_n_1,
      \cathodes_out_OBUF[0]_inst_i_1_0\ => orologio_n_20,
      \cathodes_out_OBUF[6]_inst_i_4\ => orologio_n_22,
      \cathodes_out_OBUF[6]_inst_i_4_0\ => orologio_n_23,
      mem_read => mem_read
    );
mem: entity work.Memoria
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(19 downto 18) => y1(1 downto 0),
      D(17) => data_in(19),
      D(16) => orologio_n_3,
      D(15) => orologio_n_4,
      D(14) => \^cntr_reg[0]_0\(0),
      D(13) => orologio_n_6,
      D(12) => orologio_n_7,
      D(11) => orologio_n_8,
      D(10 downto 8) => data_in(11 downto 9),
      D(7) => \^cntr_reg[0]\(0),
      D(6) => orologio_n_13,
      D(5) => orologio_n_14,
      D(4) => orologio_n_15,
      D(3 downto 2) => data_in(3 downto 2),
      D(1) => orologio_n_18,
      D(0) => \^q\(0),
      E(0) => counter_write_n_9,
      Q(13 downto 12) => data_out(19 downto 18),
      Q(11 downto 5) => data_out(14 downto 8),
      Q(4 downto 3) => data_out(6 downto 5),
      Q(2 downto 0) => data_out(3 downto 1),
      \RAM_reg[0][21]_0\(0) => \RAM[0]_1\,
      \RAM_reg[1][21]_0\(0) => \RAM[1]_3\,
      \RAM_reg[2][21]_0\(0) => \RAM[2]_2\,
      \RAM_reg[3][21]_0\(0) => \RAM[3]_4\,
      \RAM_reg[4][21]_0\(0) => \RAM[4]_5\,
      \RAM_reg[5][21]_0\(0) => \RAM[5]_7\,
      \RAM_reg[6][21]_0\(0) => \RAM[6]_6\,
      RST_IBUF => RST_IBUF,
      SR(0) => \^sr\(0),
      \c_reg[2]\ => mem_n_16,
      \cathodes_out_OBUF[0]_inst_i_1\ => display_n_8,
      \cathodes_out_OBUF[0]_inst_i_1_0\ => orologio_n_21,
      \cathodes_out_OBUF[0]_inst_i_1_1\ => display_n_9,
      \cathodes_out_OBUF[6]_inst_i_5_0\ => display_n_10,
      \data_out_reg[0]_0\ => counter_write_n_10,
      \data_out_reg[0]_1\ => counter_write_n_1,
      \data_out_reg[0]_2\ => counter_write_n_2,
      \data_out_reg[0]_3\(0) => \data_out_reg[0]\(0),
      \data_out_reg[21]_0\ => mem_n_1,
      mem_read => mem_read
    );
orologio: entity work.Orologio
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(19 downto 18) => y1(1 downto 0),
      D(17) => data_in(19),
      D(16) => orologio_n_3,
      D(15) => orologio_n_4,
      D(14) => \^cntr_reg[0]_0\(0),
      D(13) => orologio_n_6,
      D(12) => orologio_n_7,
      D(11) => orologio_n_8,
      D(10 downto 8) => data_in(11 downto 9),
      D(7) => \^cntr_reg[0]\(0),
      D(6) => orologio_n_13,
      D(5) => orologio_n_14,
      D(4) => orologio_n_15,
      D(3 downto 2) => data_in(3 downto 2),
      D(1) => orologio_n_18,
      D(0) => \^q\(0),
      E(0) => E(0),
      Q(2) => data_out(12),
      Q(1 downto 0) => data_out(9 downto 8),
      RST_IBUF => RST_IBUF,
      SEL_IBUF(0 to 2) => SEL_IBUF(0 to 2),
      SET_clrd => SET_clrd,
      SR(0) => \^sr\(0),
      \cathodes_out_OBUF[6]_inst_i_4\ => display_n_9,
      \cathodes_out_OBUF[6]_inst_i_4_0\ => display_n_10,
      \cntr_reg[0]\(0) => \cntr_reg[0]_1\(0),
      \cntr_reg[0]_0\(0) => \cntr_reg[0]_2\(0),
      \cntr_reg[0]_1\(0) => D(0),
      \cntr_reg[1]\ => orologio_n_20,
      \cntr_reg[2]\ => orologio_n_22,
      \cntr_reg[2]_0\ => orologio_n_23,
      \cntr_reg[2]_1\ => \cntr_reg[2]\,
      \cntr_reg[2]_2\ => \cntr_reg[2]_0\,
      cronometro_en => cronometro_en,
      \data_out_reg[12]\ => orologio_n_21,
      mem_read => mem_read,
      parallel_in_IBUF(4 downto 0) => parallel_in_IBUF(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OrologioOnBoard is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SET : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 0 to 2 );
    count : in STD_LOGIC;
    save : in STD_LOGIC;
    view : in STD_LOGIC;
    parallel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cathodes_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    anodes_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of OrologioOnBoard : entity is true;
end OrologioOnBoard;

architecture STRUCTURE of OrologioOnBoard is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal RST_n : STD_LOGIC;
  signal SEL_IBUF : STD_LOGIC_VECTOR ( 0 to 2 );
  signal SET_IBUF : STD_LOGIC;
  signal SET_clrd : STD_LOGIC;
  signal anodes_out_OBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cathodes_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal count_IBUF : STD_LOGIC;
  signal count_clrd : STD_LOGIC;
  signal countr_read_incr : STD_LOGIC;
  signal countr_save_incr : STD_LOGIC;
  signal cronometro_en : STD_LOGIC;
  signal cu_n_6 : STD_LOGIC;
  signal cu_n_7 : STD_LOGIC;
  signal h_b : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mem_read : STD_LOGIC;
  signal mem_write : STD_LOGIC;
  signal min_b : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mux_addr_sel : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal parallel_in_IBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal save_IBUF : STD_LOGIC;
  signal save_clrd : STD_LOGIC;
  signal sec_b : STD_LOGIC_VECTOR ( 0 to 0 );
  signal set_debouncer_n_1 : STD_LOGIC;
  signal set_debouncer_n_2 : STD_LOGIC;
  signal set_debouncer_n_3 : STD_LOGIC;
  signal set_debouncer_n_4 : STD_LOGIC;
  signal view_IBUF : STD_LOGIC;
  signal view_clrd : STD_LOGIC;
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\SEL_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SEL(0),
      O => SEL_IBUF(0)
    );
\SEL_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SEL(1),
      O => SEL_IBUF(1)
    );
\SEL_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SEL(2),
      O => SEL_IBUF(2)
    );
SET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SET,
      O => SET_IBUF
    );
\anodes_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(0),
      O => anodes_out(0)
    );
\anodes_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(1),
      O => anodes_out(1)
    );
\anodes_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(2),
      O => anodes_out(2)
    );
\anodes_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(3),
      O => anodes_out(3)
    );
\anodes_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(4),
      O => anodes_out(4)
    );
\anodes_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anodes_out_OBUF(5),
      O => anodes_out(5)
    );
\anodes_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anodes_out(6)
    );
\anodes_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anodes_out(7)
    );
\cathodes_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(0),
      O => cathodes_out(0)
    );
\cathodes_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(1),
      O => cathodes_out(1)
    );
\cathodes_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(2),
      O => cathodes_out(2)
    );
\cathodes_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(3),
      O => cathodes_out(3)
    );
\cathodes_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(4),
      O => cathodes_out(4)
    );
\cathodes_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(5),
      O => cathodes_out(5)
    );
\cathodes_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(6),
      O => cathodes_out(6)
    );
\cathodes_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathodes_out_OBUF(7),
      O => cathodes_out(7)
    );
count_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => count,
      O => count_IBUF
    );
count_debouncer: entity work.ButtonDebouncer
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      RST_IBUF => RST_IBUF,
      SR(0) => RST_n,
      count_IBUF => count_IBUF,
      count_clrd => count_clrd
    );
cu: entity work.ControlUnit
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => cu_n_6,
      RST_IBUF => RST_IBUF,
      SEL_IBUF(0) => SEL_IBUF(2),
      SET_clrd => SET_clrd,
      SR(0) => RST_n,
      count_clrd => count_clrd,
      countr_read_incr => countr_read_incr,
      countr_save_incr => countr_save_incr,
      cronometro_en => cronometro_en,
      cronometro_en_reg_0(0) => cu_n_7,
      mem_read => mem_read,
      mem_write => mem_write,
      mux_addr_sel => mux_addr_sel,
      save_clrd => save_clrd,
      view_clrd => view_clrd
    );
datapath: entity work.Datapath
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(0) => p_1_in(0),
      E(0) => cu_n_7,
      Q(0) => sec_b(0),
      RST_IBUF => RST_IBUF,
      SEL_IBUF(0 to 2) => SEL_IBUF(0 to 2),
      SET_clrd => SET_clrd,
      SR(0) => RST_n,
      anodes_out_OBUF(5 downto 0) => anodes_out_OBUF(5 downto 0),
      cathodes_out_OBUF(7 downto 0) => cathodes_out_OBUF(7 downto 0),
      \cntr_reg[0]\(0) => min_b(0),
      \cntr_reg[0]_0\(0) => h_b(0),
      \cntr_reg[0]_1\(0) => set_debouncer_n_1,
      \cntr_reg[0]_2\(0) => set_debouncer_n_3,
      \cntr_reg[2]\ => set_debouncer_n_2,
      \cntr_reg[2]_0\ => set_debouncer_n_4,
      countr_read_incr => countr_read_incr,
      countr_save_incr => countr_save_incr,
      cronometro_en => cronometro_en,
      \data_out_reg[0]\(0) => cu_n_6,
      mem_read => mem_read,
      mem_write => mem_write,
      mux_addr_sel => mux_addr_sel,
      parallel_in_IBUF(4 downto 0) => parallel_in_IBUF(5 downto 1)
    );
\parallel_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(0),
      O => parallel_in_IBUF(0)
    );
\parallel_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(1),
      O => parallel_in_IBUF(1)
    );
\parallel_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(2),
      O => parallel_in_IBUF(2)
    );
\parallel_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(3),
      O => parallel_in_IBUF(3)
    );
\parallel_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(4),
      O => parallel_in_IBUF(4)
    );
\parallel_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => parallel_in(5),
      O => parallel_in_IBUF(5)
    );
save_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => save,
      O => save_IBUF
    );
save_debouncer: entity work.ButtonDebouncer_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      RST_IBUF => RST_IBUF,
      SR(0) => RST_n,
      save_IBUF => save_IBUF,
      save_clrd => save_clrd
    );
set_debouncer: entity work.ButtonDebouncer_1
     port map (
      CLEARED_BTN_reg_0(0) => set_debouncer_n_1,
      CLEARED_BTN_reg_1 => set_debouncer_n_2,
      CLEARED_BTN_reg_2(0) => set_debouncer_n_3,
      CLEARED_BTN_reg_3 => set_debouncer_n_4,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(0) => p_1_in(0),
      Q(0) => sec_b(0),
      RST_IBUF => RST_IBUF,
      SEL_IBUF(0 to 2) => SEL_IBUF(0 to 2),
      SET_IBUF => SET_IBUF,
      SET_clrd => SET_clrd,
      SR(0) => RST_n,
      \cntr_reg[0]\(0) => min_b(0),
      \cntr_reg[0]_0\(0) => h_b(0),
      parallel_in_IBUF(0) => parallel_in_IBUF(0)
    );
view_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => view,
      O => view_IBUF
    );
view_debouncer: entity work.ButtonDebouncer_2
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      RST_IBUF => RST_IBUF,
      SR(0) => RST_n,
      view_IBUF => view_IBUF,
      view_clrd => view_clrd
    );
end STRUCTURE;
