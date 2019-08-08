-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/28/2019 14:35:22"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GCD IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	go : IN std_logic;
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	d : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END GCD;

-- Design Ports Information
-- d[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GCD IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \d[2]~output_o\ : std_logic;
SIGNAL \d[3]~output_o\ : std_logic;
SIGNAL \d[4]~output_o\ : std_logic;
SIGNAL \d[5]~output_o\ : std_logic;
SIGNAL \d[6]~output_o\ : std_logic;
SIGNAL \d[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \f|d3|reg_out[0]~8_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \f|d2|reg_out[0]~9\ : std_logic;
SIGNAL \f|d2|reg_out[1]~10_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \f1|next_state.s2~0_combout\ : std_logic;
SIGNAL \f1|current_state.s2~q\ : std_logic;
SIGNAL \f|d5|Equal0~0_combout\ : std_logic;
SIGNAL \f|d5|Equal0~2_combout\ : std_logic;
SIGNAL \f|d5|Equal0~3_combout\ : std_logic;
SIGNAL \f|d5|Equal0~1_combout\ : std_logic;
SIGNAL \f|d5|Equal0~4_combout\ : std_logic;
SIGNAL \f1|next_state.s9~0_combout\ : std_logic;
SIGNAL \f1|current_state.s9~q\ : std_logic;
SIGNAL \f1|current_state.s10~q\ : std_logic;
SIGNAL \f1|current_state.s0~0_combout\ : std_logic;
SIGNAL \f1|current_state.s0~q\ : std_logic;
SIGNAL \f1|next_state.s1~combout\ : std_logic;
SIGNAL \f1|current_state.s1~q\ : std_logic;
SIGNAL \f1|next_state.s3~0_combout\ : std_logic;
SIGNAL \f1|current_state.s3~q\ : std_logic;
SIGNAL \f1|next_state.s8~combout\ : std_logic;
SIGNAL \f1|current_state.s8~q\ : std_logic;
SIGNAL \f1|next_state.s4~combout\ : std_logic;
SIGNAL \f1|current_state.s4~q\ : std_logic;
SIGNAL \f1|next_state.s5~0_combout\ : std_logic;
SIGNAL \f1|current_state.s5~q\ : std_logic;
SIGNAL \f1|next_state.s7~0_combout\ : std_logic;
SIGNAL \f1|current_state.s7~q\ : std_logic;
SIGNAL \f1|x_ld~combout\ : std_logic;
SIGNAL \f|d3|reg_out[0]~9\ : std_logic;
SIGNAL \f|d3|reg_out[1]~10_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \f1|y_ld~combout\ : std_logic;
SIGNAL \f|d2|reg_out[1]~11\ : std_logic;
SIGNAL \f|d2|reg_out[2]~12_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[1]~11\ : std_logic;
SIGNAL \f|d3|reg_out[2]~12_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[2]~13\ : std_logic;
SIGNAL \f|d3|reg_out[3]~14_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \f|d2|reg_out[2]~13\ : std_logic;
SIGNAL \f|d2|reg_out[3]~14_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \f|d2|reg_out[3]~15\ : std_logic;
SIGNAL \f|d2|reg_out[4]~16_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[3]~15\ : std_logic;
SIGNAL \f|d3|reg_out[4]~16_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \f|d2|reg_out[4]~17\ : std_logic;
SIGNAL \f|d2|reg_out[5]~18_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[4]~17\ : std_logic;
SIGNAL \f|d3|reg_out[5]~18_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \f|d2|reg_out[5]~19\ : std_logic;
SIGNAL \f|d2|reg_out[6]~20_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[5]~19\ : std_logic;
SIGNAL \f|d3|reg_out[6]~20_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \f|d3|reg_out[6]~21\ : std_logic;
SIGNAL \f|d3|reg_out[7]~22_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \f|d2|reg_out[6]~21\ : std_logic;
SIGNAL \f|d2|reg_out[7]~22_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \f|d6|LessThan0~1_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~3_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~5_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~7_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~9_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~11_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~13_cout\ : std_logic;
SIGNAL \f|d6|LessThan0~14_combout\ : std_logic;
SIGNAL \f1|next_state.s6~0_combout\ : std_logic;
SIGNAL \f1|current_state.s6~q\ : std_logic;
SIGNAL \f|d2|reg_out[0]~8_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \f|d4|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \f|d4|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \f|d2|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f|d3|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f|d4|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \f1|ALT_INV_current_state.s6~q\ : std_logic;
SIGNAL \f1|ALT_INV_current_state.s7~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_go <= go;
ww_x <= x;
ww_y <= y;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\f1|ALT_INV_current_state.s6~q\ <= NOT \f1|current_state.s6~q\;
\f1|ALT_INV_current_state.s7~q\ <= NOT \f1|current_state.s7~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y12_N2
\d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(0),
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(1),
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(2),
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(3),
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(4),
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(5),
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(6),
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f|d4|reg_out\(7),
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X48_Y21_N0
\f|d3|reg_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[0]~8_combout\ = (\f|d2|reg_out\(0) & (\f|d3|reg_out\(0) $ (VCC))) # (!\f|d2|reg_out\(0) & ((\f|d3|reg_out\(0)) # (GND)))
-- \f|d3|reg_out[0]~9\ = CARRY((\f|d3|reg_out\(0)) # (!\f|d2|reg_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(0),
	datab => \f|d3|reg_out\(0),
	datad => VCC,
	combout => \f|d3|reg_out[0]~8_combout\,
	cout => \f|d3|reg_out[0]~9\);

-- Location: IOIBUF_X49_Y34_N8
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y21_N6
\f|d2|reg_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[0]~8_combout\ = (\f|d2|reg_out\(0) & ((GND) # (!\f|d3|reg_out\(0)))) # (!\f|d2|reg_out\(0) & (\f|d3|reg_out\(0) $ (GND)))
-- \f|d2|reg_out[0]~9\ = CARRY((\f|d2|reg_out\(0)) # (!\f|d3|reg_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(0),
	datab => \f|d3|reg_out\(0),
	datad => VCC,
	combout => \f|d2|reg_out[0]~8_combout\,
	cout => \f|d2|reg_out[0]~9\);

-- Location: LCCOMB_X49_Y21_N8
\f|d2|reg_out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[1]~10_combout\ = (\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1) & (!\f|d2|reg_out[0]~9\)) # (!\f|d2|reg_out\(1) & ((\f|d2|reg_out[0]~9\) # (GND))))) # (!\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1) & (\f|d2|reg_out[0]~9\ & VCC)) # (!\f|d2|reg_out\(1) & 
-- (!\f|d2|reg_out[0]~9\))))
-- \f|d2|reg_out[1]~11\ = CARRY((\f|d3|reg_out\(1) & ((!\f|d2|reg_out[0]~9\) # (!\f|d2|reg_out\(1)))) # (!\f|d3|reg_out\(1) & (!\f|d2|reg_out\(1) & !\f|d2|reg_out[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(1),
	datab => \f|d2|reg_out\(1),
	datad => VCC,
	cin => \f|d2|reg_out[0]~9\,
	combout => \f|d2|reg_out[1]~10_combout\,
	cout => \f|d2|reg_out[1]~11\);

-- Location: IOIBUF_X53_Y22_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LCCOMB_X47_Y21_N18
\f1|next_state.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s2~0_combout\ = (\f1|current_state.s1~q\ & !\go~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s1~q\,
	datad => \go~input_o\,
	combout => \f1|next_state.s2~0_combout\);

-- Location: FF_X47_Y21_N19
\f1|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s2~q\);

-- Location: LCCOMB_X49_Y21_N26
\f|d5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d5|Equal0~0_combout\ = (\f|d2|reg_out\(0) & (\f|d3|reg_out\(0) & (\f|d2|reg_out\(1) $ (!\f|d3|reg_out\(1))))) # (!\f|d2|reg_out\(0) & (!\f|d3|reg_out\(0) & (\f|d2|reg_out\(1) $ (!\f|d3|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(0),
	datab => \f|d2|reg_out\(1),
	datac => \f|d3|reg_out\(0),
	datad => \f|d3|reg_out\(1),
	combout => \f|d5|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y21_N2
\f|d5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d5|Equal0~2_combout\ = (\f|d3|reg_out\(4) & (\f|d2|reg_out\(4) & (\f|d2|reg_out\(5) $ (!\f|d3|reg_out\(5))))) # (!\f|d3|reg_out\(4) & (!\f|d2|reg_out\(4) & (\f|d2|reg_out\(5) $ (!\f|d3|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(4),
	datab => \f|d2|reg_out\(5),
	datac => \f|d2|reg_out\(4),
	datad => \f|d3|reg_out\(5),
	combout => \f|d5|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y21_N4
\f|d5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d5|Equal0~3_combout\ = (\f|d3|reg_out\(7) & (\f|d2|reg_out\(7) & (\f|d2|reg_out\(6) $ (!\f|d3|reg_out\(6))))) # (!\f|d3|reg_out\(7) & (!\f|d2|reg_out\(7) & (\f|d2|reg_out\(6) $ (!\f|d3|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(7),
	datab => \f|d2|reg_out\(7),
	datac => \f|d2|reg_out\(6),
	datad => \f|d3|reg_out\(6),
	combout => \f|d5|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y21_N0
\f|d5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d5|Equal0~1_combout\ = (\f|d2|reg_out\(2) & (\f|d3|reg_out\(2) & (\f|d3|reg_out\(3) $ (!\f|d2|reg_out\(3))))) # (!\f|d2|reg_out\(2) & (!\f|d3|reg_out\(2) & (\f|d3|reg_out\(3) $ (!\f|d2|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(2),
	datab => \f|d3|reg_out\(2),
	datac => \f|d3|reg_out\(3),
	datad => \f|d2|reg_out\(3),
	combout => \f|d5|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y21_N22
\f|d5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d5|Equal0~4_combout\ = (\f|d5|Equal0~0_combout\ & (\f|d5|Equal0~2_combout\ & (\f|d5|Equal0~3_combout\ & \f|d5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d5|Equal0~0_combout\,
	datab => \f|d5|Equal0~2_combout\,
	datac => \f|d5|Equal0~3_combout\,
	datad => \f|d5|Equal0~1_combout\,
	combout => \f|d5|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y21_N4
\f1|next_state.s9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s9~0_combout\ = (\f1|current_state.s4~q\ & \f|d5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s4~q\,
	datad => \f|d5|Equal0~4_combout\,
	combout => \f1|next_state.s9~0_combout\);

-- Location: FF_X50_Y21_N5
\f1|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s9~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s9~q\);

-- Location: FF_X50_Y21_N25
\f1|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \f1|current_state.s9~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s10~q\);

-- Location: LCCOMB_X47_Y21_N28
\f1|current_state.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|current_state.s0~0_combout\ = !\f1|current_state.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|current_state.s10~q\,
	combout => \f1|current_state.s0~0_combout\);

-- Location: FF_X47_Y21_N29
\f1|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|current_state.s0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s0~q\);

