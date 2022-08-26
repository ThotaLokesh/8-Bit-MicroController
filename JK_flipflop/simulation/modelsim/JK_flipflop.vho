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

-- DATE "07/28/2022 23:26:22"

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

ENTITY 	JK_flipflop IS
    PORT (
	J : IN std_logic;
	K : IN std_logic;
	clk : IN std_logic;
	RST : IN std_logic;
	Q : BUFFER std_logic;
	Q1 : BUFFER std_logic
	);
END JK_flipflop;

-- Design Ports Information
-- Q	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JK_flipflop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \JK_flipflop|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_J <= J;
ww_K <= K;
ww_clk <= clk;
ww_RST <= RST;
Q <= ww_Q;
Q1 <= ww_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \JK_flipflop|D1|nand2|F~1_combout\;
\JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \JK_flipflop|D1|nand3|F~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOIBUF_X5_Y0_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\J~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X5_Y6_N8
\JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\JK_flipflop|D1|nand2|F~1_combout\ & ((!\JK_flipflop|D0|nand2|F~2_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \clk~input_o\,
	datac => \JK_flipflop|D0|nand2|F~2_combout\,
	datad => \JK_flipflop|D1|nand2|F~1_combout\,
	combout => \JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X5_Y6_N4
\JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK_flipflop|D0|nand2|F~1_combout\ = (\J~input_o\ & (\JK_flipflop|D1|nand3|F~0_combout\ & ((\K~input_o\) # (\JK_flipflop|D1|nand2|F~1_combout\)))) # (!\J~input_o\ & ((\K~input_o\) # ((\JK_flipflop|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J~input_o\,
	datab => \K~input_o\,
	datac => \JK_flipflop|D1|nand3|F~0_combout\,
	datad => \JK_flipflop|D1|nand2|F~1_combout\,
	combout => \JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X5_Y6_N14
\JK_flipflop|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK_flipflop|D0|nand2|F~2_combout\ = (\clk~input_o\ & (((\JK_flipflop|D0|nand2|F~2_combout\)) # (!\RST~input_o\))) # (!\clk~input_o\ & (((\JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \clk~input_o\,
	datac => \JK_flipflop|D0|nand2|F~2_combout\,
	datad => \JK_flipflop|D0|nand2|F~1_combout\,
	combout => \JK_flipflop|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X5_Y6_N18
\JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\JK_flipflop|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (((\JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \clk~input_o\,
	datac => \JK_flipflop|D0|nand2|F~2_combout\,
	datad => \JK_flipflop|D1|nand2|F~1_combout\,
	combout => \JK_flipflop|D1|nand2|F~1_combout\);

ww_Q <= \Q~output_o\;

ww_Q1 <= \Q1~output_o\;
END structure;


