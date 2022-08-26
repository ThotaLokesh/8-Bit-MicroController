-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/29/2022 08:21:05"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple_count_8bit IS
    PORT (
	clk : IN std_logic;
	RST : IN std_logic;
	Q : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ripple_count_8bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_count_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_RST <= RST;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CNTR8|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR8|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR7|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR6|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR5|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR4|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR3|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR2|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR1|JK_flipflop|D1|nand2|F~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR8|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOIBUF_X13_Y0_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X4_Y1_N2
\CNTR1|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR1|JK_flipflop|D0|nand2|F~1_combout\ = (\clk~input_o\ & (((\CNTR1|JK_flipflop|D0|nand2|F~1_combout\) # (!\RST~input_o\)))) # (!\clk~input_o\ & (!\CNTR1|JK_flipflop|D1|nand2|F~1_combout\ & ((\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR1|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \RST~input_o\,
	combout => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N30
\CNTR1|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR1|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (\CNTR1|JK_flipflop|D0|nand2|F~1_combout\)) # (!\clk~input_o\ & (((\CNTR1|JK_flipflop|D1|nand2|F~1_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR1|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \RST~input_o\,
	combout => \CNTR1|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N28
\CNTR1|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR1|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR1|JK_flipflop|D1|nand2|F~1_combout\) # ((\clk~input_o\ & \CNTR1|JK_flipflop|D0|nand2|F~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \CNTR1|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR1|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X4_Y1_N8
\CNTR2|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR2|JK_flipflop|D0|nand2|F~1_combout\ = ((\CNTR1|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR2|JK_flipflop|D0|nand2|F~1_combout\)) # (!\CNTR1|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR2|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR2|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \CNTR1|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N16
\CNTR2|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR2|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR1|JK_flipflop|D1|nand3|F~0_combout\ & ((\CNTR2|JK_flipflop|D0|nand2|F~1_combout\))) # (!\CNTR1|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR2|JK_flipflop|D1|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (((\CNTR2|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR2|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR1|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR2|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N24
\CNTR2|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR2|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR2|JK_flipflop|D1|nand2|F~1_combout\) # ((\CNTR2|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR1|JK_flipflop|D1|nand3|F~0_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR1|JK_flipflop|D1|nand3|F~0_combout\,
	datac => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR2|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR2|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X4_Y1_N4
\CNTR3|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR3|JK_flipflop|D0|nand2|F~1_combout\ = ((\CNTR2|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR3|JK_flipflop|D0|nand2|F~1_combout\)) # (!\CNTR2|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR3|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \CNTR3|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \CNTR2|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N18
\CNTR3|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR3|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR2|JK_flipflop|D1|nand3|F~0_combout\ & ((\CNTR3|JK_flipflop|D0|nand2|F~1_combout\))) # (!\CNTR2|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR3|JK_flipflop|D1|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (((\CNTR3|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR3|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR2|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR3|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N10
\CNTR3|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR3|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR3|JK_flipflop|D1|nand2|F~1_combout\) # ((\CNTR3|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR2|JK_flipflop|D1|nand3|F~0_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR2|JK_flipflop|D1|nand3|F~0_combout\,
	datac => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR3|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR3|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X4_Y1_N22
\CNTR4|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR4|JK_flipflop|D0|nand2|F~1_combout\ = ((\CNTR3|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR4|JK_flipflop|D0|nand2|F~1_combout\)) # (!\CNTR3|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR4|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \CNTR4|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \CNTR3|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N6
\CNTR4|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR4|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR3|JK_flipflop|D1|nand3|F~0_combout\ & ((\CNTR4|JK_flipflop|D0|nand2|F~1_combout\))) # (!\CNTR3|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR4|JK_flipflop|D1|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (((\CNTR4|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR4|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR3|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR4|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N0
\CNTR4|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR4|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR4|JK_flipflop|D1|nand2|F~1_combout\) # ((\CNTR4|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR3|JK_flipflop|D1|nand3|F~0_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR4|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR3|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR4|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X4_Y1_N14
\CNTR5|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR5|JK_flipflop|D0|nand2|F~1_combout\ = ((\CNTR4|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR5|JK_flipflop|D0|nand2|F~1_combout\)) # (!\CNTR4|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR5|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \CNTR5|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \CNTR4|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N12
\CNTR5|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR5|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR4|JK_flipflop|D1|nand3|F~0_combout\ & ((\CNTR5|JK_flipflop|D0|nand2|F~1_combout\))) # (!\CNTR4|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR5|JK_flipflop|D1|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (((\CNTR5|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR5|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR4|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR5|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N20
\CNTR5|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR5|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR5|JK_flipflop|D1|nand2|F~1_combout\) # ((\CNTR5|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR4|JK_flipflop|D1|nand3|F~0_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR4|JK_flipflop|D1|nand3|F~0_combout\,
	datac => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR5|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR5|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X3_Y1_N6