-- Location: LCCOMB_X47_Y21_N30
\f1|next_state.s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s1~combout\ = (\f1|current_state.s2~q\) # (!\f1|current_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|current_state.s2~q\,
	datad => \f1|current_state.s0~q\,
	combout => \f1|next_state.s1~combout\);

-- Location: FF_X47_Y21_N31
\f1|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s1~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s1~q\);

-- Location: LCCOMB_X47_Y21_N22
\f1|next_state.s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s3~0_combout\ = (\f1|current_state.s1~q\ & \go~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s1~q\,
	datad => \go~input_o\,
	combout => \f1|next_state.s3~0_combout\);

-- Location: FF_X47_Y21_N23
\f1|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s3~q\);

-- Location: LCCOMB_X47_Y21_N16
\f1|next_state.s8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s8~combout\ = (\f1|current_state.s7~q\) # (\f1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|current_state.s7~q\,
	datad => \f1|current_state.s6~q\,
	combout => \f1|next_state.s8~combout\);

-- Location: FF_X47_Y21_N17
\f1|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s8~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s8~q\);

-- Location: LCCOMB_X47_Y21_N24
\f1|next_state.s4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s4~combout\ = (\f1|current_state.s3~q\) # (\f1|current_state.s8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s3~q\,
	datad => \f1|current_state.s8~q\,
	combout => \f1|next_state.s4~combout\);

