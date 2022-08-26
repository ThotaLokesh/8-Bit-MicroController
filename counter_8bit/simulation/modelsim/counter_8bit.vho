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

-- DATE "07/29/2022 07:20:42"

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

ENTITY 	counter_8bit IS
    PORT (
	clk : IN std_logic;
	RST : IN std_logic;
	Q : BUFFER std_logic_vector(7 DOWNTO 0);
	Q1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END counter_8bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[5]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[7]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_8bit IS
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
SIGNAL ww_Q1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q1[0]~output_o\ : std_logic;
SIGNAL \Q1[1]~output_o\ : std_logic;
SIGNAL \Q1[2]~output_o\ : std_logic;
SIGNAL \Q1[3]~output_o\ : std_logic;
SIGNAL \Q1[4]~output_o\ : std_logic;
SIGNAL \Q1[5]~output_o\ : std_logic;
SIGNAL \Q1[6]~output_o\ : std_logic;
SIGNAL \Q1[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \ff0|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \ff0|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D0|nand2|F~1_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D0|nand2|F~2_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ff3|JK_flipflop|D0|nand2|F~5_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D0|nand2|F~5_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D0|nand2|F~5_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D0|nand2|F~3_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D0|nand2|F~4_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D1|nand2|F~1_combout\ : std_logic;
SIGNAL \ff0|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D1|nand3|F~0_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff0|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ : std_logic;
SIGNAL \ff7|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff6|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff5|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff4|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff3|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff2|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff1|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ff0|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ : std_logic;

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

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ff7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff7|JK_flipflop|D1|nand2|F~1_combout\;
\ff6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff6|JK_flipflop|D1|nand2|F~1_combout\;
\ff5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff5|JK_flipflop|D1|nand2|F~1_combout\;
\ff4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff4|JK_flipflop|D1|nand2|F~1_combout\;
\ff3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff3|JK_flipflop|D1|nand2|F~1_combout\;
\ff2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff2|JK_flipflop|D1|nand2|F~1_combout\;
\ff1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff1|JK_flipflop|D1|nand2|F~1_combout\;
\ff0|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\ <= NOT \ff0|JK_flipflop|D1|nand2|F~1_combout\;
\ff7|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff7|JK_flipflop|D1|nand3|F~0_combout\;
\ff6|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff6|JK_flipflop|D1|nand3|F~0_combout\;
\ff5|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff5|JK_flipflop|D1|nand3|F~0_combout\;
\ff4|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff4|JK_flipflop|D1|nand3|F~0_combout\;
\ff3|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff3|JK_flipflop|D1|nand3|F~0_combout\;
\ff2|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff2|JK_flipflop|D1|nand3|F~0_combout\;
\ff1|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff1|JK_flipflop|D1|nand3|F~0_combout\;
\ff0|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\ <= NOT \ff0|JK_flipflop|D1|nand3|F~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff0|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff1|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff3|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff4|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff5|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff6|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff7|JK_flipflop|D1|nand2|ALT_INV_F~1_combout\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff0|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Q1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff1|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Q1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Q1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff3|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Q1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff4|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Q1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff5|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\Q1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff6|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\Q1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff7|JK_flipflop|D1|nand3|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \Q1[7]~output_o\);

-- Location: IOIBUF_X3_Y24_N22
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

-- Location: LCCOMB_X1_Y11_N8
\ff0|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff0|JK_flipflop|D0|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff0|JK_flipflop|D0|nand2|F~1_combout\) # (!\RST~input_o\)))) # (!\clk~input_o\ & (!\ff0|JK_flipflop|D1|nand2|F~1_combout\ & ((\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff0|JK_flipflop|D0|nand2|F~1_combout\,
	datad => \RST~input_o\,
	combout => \ff0|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N0
