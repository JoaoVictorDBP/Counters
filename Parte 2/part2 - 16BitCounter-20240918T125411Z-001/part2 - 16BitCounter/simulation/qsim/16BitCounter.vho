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

-- DATE "09/15/2024 13:47:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	o16BitCounter IS
    PORT (
	Enable : IN std_logic;
	Clk : IN std_logic;
	Clear : IN std_logic;
	bin : OUT std_logic_vector(15 DOWNTO 0);
	HEX00 : OUT std_logic;
	HEX01 : OUT std_logic;
	HEX03 : OUT std_logic;
	HEX04 : OUT std_logic;
	HEX05 : OUT std_logic;
	HEX06 : OUT std_logic;
	HEX10 : OUT std_logic;
	HEX11 : OUT std_logic;
	HEX12 : OUT std_logic;
	HEX13 : OUT std_logic;
	HEX14 : OUT std_logic;
	HEX15 : OUT std_logic;
	HEX16 : OUT std_logic;
	HEX20 : OUT std_logic;
	HEX21 : OUT std_logic;
	HEX22 : OUT std_logic;
	HEX23 : OUT std_logic;
	HEX24 : OUT std_logic;
	HEX25 : OUT std_logic;
	HEX26 : OUT std_logic;
	HEX30 : OUT std_logic;
	HEX31 : OUT std_logic;
	HEX32 : OUT std_logic;
	HEX33 : OUT std_logic;
	HEX34 : OUT std_logic;
	HEX35 : OUT std_logic;
	HEX36 : OUT std_logic
	);
END o16BitCounter;