-- Location: FF_X47_Y21_N25
\f1|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s4~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s4~q\);

-- Location: LCCOMB_X50_Y21_N22
\f1|next_state.s5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s5~0_combout\ = (\f1|current_state.s4~q\ & !\f|d5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s4~q\,
	datad => \f|d5|Equal0~4_combout\,
	combout => \f1|next_state.s5~0_combout\);

-- Location: FF_X50_Y21_N23
\f1|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s5~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s5~q\);

-- Location: LCCOMB_X47_Y21_N0
\f1|next_state.s7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s7~0_combout\ = (!\f|d6|LessThan0~14_combout\ & \f1|current_state.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d6|LessThan0~14_combout\,
	datad => \f1|current_state.s5~q\,
	combout => \f1|next_state.s7~0_combout\);

-- Location: FF_X47_Y21_N1
\f1|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s7~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s7~q\);

-- Location: LCCOMB_X49_Y21_N28
\f1|x_ld\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|x_ld~combout\ = (\f1|current_state.s3~q\) # (\f1|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s3~q\,
	datad => \f1|current_state.s7~q\,
	combout => \f1|x_ld~combout\);

-- Location: FF_X49_Y21_N9
\f|d2|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[1]~10_combout\,
	asdata => \x[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(1));

-- Location: LCCOMB_X48_Y21_N2
\f|d3|reg_out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[1]~10_combout\ = (\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1) & (!\f|d3|reg_out[0]~9\)) # (!\f|d2|reg_out\(1) & (\f|d3|reg_out[0]~9\ & VCC)))) # (!\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1) & ((\f|d3|reg_out[0]~9\) # (GND))) # (!\f|d2|reg_out\(1) & 
-- (!\f|d3|reg_out[0]~9\))))
-- \f|d3|reg_out[1]~11\ = CARRY((\f|d3|reg_out\(1) & (\f|d2|reg_out\(1) & !\f|d3|reg_out[0]~9\)) # (!\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1)) # (!\f|d3|reg_out[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(1),
	datab => \f|d2|reg_out\(1),
	datad => VCC,
	cin => \f|d3|reg_out[0]~9\,
	combout => \f|d3|reg_out[1]~10_combout\,
	cout => \f|d3|reg_out[1]~11\);

