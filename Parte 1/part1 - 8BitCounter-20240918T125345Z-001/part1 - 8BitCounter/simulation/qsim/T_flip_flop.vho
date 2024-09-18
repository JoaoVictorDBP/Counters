-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/15/2024 11:47:55"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Contador IS
    PORT (
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Enable : IN std_logic;
	Clear : IN std_logic;
	Clk : IN std_logic
	);
END Contador;

-- Design Ports Information
-- Q0	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q7	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \tff1|teste~0_combout\ : std_logic;
SIGNAL \tff1|teste~q\ : std_logic;
SIGNAL \tff2|teste~0_combout\ : std_logic;
SIGNAL \tff2|teste~q\ : std_logic;
SIGNAL \tff3|teste~0_combout\ : std_logic;
SIGNAL \tff3|teste~q\ : std_logic;
SIGNAL \tff4|teste~0_combout\ : std_logic;
SIGNAL \tff4|teste~q\ : std_logic;
SIGNAL \in_tff5~combout\ : std_logic;
SIGNAL \tff5|teste~0_combout\ : std_logic;
SIGNAL \tff5|teste~q\ : std_logic;
SIGNAL \tff6|teste~0_combout\ : std_logic;
SIGNAL \tff6|teste~q\ : std_logic;
SIGNAL \tff7|teste~0_combout\ : std_logic;
SIGNAL \tff7|teste~q\ : std_logic;
SIGNAL \tff8|teste~0_combout\ : std_logic;
SIGNAL \tff8|teste~q\ : std_logic;
SIGNAL \ALT_INV_Enable~input_o\ : std_logic;
SIGNAL \ALT_INV_Clear~input_o\ : std_logic;
SIGNAL \ALT_INV_in_tff5~combout\ : std_logic;
SIGNAL \tff8|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff7|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff6|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff5|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff4|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff3|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff2|ALT_INV_teste~q\ : std_logic;
SIGNAL \tff1|ALT_INV_teste~q\ : std_logic;

BEGIN

Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
Q6 <= ww_Q6;
Q7 <= ww_Q7;
ww_Enable <= Enable;
ww_Clear <= Clear;
ww_Clk <= Clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Enable~input_o\ <= NOT \Enable~input_o\;
\ALT_INV_Clear~input_o\ <= NOT \Clear~input_o\;
\ALT_INV_in_tff5~combout\ <= NOT \in_tff5~combout\;
\tff8|ALT_INV_teste~q\ <= NOT \tff8|teste~q\;
\tff7|ALT_INV_teste~q\ <= NOT \tff7|teste~q\;
\tff6|ALT_INV_teste~q\ <= NOT \tff6|teste~q\;
\tff5|ALT_INV_teste~q\ <= NOT \tff5|teste~q\;
\tff4|ALT_INV_teste~q\ <= NOT \tff4|teste~q\;
\tff3|ALT_INV_teste~q\ <= NOT \tff3|teste~q\;
\tff2|ALT_INV_teste~q\ <= NOT \tff2|teste~q\;
\tff1|ALT_INV_teste~q\ <= NOT \tff1|teste~q\;

-- Location: IOOBUF_X89_Y37_N5
\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff1|teste~q\,
	devoe => ww_devoe,
	o => ww_Q0);

-- Location: IOOBUF_X89_Y37_N39
\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff2|teste~q\,
	devoe => ww_devoe,
	o => ww_Q1);

-- Location: IOOBUF_X89_Y37_N56
\Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff3|teste~q\,
	devoe => ww_devoe,
	o => ww_Q2);

-- Location: IOOBUF_X89_Y35_N45
\Q3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff4|teste~q\,
	devoe => ww_devoe,
	o => ww_Q3);

-- Location: IOOBUF_X89_Y37_N22
\Q4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff5|teste~q\,
	devoe => ww_devoe,
	o => ww_Q4);

-- Location: IOOBUF_X89_Y35_N79
\Q5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff6|teste~q\,
	devoe => ww_devoe,
	o => ww_Q5);

-- Location: IOOBUF_X89_Y38_N22
\Q6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff7|teste~q\,
	devoe => ww_devoe,
	o => ww_Q6);

-- Location: IOOBUF_X89_Y36_N5
\Q7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tff8|teste~q\,
	devoe => ww_devoe,
	o => ww_Q7);

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N4
\Enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\Clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: LABCELL_X88_Y37_N21
\tff1|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff1|teste~0_combout\ = ( \tff1|teste~q\ & ( !\Clear~input_o\ & ( !\Enable~input_o\ ) ) ) # ( !\tff1|teste~q\ & ( !\Clear~input_o\ & ( \Enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Enable~input_o\,
	datae => \tff1|ALT_INV_teste~q\,
	dataf => \ALT_INV_Clear~input_o\,
	combout => \tff1|teste~0_combout\);

-- Location: FF_X88_Y37_N23
\tff1|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff1|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff1|teste~q\);