-- Design Ports Information
-- bin[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[7]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[10]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[11]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[12]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[15]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX00	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX01	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX03	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX04	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX05	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX06	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX10	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX11	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX12	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX13	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX14	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX15	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX16	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX20	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX21	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX22	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX23	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX24	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX25	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX26	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX30	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX31	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX32	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX33	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX34	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX35	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX36	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF o16BitCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_bin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX00 : std_logic;
SIGNAL ww_HEX01 : std_logic;
SIGNAL ww_HEX03 : std_logic;
SIGNAL ww_HEX04 : std_logic;
SIGNAL ww_HEX05 : std_logic;
SIGNAL ww_HEX06 : std_logic;
SIGNAL ww_HEX10 : std_logic;
SIGNAL ww_HEX11 : std_logic;
SIGNAL ww_HEX12 : std_logic;
SIGNAL ww_HEX13 : std_logic;
SIGNAL ww_HEX14 : std_logic;
SIGNAL ww_HEX15 : std_logic;
SIGNAL ww_HEX16 : std_logic;
SIGNAL ww_HEX20 : std_logic;
SIGNAL ww_HEX21 : std_logic;
SIGNAL ww_HEX22 : std_logic;
SIGNAL ww_HEX23 : std_logic;
SIGNAL ww_HEX24 : std_logic;
SIGNAL ww_HEX25 : std_logic;
SIGNAL ww_HEX26 : std_logic;
SIGNAL ww_HEX30 : std_logic;
SIGNAL ww_HEX31 : std_logic;
SIGNAL ww_HEX32 : std_logic;
SIGNAL ww_HEX33 : std_logic;
SIGNAL ww_HEX34 : std_logic;
SIGNAL ww_HEX35 : std_logic;
SIGNAL ww_HEX36 : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin[0]~output_o\ : std_logic;
SIGNAL \bin[1]~output_o\ : std_logic;
SIGNAL \bin[2]~output_o\ : std_logic;
SIGNAL \bin[3]~output_o\ : std_logic;
SIGNAL \bin[4]~output_o\ : std_logic;
SIGNAL \bin[5]~output_o\ : std_logic;
SIGNAL \bin[6]~output_o\ : std_logic;
SIGNAL \bin[7]~output_o\ : std_logic;
SIGNAL \bin[8]~output_o\ : std_logic;
SIGNAL \bin[9]~output_o\ : std_logic;
SIGNAL \bin[10]~output_o\ : std_logic;
SIGNAL \bin[11]~output_o\ : std_logic;
SIGNAL \bin[12]~output_o\ : std_logic;
SIGNAL \bin[13]~output_o\ : std_logic;
SIGNAL \bin[14]~output_o\ : std_logic;
SIGNAL \bin[15]~output_o\ : std_logic;
SIGNAL \HEX00~output_o\ : std_logic;
SIGNAL \HEX01~output_o\ : std_logic;
SIGNAL \HEX03~output_o\ : std_logic;
SIGNAL \HEX04~output_o\ : std_logic;
SIGNAL \HEX05~output_o\ : std_logic;
SIGNAL \HEX06~output_o\ : std_logic;
SIGNAL \HEX10~output_o\ : std_logic;
SIGNAL \HEX11~output_o\ : std_logic;
SIGNAL \HEX12~output_o\ : std_logic;
SIGNAL \HEX13~output_o\ : std_logic;
SIGNAL \HEX14~output_o\ : std_logic;
SIGNAL \HEX15~output_o\ : std_logic;
SIGNAL \HEX16~output_o\ : std_logic;
SIGNAL \HEX20~output_o\ : std_logic;
SIGNAL \HEX21~output_o\ : std_logic;
SIGNAL \HEX22~output_o\ : std_logic;
SIGNAL \HEX23~output_o\ : std_logic;
SIGNAL \HEX24~output_o\ : std_logic;
SIGNAL \HEX25~output_o\ : std_logic;
SIGNAL \HEX26~output_o\ : std_logic;
SIGNAL \HEX30~output_o\ : std_logic;
SIGNAL \HEX31~output_o\ : std_logic;
SIGNAL \HEX32~output_o\ : std_logic;
SIGNAL \HEX33~output_o\ : std_logic;
SIGNAL \HEX34~output_o\ : std_logic;
SIGNAL \HEX35~output_o\ : std_logic;
SIGNAL \HEX36~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q[0]~16_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Q[0]~18_combout\ : std_logic;
SIGNAL \Q[0]~17\ : std_logic;
SIGNAL \Q[1]~19_combout\ : std_logic;
SIGNAL \Q[1]~20\ : std_logic;
SIGNAL \Q[2]~21_combout\ : std_logic;
SIGNAL \Q[2]~22\ : std_logic;
SIGNAL \Q[3]~23_combout\ : std_logic;
SIGNAL \Q[3]~24\ : std_logic;
SIGNAL \Q[4]~25_combout\ : std_logic;
SIGNAL \Q[4]~26\ : std_logic;
SIGNAL \Q[5]~27_combout\ : std_logic;
SIGNAL \Q[5]~28\ : std_logic;
SIGNAL \Q[6]~29_combout\ : std_logic;
SIGNAL \Q[6]~30\ : std_logic;
SIGNAL \Q[7]~31_combout\ : std_logic;
SIGNAL \Q[7]~32\ : std_logic;
SIGNAL \Q[8]~33_combout\ : std_logic;
SIGNAL \Q[8]~34\ : std_logic;
SIGNAL \Q[9]~35_combout\ : std_logic;
SIGNAL \Q[9]~36\ : std_logic;
SIGNAL \Q[10]~37_combout\ : std_logic;
SIGNAL \Q[10]~38\ : std_logic;
SIGNAL \Q[11]~39_combout\ : std_logic;
SIGNAL \Q[11]~40\ : std_logic;
SIGNAL \Q[12]~41_combout\ : std_logic;
SIGNAL \Q[12]~42\ : std_logic;
SIGNAL \Q[13]~43_combout\ : std_logic;
SIGNAL \Q[13]~44\ : std_logic;
SIGNAL \Q[14]~45_combout\ : std_logic;
SIGNAL \Q[14]~46\ : std_logic;
SIGNAL \Q[15]~47_combout\ : std_logic;
SIGNAL Q : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Enable <= Enable;
ww_Clk <= Clk;
ww_Clear <= Clear;
bin <= ww_bin;
HEX00 <= ww_HEX00;
HEX01 <= ww_HEX01;
HEX03 <= ww_HEX03;
HEX04 <= ww_HEX04;
HEX05 <= ww_HEX05;
HEX06 <= ww_HEX06;
HEX10 <= ww_HEX10;
HEX11 <= ww_HEX11;
HEX12 <= ww_HEX12;
HEX13 <= ww_HEX13;
HEX14 <= ww_HEX14;
HEX15 <= ww_HEX15;
HEX16 <= ww_HEX16;
HEX20 <= ww_HEX20;
HEX21 <= ww_HEX21;
HEX22 <= ww_HEX22;
HEX23 <= ww_HEX23;
HEX24 <= ww_HEX24;
HEX25 <= ww_HEX25;
HEX26 <= ww_HEX26;
HEX30 <= ww_HEX30;
HEX31 <= ww_HEX31;
HEX32 <= ww_HEX32;
HEX33 <= ww_HEX33;
HEX34 <= ww_HEX34;
HEX35 <= ww_HEX35;
HEX36 <= ww_HEX36;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y67_N23
\bin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => \bin[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\bin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => \bin[1]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\bin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => \bin[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\bin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => \bin[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\bin[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(4),
	devoe => ww_devoe,
	o => \bin[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\bin[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(5),
	devoe => ww_devoe,
	o => \bin[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\bin[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(6),
	devoe => ww_devoe,
	o => \bin[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\bin[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(7),
	devoe => ww_devoe,
	o => \bin[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\bin[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(8),
	devoe => ww_devoe,
	o => \bin[8]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\bin[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(9),
	devoe => ww_devoe,
	o => \bin[9]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\bin[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(10),
	devoe => ww_devoe,
	o => \bin[10]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\bin[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(11),
	devoe => ww_devoe,
	o => \bin[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\bin[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(12),
	devoe => ww_devoe,
	o => \bin[12]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\bin[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(13),
	devoe => ww_devoe,
	o => \bin[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\bin[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(14),
	devoe => ww_devoe,
	o => \bin[14]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\bin[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(15),
	devoe => ww_devoe,
	o => \bin[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX00~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX00~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\HEX01~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX01~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\HEX03~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX03~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\HEX04~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX04~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\HEX05~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX05~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\HEX06~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX06~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\HEX10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX10~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\HEX11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX11~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\HEX12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX12~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\HEX13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX13~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\HEX14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX14~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\HEX15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX15~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\HEX16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX16~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX20~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX20~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\HEX21~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX21~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\HEX22~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX22~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\HEX23~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX23~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\HEX24~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX24~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\HEX25~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX25~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\HEX26~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX26~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\HEX30~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX30~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\HEX31~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX31~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\HEX32~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX32~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\HEX33~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX33~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\HEX34~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX34~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\HEX35~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX35~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\HEX36~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX36~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y69_N0
\Q[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~16_combout\ = Q(0) $ (VCC)
-- \Q[0]~17\ = CARRY(Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datad => VCC,
	combout => \Q[0]~16_combout\,
	cout => \Q[0]~17\);

-- Location: IOIBUF_X0_Y68_N15
\Clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: LCCOMB_X1_Y68_N0
\Q[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~18_combout\ = (\Enable~input_o\) # (\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~input_o\,
	datad => \Clear~input_o\,
	combout => \Q[0]~18_combout\);

-- Location: FF_X1_Y69_N1
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[0]~16_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LCCOMB_X1_Y69_N2
\Q[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1]~19_combout\ = (Q(1) & (!\Q[0]~17\)) # (!Q(1) & ((\Q[0]~17\) # (GND)))
-- \Q[1]~20\ = CARRY((!\Q[0]~17\) # (!Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datad => VCC,
	cin => \Q[0]~17\,
	combout => \Q[1]~19_combout\,
	cout => \Q[1]~20\);

-- Location: FF_X1_Y69_N3
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[1]~19_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LCCOMB_X1_Y69_N4
\Q[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2]~21_combout\ = (Q(2) & (\Q[1]~20\ $ (GND))) # (!Q(2) & (!\Q[1]~20\ & VCC))
-- \Q[2]~22\ = CARRY((Q(2) & !\Q[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datad => VCC,
	cin => \Q[1]~20\,
	combout => \Q[2]~21_combout\,
	cout => \Q[2]~22\);

-- Location: FF_X1_Y69_N5
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[2]~21_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LCCOMB_X1_Y69_N6
\Q[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3]~23_combout\ = (Q(3) & (!\Q[2]~22\)) # (!Q(3) & ((\Q[2]~22\) # (GND)))
-- \Q[3]~24\ = CARRY((!\Q[2]~22\) # (!Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datad => VCC,
	cin => \Q[2]~22\,
	combout => \Q[3]~23_combout\,
	cout => \Q[3]~24\);

-- Location: FF_X1_Y69_N7
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[3]~23_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LCCOMB_X1_Y69_N8
\Q[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[4]~25_combout\ = (Q(4) & (\Q[3]~24\ $ (GND))) # (!Q(4) & (!\Q[3]~24\ & VCC))
-- \Q[4]~26\ = CARRY((Q(4) & !\Q[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datad => VCC,
	cin => \Q[3]~24\,
	combout => \Q[4]~25_combout\,
	cout => \Q[4]~26\);

-- Location: FF_X1_Y69_N9
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[4]~25_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: LCCOMB_X1_Y69_N10
\Q[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[5]~27_combout\ = (Q(5) & (!\Q[4]~26\)) # (!Q(5) & ((\Q[4]~26\) # (GND)))
-- \Q[5]~28\ = CARRY((!\Q[4]~26\) # (!Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datad => VCC,
	cin => \Q[4]~26\,
	combout => \Q[5]~27_combout\,
	cout => \Q[5]~28\);

-- Location: FF_X1_Y69_N11
\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[5]~27_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

-- Location: LCCOMB_X1_Y69_N12
\Q[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[6]~29_combout\ = (Q(6) & (\Q[5]~28\ $ (GND))) # (!Q(6) & (!\Q[5]~28\ & VCC))
-- \Q[6]~30\ = CARRY((Q(6) & !\Q[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(6),
	datad => VCC,
	cin => \Q[5]~28\,
	combout => \Q[6]~29_combout\,
	cout => \Q[6]~30\);

-- Location: FF_X1_Y69_N13
\Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[6]~29_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(6));

-- Location: LCCOMB_X1_Y69_N14
\Q[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[7]~31_combout\ = (Q(7) & (!\Q[6]~30\)) # (!Q(7) & ((\Q[6]~30\) # (GND)))
-- \Q[7]~32\ = CARRY((!\Q[6]~30\) # (!Q(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(7),
	datad => VCC,
	cin => \Q[6]~30\,
	combout => \Q[7]~31_combout\,
	cout => \Q[7]~32\);

-- Location: FF_X1_Y69_N15
\Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[7]~31_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(7));

-- Location: LCCOMB_X1_Y69_N16
\Q[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[8]~33_combout\ = (Q(8) & (\Q[7]~32\ $ (GND))) # (!Q(8) & (!\Q[7]~32\ & VCC))
-- \Q[8]~34\ = CARRY((Q(8) & !\Q[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(8),
	datad => VCC,
	cin => \Q[7]~32\,
	combout => \Q[8]~33_combout\,
	cout => \Q[8]~34\);

-- Location: FF_X1_Y69_N17
\Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[8]~33_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(8));

-- Location: LCCOMB_X1_Y69_N18
\Q[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[9]~35_combout\ = (Q(9) & (!\Q[8]~34\)) # (!Q(9) & ((\Q[8]~34\) # (GND)))
-- \Q[9]~36\ = CARRY((!\Q[8]~34\) # (!Q(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(9),
	datad => VCC,
	cin => \Q[8]~34\,
	combout => \Q[9]~35_combout\,
	cout => \Q[9]~36\);

-- Location: FF_X1_Y69_N19
\Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[9]~35_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(9));

-- Location: LCCOMB_X1_Y69_N20
\Q[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[10]~37_combout\ = (Q(10) & (\Q[9]~36\ $ (GND))) # (!Q(10) & (!\Q[9]~36\ & VCC))
-- \Q[10]~38\ = CARRY((Q(10) & !\Q[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(10),
	datad => VCC,
	cin => \Q[9]~36\,
	combout => \Q[10]~37_combout\,
	cout => \Q[10]~38\);

-- Location: FF_X1_Y69_N21
\Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[10]~37_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(10));

-- Location: LCCOMB_X1_Y69_N22
\Q[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[11]~39_combout\ = (Q(11) & (!\Q[10]~38\)) # (!Q(11) & ((\Q[10]~38\) # (GND)))
-- \Q[11]~40\ = CARRY((!\Q[10]~38\) # (!Q(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(11),
	datad => VCC,
	cin => \Q[10]~38\,
	combout => \Q[11]~39_combout\,
	cout => \Q[11]~40\);

-- Location: FF_X1_Y69_N23
\Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[11]~39_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(11));

-- Location: LCCOMB_X1_Y69_N24
\Q[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[12]~41_combout\ = (Q(12) & (\Q[11]~40\ $ (GND))) # (!Q(12) & (!\Q[11]~40\ & VCC))
-- \Q[12]~42\ = CARRY((Q(12) & !\Q[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(12),
	datad => VCC,
	cin => \Q[11]~40\,
	combout => \Q[12]~41_combout\,
	cout => \Q[12]~42\);

-- Location: FF_X1_Y69_N25
\Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[12]~41_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(12));

-- Location: LCCOMB_X1_Y69_N26
\Q[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[13]~43_combout\ = (Q(13) & (!\Q[12]~42\)) # (!Q(13) & ((\Q[12]~42\) # (GND)))
-- \Q[13]~44\ = CARRY((!\Q[12]~42\) # (!Q(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(13),
	datad => VCC,
	cin => \Q[12]~42\,
	combout => \Q[13]~43_combout\,
	cout => \Q[13]~44\);

-- Location: FF_X1_Y69_N27
\Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[13]~43_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(13));

-- Location: LCCOMB_X1_Y69_N28
\Q[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[14]~45_combout\ = (Q(14) & (\Q[13]~44\ $ (GND))) # (!Q(14) & (!\Q[13]~44\ & VCC))
-- \Q[14]~46\ = CARRY((Q(14) & !\Q[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q(14),
	datad => VCC,
	cin => \Q[13]~44\,
	combout => \Q[14]~45_combout\,
	cout => \Q[14]~46\);

-- Location: FF_X1_Y69_N29
\Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[14]~45_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(14));

-- Location: LCCOMB_X1_Y69_N30
\Q[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[15]~47_combout\ = Q(15) $ (\Q[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(15),
	cin => \Q[14]~46\,
	combout => \Q[15]~47_combout\);

-- Location: FF_X1_Y69_N31
\Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[15]~47_combout\,
	sclr => \Clear~input_o\,
	ena => \Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(15));

ww_bin(0) <= \bin[0]~output_o\;

ww_bin(1) <= \bin[1]~output_o\;

ww_bin(2) <= \bin[2]~output_o\;

ww_bin(3) <= \bin[3]~output_o\;

ww_bin(4) <= \bin[4]~output_o\;

ww_bin(5) <= \bin[5]~output_o\;

ww_bin(6) <= \bin[6]~output_o\;

ww_bin(7) <= \bin[7]~output_o\;

ww_bin(8) <= \bin[8]~output_o\;

ww_bin(9) <= \bin[9]~output_o\;

ww_bin(10) <= \bin[10]~output_o\;

ww_bin(11) <= \bin[11]~output_o\;

ww_bin(12) <= \bin[12]~output_o\;

ww_bin(13) <= \bin[13]~output_o\;

ww_bin(14) <= \bin[14]~output_o\;

ww_bin(15) <= \bin[15]~output_o\;

ww_HEX00 <= \HEX00~output_o\;

ww_HEX01 <= \HEX01~output_o\;

ww_HEX03 <= \HEX03~output_o\;

ww_HEX04 <= \HEX04~output_o\;

ww_HEX05 <= \HEX05~output_o\;

ww_HEX06 <= \HEX06~output_o\;

ww_HEX10 <= \HEX10~output_o\;

ww_HEX11 <= \HEX11~output_o\;

ww_HEX12 <= \HEX12~output_o\;

ww_HEX13 <= \HEX13~output_o\;

ww_HEX14 <= \HEX14~output_o\;

ww_HEX15 <= \HEX15~output_o\;

ww_HEX16 <= \HEX16~output_o\;

ww_HEX20 <= \HEX20~output_o\;

ww_HEX21 <= \HEX21~output_o\;

ww_HEX22 <= \HEX22~output_o\;

ww_HEX23 <= \HEX23~output_o\;

ww_HEX24 <= \HEX24~output_o\;

ww_HEX25 <= \HEX25~output_o\;

ww_HEX26 <= \HEX26~output_o\;

ww_HEX30 <= \HEX30~output_o\;

ww_HEX31 <= \HEX31~output_o\;

ww_HEX32 <= \HEX32~output_o\;

ww_HEX33 <= \HEX33~output_o\;

ww_HEX34 <= \HEX34~output_o\;

ww_HEX35 <= \HEX35~output_o\;

ww_HEX36 <= \HEX36~output_o\;
END structure;


