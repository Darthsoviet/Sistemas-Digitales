-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "06/20/2019 12:47:06"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decodificador IS
    PORT (
	entrada : IN std_logic_vector(3 DOWNTO 0);
	o : OUT std_logic_vector(6 DOWNTO 0);
	clk : IN std_logic
	);
END decodificador;

-- Design Ports Information
-- o[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[4]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decodificador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
o <= ww_o;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X89_Y20_N96
\o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_o(0));

-- Location: IOOBUF_X89_Y20_N79
\o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_o(1));

-- Location: IOOBUF_X89_Y23_N56
\o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_o(2));

-- Location: IOOBUF_X89_Y23_N22
\o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_o(3));

-- Location: IOOBUF_X89_Y23_N39
\o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_o(4));

-- Location: IOOBUF_X89_Y20_N62
\o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_o(5));

-- Location: IOOBUF_X89_Y23_N5
\o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_o(6));

-- Location: IOIBUF_X89_Y21_N21
\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \entrada[1]~input_o\ & ( ((!\entrada[0]~input_o\) # (!\entrada[2]~input_o\)) # (\entrada[3]~input_o\) ) ) # ( !\entrada[1]~input_o\ & ( (!\entrada[3]~input_o\ & ((\entrada[2]~input_o\))) # (\entrada[3]~input_o\ & 
-- ((!\entrada[2]~input_o\) # (\entrada[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011111111011111110101011011010110111111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y21_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \entrada[1]~input_o\ & ( (!\entrada[3]~input_o\ & ((!\entrada[2]~input_o\) # (\entrada[0]~input_o\))) ) ) # ( !\entrada[1]~input_o\ & ( (\entrada[0]~input_o\ & (!\entrada[2]~input_o\ $ (\entrada[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101101011110000000000001010000001011010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \entrada[1]~input_o\ & ( (!\entrada[3]~input_o\ & \entrada[0]~input_o\) ) ) # ( !\entrada[1]~input_o\ & ( (!\entrada[2]~input_o\ & ((\entrada[0]~input_o\))) # (\entrada[2]~input_o\ & (!\entrada[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001000100010001000111010001110100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y21_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \entrada[1]~input_o\ & ( (!\entrada[2]~input_o\ & (!\entrada[0]~input_o\ & \entrada[3]~input_o\)) # (\entrada[2]~input_o\ & (\entrada[0]~input_o\)) ) ) # ( !\entrada[1]~input_o\ & ( (!\entrada[2]~input_o\ & (\entrada[0]~input_o\)) # 
-- (\entrada[2]~input_o\ & (!\entrada[0]~input_o\ & !\entrada[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001010000001011010010101011010000010100000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y21_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \entrada[1]~input_o\ & ( (!\entrada[3]~input_o\ & (!\entrada[0]~input_o\ & !\entrada[2]~input_o\)) # (\entrada[3]~input_o\ & ((\entrada[2]~input_o\))) ) ) # ( !\entrada[1]~input_o\ & ( (\entrada[3]~input_o\ & (!\entrada[0]~input_o\ & 
-- \entrada[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001011000010100000100000001001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y21_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \entrada[1]~input_o\ & ( (!\entrada[0]~input_o\ & (\entrada[2]~input_o\)) # (\entrada[0]~input_o\ & ((\entrada[3]~input_o\))) ) ) # ( !\entrada[1]~input_o\ & ( (\entrada[2]~input_o\ & (!\entrada[0]~input_o\ $ (!\entrada[3]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000010100000101111100000101010100000101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \entrada[1]~input_o\ & ( (\entrada[3]~input_o\ & (\entrada[0]~input_o\ & !\entrada[2]~input_o\)) ) ) # ( !\entrada[1]~input_o\ & ( (!\entrada[3]~input_o\ & (!\entrada[0]~input_o\ $ (!\entrada[2]~input_o\))) # (\entrada[3]~input_o\ & 
-- (\entrada[0]~input_o\ & \entrada[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001000100000001000000101001001010010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[3]~input_o\,
	datab => \ALT_INV_entrada[0]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_entrada[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X46_Y29_N0
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