-- Location: IOIBUF_X53_Y10_N15
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X47_Y21_N12
\f1|y_ld\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|y_ld~combout\ = (\f1|current_state.s3~q\) # (\f1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|current_state.s3~q\,
	datad => \f1|current_state.s6~q\,
	combout => \f1|y_ld~combout\);

-- Location: FF_X48_Y21_N3
\f|d3|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[1]~10_combout\,
	asdata => \y[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(1));

-- Location: LCCOMB_X49_Y21_N10
\f|d2|reg_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[2]~12_combout\ = ((\f|d2|reg_out\(2) $ (\f|d3|reg_out\(2) $ (\f|d2|reg_out[1]~11\)))) # (GND)
-- \f|d2|reg_out[2]~13\ = CARRY((\f|d2|reg_out\(2) & ((!\f|d2|reg_out[1]~11\) # (!\f|d3|reg_out\(2)))) # (!\f|d2|reg_out\(2) & (!\f|d3|reg_out\(2) & !\f|d2|reg_out[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(2),
	datab => \f|d3|reg_out\(2),
	datad => VCC,
	cin => \f|d2|reg_out[1]~11\,
	combout => \f|d2|reg_out[2]~12_combout\,
	cout => \f|d2|reg_out[2]~13\);

-- Location: IOIBUF_X53_Y14_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: FF_X49_Y21_N11
\f|d2|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[2]~12_combout\,
	asdata => \x[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(2));

-- Location: LCCOMB_X48_Y21_N4
\f|d3|reg_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[2]~12_combout\ = ((\f|d3|reg_out\(2) $ (\f|d2|reg_out\(2) $ (\f|d3|reg_out[1]~11\)))) # (GND)
-- \f|d3|reg_out[2]~13\ = CARRY((\f|d3|reg_out\(2) & ((!\f|d3|reg_out[1]~11\) # (!\f|d2|reg_out\(2)))) # (!\f|d3|reg_out\(2) & (!\f|d2|reg_out\(2) & !\f|d3|reg_out[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(2),
	datab => \f|d2|reg_out\(2),
	datad => VCC,
	cin => \f|d3|reg_out[1]~11\,
	combout => \f|d3|reg_out[2]~12_combout\,
	cout => \f|d3|reg_out[2]~13\);

-- Location: IOIBUF_X45_Y34_N1
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: FF_X48_Y21_N5
\f|d3|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[2]~12_combout\,
	asdata => \y[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(2));

-- Location: LCCOMB_X48_Y21_N6
\f|d3|reg_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[3]~14_combout\ = (\f|d3|reg_out\(3) & ((\f|d2|reg_out\(3) & (!\f|d3|reg_out[2]~13\)) # (!\f|d2|reg_out\(3) & (\f|d3|reg_out[2]~13\ & VCC)))) # (!\f|d3|reg_out\(3) & ((\f|d2|reg_out\(3) & ((\f|d3|reg_out[2]~13\) # (GND))) # 
-- (!\f|d2|reg_out\(3) & (!\f|d3|reg_out[2]~13\))))
-- \f|d3|reg_out[3]~15\ = CARRY((\f|d3|reg_out\(3) & (\f|d2|reg_out\(3) & !\f|d3|reg_out[2]~13\)) # (!\f|d3|reg_out\(3) & ((\f|d2|reg_out\(3)) # (!\f|d3|reg_out[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(3),
	datab => \f|d2|reg_out\(3),
	datad => VCC,
	cin => \f|d3|reg_out[2]~13\,
	combout => \f|d3|reg_out[3]~14_combout\,
	cout => \f|d3|reg_out[3]~15\);

-- Location: IOIBUF_X53_Y30_N8
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: FF_X48_Y21_N7
\f|d3|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[3]~14_combout\,
	asdata => \y[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(3));

-- Location: LCCOMB_X49_Y21_N12
\f|d2|reg_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[3]~14_combout\ = (\f|d2|reg_out\(3) & ((\f|d3|reg_out\(3) & (!\f|d2|reg_out[2]~13\)) # (!\f|d3|reg_out\(3) & (\f|d2|reg_out[2]~13\ & VCC)))) # (!\f|d2|reg_out\(3) & ((\f|d3|reg_out\(3) & ((\f|d2|reg_out[2]~13\) # (GND))) # 
-- (!\f|d3|reg_out\(3) & (!\f|d2|reg_out[2]~13\))))
-- \f|d2|reg_out[3]~15\ = CARRY((\f|d2|reg_out\(3) & (\f|d3|reg_out\(3) & !\f|d2|reg_out[2]~13\)) # (!\f|d2|reg_out\(3) & ((\f|d3|reg_out\(3)) # (!\f|d2|reg_out[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(3),
	datab => \f|d3|reg_out\(3),
	datad => VCC,
	cin => \f|d2|reg_out[2]~13\,
	combout => \f|d2|reg_out[3]~14_combout\,
	cout => \f|d2|reg_out[3]~15\);

-- Location: IOIBUF_X53_Y20_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: FF_X49_Y21_N13
\f|d2|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[3]~14_combout\,
	asdata => \x[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(3));

-- Location: LCCOMB_X49_Y21_N14
\f|d2|reg_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[4]~16_combout\ = ((\f|d3|reg_out\(4) $ (\f|d2|reg_out\(4) $ (\f|d2|reg_out[3]~15\)))) # (GND)
-- \f|d2|reg_out[4]~17\ = CARRY((\f|d3|reg_out\(4) & (\f|d2|reg_out\(4) & !\f|d2|reg_out[3]~15\)) # (!\f|d3|reg_out\(4) & ((\f|d2|reg_out\(4)) # (!\f|d2|reg_out[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(4),
	datab => \f|d2|reg_out\(4),
	datad => VCC,
	cin => \f|d2|reg_out[3]~15\,
	combout => \f|d2|reg_out[4]~16_combout\,
	cout => \f|d2|reg_out[4]~17\);

-- Location: IOIBUF_X53_Y24_N22
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: FF_X49_Y21_N15
\f|d2|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[4]~16_combout\,
	asdata => \x[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(4));

-- Location: LCCOMB_X48_Y21_N8
\f|d3|reg_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[4]~16_combout\ = ((\f|d3|reg_out\(4) $ (\f|d2|reg_out\(4) $ (\f|d3|reg_out[3]~15\)))) # (GND)
-- \f|d3|reg_out[4]~17\ = CARRY((\f|d3|reg_out\(4) & ((!\f|d3|reg_out[3]~15\) # (!\f|d2|reg_out\(4)))) # (!\f|d3|reg_out\(4) & (!\f|d2|reg_out\(4) & !\f|d3|reg_out[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(4),
	datab => \f|d2|reg_out\(4),
	datad => VCC,
	cin => \f|d3|reg_out[3]~15\,
	combout => \f|d3|reg_out[4]~16_combout\,
	cout => \f|d3|reg_out[4]~17\);

-- Location: IOIBUF_X47_Y34_N22
\y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: FF_X48_Y21_N9
\f|d3|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[4]~16_combout\,
	asdata => \y[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(4));

-- Location: LCCOMB_X49_Y21_N16
\f|d2|reg_out[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[5]~18_combout\ = (\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5) & (!\f|d2|reg_out[4]~17\)) # (!\f|d2|reg_out\(5) & ((\f|d2|reg_out[4]~17\) # (GND))))) # (!\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5) & (\f|d2|reg_out[4]~17\ & VCC)) # 
-- (!\f|d2|reg_out\(5) & (!\f|d2|reg_out[4]~17\))))
-- \f|d2|reg_out[5]~19\ = CARRY((\f|d3|reg_out\(5) & ((!\f|d2|reg_out[4]~17\) # (!\f|d2|reg_out\(5)))) # (!\f|d3|reg_out\(5) & (!\f|d2|reg_out\(5) & !\f|d2|reg_out[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(5),
	datab => \f|d2|reg_out\(5),
	datad => VCC,
	cin => \f|d2|reg_out[4]~17\,
	combout => \f|d2|reg_out[5]~18_combout\,
	cout => \f|d2|reg_out[5]~19\);

-- Location: IOIBUF_X49_Y34_N1
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: FF_X49_Y21_N17
\f|d2|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[5]~18_combout\,
	asdata => \x[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(5));

-- Location: LCCOMB_X48_Y21_N10
\f|d3|reg_out[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[5]~18_combout\ = (\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5) & (!\f|d3|reg_out[4]~17\)) # (!\f|d2|reg_out\(5) & (\f|d3|reg_out[4]~17\ & VCC)))) # (!\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5) & ((\f|d3|reg_out[4]~17\) # (GND))) # 
-- (!\f|d2|reg_out\(5) & (!\f|d3|reg_out[4]~17\))))
-- \f|d3|reg_out[5]~19\ = CARRY((\f|d3|reg_out\(5) & (\f|d2|reg_out\(5) & !\f|d3|reg_out[4]~17\)) # (!\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5)) # (!\f|d3|reg_out[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(5),
	datab => \f|d2|reg_out\(5),
	datad => VCC,
	cin => \f|d3|reg_out[4]~17\,
	combout => \f|d3|reg_out[5]~18_combout\,
	cout => \f|d3|reg_out[5]~19\);

-- Location: IOIBUF_X53_Y16_N8
\y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: FF_X48_Y21_N11
\f|d3|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[5]~18_combout\,
	asdata => \y[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(5));

-- Location: LCCOMB_X49_Y21_N18
\f|d2|reg_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[6]~20_combout\ = ((\f|d3|reg_out\(6) $ (\f|d2|reg_out\(6) $ (\f|d2|reg_out[5]~19\)))) # (GND)
-- \f|d2|reg_out[6]~21\ = CARRY((\f|d3|reg_out\(6) & (\f|d2|reg_out\(6) & !\f|d2|reg_out[5]~19\)) # (!\f|d3|reg_out\(6) & ((\f|d2|reg_out\(6)) # (!\f|d2|reg_out[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(6),
	datab => \f|d2|reg_out\(6),
	datad => VCC,
	cin => \f|d2|reg_out[5]~19\,
	combout => \f|d2|reg_out[6]~20_combout\,
	cout => \f|d2|reg_out[6]~21\);

-- Location: IOIBUF_X53_Y20_N15
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: FF_X49_Y21_N19
\f|d2|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[6]~20_combout\,
	asdata => \x[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(6));

-- Location: LCCOMB_X48_Y21_N12
\f|d3|reg_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[6]~20_combout\ = ((\f|d3|reg_out\(6) $ (\f|d2|reg_out\(6) $ (\f|d3|reg_out[5]~19\)))) # (GND)
-- \f|d3|reg_out[6]~21\ = CARRY((\f|d3|reg_out\(6) & ((!\f|d3|reg_out[5]~19\) # (!\f|d2|reg_out\(6)))) # (!\f|d3|reg_out\(6) & (!\f|d2|reg_out\(6) & !\f|d3|reg_out[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(6),
	datab => \f|d2|reg_out\(6),
	datad => VCC,
	cin => \f|d3|reg_out[5]~19\,
	combout => \f|d3|reg_out[6]~20_combout\,
	cout => \f|d3|reg_out[6]~21\);

-- Location: IOIBUF_X53_Y17_N15
\y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: FF_X48_Y21_N13
\f|d3|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[6]~20_combout\,
	asdata => \y[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(6));

-- Location: LCCOMB_X48_Y21_N14
\f|d3|reg_out[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d3|reg_out[7]~22_combout\ = \f|d2|reg_out\(7) $ (\f|d3|reg_out\(7) $ (!\f|d3|reg_out[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(7),
	datab => \f|d3|reg_out\(7),
	cin => \f|d3|reg_out[6]~21\,
	combout => \f|d3|reg_out[7]~22_combout\);

-- Location: IOIBUF_X53_Y17_N22
\y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: FF_X48_Y21_N15
\f|d3|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[7]~22_combout\,
	asdata => \y[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(7));

-- Location: LCCOMB_X49_Y21_N20
\f|d2|reg_out[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d2|reg_out[7]~22_combout\ = \f|d3|reg_out\(7) $ (\f|d2|reg_out[6]~21\ $ (!\f|d2|reg_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(7),
	datad => \f|d2|reg_out\(7),
	cin => \f|d2|reg_out[6]~21\,
	combout => \f|d2|reg_out[7]~22_combout\);

-- Location: IOIBUF_X53_Y21_N22
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: FF_X49_Y21_N21
\f|d2|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[7]~22_combout\,
	asdata => \x[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(7));

-- Location: LCCOMB_X48_Y21_N16
\f|d6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~1_cout\ = CARRY((!\f|d2|reg_out\(0) & \f|d3|reg_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(0),
	datab => \f|d3|reg_out\(0),
	datad => VCC,
	cout => \f|d6|LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y21_N18
\f|d6|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~3_cout\ = CARRY((\f|d3|reg_out\(1) & (\f|d2|reg_out\(1) & !\f|d6|LessThan0~1_cout\)) # (!\f|d3|reg_out\(1) & ((\f|d2|reg_out\(1)) # (!\f|d6|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(1),
	datab => \f|d2|reg_out\(1),
	datad => VCC,
	cin => \f|d6|LessThan0~1_cout\,
	cout => \f|d6|LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y21_N20
\f|d6|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~5_cout\ = CARRY((\f|d3|reg_out\(2) & ((!\f|d6|LessThan0~3_cout\) # (!\f|d2|reg_out\(2)))) # (!\f|d3|reg_out\(2) & (!\f|d2|reg_out\(2) & !\f|d6|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(2),
	datab => \f|d2|reg_out\(2),
	datad => VCC,
	cin => \f|d6|LessThan0~3_cout\,
	cout => \f|d6|LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y21_N22
\f|d6|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~7_cout\ = CARRY((\f|d3|reg_out\(3) & (\f|d2|reg_out\(3) & !\f|d6|LessThan0~5_cout\)) # (!\f|d3|reg_out\(3) & ((\f|d2|reg_out\(3)) # (!\f|d6|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(3),
	datab => \f|d2|reg_out\(3),
	datad => VCC,
	cin => \f|d6|LessThan0~5_cout\,
	cout => \f|d6|LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y21_N24
\f|d6|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~9_cout\ = CARRY((\f|d3|reg_out\(4) & ((!\f|d6|LessThan0~7_cout\) # (!\f|d2|reg_out\(4)))) # (!\f|d3|reg_out\(4) & (!\f|d2|reg_out\(4) & !\f|d6|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(4),
	datab => \f|d2|reg_out\(4),
	datad => VCC,
	cin => \f|d6|LessThan0~7_cout\,
	cout => \f|d6|LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y21_N26
\f|d6|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~11_cout\ = CARRY((\f|d3|reg_out\(5) & (\f|d2|reg_out\(5) & !\f|d6|LessThan0~9_cout\)) # (!\f|d3|reg_out\(5) & ((\f|d2|reg_out\(5)) # (!\f|d6|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(5),
	datab => \f|d2|reg_out\(5),
	datad => VCC,
	cin => \f|d6|LessThan0~9_cout\,
	cout => \f|d6|LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y21_N28
\f|d6|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~13_cout\ = CARRY((\f|d3|reg_out\(6) & ((!\f|d6|LessThan0~11_cout\) # (!\f|d2|reg_out\(6)))) # (!\f|d3|reg_out\(6) & (!\f|d2|reg_out\(6) & !\f|d6|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d3|reg_out\(6),
	datab => \f|d2|reg_out\(6),
	datad => VCC,
	cin => \f|d6|LessThan0~11_cout\,
	cout => \f|d6|LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y21_N30
\f|d6|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d6|LessThan0~14_combout\ = (\f|d2|reg_out\(7) & (\f|d3|reg_out\(7) & \f|d6|LessThan0~13_cout\)) # (!\f|d2|reg_out\(7) & ((\f|d3|reg_out\(7)) # (\f|d6|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f|d2|reg_out\(7),
	datab => \f|d3|reg_out\(7),
	cin => \f|d6|LessThan0~13_cout\,
	combout => \f|d6|LessThan0~14_combout\);

-- Location: LCCOMB_X47_Y21_N6
\f1|next_state.s6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|next_state.s6~0_combout\ = (\f|d6|LessThan0~14_combout\ & \f1|current_state.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d6|LessThan0~14_combout\,
	datad => \f1|current_state.s5~q\,
	combout => \f1|next_state.s6~0_combout\);

-- Location: FF_X47_Y21_N7
\f1|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|next_state.s6~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|current_state.s6~q\);

-- Location: FF_X48_Y21_N1
\f|d3|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d3|reg_out[0]~8_combout\,
	asdata => \y[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s6~q\,
	ena => \f1|y_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d3|reg_out\(0));

-- Location: IOIBUF_X53_Y22_N8
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: FF_X49_Y21_N7
\f|d2|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d2|reg_out[0]~8_combout\,
	asdata => \x[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \f1|ALT_INV_current_state.s7~q\,
	ena => \f1|x_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d2|reg_out\(0));

-- Location: LCCOMB_X49_Y21_N24
\f|d4|reg_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[0]~feeder_combout\ = \f|d2|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(0),
	combout => \f|d4|reg_out[0]~feeder_combout\);

-- Location: FF_X49_Y21_N25
\f|d4|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(0));

-- Location: LCCOMB_X49_Y21_N30
\f|d4|reg_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[1]~feeder_combout\ = \f|d2|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d2|reg_out\(1),
	combout => \f|d4|reg_out[1]~feeder_combout\);

-- Location: FF_X49_Y21_N31
\f|d4|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(1));

-- Location: LCCOMB_X50_Y21_N16
\f|d4|reg_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[2]~feeder_combout\ = \f|d2|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(2),
	combout => \f|d4|reg_out[2]~feeder_combout\);

-- Location: FF_X50_Y21_N17
\f|d4|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(2));

-- Location: LCCOMB_X50_Y21_N2
\f|d4|reg_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[3]~feeder_combout\ = \f|d2|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(3),
	combout => \f|d4|reg_out[3]~feeder_combout\);

-- Location: FF_X50_Y21_N3
\f|d4|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(3));

-- Location: LCCOMB_X50_Y21_N12
\f|d4|reg_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[4]~feeder_combout\ = \f|d2|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(4),
	combout => \f|d4|reg_out[4]~feeder_combout\);

-- Location: FF_X50_Y21_N13
\f|d4|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(4));

-- Location: LCCOMB_X50_Y21_N14
\f|d4|reg_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[5]~feeder_combout\ = \f|d2|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d2|reg_out\(5),
	combout => \f|d4|reg_out[5]~feeder_combout\);

-- Location: FF_X50_Y21_N15
\f|d4|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(5));

-- Location: LCCOMB_X50_Y21_N0
\f|d4|reg_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[6]~feeder_combout\ = \f|d2|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(6),
	combout => \f|d4|reg_out[6]~feeder_combout\);

-- Location: FF_X50_Y21_N1
\f|d4|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(6));

-- Location: LCCOMB_X50_Y21_N6
\f|d4|reg_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f|d4|reg_out[7]~feeder_combout\ = \f|d2|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f|d2|reg_out\(7),
	combout => \f|d4|reg_out[7]~feeder_combout\);

-- Location: FF_X50_Y21_N7
\f|d4|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f|d4|reg_out[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|current_state.s9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f|d4|reg_out\(7));

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;

ww_d(2) <= \d[2]~output_o\;

ww_d(3) <= \d[3]~output_o\;

ww_d(4) <= \d[4]~output_o\;

ww_d(5) <= \d[5]~output_o\;

ww_d(6) <= \d[6]~output_o\;

ww_d(7) <= \d[7]~output_o\;
END structure;