\ff0|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff0|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (\ff0|JK_flipflop|D0|nand2|F~1_combout\)) # (!\clk~input_o\ & (((\ff0|JK_flipflop|D1|nand2|F~1_combout\) # (!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff0|JK_flipflop|D0|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff0|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N26
\ff1|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1|JK_flipflop|D0|nand2|F~3_combout\ = (\ff1|JK_flipflop|D1|nand2|F~1_combout\ & ((\ff0|JK_flipflop|D1|nand2|F~1_combout\))) # (!\ff1|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & !\ff0|JK_flipflop|D1|nand2|F~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff1|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X1_Y11_N2
\ff1|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1|JK_flipflop|D0|nand2|F~4_combout\ = (\clk~input_o\ & (((\ff1|JK_flipflop|D0|nand2|F~4_combout\)) # (!\RST~input_o\))) # (!\clk~input_o\ & (((\ff1|JK_flipflop|D0|nand2|F~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff1|JK_flipflop|D0|nand2|F~3_combout\,
	datad => \ff1|JK_flipflop|D0|nand2|F~4_combout\,
	combout => \ff1|JK_flipflop|D0|nand2|F~4_combout\);

-- Location: LCCOMB_X1_Y17_N2
\ff1|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff1|JK_flipflop|D0|nand2|F~4_combout\)))) # (!\clk~input_o\ & (((\ff1|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff1|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff1|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N28
\ff2|JK_flipflop|D0|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|JK_flipflop|D0|nand2|F~1_combout\ = (\clk~input_o\ & (\ff2|JK_flipflop|D0|nand2|F~2_combout\)) # (!\clk~input_o\ & (((\ff0|JK_flipflop|D1|nand2|F~1_combout\) # (\ff1|JK_flipflop|D1|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff2|JK_flipflop|D0|nand2|F~2_combout\,
	datac => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff2|JK_flipflop|D0|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N18
\ff2|JK_flipflop|D0|nand2|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|JK_flipflop|D0|nand2|F~2_combout\ = (\clk~input_o\ & (((\ff2|JK_flipflop|D0|nand2|F~1_combout\)) # (!\RST~input_o\))) # (!\clk~input_o\ & ((\ff2|JK_flipflop|D1|nand2|F~1_combout\ & ((\ff2|JK_flipflop|D0|nand2|F~1_combout\))) # 
-- (!\ff2|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & !\ff2|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff2|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff2|JK_flipflop|D0|nand2|F~1_combout\,
	combout => \ff2|JK_flipflop|D0|nand2|F~2_combout\);

-- Location: LCCOMB_X1_Y17_N24
\ff2|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff2|JK_flipflop|D0|nand2|F~2_combout\)))) # (!\clk~input_o\ & (((\ff2|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff2|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff2|JK_flipflop|D0|nand2|F~2_combout\,
	combout => \ff2|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N8
