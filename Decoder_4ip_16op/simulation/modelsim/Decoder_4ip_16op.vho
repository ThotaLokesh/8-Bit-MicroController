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

-- DATE "07/24/2022 17:02:50"

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

ENTITY 	DECODER_4IP_16op IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	F : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DECODER_4IP_16op;

-- Design Ports Information
-- F[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[8]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[9]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[10]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[11]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[12]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[13]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[14]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[15]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DECODER_4IP_16op IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(15 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[8]~output_o\ : std_logic;
SIGNAL \F[9]~output_o\ : std_logic;
SIGNAL \F[10]~output_o\ : std_logic;
SIGNAL \F[11]~output_o\ : std_logic;
SIGNAL \F[12]~output_o\ : std_logic;
SIGNAL \F[13]~output_o\ : std_logic;
SIGNAL \F[14]~output_o\ : std_logic;
SIGNAL \F[15]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \AND0|F~combout\ : std_logic;
SIGNAL \AND1|F~0_combout\ : std_logic;
SIGNAL \AND2|F~0_combout\ : std_logic;
SIGNAL \AND3|F~0_combout\ : std_logic;
SIGNAL \AND4|F~0_combout\ : std_logic;
SIGNAL \AND5|F~0_combout\ : std_logic;
SIGNAL \AND6|F~0_combout\ : std_logic;
SIGNAL \AND7|F~0_combout\ : std_logic;
SIGNAL \AND8|F~0_combout\ : std_logic;
SIGNAL \AND9|F~0_combout\ : std_logic;
SIGNAL \AND10|F~0_combout\ : std_logic;
SIGNAL \AND11|F~0_combout\ : std_logic;
SIGNAL \AND12|F~0_combout\ : std_logic;
SIGNAL \AND13|F~0_combout\ : std_logic;
SIGNAL \AND14|F~0_combout\ : std_logic;
SIGNAL \AND15|F~0_combout\ : std_logic;
SIGNAL \AND0|ALT_INV_F~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\AND0|ALT_INV_F~combout\ <= NOT \AND0|F~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y24_N9
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND0|ALT_INV_F~combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND1|F~0_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND2|F~0_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND3|F~0_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND4|F~0_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND5|F~0_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND6|F~0_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND7|F~0_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\F[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND8|F~0_combout\,
	devoe => ww_devoe,
	o => \F[8]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\F[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND9|F~0_combout\,
	devoe => ww_devoe,
	o => \F[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\F[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND10|F~0_combout\,
	devoe => ww_devoe,
	o => \F[10]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\F[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND11|F~0_combout\,
	devoe => ww_devoe,
	o => \F[11]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\F[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND12|F~0_combout\,
	devoe => ww_devoe,
	o => \F[12]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\F[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND13|F~0_combout\,
	devoe => ww_devoe,
	o => \F[13]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\F[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND14|F~0_combout\,
	devoe => ww_devoe,
	o => \F[14]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\F[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AND15|F~0_combout\,
	devoe => ww_devoe,
	o => \F[15]~output_o\);

-- Location: IOIBUF_X13_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X12_Y15_N8
\AND0|F\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND0|F~combout\ = (\A[1]~input_o\) # ((\A[0]~input_o\) # ((\A[3]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND0|F~combout\);

-- Location: LCCOMB_X12_Y15_N26
\AND1|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND1|F~0_combout\ = (!\A[1]~input_o\ & (\A[0]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND1|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N12
\AND2|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND2|F~0_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND2|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N14
\AND3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND3|F~0_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND3|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\AND4|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND4|F~0_combout\ = (!\A[1]~input_o\ & (!\A[0]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND4|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N10
\AND5|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND5|F~0_combout\ = (!\A[1]~input_o\ & (\A[0]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND5|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N28
\AND6|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND6|F~0_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND6|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N22
\AND7|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND7|F~0_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND7|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\AND8|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND8|F~0_combout\ = (!\A[1]~input_o\ & (!\A[0]~input_o\ & (\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND8|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N2
\AND9|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND9|F~0_combout\ = (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND9|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\AND10|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND10|F~0_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & (\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND10|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N30
\AND11|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND11|F~0_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND11|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\AND12|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND12|F~0_combout\ = (!\A[1]~input_o\ & (!\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND12|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N18
\AND13|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND13|F~0_combout\ = (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND13|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N20
\AND14|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND14|F~0_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND14|F~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\AND15|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AND15|F~0_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AND15|F~0_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_F(8) <= \F[8]~output_o\;

ww_F(9) <= \F[9]~output_o\;

ww_F(10) <= \F[10]~output_o\;

ww_F(11) <= \F[11]~output_o\;

ww_F(12) <= \F[12]~output_o\;

ww_F(13) <= \F[13]~output_o\;

ww_F(14) <= \F[14]~output_o\;

ww_F(15) <= \F[15]~output_o\;
END structure;


