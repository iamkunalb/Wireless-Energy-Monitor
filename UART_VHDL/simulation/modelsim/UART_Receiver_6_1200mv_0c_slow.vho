-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "08/11/2017 11:40:31"

-- 
-- Device: Altera EP3C40F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	output : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	Rx : IN std_logic;
	reset : IN std_logic
	);
END Block1;

-- Design Ports Information
-- output[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|s_counter[2]~9\ : std_logic;
SIGNAL \inst|s_counter[3]~10_combout\ : std_logic;
SIGNAL \inst2|CS.data~q\ : std_logic;
SIGNAL \inst2|s_count_en~q\ : std_logic;
SIGNAL \inst2|CS.data~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|CS.idle~q\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|CS.idle~0_combout\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rx~input_o\ : std_logic;
SIGNAL \inst1|temp[7]~feeder_combout\ : std_logic;
SIGNAL \inst|s_counter[0]~4_combout\ : std_logic;
SIGNAL \inst|s_counter[1]~7\ : std_logic;
SIGNAL \inst|s_counter[2]~8_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|CS.start~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|s_reset~q\ : std_logic;
SIGNAL \inst|s_counter[0]~5\ : std_logic;
SIGNAL \inst|s_counter[1]~6_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|store_data~0_combout\ : std_logic;
SIGNAL \inst2|store_data~q\ : std_logic;
SIGNAL \inst1|temp[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|s_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

output <= ww_output;
ww_clk <= clk;
ww_Rx <= Rx;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: FF_X2_Y41_N23
\inst|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_counter[3]~10_combout\,
	sclr => \inst2|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(3));

-- Location: LCCOMB_X2_Y41_N20
\inst|s_counter[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|s_counter[2]~8_combout\ = (\inst|s_counter\(2) & (\inst|s_counter[1]~7\ $ (GND))) # (!\inst|s_counter\(2) & (!\inst|s_counter[1]~7\ & VCC))
-- \inst|s_counter[2]~9\ = CARRY((\inst|s_counter\(2) & !\inst|s_counter[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(2),
	datad => VCC,
	cin => \inst|s_counter[1]~7\,
	combout => \inst|s_counter[2]~8_combout\,
	cout => \inst|s_counter[2]~9\);

-- Location: LCCOMB_X2_Y41_N22
\inst|s_counter[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|s_counter[3]~10_combout\ = \inst|s_counter[2]~9\ $ (\inst|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter\(3),
	cin => \inst|s_counter[2]~9\,
	combout => \inst|s_counter[3]~10_combout\);

-- Location: FF_X2_Y41_N31
\inst2|CS.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|CS.data~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CS.data~q\);

-- Location: FF_X2_Y41_N13
\inst2|s_count_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count_en~q\);

-- Location: LCCOMB_X2_Y41_N30
\inst2|CS.data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CS.data~0_combout\ = (\inst2|CS.data~q\) # ((\inst2|CS.start~q\ & \inst2|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CS.start~q\,
	datac => \inst2|CS.data~q\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|CS.data~0_combout\);

-- Location: LCCOMB_X2_Y41_N24
\inst2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|CS.data~q\ & (((\inst2|CS.start~q\ & !\inst2|Selector4~0_combout\)) # (!\inst|Equal0~0_combout\))) # (!\inst2|CS.data~q\ & (\inst2|CS.start~q\ & ((!\inst2|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.data~q\,
	datab => \inst2|CS.start~q\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X2_Y41_N15
\inst2|CS.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|CS.idle~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CS.idle~q\);

-- Location: LCCOMB_X2_Y41_N12
\inst2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\inst2|Selector1~0_combout\) # ((\inst2|s_count_en~q\ & ((\inst2|CS.data~q\) # (!\inst2|CS.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.idle~q\,
	datab => \inst2|CS.data~q\,
	datac => \inst2|s_count_en~q\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst2|Selector1~1_combout\);

-- Location: LCCOMB_X2_Y41_N14
\inst2|CS.idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|CS.idle~0_combout\ = (\inst2|CS.idle~q\) # (!\Rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CS.idle~q\,
	datad => \Rx~input_o\,
	combout => \inst2|CS.idle~0_combout\);

-- Location: IOOBUF_X0_Y41_N9
\output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X0_Y41_N23
\output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X1_Y43_N30
\output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y40_N9
\output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y41_N2
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X1_Y43_N8
\Rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx,
	o => \Rx~input_o\);

-- Location: LCCOMB_X1_Y41_N16
\inst1|temp[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[7]~feeder_combout\ = \Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rx~input_o\,
	combout => \inst1|temp[7]~feeder_combout\);