\ff3|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|JK_flipflop|D0|nand2|F~3_combout\ = (!\ff0|JK_flipflop|D1|nand2|F~1_combout\ & (!\ff1|JK_flipflop|D1|nand2|F~1_combout\ & !\ff2|JK_flipflop|D1|nand2|F~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff2|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff3|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X1_Y17_N14
\ff3|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|JK_flipflop|D0|nand2|F~4_combout\ = (!\clk~input_o\ & ((\ff3|JK_flipflop|D1|nand2|F~1_combout\ & ((\ff3|JK_flipflop|D0|nand2|F~3_combout\))) # (!\ff3|JK_flipflop|D1|nand2|F~1_combout\ & ((!\ff3|JK_flipflop|D0|nand2|F~3_combout\) # 
-- (!\RST~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff3|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \RST~input_o\,
	datac => \clk~input_o\,
	datad => \ff3|JK_flipflop|D0|nand2|F~3_combout\,
	combout => \ff3|JK_flipflop|D0|nand2|F~4_combout\);

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

-- Location: LCCOMB_X1_Y17_N12
\ff3|JK_flipflop|D0|nand2|F~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|JK_flipflop|D0|nand2|F~5_combout\ = (!\ff3|JK_flipflop|D0|nand2|F~4_combout\ & (((\ff3|JK_flipflop|D0|nand2|F~5_combout\) # (!GLOBAL(\RST~inputclkctrl_outclk\))) # (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff3|JK_flipflop|D0|nand2|F~4_combout\,
	datac => \ff3|JK_flipflop|D0|nand2|F~5_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \ff3|JK_flipflop|D0|nand2|F~5_combout\);

-- Location: LCCOMB_X1_Y17_N22
\ff3|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff3|JK_flipflop|D0|nand2|F~5_combout\)))) # (!\clk~input_o\ & ((\ff3|JK_flipflop|D1|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff3|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \clk~input_o\,
	datac => \RST~input_o\,
	datad => \ff3|JK_flipflop|D0|nand2|F~5_combout\,
	combout => \ff3|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N16
\ff4|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff4|JK_flipflop|D0|nand2|F~3_combout\ = (!\ff0|JK_flipflop|D1|nand2|F~1_combout\ & (!\ff1|JK_flipflop|D1|nand2|F~1_combout\ & (!\ff3|JK_flipflop|D1|nand2|F~1_combout\ & !\ff2|JK_flipflop|D1|nand2|F~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff3|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff2|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff4|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X2_Y17_N12
\ff4|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff4|JK_flipflop|D0|nand2|F~4_combout\ = (!\clk~input_o\ & ((\ff4|JK_flipflop|D0|nand2|F~3_combout\ & ((\ff4|JK_flipflop|D1|nand2|F~1_combout\) # (!\RST~input_o\))) # (!\ff4|JK_flipflop|D0|nand2|F~3_combout\ & 
-- ((!\ff4|JK_flipflop|D1|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff4|JK_flipflop|D0|nand2|F~3_combout\,
	datab => \RST~input_o\,
	datac => \ff4|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \clk~input_o\,
	combout => \ff4|JK_flipflop|D0|nand2|F~4_combout\);

-- Location: LCCOMB_X2_Y17_N24
\ff4|JK_flipflop|D0|nand2|F~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff4|JK_flipflop|D0|nand2|F~5_combout\ = (!\ff4|JK_flipflop|D0|nand2|F~4_combout\ & (((\ff4|JK_flipflop|D0|nand2|F~5_combout\) # (!GLOBAL(\RST~inputclkctrl_outclk\))) # (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff4|JK_flipflop|D0|nand2|F~4_combout\,
	datac => \ff4|JK_flipflop|D0|nand2|F~5_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \ff4|JK_flipflop|D0|nand2|F~5_combout\);

-- Location: LCCOMB_X2_Y17_N8
\ff4|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff4|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff4|JK_flipflop|D0|nand2|F~5_combout\)))) # (!\clk~input_o\ & ((\ff4|JK_flipflop|D1|nand2|F~1_combout\) # ((!\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff4|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \ff4|JK_flipflop|D0|nand2|F~5_combout\,
	combout => \ff4|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N6
\ff5|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff5|JK_flipflop|D0|nand2|F~3_combout\ = (\ff5|JK_flipflop|D1|nand2|F~1_combout\ & (((\ff4|JK_flipflop|D1|nand2|F~1_combout\) # (!\ff4|JK_flipflop|D0|nand2|F~3_combout\)))) # (!\ff5|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & 
-- (!\ff4|JK_flipflop|D1|nand2|F~1_combout\ & \ff4|JK_flipflop|D0|nand2|F~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \ff5|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff4|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff4|JK_flipflop|D0|nand2|F~3_combout\,
	combout => \ff5|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X2_Y17_N30
\ff5|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff5|JK_flipflop|D0|nand2|F~4_combout\ = (\clk~input_o\ & (((\ff5|JK_flipflop|D0|nand2|F~4_combout\)) # (!\RST~input_o\))) # (!\clk~input_o\ & (((\ff5|JK_flipflop|D0|nand2|F~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \clk~input_o\,
	datac => \ff5|JK_flipflop|D0|nand2|F~3_combout\,
	datad => \ff5|JK_flipflop|D0|nand2|F~4_combout\,
	combout => \ff5|JK_flipflop|D0|nand2|F~4_combout\);

-- Location: LCCOMB_X1_Y17_N20
\ff5|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff5|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff5|JK_flipflop|D0|nand2|F~4_combout\)))) # (!\clk~input_o\ & (((\ff5|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff5|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \ff5|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff5|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y17_N4
\ff6|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff6|JK_flipflop|D0|nand2|F~3_combout\ = (\ff4|JK_flipflop|D0|nand2|F~3_combout\ & (!\ff4|JK_flipflop|D1|nand2|F~1_combout\ & !\ff5|JK_flipflop|D1|nand2|F~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff4|JK_flipflop|D0|nand2|F~3_combout\,
	datab => \ff4|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff5|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff6|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X1_Y17_N30
\ff6|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff6|JK_flipflop|D0|nand2|F~4_combout\ = (!\clk~input_o\ & ((\ff6|JK_flipflop|D1|nand2|F~1_combout\ & ((\ff6|JK_flipflop|D0|nand2|F~3_combout\))) # (!\ff6|JK_flipflop|D1|nand2|F~1_combout\ & ((!\ff6|JK_flipflop|D0|nand2|F~3_combout\) # 
-- (!\RST~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \ff6|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff6|JK_flipflop|D0|nand2|F~3_combout\,
	datad => \clk~input_o\,
	combout => \ff6|JK_flipflop|D0|nand2|F~4_combout\);

-- Location: LCCOMB_X1_Y17_N10
\ff6|JK_flipflop|D0|nand2|F~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff6|JK_flipflop|D0|nand2|F~5_combout\ = (!\ff6|JK_flipflop|D0|nand2|F~4_combout\ & (((\ff6|JK_flipflop|D0|nand2|F~5_combout\) # (!GLOBAL(\RST~inputclkctrl_outclk\))) # (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff6|JK_flipflop|D0|nand2|F~5_combout\,
	datac => \ff6|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \RST~inputclkctrl_outclk\,
	combout => \ff6|JK_flipflop|D0|nand2|F~5_combout\);

-- Location: LCCOMB_X2_Y17_N22
\ff6|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff6|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff6|JK_flipflop|D0|nand2|F~5_combout\)))) # (!\clk~input_o\ & (((\ff6|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff6|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \ff6|JK_flipflop|D0|nand2|F~5_combout\,
	combout => \ff6|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X2_Y17_N14
\ff7|JK_flipflop|D0|nand2|F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff7|JK_flipflop|D0|nand2|F~3_combout\ = (\ff6|JK_flipflop|D1|nand2|F~1_combout\ & (((\ff7|JK_flipflop|D1|nand2|F~1_combout\)))) # (!\ff6|JK_flipflop|D1|nand2|F~1_combout\ & ((\ff6|JK_flipflop|D0|nand2|F~3_combout\ & (\RST~input_o\ & 
-- !\ff7|JK_flipflop|D1|nand2|F~1_combout\)) # (!\ff6|JK_flipflop|D0|nand2|F~3_combout\ & ((\ff7|JK_flipflop|D1|nand2|F~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff6|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \ff6|JK_flipflop|D0|nand2|F~3_combout\,
	datac => \RST~input_o\,
	datad => \ff7|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff7|JK_flipflop|D0|nand2|F~3_combout\);

-- Location: LCCOMB_X2_Y17_N28
\ff7|JK_flipflop|D0|nand2|F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff7|JK_flipflop|D0|nand2|F~4_combout\ = (\clk~input_o\ & (((\ff7|JK_flipflop|D0|nand2|F~4_combout\)) # (!\RST~input_o\))) # (!\clk~input_o\ & (((\ff7|JK_flipflop|D0|nand2|F~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff7|JK_flipflop|D0|nand2|F~3_combout\,
	datad => \ff7|JK_flipflop|D0|nand2|F~4_combout\,
	combout => \ff7|JK_flipflop|D0|nand2|F~4_combout\);

-- Location: LCCOMB_X1_Y18_N20
\ff7|JK_flipflop|D1|nand2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff7|JK_flipflop|D1|nand2|F~1_combout\ = (\clk~input_o\ & (((\ff7|JK_flipflop|D0|nand2|F~4_combout\)))) # (!\clk~input_o\ & (((\ff7|JK_flipflop|D1|nand2|F~1_combout\)) # (!\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff7|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \ff7|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff7|JK_flipflop|D1|nand2|F~1_combout\);

-- Location: LCCOMB_X1_Y18_N16
\ff0|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff0|JK_flipflop|D1|nand3|F~0_combout\ = (!\ff0|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & ((!\clk~input_o\) # (!\ff0|JK_flipflop|D0|nand2|F~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|JK_flipflop|D0|nand2|F~1_combout\,
	datab => \ff0|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \RST~input_o\,
	datad => \clk~input_o\,
	combout => \ff0|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X2_Y17_N16
\ff1|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff1|JK_flipflop|D1|nand2|F~1_combout\ & ((!\clk~input_o\) # (!\ff1|JK_flipflop|D0|nand2|F~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \ff1|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff1|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \clk~input_o\,
	combout => \ff1|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X1_Y18_N14
\ff2|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|JK_flipflop|D1|nand3|F~0_combout\ = (!\ff2|JK_flipflop|D1|nand2|F~1_combout\ & (\RST~input_o\ & ((!\clk~input_o\) # (!\ff2|JK_flipflop|D0|nand2|F~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff2|JK_flipflop|D1|nand2|F~1_combout\,
	datab => \ff2|JK_flipflop|D0|nand2|F~2_combout\,
	datac => \RST~input_o\,
	datad => \clk~input_o\,
	combout => \ff2|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\ff3|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff3|JK_flipflop|D1|nand2|F~1_combout\ & ((!\ff3|JK_flipflop|D0|nand2|F~5_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff3|JK_flipflop|D0|nand2|F~5_combout\,
	datac => \RST~input_o\,
	datad => \ff3|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff3|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X2_Y17_N18
\ff4|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff4|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff4|JK_flipflop|D1|nand2|F~1_combout\ & ((!\clk~input_o\) # (!\ff4|JK_flipflop|D0|nand2|F~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \ff4|JK_flipflop|D1|nand2|F~1_combout\,
	datac => \ff4|JK_flipflop|D0|nand2|F~5_combout\,
	datad => \clk~input_o\,
	combout => \ff4|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X2_Y17_N20
\ff5|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff5|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff5|JK_flipflop|D1|nand2|F~1_combout\ & ((!\ff5|JK_flipflop|D0|nand2|F~4_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \ff5|JK_flipflop|D0|nand2|F~4_combout\,
	datac => \RST~input_o\,
	datad => \ff5|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff5|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X2_Y17_N26
\ff6|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff6|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff6|JK_flipflop|D1|nand2|F~1_combout\ & ((!\clk~input_o\) # (!\ff6|JK_flipflop|D0|nand2|F~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff6|JK_flipflop|D0|nand2|F~5_combout\,
	datab => \RST~input_o\,
	datac => \ff6|JK_flipflop|D1|nand2|F~1_combout\,
	datad => \clk~input_o\,
	combout => \ff6|JK_flipflop|D1|nand3|F~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\ff7|JK_flipflop|D1|nand3|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff7|JK_flipflop|D1|nand3|F~0_combout\ = (\RST~input_o\ & (!\ff7|JK_flipflop|D1|nand2|F~1_combout\ & ((!\ff7|JK_flipflop|D0|nand2|F~4_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \RST~input_o\,
	datac => \ff7|JK_flipflop|D0|nand2|F~4_combout\,
	datad => \ff7|JK_flipflop|D1|nand2|F~1_combout\,
	combout => \ff7|JK_flipflop|D1|nand3|F~0_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q1(0) <= \Q1[0]~output_o\;

ww_Q1(1) <= \Q1[1]~output_o\;

ww_Q1(2) <= \Q1[2]~output_o\;

ww_Q1(3) <= \Q1[3]~output_o\;

ww_Q1(4) <= \Q1[4]~output_o\;

ww_Q1(5) <= \Q1[5]~output_o\;

ww_Q1(6) <= \Q1[6]~output_o\;

ww_Q1(7) <= \Q1[7]~output_o\;
END structure;


