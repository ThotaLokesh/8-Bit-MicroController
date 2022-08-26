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

-- DATE "07/26/2022 11:11:09"

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

ENTITY 	Freq_div_4096 IS
    PORT (
	clk : IN std_logic;
	RST : IN std_logic;
	Q : BUFFER std_logic;
	Q1 : BUFFER std_logic
	);
END Freq_div_4096;

-- Design Ports Information
-- Q	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Freq_div_4096 IS
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
SIGNAL ww_Q : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR1|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR2|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR3|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR4|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR5|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR6|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR7|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR8|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR9|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR9|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR10|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR10|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR11|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR11|JK_flipflop|D1|nand3|F~1_combout\ : std_logic;
SIGNAL \CNTR12|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR12|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \CNTR12|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \CNTR12|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \CNTR12|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;

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
Q1 <= ww_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CNTR12|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \CNTR12|JK_flipflop|D1|nand2|F~1_combout\;
\CNTR12|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \CNTR12|JK_flipflop|D1|nand3|F~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N16
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR12|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNTR12|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOIBUF_X30_Y24_N22
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X31_Y23_N28
\CNTR1|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR1|JK_flipflop|D0|nand2|F~1_combout\ = (\clk~input_o\ & ((\CNTR1|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\)))) # (!\clk~input_o\ & (((\CNTR1|JK_flipflop|D1|nand3|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR1|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \clk~input_o\,
	combout => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X31_Y23_N26
\CNTR1|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR1|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\clk~input_o\ & ((!\CNTR1|JK_flipflop|D0|nand2|F~1_combout\))) # (!\clk~input_o\ & (\CNTR1|JK_flipflop|D1|nand3|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR1|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR1|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \clk~input_o\,
	combout => \CNTR1|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X31_Y23_N14
\CNTR2|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR2|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR1|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR2|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR1|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR2|JK_flipflop|D0|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR1|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR2|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X31_Y23_N12
\CNTR2|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR2|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR1|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR2|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR1|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR2|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR2|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR2|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR1|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR2|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X31_Y23_N22
\CNTR3|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR3|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR2|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR3|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR2|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR3|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR3|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR2|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X31_Y23_N30
\CNTR3|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR3|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR2|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR3|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR2|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR3|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR3|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR3|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR2|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR3|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N20
\CNTR4|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR4|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR3|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR4|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR3|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR4|JK_flipflop|D0|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR3|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR4|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\CNTR4|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR4|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR3|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR4|JK_flipflop|D1|nand3|F~1_combout\))) # (!\CNTR3|JK_flipflop|D1|nand3|F~1_combout\ & (!\CNTR4|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR4|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \CNTR4|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR3|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \RST~input_o\,
	combout => \CNTR4|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N28
\CNTR5|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR5|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR4|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR5|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR4|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR5|JK_flipflop|D0|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR5|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR4|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N4
\CNTR5|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR5|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR4|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR5|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR4|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR5|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR5|JK_flipflop|D1|nand3|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR4|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR5|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR5|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N30
\CNTR6|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR6|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR5|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR6|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR5|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR6|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR5|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N16
\CNTR6|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR6|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR5|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR6|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR5|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR6|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR6|JK_flipflop|D1|nand3|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR6|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR5|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR6|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\CNTR7|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR7|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR6|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR7|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR6|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR7|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR7|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N22
\CNTR7|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR7|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR6|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR7|JK_flipflop|D1|nand3|F~1_combout\))) # (!\CNTR6|JK_flipflop|D1|nand3|F~1_combout\ & (!\CNTR7|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR7|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR7|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR6|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR7|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N14
\CNTR8|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR8|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR7|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR8|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR7|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR8|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR7|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR8|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N18
\CNTR8|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR8|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR7|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR8|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR7|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR8|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR8|JK_flipflop|D1|nand3|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR8|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR7|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR8|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N6
\CNTR9|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR9|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR8|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR9|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR8|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR9|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR9|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR9|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR8|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR9|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N26
\CNTR9|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR9|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR8|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR9|JK_flipflop|D1|nand3|F~1_combout\))) # (!\CNTR8|JK_flipflop|D1|nand3|F~1_combout\ & (!\CNTR9|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR9|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR9|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR8|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR9|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N8
\CNTR10|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR10|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR9|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR10|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR9|JK_flipflop|D1|nand3|F~1_combout\ & ((\CNTR10|JK_flipflop|D0|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR10|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR9|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR10|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR10|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N24
\CNTR10|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR10|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR9|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR10|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR9|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR10|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR10|JK_flipflop|D1|nand3|F~1_combout\,
	datab => \RST~input_o\,
	datac => \CNTR10|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR9|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR10|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N0
\CNTR11|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR11|JK_flipflop|D0|nand2|F~1_combout\ = (\CNTR10|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR11|JK_flipflop|D1|nand3|F~1_combout\)))) # (!\CNTR10|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR11|JK_flipflop|D0|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR11|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR10|JK_flipflop|D1|nand3|F~1_combout\,
	combout => \CNTR11|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X30_Y23_N2
\CNTR11|JK_flipflop|D1|nand3|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR11|JK_flipflop|D1|nand3|F~1_combout\ = (\RST~input_o\ & ((\CNTR10|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR11|JK_flipflop|D1|nand3|F~1_combout\)) # (!\CNTR10|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR11|JK_flipflop|D0|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR10|JK_flipflop|D1|nand3|F~1_combout\,
	datad => \CNTR11|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\);

-- Location: LCCOMB_X29_Y23_N8
\CNTR12|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR12|JK_flipflop|D0|nand2|F~1_combout\ = (\RST~input_o\ & ((\CNTR11|JK_flipflop|D1|nand3|F~1_combout\ & ((!\CNTR12|JK_flipflop|D1|nand2|F~1_combout\))) # (!\CNTR11|JK_flipflop|D1|nand3|F~1_combout\ & (\CNTR12|JK_flipflop|D0|nand2|F~1_combout\)))) # 
-- (!\RST~input_o\ & (!\CNTR11|JK_flipflop|D1|nand3|F~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR12|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR12|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR12|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X29_Y23_N10
\CNTR12|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR12|JK_flipflop|D1|nand2|F~1_combout\ = (\CNTR11|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR12|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\))) # (!\CNTR11|JK_flipflop|D1|nand3|F~1_combout\ & (((\CNTR12|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \CNTR12|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \CNTR12|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \CNTR12|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X29_Y23_N0
\CNTR12|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTR12|JK_flipflop|D1|nand3|F~0_combout\ = (!\CNTR12|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & ((\CNTR11|JK_flipflop|D1|nand3|F~1_combout\) # (!\CNTR12|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTR12|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \CNTR11|JK_flipflop|D1|nand3|F~1_combout\,
	datac => \RST~input_o\,
	datad => \CNTR12|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \CNTR12|JK_flipflop|D1|nand3|F~0_combout\);

ww_Q <= \Q~output_o\;

ww_Q1 <= \Q1~output_o\;
END structure;