-- Location: LCCOMB_X2_Y41_N16
\inst|s_counter[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|s_counter[0]~4_combout\ = (\inst2|s_count_en~q\ & (\inst|s_counter\(0) $ (VCC))) # (!\inst2|s_count_en~q\ & (\inst|s_counter\(0) & VCC))
-- \inst|s_counter[0]~5\ = CARRY((\inst2|s_count_en~q\ & \inst|s_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count_en~q\,
	datab => \inst|s_counter\(0),
	datad => VCC,
	combout => \inst|s_counter[0]~4_combout\,
	cout => \inst|s_counter[0]~5\);

-- Location: LCCOMB_X2_Y41_N18
\inst|s_counter[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|s_counter[1]~6_combout\ = (\inst|s_counter\(1) & (!\inst|s_counter[0]~5\)) # (!\inst|s_counter\(1) & ((\inst|s_counter[0]~5\) # (GND)))
-- \inst|s_counter[1]~7\ = CARRY((!\inst|s_counter[0]~5\) # (!\inst|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(1),
	datad => VCC,
	cin => \inst|s_counter[0]~5\,
	combout => \inst|s_counter[1]~6_combout\,
	cout => \inst|s_counter[1]~7\);

-- Location: FF_X2_Y41_N21
\inst|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_counter[2]~8_combout\,
	sclr => \inst2|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(2));

-- Location: LCCOMB_X2_Y41_N10
\inst2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (!\inst|s_counter\(3) & (\inst|s_counter\(1) & (\inst|s_counter\(0) & \inst|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(3),
	datab => \inst|s_counter\(1),
	datac => \inst|s_counter\(0),
	datad => \inst|s_counter\(2),
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X2_Y41_N8
\inst2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|CS.idle~q\ & (((\inst2|CS.start~q\ & !\inst2|Selector4~0_combout\)))) # (!\inst2|CS.idle~q\ & (((\inst2|CS.start~q\ & !\inst2|Selector4~0_combout\)) # (!\Rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.idle~q\,
	datab => \Rx~input_o\,
	datac => \inst2|CS.start~q\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y41_N9
\inst2|CS.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CS.start~q\);

-- Location: LCCOMB_X2_Y41_N0
\inst2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|CS.idle~q\ & (((!\inst2|Selector4~0_combout\) # (!\inst2|CS.start~q\)))) # (!\inst2|CS.idle~q\ & (\Rx~input_o\ & ((!\inst2|Selector4~0_combout\) # (!\inst2|CS.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.idle~q\,
	datab => \Rx~input_o\,
	datac => \inst2|CS.start~q\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y41_N26
\inst2|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~1_combout\ = ((\inst2|CS.data~q\ & ((\inst|Equal0~0_combout\) # (\inst2|s_reset~q\)))) # (!\inst2|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.data~q\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst2|s_reset~q\,
	datad => \inst2|Selector0~0_combout\,
	combout => \inst2|Selector0~1_combout\);

-- Location: FF_X2_Y41_N27
\inst2|s_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_reset~q\);

-- Location: FF_X2_Y41_N17
\inst|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_counter[0]~4_combout\,
	sclr => \inst2|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(0));

-- Location: FF_X2_Y41_N19
\inst|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_counter[1]~6_combout\,
	sclr => \inst2|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(1));

-- Location: LCCOMB_X2_Y41_N28
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|s_counter\(3) & (\inst|s_counter\(1) & (\inst|s_counter\(0) & \inst|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(3),
	datab => \inst|s_counter\(1),
	datac => \inst|s_counter\(0),
	datad => \inst|s_counter\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y41_N4
\inst2|store_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|store_data~0_combout\ = (\inst2|CS.data~q\ & ((\inst|Equal0~0_combout\))) # (!\inst2|CS.data~q\ & (\inst2|store_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CS.data~q\,
	datac => \inst2|store_data~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst2|store_data~0_combout\);

-- Location: FF_X1_Y41_N5
\inst2|store_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|store_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|store_data~q\);

-- Location: FF_X1_Y41_N17
\inst1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[7]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(7));

-- Location: LCCOMB_X1_Y41_N6
\inst1|temp[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[6]~feeder_combout\ = \inst1|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(7),
	combout => \inst1|temp[6]~feeder_combout\);

-- Location: FF_X1_Y41_N7
\inst1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[6]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(6));

-- Location: LCCOMB_X1_Y41_N20
\inst1|temp[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[5]~feeder_combout\ = \inst1|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(6),
	combout => \inst1|temp[5]~feeder_combout\);

-- Location: FF_X1_Y41_N21
\inst1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[5]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(5));

-- Location: LCCOMB_X1_Y41_N2
\inst1|temp[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[4]~feeder_combout\ = \inst1|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(5),
	combout => \inst1|temp[4]~feeder_combout\);

-- Location: FF_X1_Y41_N3
\inst1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[4]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(4));

-- Location: LCCOMB_X1_Y41_N28
\inst1|temp[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[3]~feeder_combout\ = \inst1|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(4),
	combout => \inst1|temp[3]~feeder_combout\);

-- Location: FF_X1_Y41_N29
\inst1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[3]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(3));

-- Location: LCCOMB_X1_Y41_N22
\inst1|temp[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[2]~feeder_combout\ = \inst1|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(3),
	combout => \inst1|temp[2]~feeder_combout\);

-- Location: FF_X1_Y41_N23
\inst1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[2]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(2));

-- Location: LCCOMB_X1_Y41_N12
\inst1|temp[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[1]~feeder_combout\ = \inst1|temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|temp\(2),
	combout => \inst1|temp[1]~feeder_combout\);

-- Location: FF_X1_Y41_N13
\inst1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[1]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(1));

-- Location: LCCOMB_X1_Y41_N30
\inst1|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|temp[0]~feeder_combout\ = \inst1|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|temp\(1),
	combout => \inst1|temp[0]~feeder_combout\);

-- Location: FF_X1_Y41_N31
\inst1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|temp[0]~feeder_combout\,
	ena => \inst2|store_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(0));

ww_output(7) <= \output[7]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;
END structure;


