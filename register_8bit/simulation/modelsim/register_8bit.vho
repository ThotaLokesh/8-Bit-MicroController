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

-- DATE "07/23/2022 11:40:24"

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

ENTITY 	register_8bit IS
    PORT (
	D : IN std_logic_vector(0 TO 7);
	clk : IN std_logic;
	RST : IN std_logic;
	W : IN std_logic;
	R : IN std_logic;
	Q : BUFFER std_logic_vector(0 TO 7)
	);
END register_8bit;

-- Design Ports Information
-- Q[7]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(0 TO 7);
SIGNAL ww_clk : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_Q : std_logic_vector(0 TO 7);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \register_generation:7:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \register_generation:6:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \register_generation:5:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \register_generation:4:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \register_generation:3:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \register_generation:2:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \register_generation:1:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \register_generation:0:register_8bit|D_ff|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
ww_clk <= clk;
ww_RST <= RST;
ww_W <= W;
ww_R <= R;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y21_N9
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\,
	oe => \R~input_o\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X1_Y11_N10
\register_generation:7:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:7:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[7]~input_o\))) # (!\W~input_o\ & (\register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datab => \W~input_o\,
	datac => \clk~input_o\,
	datad => \D[7]~input_o\,
	combout => \register_generation:7:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N0
\register_generation:7:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:7:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:7:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datab => \register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datac => \clk~input_o\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\register_generation:7:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:7:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:7:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X2_Y11_N26
\register_generation:6:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:6:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[6]~input_o\))) # (!\W~input_o\ & (\register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \clk~input_o\,
	datad => \D[6]~input_o\,
	combout => \register_generation:6:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X2_Y11_N28
\register_generation:6:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:6:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datab => \register_generation:6:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datac => \clk~input_o\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X2_Y11_N8
\register_generation:6:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:6:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:6:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X2_Y11_N30
\register_generation:5:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:5:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[5]~input_o\))) # (!\W~input_o\ & (\register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \clk~input_o\,
	datac => \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datad => \D[5]~input_o\,
	combout => \register_generation:5:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X2_Y11_N12
\register_generation:5:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:5:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datab => \clk~input_o\,
	datac => \register_generation:5:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X2_Y11_N22
\register_generation:5:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \RST~input_o\,
	datad => \register_generation:5:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:5:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X2_Y11_N2
\register_generation:4:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:4:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[4]~input_o\))) # (!\W~input_o\ & (\register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \W~input_o\,
	datad => \D[4]~input_o\,
	combout => \register_generation:4:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X2_Y11_N24
\register_generation:4:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:4:register_8bit|D_ff|D0|nand2|F~1_combout\ & (((\register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\) # (!GLOBAL(\RST~inputclkctrl_outclk\))) # 
-- (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:4:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X2_Y11_N4
\register_generation:4:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:4:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:4:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X5_Y24_N8
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N22
\register_generation:3:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:3:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & (\D[3]~input_o\)) # (!\W~input_o\ & ((\register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \clk~input_o\,
	datad => \W~input_o\,
	combout => \register_generation:3:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\register_generation:3:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:3:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:3:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datab => \register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datac => \clk~input_o\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y11_N14
\register_generation:3:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:3:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:3:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X0_Y8_N15
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N2
\register_generation:2:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:2:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[2]~input_o\))) # (!\W~input_o\ & (\register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datab => \W~input_o\,
	datac => \clk~input_o\,
	datad => \D[2]~input_o\,
	combout => \register_generation:2:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\register_generation:2:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:2:register_8bit|D_ff|D0|nand2|F~1_combout\ & (((\register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\) # (!GLOBAL(\RST~inputclkctrl_outclk\))) # 
-- (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:2:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y11_N4
\register_generation:2:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:2:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:2:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N30
\register_generation:1:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:1:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & ((\D[1]~input_o\))) # (!\W~input_o\ & (\register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \D[1]~input_o\,
	datad => \W~input_o\,
	combout => \register_generation:1:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\register_generation:1:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:1:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datab => \clk~input_o\,
	datac => \register_generation:1:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y11_N18
\register_generation:1:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:1:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:1:register_8bit|D_ff|D1|nand2|F~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\register_generation:0:register_8bit|D_ff|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:0:register_8bit|D_ff|D0|nand2|F~1_combout\ = (!\clk~input_o\ & ((\W~input_o\ & (\D[0]~input_o\)) # (!\W~input_o\ & ((\register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \clk~input_o\,
	datad => \W~input_o\,
	combout => \register_generation:0:register_8bit|D_ff|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\register_generation:0:register_8bit|D_ff|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\ = (!\register_generation:0:register_8bit|D_ff|D0|nand2|F~1_combout\ & ((\register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\) # ((!GLOBAL(\RST~inputclkctrl_outclk\)) # 
-- (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\,
	datab => \register_generation:0:register_8bit|D_ff|D0|nand2|F~1_combout\,
	datac => \clk~input_o\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y11_N8
\register_generation:0:register_8bit|D_ff|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((!\register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (\register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\ & 
-- (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \register_generation:0:register_8bit|D_ff|D0|nand2|F~2_combout\,
	combout => \register_generation:0:register_8bit|D_ff|D1|nand2|F~1_combout\);

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