-- Location: LABCELL_X88_Y37_N6
\tff2|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff2|teste~0_combout\ = ( \tff2|teste~q\ & ( !\Clear~input_o\ & ( (!\Enable~input_o\) # (!\tff1|teste~q\) ) ) ) # ( !\tff2|teste~q\ & ( !\Clear~input_o\ & ( (\Enable~input_o\ & \tff1|teste~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Enable~input_o\,
	datac => \tff1|ALT_INV_teste~q\,
	datae => \tff2|ALT_INV_teste~q\,
	dataf => \ALT_INV_Clear~input_o\,
	combout => \tff2|teste~0_combout\);

-- Location: FF_X88_Y37_N8
\tff2|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff2|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff2|teste~q\);

-- Location: LABCELL_X88_Y37_N36
\tff3|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff3|teste~0_combout\ = ( \tff3|teste~q\ & ( \tff2|teste~q\ & ( (!\Clear~input_o\ & ((!\Enable~input_o\) # (!\tff1|teste~q\))) ) ) ) # ( !\tff3|teste~q\ & ( \tff2|teste~q\ & ( (!\Clear~input_o\ & (\Enable~input_o\ & \tff1|teste~q\)) ) ) ) # ( 
-- \tff3|teste~q\ & ( !\tff2|teste~q\ & ( !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000010000000101010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Enable~input_o\,
	datac => \tff1|ALT_INV_teste~q\,
	datae => \tff3|ALT_INV_teste~q\,
	dataf => \tff2|ALT_INV_teste~q\,
	combout => \tff3|teste~0_combout\);

-- Location: FF_X88_Y37_N38
\tff3|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff3|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff3|teste~q\);

-- Location: LABCELL_X88_Y37_N30
\tff4|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff4|teste~0_combout\ = ( \tff4|teste~q\ & ( \tff3|teste~q\ & ( (!\Clear~input_o\ & ((!\Enable~input_o\) # ((!\tff1|teste~q\) # (!\tff2|teste~q\)))) ) ) ) # ( !\tff4|teste~q\ & ( \tff3|teste~q\ & ( (!\Clear~input_o\ & (\Enable~input_o\ & (\tff1|teste~q\ 
-- & \tff2|teste~q\))) ) ) ) # ( \tff4|teste~q\ & ( !\tff3|teste~q\ & ( !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \ALT_INV_Enable~input_o\,
	datac => \tff1|ALT_INV_teste~q\,
	datad => \tff2|ALT_INV_teste~q\,
	datae => \tff4|ALT_INV_teste~q\,
	dataf => \tff3|ALT_INV_teste~q\,
	combout => \tff4|teste~0_combout\);

-- Location: FF_X88_Y37_N32
\tff4|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff4|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff4|teste~q\);

-- Location: LABCELL_X88_Y37_N42
in_tff5 : cyclonev_lcell_comb
-- Equation(s):
-- \in_tff5~combout\ = ( \tff1|teste~q\ & ( \tff2|teste~q\ & ( (\Enable~input_o\ & (\tff3|teste~q\ & \tff4|teste~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Enable~input_o\,
	datac => \tff3|ALT_INV_teste~q\,
	datad => \tff4|ALT_INV_teste~q\,
	datae => \tff1|ALT_INV_teste~q\,
	dataf => \tff2|ALT_INV_teste~q\,
	combout => \in_tff5~combout\);

-- Location: LABCELL_X88_Y37_N12
\tff5|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff5|teste~0_combout\ = ( !\tff5|teste~q\ & ( \in_tff5~combout\ & ( !\Clear~input_o\ ) ) ) # ( \tff5|teste~q\ & ( !\in_tff5~combout\ & ( !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clear~input_o\,
	datae => \tff5|ALT_INV_teste~q\,
	dataf => \ALT_INV_in_tff5~combout\,
	combout => \tff5|teste~0_combout\);

-- Location: FF_X88_Y37_N14
\tff5|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff5|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff5|teste~q\);

-- Location: LABCELL_X88_Y37_N51
\tff6|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff6|teste~0_combout\ = ( \tff6|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & !\tff5|teste~q\) ) ) ) # ( !\tff6|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & \tff5|teste~q\) ) ) ) # ( \tff6|teste~q\ & ( !\in_tff5~combout\ & ( 
-- !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datac => \tff5|ALT_INV_teste~q\,
	datae => \tff6|ALT_INV_teste~q\,
	dataf => \ALT_INV_in_tff5~combout\,
	combout => \tff6|teste~0_combout\);

-- Location: FF_X88_Y37_N53
\tff6|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff6|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff6|teste~q\);

-- Location: LABCELL_X88_Y37_N57
\tff7|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff7|teste~0_combout\ = ( \tff7|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & ((!\tff5|teste~q\) # (!\tff6|teste~q\))) ) ) ) # ( !\tff7|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & (\tff5|teste~q\ & \tff6|teste~q\)) ) ) ) # ( 
-- \tff7|teste~q\ & ( !\in_tff5~combout\ & ( !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000010101010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datac => \tff5|ALT_INV_teste~q\,
	datad => \tff6|ALT_INV_teste~q\,
	datae => \tff7|ALT_INV_teste~q\,
	dataf => \ALT_INV_in_tff5~combout\,
	combout => \tff7|teste~0_combout\);

-- Location: FF_X88_Y37_N59
\tff7|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff7|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff7|teste~q\);

-- Location: LABCELL_X88_Y37_N24
\tff8|teste~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tff8|teste~0_combout\ = ( \tff8|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & ((!\tff7|teste~q\) # ((!\tff6|teste~q\) # (!\tff5|teste~q\)))) ) ) ) # ( !\tff8|teste~q\ & ( \in_tff5~combout\ & ( (!\Clear~input_o\ & (\tff7|teste~q\ & 
-- (\tff6|teste~q\ & \tff5|teste~q\))) ) ) ) # ( \tff8|teste~q\ & ( !\in_tff5~combout\ & ( !\Clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clear~input_o\,
	datab => \tff7|ALT_INV_teste~q\,
	datac => \tff6|ALT_INV_teste~q\,
	datad => \tff5|ALT_INV_teste~q\,
	datae => \tff8|ALT_INV_teste~q\,
	dataf => \ALT_INV_in_tff5~combout\,
	combout => \tff8|teste~0_combout\);

-- Location: FF_X88_Y37_N25
\tff8|teste\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \tff8|teste~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff8|teste~q\);

-- Location: LABCELL_X4_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