\CNTR6|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR6|JK_flipflop|D0|nand2|F~1_combout\ = ((\CNTR5|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR6|JK_flipflop|D0|nand2|F~1_combout\)) # (!\CNTR5|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR6|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR5|JK_flipflop|D1|nand3|F~0_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X4_Y1_N26
\CNTR6|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR6|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR5|JK_flipflop|D1|nand3|F~0_combout\ & ((\CNTR6|JK_flipflop|D0|nand2|F~1_combout\))) # (!\CNTR5|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR6|JK_flipflop|D1|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (((\CNTR6|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR6|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR5|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR6|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X3_Y1_N24
\CNTR6|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR6|JK_flipflop|D1|nand3|F~0_combout\ = (\CNTR6|JK_flipflop|D1|nand2|F~1_combout\) # ((\CNTR6|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR5|JK_flipflop|D1|nand3|F~0_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR5|JK_flipflop|D1|nand3|F~0_combout\,
	datab => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \CNTR6|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR6|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X3_Y1_N30
\CNTR7|JK_flipflop|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR7|JK_flipflop|D0|nand2|F~2_combout\ = ((\CNTR6|JK_flipflop|D1|nand3|F~0_combout\ & (\CNTR7|JK_flipflop|D0|nand2|F~2_combout\)) # (!\CNTR6|JK_flipflop|D1|nand3|F~0_combout\ & ((!\CNTR7|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR7|JK_flipflop|D0|nand2|F~2_combout\,
	datab => \RST~input_o\,
	datac => \CNTR7|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand3|F~0_combout\,
	combout => \CNTR7|JK_flipflop|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X3_Y1_N18
\CNTR7|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR7|JK_flipflop|D0|nand2|F~1_combout\ = (\RST~input_o\ & (!\CNTR6|JK_flipflop|D1|nand2|F~1_combout\ & ((!\CNTR5|JK_flipflop|D1|nand3|F~0_combout\) # (!\CNTR6|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR5|JK_flipflop|D1|nand3|F~0_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X3_Y1_N2
\CNTR7|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR7|JK_flipflop|D1|nand2|F~1_combout\ = (\CNTR7|JK_flipflop|D0|nand2|F~1_combout\ & (\CNTR7|JK_flipflop|D1|nand2|F~1_combout\)) # (!\CNTR7|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR7|JK_flipflop|D0|nand2|F~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR7|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR7|JK_flipflop|D0|nand2|F~2_combout\,
	datad => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR7|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X3_Y1_N28
\CNTR8|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR8|JK_flipflop|D0|nand2|F~1_combout\ = (!\CNTR7|JK_flipflop|D1|nand2|F~1_combout\ & ((\CNTR7|JK_flipflop|D0|nand2|F~1_combout\) # (!\CNTR7|JK_flipflop|D0|nand2|F~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNTR7|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR7|JK_flipflop|D0|nand2|F~2_combout\,
	datad => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X3_Y1_N22
\CNTR8|JK_flipflop|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR8|JK_flipflop|D0|nand2|F~2_combout\ = ((\CNTR8|JK_flipflop|D0|nand2|F~1_combout\ & (!\CNTR8|JK_flipflop|D1|nand2|F~1_combout\)) # (!\CNTR8|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR8|JK_flipflop|D0|nand2|F~2_combout\)))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR8|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \CNTR8|JK_flipflop|D0|nand2|F~2_combout\,
	datac => \RST~input_o\,
	datad => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR8|JK_flipflop|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X3_Y1_N26
\CNTR8|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR8|JK_flipflop|D1|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR8|JK_flipflop|D0|nand2|F~1_combout\ & (\CNTR8|JK_flipflop|D1|nand2|F~1_combout\)) # (!\CNTR8|JK_flipflop|D0|nand2|F~1_combout\ & ((\CNTR8|JK_flipflop|D0|nand2|F~2_combout\))))) # 
-- (!\RST~input_o\ & (((\CNTR8|JK_flipflop|D0|nand2|F~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR8|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \CNTR8|JK_flipflop|D0|nand2|F~2_combout\,
	datad => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR8|JK_flipflop|D1|nand2|F~1_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;
END structure;


