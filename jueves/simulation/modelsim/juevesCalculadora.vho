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

-- DATE "06/20/2019 23:48:52"

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

ENTITY 	calculadora IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	seleccion : IN std_logic_vector(3 DOWNTO 0);
	m : IN std_logic;
	ci : IN std_logic;
	clk : IN std_logic;
	salida_alu : BUFFER std_logic_vector(6 DOWNTO 0);
	salida_a : BUFFER std_logic_vector(6 DOWNTO 0);
	salida_b : BUFFER std_logic_vector(6 DOWNTO 0);
	salida_seleccion : BUFFER std_logic_vector(6 DOWNTO 0);
	co : BUFFER std_logic;
	o : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[5]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_alu[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_a[6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_b[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_seleccion[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion[2]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion[3]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion[1]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion[0]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seleccion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m : std_logic;
SIGNAL ww_ci : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_salida_alu : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida_seleccion : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL ww_o : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \o[0]~input_o\ : std_logic;
SIGNAL \o[1]~input_o\ : std_logic;
SIGNAL \o[2]~input_o\ : std_logic;
SIGNAL \o[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \m~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \conexionALU|Add19~1_sumout\ : std_logic;
SIGNAL \seleccion[0]~input_o\ : std_logic;
SIGNAL \seleccion[1]~input_o\ : std_logic;
SIGNAL \seleccion[3]~input_o\ : std_logic;
SIGNAL \seleccion[2]~input_o\ : std_logic;
SIGNAL \conexionALU|Mux3~5_combout\ : std_logic;
SIGNAL \conexionALU|Mux3~4_combout\ : std_logic;
SIGNAL \conexionALU|Mux3~6_combout\ : std_logic;
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \conexionALU|Add16~1_sumout\ : std_logic;
SIGNAL \conexionALU|Add8~1_sumout\ : std_logic;
SIGNAL \conexionALU|Mux3~2_combout\ : std_logic;
SIGNAL \conexionALU|Add14~1_sumout\ : std_logic;
SIGNAL \conexionALU|Add10~1_sumout\ : std_logic;
SIGNAL \conexionALU|Mux3~3_combout\ : std_logic;
SIGNAL \conexionALU|Mux3~0_combout\ : std_logic;
SIGNAL \conexionALU|Add11~1_sumout\ : std_logic;
SIGNAL \conexionALU|Add6~1_sumout\ : std_logic;
SIGNAL \conexionALU|Mux3~1_combout\ : std_logic;
SIGNAL \conexionALU|Mux11~0_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~0_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~3_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~4_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~7_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~5_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~6_combout\ : std_logic;
SIGNAL \conexionALU|Mux7~4_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~1_combout\ : std_logic;
SIGNAL \conexionALU|Mux8~2_combout\ : std_logic;
SIGNAL \conexionALU|Mux7~0_combout\ : std_logic;
SIGNAL \conexionALU|o[0]~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \conexionALU|o[3]~2_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \conexionALU|o[1]~18_combout\ : std_logic;
SIGNAL \conexionALU|Add11~2\ : std_logic;
SIGNAL \conexionALU|Add11~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add12~0_combout\ : std_logic;
SIGNAL \conexionALU|Add6~2\ : std_logic;
SIGNAL \conexionALU|Add6~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add7~0_combout\ : std_logic;
SIGNAL \conexionALU|Add4~0_combout\ : std_logic;
SIGNAL \conexionALU|Add16~2\ : std_logic;
SIGNAL \conexionALU|Add16~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add8~2\ : std_logic;
SIGNAL \conexionALU|Add8~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add17~14_cout\ : std_logic;
SIGNAL \conexionALU|Add17~1_sumout\ : std_logic;
SIGNAL \conexionALU|o[1]~4_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~5_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~7_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~6_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~8_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~16_combout\ : std_logic;
SIGNAL \conexionALU|Add19~2\ : std_logic;
SIGNAL \conexionALU|Add19~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add20~14_cout\ : std_logic;
SIGNAL \conexionALU|Add20~1_sumout\ : std_logic;
SIGNAL \conexionALU|Add21~0_combout\ : std_logic;
SIGNAL \conexionALU|Add14~2\ : std_logic;
SIGNAL \conexionALU|Add14~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add15~0_combout\ : std_logic;
SIGNAL \conexionALU|Add10~2\ : std_logic;
SIGNAL \conexionALU|Add10~3\ : std_logic;
SIGNAL \conexionALU|Add10~5_sumout\ : std_logic;
SIGNAL \conexionALU|o[1]~57_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~14_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~13_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~11_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~12_combout\ : std_logic;
SIGNAL \conexionALU|Add2~0_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~9_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~10_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~15_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~17_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~20_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~19_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~21_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~1_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~3_combout\ : std_logic;
SIGNAL \conexionALU|o[1]~22_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \conexionALU|Add16~6\ : std_logic;
SIGNAL \conexionALU|Add16~9_sumout\ : std_logic;
SIGNAL \conexionALU|o[2]~27_combout\ : std_logic;
SIGNAL \conexionALU|Add10~6\ : std_logic;
SIGNAL \conexionALU|Add10~7\ : std_logic;
SIGNAL \conexionALU|Add10~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add19~6\ : std_logic;
SIGNAL \conexionALU|Add19~9_sumout\ : std_logic;
SIGNAL \conexionALU|o[2]~49_combout\ : std_logic;
SIGNAL \conexionALU|Add6~6\ : std_logic;
SIGNAL \conexionALU|Add6~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add11~6\ : std_logic;
SIGNAL \conexionALU|Add11~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add17~2\ : std_logic;
SIGNAL \conexionALU|Add17~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add3~0_combout\ : std_logic;
SIGNAL \conexionALU|Add14~6\ : std_logic;
SIGNAL \conexionALU|Add14~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add20~2\ : std_logic;
SIGNAL \conexionALU|Add20~5_sumout\ : std_logic;
SIGNAL \conexionALU|Add2~1_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~25_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~26_combout\ : std_logic;
SIGNAL \conexionALU|Add8~6\ : std_logic;
SIGNAL \conexionALU|Add8~9_sumout\ : std_logic;
SIGNAL \conexionALU|o[2]~28_combout\ : std_logic;
SIGNAL \conexionALU|Add21~1_combout\ : std_logic;
SIGNAL \conexionALU|Add5~0_combout\ : std_logic;
SIGNAL \conexionALU|Add15~1_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~24_combout\ : std_logic;
SIGNAL \conexionALU|Add12~1_combout\ : std_logic;
SIGNAL \conexionALU|Add4~1_combout\ : std_logic;
SIGNAL \conexionALU|Add7~1_combout\ : std_logic;
SIGNAL \conexionALU|Add18~0_combout\ : std_logic;
SIGNAL \conexionALU|Add9~0_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~53_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~23_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~29_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~31_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~30_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~32_combout\ : std_logic;
SIGNAL \conexionALU|o[2]~33_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \conexionALU|o[3]~41_combout\ : std_logic;
SIGNAL \conexionALU|Add16~10\ : std_logic;
SIGNAL \conexionALU|Add16~13_sumout\ : std_logic;
SIGNAL \conexionALU|Add11~10\ : std_logic;
SIGNAL \conexionALU|Add11~13_sumout\ : std_logic;
SIGNAL \conexionALU|Add17~6\ : std_logic;
SIGNAL \conexionALU|Add17~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add19~10\ : std_logic;
SIGNAL \conexionALU|Add19~13_sumout\ : std_logic;
SIGNAL \conexionALU|Add20~6\ : std_logic;
SIGNAL \conexionALU|Add20~9_sumout\ : std_logic;
SIGNAL \conexionALU|Add14~10\ : std_logic;
SIGNAL \conexionALU|Add14~13_sumout\ : std_logic;
SIGNAL \conexionALU|Add2~2_combout\ : std_logic;
SIGNAL \conexionALU|Add2~3_combout\ : std_logic;
SIGNAL \conexionALU|Add3~1_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~37_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~38_combout\ : std_logic;
SIGNAL \conexionALU|Add0~0_combout\ : std_logic;
SIGNAL \conexionALU|Add1~0_combout\ : std_logic;
SIGNAL \conexionALU|Add10~10\ : std_logic;
SIGNAL \conexionALU|Add10~11\ : std_logic;
SIGNAL \conexionALU|Add10~13_sumout\ : std_logic;
SIGNAL \conexionALU|o[3]~45_combout\ : std_logic;
SIGNAL \conexionALU|Add6~10\ : std_logic;
SIGNAL \conexionALU|Add6~13_sumout\ : std_logic;
SIGNAL \conexionALU|Add8~10\ : std_logic;
SIGNAL \conexionALU|Add8~13_sumout\ : std_logic;
SIGNAL \conexionALU|o[3]~39_combout\ : std_logic;
SIGNAL \conexionALU|Add21~2_combout\ : std_logic;
SIGNAL \conexionALU|Add5~1_combout\ : std_logic;
SIGNAL \conexionALU|Add15~2_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~36_combout\ : std_logic;
SIGNAL \conexionALU|Add4~2_combout\ : std_logic;
SIGNAL \conexionALU|Add7~2_combout\ : std_logic;
SIGNAL \conexionALU|Add9~1_combout\ : std_logic;
SIGNAL \conexionALU|Add18~1_combout\ : std_logic;
SIGNAL \conexionALU|Add13~0_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~34_combout\ : std_logic;
SIGNAL \conexionALU|Add12~2_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~35_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~40_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~42_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~43_combout\ : std_logic;
SIGNAL \conexionALU|o[3]~44_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux6~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux5~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux4~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux3~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux2~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux1~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|Mux0~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux6~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux5~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux4~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux3~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux2~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux1~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|Mux0~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux6~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux5~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux4~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux3~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux2~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux1~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|Mux0~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux6~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux5~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux4~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux3~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux2~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux1~0_combout\ : std_logic;
SIGNAL \deco_seleccion|Mux0~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add20~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add19~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add17~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add16~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add20~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add19~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add17~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add16~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add16~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add19~1_sumout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ci~input_o\ : std_logic;
SIGNAL \ALT_INV_seleccion[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_seleccion[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_seleccion[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_seleccion[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_m~input_o\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~7_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~6_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~5_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \deco_seleccion|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \deco_entrada_b|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \deco_entrada_a|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \deco_salida_alu|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~44_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~43_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~42_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~41_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~40_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~39_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~38_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~37_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add2~3_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~36_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add21~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add15~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~35_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add12~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~34_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add9~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add18~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add7~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add4~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~33_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~32_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~31_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~30_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~29_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~28_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~27_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~26_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~25_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~24_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add21~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add15~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~23_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add12~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add4~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~22_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~21_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~20_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~19_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~18_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~17_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~16_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~15_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~14_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~13_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~12_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~11_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~10_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~9_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add21~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add15~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~8_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~7_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~6_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add12~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~5_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~4_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~3_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[0]~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[1]~57_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~53_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[2]~49_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_o[3]~45_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add20~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add19~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add17~9_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add16~13_sumout\ : std_logic;
SIGNAL \conexionALU|ALT_INV_Add6~13_sumout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_seleccion <= seleccion;
ww_m <= m;
ww_ci <= ci;
ww_clk <= clk;
salida_alu <= ww_salida_alu;
salida_a <= ww_salida_a;
salida_b <= ww_salida_b;
salida_seleccion <= ww_salida_seleccion;
co <= ww_co;
o <= ww_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\conexionALU|ALT_INV_Add20~5_sumout\ <= NOT \conexionALU|Add20~5_sumout\;
\conexionALU|ALT_INV_Add14~9_sumout\ <= NOT \conexionALU|Add14~9_sumout\;
\conexionALU|ALT_INV_Add10~9_sumout\ <= NOT \conexionALU|Add10~9_sumout\;
\conexionALU|ALT_INV_Add19~9_sumout\ <= NOT \conexionALU|Add19~9_sumout\;
\conexionALU|ALT_INV_Add11~9_sumout\ <= NOT \conexionALU|Add11~9_sumout\;
\conexionALU|ALT_INV_Add8~9_sumout\ <= NOT \conexionALU|Add8~9_sumout\;
\conexionALU|ALT_INV_Add17~5_sumout\ <= NOT \conexionALU|Add17~5_sumout\;
\conexionALU|ALT_INV_Add16~9_sumout\ <= NOT \conexionALU|Add16~9_sumout\;
\conexionALU|ALT_INV_Add6~9_sumout\ <= NOT \conexionALU|Add6~9_sumout\;
\conexionALU|ALT_INV_Add20~1_sumout\ <= NOT \conexionALU|Add20~1_sumout\;
\conexionALU|ALT_INV_Add14~5_sumout\ <= NOT \conexionALU|Add14~5_sumout\;
\conexionALU|ALT_INV_Add10~5_sumout\ <= NOT \conexionALU|Add10~5_sumout\;
\conexionALU|ALT_INV_Add19~5_sumout\ <= NOT \conexionALU|Add19~5_sumout\;
\conexionALU|ALT_INV_Add11~5_sumout\ <= NOT \conexionALU|Add11~5_sumout\;
\conexionALU|ALT_INV_Add17~1_sumout\ <= NOT \conexionALU|Add17~1_sumout\;
\conexionALU|ALT_INV_Add16~5_sumout\ <= NOT \conexionALU|Add16~5_sumout\;
\conexionALU|ALT_INV_Add8~5_sumout\ <= NOT \conexionALU|Add8~5_sumout\;
\conexionALU|ALT_INV_Add6~5_sumout\ <= NOT \conexionALU|Add6~5_sumout\;
\conexionALU|ALT_INV_Add14~1_sumout\ <= NOT \conexionALU|Add14~1_sumout\;
\conexionALU|ALT_INV_Add10~1_sumout\ <= NOT \conexionALU|Add10~1_sumout\;
\conexionALU|ALT_INV_Add8~1_sumout\ <= NOT \conexionALU|Add8~1_sumout\;
\conexionALU|ALT_INV_Add16~1_sumout\ <= NOT \conexionALU|Add16~1_sumout\;
\conexionALU|ALT_INV_Add6~1_sumout\ <= NOT \conexionALU|Add6~1_sumout\;
\conexionALU|ALT_INV_Add11~1_sumout\ <= NOT \conexionALU|Add11~1_sumout\;
\conexionALU|ALT_INV_Mux7~0_combout\ <= NOT \conexionALU|Mux7~0_combout\;
\conexionALU|ALT_INV_Add19~1_sumout\ <= NOT \conexionALU|Add19~1_sumout\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_ci~input_o\ <= NOT \ci~input_o\;
\ALT_INV_seleccion[0]~input_o\ <= NOT \seleccion[0]~input_o\;
\ALT_INV_seleccion[1]~input_o\ <= NOT \seleccion[1]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_seleccion[3]~input_o\ <= NOT \seleccion[3]~input_o\;
\ALT_INV_seleccion[2]~input_o\ <= NOT \seleccion[2]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_m~input_o\ <= NOT \m~input_o\;
\conexionALU|ALT_INV_Mux3~6_combout\ <= NOT \conexionALU|Mux3~6_combout\;
\conexionALU|ALT_INV_Mux3~5_combout\ <= NOT \conexionALU|Mux3~5_combout\;
\conexionALU|ALT_INV_Mux3~4_combout\ <= NOT \conexionALU|Mux3~4_combout\;
\conexionALU|ALT_INV_Mux8~7_combout\ <= NOT \conexionALU|Mux8~7_combout\;
\conexionALU|ALT_INV_Mux8~6_combout\ <= NOT \conexionALU|Mux8~6_combout\;
\conexionALU|ALT_INV_Mux8~5_combout\ <= NOT \conexionALU|Mux8~5_combout\;
\conexionALU|ALT_INV_Mux8~4_combout\ <= NOT \conexionALU|Mux8~4_combout\;
\conexionALU|ALT_INV_Mux8~3_combout\ <= NOT \conexionALU|Mux8~3_combout\;
\conexionALU|ALT_INV_Mux8~2_combout\ <= NOT \conexionALU|Mux8~2_combout\;
\conexionALU|ALT_INV_Mux8~1_combout\ <= NOT \conexionALU|Mux8~1_combout\;
\conexionALU|ALT_INV_Mux8~0_combout\ <= NOT \conexionALU|Mux8~0_combout\;
\deco_seleccion|ALT_INV_Mux6~0_combout\ <= NOT \deco_seleccion|Mux6~0_combout\;
\deco_entrada_b|ALT_INV_Mux6~0_combout\ <= NOT \deco_entrada_b|Mux6~0_combout\;
\deco_entrada_a|ALT_INV_Mux6~0_combout\ <= NOT \deco_entrada_a|Mux6~0_combout\;
\deco_salida_alu|ALT_INV_Mux6~0_combout\ <= NOT \deco_salida_alu|Mux6~0_combout\;
\conexionALU|ALT_INV_o[3]~44_combout\ <= NOT \conexionALU|o[3]~44_combout\;
\conexionALU|ALT_INV_o[3]~43_combout\ <= NOT \conexionALU|o[3]~43_combout\;
\conexionALU|ALT_INV_o[3]~42_combout\ <= NOT \conexionALU|o[3]~42_combout\;
\conexionALU|ALT_INV_o[3]~41_combout\ <= NOT \conexionALU|o[3]~41_combout\;
\conexionALU|ALT_INV_o[3]~40_combout\ <= NOT \conexionALU|o[3]~40_combout\;
\conexionALU|ALT_INV_o[3]~39_combout\ <= NOT \conexionALU|o[3]~39_combout\;
\conexionALU|ALT_INV_Add1~0_combout\ <= NOT \conexionALU|Add1~0_combout\;
\conexionALU|ALT_INV_Add0~0_combout\ <= NOT \conexionALU|Add0~0_combout\;
\conexionALU|ALT_INV_o[3]~38_combout\ <= NOT \conexionALU|o[3]~38_combout\;
\conexionALU|ALT_INV_o[3]~37_combout\ <= NOT \conexionALU|o[3]~37_combout\;
\conexionALU|ALT_INV_Add3~1_combout\ <= NOT \conexionALU|Add3~1_combout\;
\conexionALU|ALT_INV_Add2~3_combout\ <= NOT \conexionALU|Add2~3_combout\;
\conexionALU|ALT_INV_Add2~2_combout\ <= NOT \conexionALU|Add2~2_combout\;
\conexionALU|ALT_INV_o[3]~36_combout\ <= NOT \conexionALU|o[3]~36_combout\;
\conexionALU|ALT_INV_Add21~2_combout\ <= NOT \conexionALU|Add21~2_combout\;
\conexionALU|ALT_INV_Add15~2_combout\ <= NOT \conexionALU|Add15~2_combout\;
\conexionALU|ALT_INV_Add5~1_combout\ <= NOT \conexionALU|Add5~1_combout\;
\conexionALU|ALT_INV_o[3]~35_combout\ <= NOT \conexionALU|o[3]~35_combout\;
\conexionALU|ALT_INV_Add12~2_combout\ <= NOT \conexionALU|Add12~2_combout\;
\conexionALU|ALT_INV_o[3]~34_combout\ <= NOT \conexionALU|o[3]~34_combout\;
\conexionALU|ALT_INV_Add9~1_combout\ <= NOT \conexionALU|Add9~1_combout\;
\conexionALU|ALT_INV_Add18~1_combout\ <= NOT \conexionALU|Add18~1_combout\;
\conexionALU|ALT_INV_Add13~0_combout\ <= NOT \conexionALU|Add13~0_combout\;
\conexionALU|ALT_INV_Add7~2_combout\ <= NOT \conexionALU|Add7~2_combout\;
\conexionALU|ALT_INV_Add4~2_combout\ <= NOT \conexionALU|Add4~2_combout\;
\conexionALU|ALT_INV_o[2]~33_combout\ <= NOT \conexionALU|o[2]~33_combout\;
\conexionALU|ALT_INV_o[2]~32_combout\ <= NOT \conexionALU|o[2]~32_combout\;
\conexionALU|ALT_INV_o[2]~31_combout\ <= NOT \conexionALU|o[2]~31_combout\;
\conexionALU|ALT_INV_o[2]~30_combout\ <= NOT \conexionALU|o[2]~30_combout\;
\conexionALU|ALT_INV_o[2]~29_combout\ <= NOT \conexionALU|o[2]~29_combout\;
\conexionALU|ALT_INV_o[2]~28_combout\ <= NOT \conexionALU|o[2]~28_combout\;
\conexionALU|ALT_INV_o[2]~27_combout\ <= NOT \conexionALU|o[2]~27_combout\;
\conexionALU|ALT_INV_o[2]~26_combout\ <= NOT \conexionALU|o[2]~26_combout\;
\conexionALU|ALT_INV_o[2]~25_combout\ <= NOT \conexionALU|o[2]~25_combout\;
\conexionALU|ALT_INV_Add3~0_combout\ <= NOT \conexionALU|Add3~0_combout\;
\conexionALU|ALT_INV_Add2~1_combout\ <= NOT \conexionALU|Add2~1_combout\;
\conexionALU|ALT_INV_o[2]~24_combout\ <= NOT \conexionALU|o[2]~24_combout\;
\conexionALU|ALT_INV_Add21~1_combout\ <= NOT \conexionALU|Add21~1_combout\;
\conexionALU|ALT_INV_Add15~1_combout\ <= NOT \conexionALU|Add15~1_combout\;
\conexionALU|ALT_INV_Add5~0_combout\ <= NOT \conexionALU|Add5~0_combout\;
\conexionALU|ALT_INV_o[2]~23_combout\ <= NOT \conexionALU|o[2]~23_combout\;
\conexionALU|ALT_INV_Add12~1_combout\ <= NOT \conexionALU|Add12~1_combout\;
\conexionALU|ALT_INV_Add9~0_combout\ <= NOT \conexionALU|Add9~0_combout\;
\conexionALU|ALT_INV_Add18~0_combout\ <= NOT \conexionALU|Add18~0_combout\;
\conexionALU|ALT_INV_Add7~1_combout\ <= NOT \conexionALU|Add7~1_combout\;
\conexionALU|ALT_INV_Add4~1_combout\ <= NOT \conexionALU|Add4~1_combout\;
\conexionALU|ALT_INV_o[1]~22_combout\ <= NOT \conexionALU|o[1]~22_combout\;
\conexionALU|ALT_INV_o[1]~21_combout\ <= NOT \conexionALU|o[1]~21_combout\;
\conexionALU|ALT_INV_o[3]~20_combout\ <= NOT \conexionALU|o[3]~20_combout\;
\conexionALU|ALT_INV_o[1]~19_combout\ <= NOT \conexionALU|o[1]~19_combout\;
\conexionALU|ALT_INV_o[1]~18_combout\ <= NOT \conexionALU|o[1]~18_combout\;
\conexionALU|ALT_INV_o[1]~17_combout\ <= NOT \conexionALU|o[1]~17_combout\;
\conexionALU|ALT_INV_o[3]~16_combout\ <= NOT \conexionALU|o[3]~16_combout\;
\conexionALU|ALT_INV_o[1]~15_combout\ <= NOT \conexionALU|o[1]~15_combout\;
\conexionALU|ALT_INV_o[3]~14_combout\ <= NOT \conexionALU|o[3]~14_combout\;
\conexionALU|ALT_INV_o[3]~13_combout\ <= NOT \conexionALU|o[3]~13_combout\;
\conexionALU|ALT_INV_o[1]~12_combout\ <= NOT \conexionALU|o[1]~12_combout\;
\conexionALU|ALT_INV_o[1]~11_combout\ <= NOT \conexionALU|o[1]~11_combout\;
\conexionALU|ALT_INV_o[1]~10_combout\ <= NOT \conexionALU|o[1]~10_combout\;
\conexionALU|ALT_INV_o[1]~9_combout\ <= NOT \conexionALU|o[1]~9_combout\;
\conexionALU|ALT_INV_Add2~0_combout\ <= NOT \conexionALU|Add2~0_combout\;
\conexionALU|ALT_INV_Add21~0_combout\ <= NOT \conexionALU|Add21~0_combout\;
\conexionALU|ALT_INV_Add15~0_combout\ <= NOT \conexionALU|Add15~0_combout\;
\conexionALU|ALT_INV_o[1]~8_combout\ <= NOT \conexionALU|o[1]~8_combout\;
\conexionALU|ALT_INV_o[3]~7_combout\ <= NOT \conexionALU|o[3]~7_combout\;
\conexionALU|ALT_INV_o[3]~6_combout\ <= NOT \conexionALU|o[3]~6_combout\;
\conexionALU|ALT_INV_Add12~0_combout\ <= NOT \conexionALU|Add12~0_combout\;
\conexionALU|ALT_INV_o[1]~5_combout\ <= NOT \conexionALU|o[1]~5_combout\;
\conexionALU|ALT_INV_o[1]~4_combout\ <= NOT \conexionALU|o[1]~4_combout\;
\conexionALU|ALT_INV_Add7~0_combout\ <= NOT \conexionALU|Add7~0_combout\;
\conexionALU|ALT_INV_Add4~0_combout\ <= NOT \conexionALU|Add4~0_combout\;
\conexionALU|ALT_INV_o[3]~3_combout\ <= NOT \conexionALU|o[3]~3_combout\;
\conexionALU|ALT_INV_o[3]~2_combout\ <= NOT \conexionALU|o[3]~2_combout\;
\conexionALU|ALT_INV_o[3]~1_combout\ <= NOT \conexionALU|o[3]~1_combout\;
\conexionALU|ALT_INV_o[0]~0_combout\ <= NOT \conexionALU|o[0]~0_combout\;
\conexionALU|ALT_INV_Mux3~3_combout\ <= NOT \conexionALU|Mux3~3_combout\;
\conexionALU|ALT_INV_Mux3~2_combout\ <= NOT \conexionALU|Mux3~2_combout\;
\conexionALU|ALT_INV_Mux3~1_combout\ <= NOT \conexionALU|Mux3~1_combout\;
\conexionALU|ALT_INV_Mux3~0_combout\ <= NOT \conexionALU|Mux3~0_combout\;
\conexionALU|ALT_INV_Mux11~0_combout\ <= NOT \conexionALU|Mux11~0_combout\;
\conexionALU|ALT_INV_o[1]~57_combout\ <= NOT \conexionALU|o[1]~57_combout\;
\conexionALU|ALT_INV_o[2]~53_combout\ <= NOT \conexionALU|o[2]~53_combout\;
\conexionALU|ALT_INV_o[2]~49_combout\ <= NOT \conexionALU|o[2]~49_combout\;
\conexionALU|ALT_INV_o[3]~45_combout\ <= NOT \conexionALU|o[3]~45_combout\;
\conexionALU|ALT_INV_Mux7~4_combout\ <= NOT \conexionALU|Mux7~4_combout\;
\conexionALU|ALT_INV_Add20~9_sumout\ <= NOT \conexionALU|Add20~9_sumout\;
\conexionALU|ALT_INV_Add14~13_sumout\ <= NOT \conexionALU|Add14~13_sumout\;
\conexionALU|ALT_INV_Add10~13_sumout\ <= NOT \conexionALU|Add10~13_sumout\;
\conexionALU|ALT_INV_Add19~13_sumout\ <= NOT \conexionALU|Add19~13_sumout\;
\conexionALU|ALT_INV_Add11~13_sumout\ <= NOT \conexionALU|Add11~13_sumout\;
\conexionALU|ALT_INV_Add8~13_sumout\ <= NOT \conexionALU|Add8~13_sumout\;
\conexionALU|ALT_INV_Add17~9_sumout\ <= NOT \conexionALU|Add17~9_sumout\;
\conexionALU|ALT_INV_Add16~13_sumout\ <= NOT \conexionALU|Add16~13_sumout\;
\conexionALU|ALT_INV_Add6~13_sumout\ <= NOT \conexionALU|Add6~13_sumout\;

-- Location: IOOBUF_X89_Y9_N5
\salida_alu[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(0));

-- Location: IOOBUF_X89_Y11_N62
\salida_alu[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(1));

-- Location: IOOBUF_X89_Y21_N39
\salida_alu[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(2));

-- Location: IOOBUF_X89_Y4_N62
\salida_alu[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(3));

-- Location: IOOBUF_X89_Y4_N45
\salida_alu[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(4));

-- Location: IOOBUF_X89_Y16_N22
\salida_alu[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(5));

-- Location: IOOBUF_X89_Y16_N5
\salida_alu[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_salida_alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_alu(6));

-- Location: IOOBUF_X89_Y9_N39
\salida_a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(0));

-- Location: IOOBUF_X89_Y23_N5
\salida_a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(1));

-- Location: IOOBUF_X89_Y9_N56
\salida_a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(2));

-- Location: IOOBUF_X89_Y23_N22
\salida_a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(3));

-- Location: IOOBUF_X89_Y25_N22
\salida_a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(4));

-- Location: IOOBUF_X89_Y21_N56
\salida_a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(5));

-- Location: IOOBUF_X89_Y20_N62
\salida_a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_a|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_a(6));

-- Location: IOOBUF_X89_Y20_N45
\salida_b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(0));

-- Location: IOOBUF_X89_Y15_N5
\salida_b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(1));

-- Location: IOOBUF_X89_Y15_N22
\salida_b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(2));

-- Location: IOOBUF_X89_Y8_N22
\salida_b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(3));

-- Location: IOOBUF_X89_Y13_N22
\salida_b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(4));

-- Location: IOOBUF_X89_Y13_N5
\salida_b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(5));

-- Location: IOOBUF_X89_Y11_N45
\salida_b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_entrada_b|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_b(6));

-- Location: IOOBUF_X89_Y8_N56
\salida_seleccion[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(0));

-- Location: IOOBUF_X89_Y15_N56
\salida_seleccion[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(1));

-- Location: IOOBUF_X89_Y15_N39
\salida_seleccion[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(2));

-- Location: IOOBUF_X89_Y16_N56
\salida_seleccion[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(3));

-- Location: IOOBUF_X89_Y16_N39
\salida_seleccion[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(4));

-- Location: IOOBUF_X89_Y6_N56
\salida_seleccion[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(5));

-- Location: IOOBUF_X89_Y6_N39
\salida_seleccion[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_seleccion|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_salida_seleccion(6));

-- Location: IOOBUF_X64_Y0_N2
\co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_co);

-- Location: IOOBUF_X89_Y6_N22
\o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conexionALU|o[0]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_o(0));

-- Location: IOOBUF_X89_Y8_N5
\o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conexionALU|o[1]~22_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_o(1));

-- Location: IOOBUF_X89_Y6_N5
\o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conexionALU|o[2]~33_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_o(2));

-- Location: IOOBUF_X84_Y0_N2
\o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conexionALU|o[3]~44_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_o(3));

-- Location: IOIBUF_X16_Y0_N1
\m~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m,
	o => \m~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X43_Y3_N0
\conexionALU|Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add19~1_sumout\ = SUM(( \a[0]~input_o\ ) + ( !\b[0]~input_o\ ) + ( !VCC ))
-- \conexionALU|Add19~2\ = CARRY(( \a[0]~input_o\ ) + ( !\b[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	cin => GND,
	sumout => \conexionALU|Add19~1_sumout\,
	cout => \conexionALU|Add19~2\);

-- Location: IOIBUF_X54_Y0_N52
\seleccion[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion(0),
	o => \seleccion[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\seleccion[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion(1),
	o => \seleccion[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\seleccion[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion(3),
	o => \seleccion[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\seleccion[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion(2),
	o => \seleccion[2]~input_o\);

-- Location: LABCELL_X43_Y4_N54
\conexionALU|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~5_combout\ = ( \seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\) # ((!\b[0]~input_o\) # (\seleccion[1]~input_o\)) ) ) ) # ( !\seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\ & 
-- ((!\seleccion[1]~input_o\ & ((!\b[0]~input_o\))) # (\seleccion[1]~input_o\ & (!\conexionALU|Add19~1_sumout\)))) # (\seleccion[0]~input_o\ & (((!\b[0]~input_o\)))) ) ) ) # ( \seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\ & 
-- (((\b[0]~input_o\)))) # (\seleccion[0]~input_o\ & ((!\seleccion[1]~input_o\ & (\conexionALU|Add19~1_sumout\)) # (\seleccion[1]~input_o\ & ((\b[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010000111111110000101110001111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add19~1_sumout\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_seleccion[1]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|Mux3~5_combout\);

-- Location: LABCELL_X43_Y4_N48
\conexionALU|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~4_combout\ = ( \seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\ & ((!\seleccion[1]~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\ & 
-- ((!\conexionALU|Add19~1_sumout\) # ((!\seleccion[1]~input_o\)))) # (\seleccion[0]~input_o\ & (((!\b[0]~input_o\ & !\seleccion[1]~input_o\)))) ) ) ) # ( \seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( (!\seleccion[0]~input_o\ & 
-- (((!\seleccion[1]~input_o\) # (\b[0]~input_o\)))) # (\seleccion[0]~input_o\ & (\conexionALU|Add19~1_sumout\ & ((!\seleccion[1]~input_o\)))) ) ) ) # ( !\seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( (!\b[0]~input_o\ & ((!\seleccion[1]~input_o\))) # 
-- (\b[0]~input_o\ & (!\seleccion[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100110111010000110011111100100010001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add19~1_sumout\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_seleccion[1]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|Mux3~4_combout\);

-- Location: LABCELL_X43_Y4_N45
\conexionALU|Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~6_combout\ = ( \conexionALU|Mux3~4_combout\ & ( (!\a[0]~input_o\) # (\conexionALU|Mux3~5_combout\) ) ) # ( !\conexionALU|Mux3~4_combout\ & ( (\a[0]~input_o\ & \conexionALU|Mux3~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	datad => \conexionALU|ALT_INV_Mux3~5_combout\,
	dataf => \conexionALU|ALT_INV_Mux3~4_combout\,
	combout => \conexionALU|Mux3~6_combout\);

-- Location: IOIBUF_X12_Y0_N18
\ci~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ci,
	o => \ci~input_o\);

-- Location: LABCELL_X46_Y3_N0
\conexionALU|Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add16~1_sumout\ = SUM(( \b[0]~input_o\ ) + ( \a[0]~input_o\ ) + ( !VCC ))
-- \conexionALU|Add16~2\ = CARRY(( \b[0]~input_o\ ) + ( \a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	cin => GND,
	sumout => \conexionALU|Add16~1_sumout\,
	cout => \conexionALU|Add16~2\);

-- Location: LABCELL_X46_Y3_N30
\conexionALU|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add8~1_sumout\ = SUM(( \conexionALU|Add16~1_sumout\ ) + ( (!\a[0]~input_o\) # (!\b[0]~input_o\) ) + ( !VCC ))
-- \conexionALU|Add8~2\ = CARRY(( \conexionALU|Add16~1_sumout\ ) + ( (!\a[0]~input_o\) # (!\b[0]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add16~1_sumout\,
	cin => GND,
	sumout => \conexionALU|Add8~1_sumout\,
	cout => \conexionALU|Add8~2\);

-- Location: LABCELL_X46_Y4_N33
\conexionALU|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~2_combout\ = ( \seleccion[2]~input_o\ & ( (!\seleccion[3]~input_o\ & (\conexionALU|Add8~1_sumout\)) # (\seleccion[3]~input_o\ & ((\b[0]~input_o\))) ) ) # ( !\seleccion[2]~input_o\ & ( \conexionALU|Add16~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~1_sumout\,
	datab => \conexionALU|ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|Mux3~2_combout\);

-- Location: LABCELL_X43_Y3_N30
\conexionALU|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add14~1_sumout\ = SUM(( \conexionALU|Add19~1_sumout\ ) + ( (\a[0]~input_o\ & \b[0]~input_o\) ) + ( !VCC ))
-- \conexionALU|Add14~2\ = CARRY(( \conexionALU|Add19~1_sumout\ ) + ( (\a[0]~input_o\ & \b[0]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add19~1_sumout\,
	cin => GND,
	sumout => \conexionALU|Add14~1_sumout\,
	cout => \conexionALU|Add14~2\);

-- Location: LABCELL_X40_Y3_N30
\conexionALU|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add10~1_sumout\ = SUM(( !\a[0]~input_o\ $ (!\b[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \conexionALU|Add10~2\ = CARRY(( !\a[0]~input_o\ $ (!\b[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \conexionALU|Add10~3\ = SHARE((!\b[0]~input_o\) # (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \conexionALU|Add10~1_sumout\,
	cout => \conexionALU|Add10~2\,
	shareout => \conexionALU|Add10~3\);

-- Location: LABCELL_X46_Y4_N6
\conexionALU|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~3_combout\ = ( \seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( \b[0]~input_o\ ) ) ) # ( !\seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( \conexionALU|Add10~1_sumout\ ) ) ) # ( \seleccion[3]~input_o\ & ( 
-- !\seleccion[2]~input_o\ & ( !\conexionALU|Add14~1_sumout\ ) ) ) # ( !\seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( !\conexionALU|Add19~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101010101010101000110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add14~1_sumout\,
	datab => \conexionALU|ALT_INV_Add10~1_sumout\,
	datac => \conexionALU|ALT_INV_Add19~1_sumout\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|Mux3~3_combout\);

-- Location: LABCELL_X46_Y4_N18
\conexionALU|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~0_combout\ = (!\b[0]~input_o\ & (!\seleccion[2]~input_o\)) # (\b[0]~input_o\ & ((!\seleccion[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011110000101010101111000010101010111100001010101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \conexionALU|Mux3~0_combout\);

-- Location: LABCELL_X45_Y3_N30
\conexionALU|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add11~1_sumout\ = SUM(( (\a[0]~input_o\ & \b[0]~input_o\) ) + ( \a[0]~input_o\ ) + ( !VCC ))
-- \conexionALU|Add11~2\ = CARRY(( (\a[0]~input_o\ & \b[0]~input_o\) ) + ( \a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	cin => GND,
	sumout => \conexionALU|Add11~1_sumout\,
	cout => \conexionALU|Add11~2\);

-- Location: LABCELL_X43_Y4_N0
\conexionALU|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add6~1_sumout\ = SUM(( (\a[0]~input_o\ & !\b[0]~input_o\) ) + ( \a[0]~input_o\ ) + ( !VCC ))
-- \conexionALU|Add6~2\ = CARRY(( (\a[0]~input_o\ & !\b[0]~input_o\) ) + ( \a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	cin => GND,
	sumout => \conexionALU|Add6~1_sumout\,
	cout => \conexionALU|Add6~2\);

-- Location: LABCELL_X46_Y4_N54
\conexionALU|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux3~1_combout\ = ( \a[0]~input_o\ & ( (!\seleccion[2]~input_o\ & (!\conexionALU|Add11~1_sumout\ & (\seleccion[3]~input_o\))) # (\seleccion[2]~input_o\ & (((!\conexionALU|Add6~1_sumout\) # (\seleccion[3]~input_o\)))) ) ) # ( !\a[0]~input_o\ & 
-- ( (!\seleccion[2]~input_o\ & ((!\conexionALU|Add11~1_sumout\) # ((!\seleccion[3]~input_o\)))) # (\seleccion[2]~input_o\ & (((!\conexionALU|Add6~1_sumout\) # (\seleccion[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110101101111111011010110101011101000011010101110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datab => \conexionALU|ALT_INV_Add11~1_sumout\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datad => \conexionALU|ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \conexionALU|Mux3~1_combout\);

-- Location: LABCELL_X46_Y4_N12
\conexionALU|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux11~0_combout\ = ( !\seleccion[1]~input_o\ & ( ((!\seleccion[0]~input_o\ & (((\conexionALU|Mux3~1_combout\)))) # (\seleccion[0]~input_o\ & (!\conexionALU|Mux3~2_combout\))) ) ) # ( \seleccion[1]~input_o\ & ( ((!\seleccion[0]~input_o\ & 
-- (\conexionALU|Mux3~3_combout\)) # (\seleccion[0]~input_o\ & (((\a[0]~input_o\ & !\conexionALU|Mux3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111110101010001100110000111100001111101010100011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Mux3~2_combout\,
	datab => \conexionALU|ALT_INV_Mux3~3_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	dataf => \conexionALU|ALT_INV_Mux3~0_combout\,
	datag => \conexionALU|ALT_INV_Mux3~1_combout\,
	combout => \conexionALU|Mux11~0_combout\);

-- Location: LABCELL_X46_Y4_N57
\conexionALU|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~0_combout\ = ( \conexionALU|Add16~1_sumout\ & ( (!\seleccion[2]~input_o\) # (\b[0]~input_o\) ) ) # ( !\conexionALU|Add16~1_sumout\ & ( (\seleccion[2]~input_o\ & \b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \conexionALU|ALT_INV_Add16~1_sumout\,
	combout => \conexionALU|Mux8~0_combout\);

-- Location: LABCELL_X46_Y4_N27
\conexionALU|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~3_combout\ = (!\seleccion[2]~input_o\ & ((\conexionALU|Add14~1_sumout\))) # (\seleccion[2]~input_o\ & (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add14~1_sumout\,
	combout => \conexionALU|Mux8~3_combout\);

-- Location: LABCELL_X46_Y4_N30
\conexionALU|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~4_combout\ = ( \seleccion[2]~input_o\ & ( \conexionALU|Add8~1_sumout\ ) ) # ( !\seleccion[2]~input_o\ & ( \conexionALU|Add16~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~1_sumout\,
	datab => \conexionALU|ALT_INV_Add8~1_sumout\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|Mux8~4_combout\);

-- Location: LABCELL_X46_Y4_N21
\conexionALU|Mux8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~7_combout\ = ( \conexionALU|Add19~1_sumout\ & ( (!\seleccion[2]~input_o\) # (!\conexionALU|Add10~1_sumout\) ) ) # ( !\conexionALU|Add19~1_sumout\ & ( (\seleccion[2]~input_o\ & !\conexionALU|Add10~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datac => \conexionALU|ALT_INV_Add10~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add19~1_sumout\,
	combout => \conexionALU|Mux8~7_combout\);

-- Location: LABCELL_X46_Y3_N27
\conexionALU|Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~5_combout\ = ( \b[0]~input_o\ & ( (!\seleccion[2]~input_o\) # (\a[0]~input_o\) ) ) # ( !\b[0]~input_o\ & ( !\seleccion[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \conexionALU|Mux8~5_combout\);

-- Location: LABCELL_X46_Y4_N24
\conexionALU|Mux8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~6_combout\ = ( \a[0]~input_o\ & ( (!\seleccion[2]~input_o\) # (\conexionALU|Add6~1_sumout\) ) ) # ( !\a[0]~input_o\ & ( (\seleccion[2]~input_o\ & \conexionALU|Add6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datad => \conexionALU|ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \conexionALU|Mux8~6_combout\);

-- Location: LABCELL_X46_Y4_N36
\conexionALU|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux7~4_combout\ = ( !\seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & ((!\seleccion[0]~input_o\ & (((\conexionALU|Mux8~6_combout\)))) # (\seleccion[0]~input_o\ & (\conexionALU|Mux8~4_combout\)))) # (\seleccion[3]~input_o\ & 
-- ((((\seleccion[0]~input_o\))))) ) ) # ( \seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & (((!\seleccion[0]~input_o\ & (\conexionALU|Mux8~7_combout\)) # (\seleccion[0]~input_o\ & ((\conexionALU|Mux8~5_combout\)))))) # (\seleccion[3]~input_o\ & 
-- ((((\seleccion[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \conexionALU|ALT_INV_Mux8~4_combout\,
	datac => \conexionALU|ALT_INV_Mux8~7_combout\,
	datad => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	dataf => \conexionALU|ALT_INV_Mux8~5_combout\,
	datag => \conexionALU|ALT_INV_Mux8~6_combout\,
	combout => \conexionALU|Mux7~4_combout\);

-- Location: LABCELL_X46_Y4_N51
\conexionALU|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~1_combout\ = ( \a[0]~input_o\ & ( (!\seleccion[2]~input_o\ & !\b[0]~input_o\) ) ) # ( !\a[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \conexionALU|Mux8~1_combout\);

-- Location: LABCELL_X46_Y4_N48
\conexionALU|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux8~2_combout\ = (!\seleccion[2]~input_o\ & \conexionALU|Add11~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datad => \conexionALU|ALT_INV_Add11~1_sumout\,
	combout => \conexionALU|Mux8~2_combout\);

-- Location: LABCELL_X46_Y4_N0
\conexionALU|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Mux7~0_combout\ = ( !\seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & ((((\conexionALU|Mux7~4_combout\))))) # (\seleccion[3]~input_o\ & ((!\conexionALU|Mux7~4_combout\ & (((\conexionALU|Mux8~2_combout\)))) # (\conexionALU|Mux7~4_combout\ 
-- & (\conexionALU|Mux8~0_combout\)))) ) ) # ( \seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & ((((\conexionALU|Mux7~4_combout\))))) # (\seleccion[3]~input_o\ & (((!\conexionALU|Mux7~4_combout\ & (\conexionALU|Mux8~3_combout\)) # 
-- (\conexionALU|Mux7~4_combout\ & ((\conexionALU|Mux8~1_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110111011000001011010101000000101101110110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \conexionALU|ALT_INV_Mux8~0_combout\,
	datac => \conexionALU|ALT_INV_Mux8~3_combout\,
	datad => \conexionALU|ALT_INV_Mux7~4_combout\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	dataf => \conexionALU|ALT_INV_Mux8~1_combout\,
	datag => \conexionALU|ALT_INV_Mux8~2_combout\,
	combout => \conexionALU|Mux7~0_combout\);

-- Location: LABCELL_X43_Y4_N42
\conexionALU|o[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[0]~0_combout\ = ( \conexionALU|Mux7~0_combout\ & ( (!\m~input_o\ & (((\conexionALU|Mux11~0_combout\) # (\ci~input_o\)))) # (\m~input_o\ & (\conexionALU|Mux3~6_combout\)) ) ) # ( !\conexionALU|Mux7~0_combout\ & ( (!\m~input_o\ & 
-- (((!\ci~input_o\ & \conexionALU|Mux11~0_combout\)))) # (\m~input_o\ & (\conexionALU|Mux3~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~input_o\,
	datab => \conexionALU|ALT_INV_Mux3~6_combout\,
	datac => \ALT_INV_ci~input_o\,
	datad => \conexionALU|ALT_INV_Mux11~0_combout\,
	dataf => \conexionALU|ALT_INV_Mux7~0_combout\,
	combout => \conexionALU|o[0]~0_combout\);

-- Location: IOIBUF_X4_Y0_N18
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X43_Y4_N18
\conexionALU|o[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~2_combout\ = ( \seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (\m~input_o\ & (\seleccion[0]~input_o\ & !\seleccion[1]~input_o\)) ) ) ) # ( !\seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (\seleccion[0]~input_o\ & 
-- (\seleccion[1]~input_o\ & ((!\ci~input_o\) # (\m~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~input_o\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_seleccion[1]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~2_combout\);

-- Location: IOIBUF_X2_Y0_N41
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X42_Y4_N33
\conexionALU|o[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~18_combout\ = ( \seleccion[2]~input_o\ & ( (!\a[1]~input_o\ & (\b[1]~input_o\ & (\seleccion[0]~input_o\))) # (\a[1]~input_o\ & ((!\b[1]~input_o\ & (\seleccion[0]~input_o\ & \seleccion[3]~input_o\)) # (\b[1]~input_o\ & 
-- ((!\seleccion[3]~input_o\))))) ) ) # ( !\seleccion[2]~input_o\ & ( (!\a[1]~input_o\ & (\b[1]~input_o\ & (\seleccion[0]~input_o\))) # (\a[1]~input_o\ & ((!\b[1]~input_o\) # ((!\seleccion[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101000110010101110100011000010011000001100001001100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datad => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[1]~18_combout\);

-- Location: LABCELL_X45_Y3_N33
\conexionALU|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add11~5_sumout\ = SUM(( (\b[1]~input_o\ & \a[1]~input_o\) ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add11~2\ ))
-- \conexionALU|Add11~6\ = CARRY(( (\b[1]~input_o\ & \a[1]~input_o\) ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	cin => \conexionALU|Add11~2\,
	sumout => \conexionALU|Add11~5_sumout\,
	cout => \conexionALU|Add11~6\);

-- Location: LABCELL_X45_Y3_N3
\conexionALU|Add12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add12~0_combout\ = ( \conexionALU|Add11~5_sumout\ & ( !\conexionALU|Add11~1_sumout\ ) ) # ( !\conexionALU|Add11~5_sumout\ & ( \conexionALU|Add11~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conexionALU|ALT_INV_Add11~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add11~5_sumout\,
	combout => \conexionALU|Add12~0_combout\);

-- Location: LABCELL_X43_Y4_N3
\conexionALU|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add6~5_sumout\ = SUM(( (\a[1]~input_o\ & !\b[1]~input_o\) ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add6~2\ ))
-- \conexionALU|Add6~6\ = CARRY(( (\a[1]~input_o\ & !\b[1]~input_o\) ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	cin => \conexionALU|Add6~2\,
	sumout => \conexionALU|Add6~5_sumout\,
	cout => \conexionALU|Add6~6\);

-- Location: LABCELL_X43_Y4_N30
\conexionALU|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add7~0_combout\ = ( \conexionALU|Add6~1_sumout\ & ( !\conexionALU|Add6~5_sumout\ ) ) # ( !\conexionALU|Add6~1_sumout\ & ( \conexionALU|Add6~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conexionALU|ALT_INV_Add6~5_sumout\,
	datae => \conexionALU|ALT_INV_Add6~1_sumout\,
	combout => \conexionALU|Add7~0_combout\);

-- Location: LABCELL_X42_Y3_N0
\conexionALU|Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add4~0_combout\ = !\a[1]~input_o\ $ (!\a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	combout => \conexionALU|Add4~0_combout\);

-- Location: LABCELL_X46_Y3_N3
\conexionALU|Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add16~5_sumout\ = SUM(( \b[1]~input_o\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add16~2\ ))
-- \conexionALU|Add16~6\ = CARRY(( \b[1]~input_o\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	cin => \conexionALU|Add16~2\,
	sumout => \conexionALU|Add16~5_sumout\,
	cout => \conexionALU|Add16~6\);

-- Location: LABCELL_X46_Y3_N33
\conexionALU|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add8~5_sumout\ = SUM(( \conexionALU|Add16~5_sumout\ ) + ( (!\a[1]~input_o\) # (!\b[1]~input_o\) ) + ( \conexionALU|Add8~2\ ))
-- \conexionALU|Add8~6\ = CARRY(( \conexionALU|Add16~5_sumout\ ) + ( (!\a[1]~input_o\) # (!\b[1]~input_o\) ) + ( \conexionALU|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \conexionALU|ALT_INV_Add16~5_sumout\,
	cin => \conexionALU|Add8~2\,
	sumout => \conexionALU|Add8~5_sumout\,
	cout => \conexionALU|Add8~6\);

-- Location: LABCELL_X40_Y3_N0
\conexionALU|Add17~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add17~14_cout\ = CARRY(( \conexionALU|Add16~1_sumout\ ) + ( \a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \conexionALU|ALT_INV_Add16~1_sumout\,
	cin => GND,
	cout => \conexionALU|Add17~14_cout\);

-- Location: LABCELL_X40_Y3_N3
\conexionALU|Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add17~1_sumout\ = SUM(( \conexionALU|Add16~5_sumout\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add17~14_cout\ ))
-- \conexionALU|Add17~2\ = CARRY(( \conexionALU|Add16~5_sumout\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add17~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datad => \conexionALU|ALT_INV_Add16~5_sumout\,
	cin => \conexionALU|Add17~14_cout\,
	sumout => \conexionALU|Add17~1_sumout\,
	cout => \conexionALU|Add17~2\);

-- Location: LABCELL_X46_Y3_N48
\conexionALU|o[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~4_combout\ = ( \conexionALU|Add16~5_sumout\ & ( \seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & (!\conexionALU|Add16~1_sumout\)) # (\seleccion[2]~input_o\ & ((!\b[0]~input_o\ $ (!\conexionALU|Add17~1_sumout\)))) ) ) ) # ( 
-- !\conexionALU|Add16~5_sumout\ & ( \seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & (\conexionALU|Add16~1_sumout\)) # (\seleccion[2]~input_o\ & ((!\b[0]~input_o\ $ (!\conexionALU|Add17~1_sumout\)))) ) ) ) # ( \conexionALU|Add16~5_sumout\ & ( 
-- !\seleccion[3]~input_o\ & ( (!\conexionALU|Add16~1_sumout\ & !\seleccion[2]~input_o\) ) ) ) # ( !\conexionALU|Add16~5_sumout\ & ( !\seleccion[3]~input_o\ & ( (\conexionALU|Add16~1_sumout\ & !\seleccion[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100001000111011101001000101110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~1_sumout\,
	datab => \ALT_INV_seleccion[2]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add17~1_sumout\,
	datae => \conexionALU|ALT_INV_Add16~5_sumout\,
	dataf => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[1]~4_combout\);

-- Location: LABCELL_X46_Y3_N57
\conexionALU|o[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~5_combout\ = ( !\conexionALU|o[1]~4_combout\ & ( (!\seleccion[2]~input_o\) # ((!\conexionALU|Add8~5_sumout\ $ (\conexionALU|Add8~1_sumout\)) # (\seleccion[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111111111111110011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add8~5_sumout\,
	datab => \conexionALU|ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_seleccion[2]~input_o\,
	datad => \ALT_INV_seleccion[3]~input_o\,
	dataf => \conexionALU|ALT_INV_o[1]~4_combout\,
	combout => \conexionALU|o[1]~5_combout\);

-- Location: MLABCELL_X39_Y3_N6
\conexionALU|o[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~7_combout\ = ( !\seleccion[3]~input_o\ & ( !\seleccion[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[3]~7_combout\);

-- Location: LABCELL_X46_Y4_N45
\conexionALU|o[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~6_combout\ = ( \seleccion[2]~input_o\ & ( !\seleccion[0]~input_o\ ) ) # ( !\seleccion[2]~input_o\ & ( (\seleccion[3]~input_o\ & !\seleccion[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~6_combout\);

-- Location: LABCELL_X45_Y3_N9
\conexionALU|o[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~8_combout\ = ( \conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add7~0_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add12~0_combout\ ) ) ) # ( 
-- \conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( \conexionALU|Add4~0_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( !\conexionALU|o[1]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add12~0_combout\,
	datab => \conexionALU|ALT_INV_Add7~0_combout\,
	datac => \conexionALU|ALT_INV_Add4~0_combout\,
	datad => \conexionALU|ALT_INV_o[1]~5_combout\,
	datae => \conexionALU|ALT_INV_o[3]~7_combout\,
	dataf => \conexionALU|ALT_INV_o[3]~6_combout\,
	combout => \conexionALU|o[1]~8_combout\);

-- Location: MLABCELL_X39_Y3_N45
\conexionALU|o[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~16_combout\ = ( \seleccion[2]~input_o\ & ( (!\ci~input_o\ & \seleccion[1]~input_o\) ) ) # ( !\seleccion[2]~input_o\ & ( (!\ci~input_o\ & ((\seleccion[1]~input_o\))) # (\ci~input_o\ & (\seleccion[0]~input_o\ & !\seleccion[1]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_seleccion[1]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~16_combout\);

-- Location: LABCELL_X43_Y3_N3
\conexionALU|Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add19~5_sumout\ = SUM(( !\b[1]~input_o\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add19~2\ ))
-- \conexionALU|Add19~6\ = CARRY(( !\b[1]~input_o\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add19~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	cin => \conexionALU|Add19~2\,
	sumout => \conexionALU|Add19~5_sumout\,
	cout => \conexionALU|Add19~6\);

-- Location: LABCELL_X42_Y3_N30
\conexionALU|Add20~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add20~14_cout\ = CARRY(( \a[0]~input_o\ ) + ( \conexionALU|Add19~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conexionALU|ALT_INV_Add19~1_sumout\,
	datad => \ALT_INV_a[0]~input_o\,
	cin => GND,
	cout => \conexionALU|Add20~14_cout\);

-- Location: LABCELL_X42_Y3_N33
\conexionALU|Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add20~1_sumout\ = SUM(( \conexionALU|Add19~5_sumout\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add20~14_cout\ ))
-- \conexionALU|Add20~2\ = CARRY(( \conexionALU|Add19~5_sumout\ ) + ( \a[1]~input_o\ ) + ( \conexionALU|Add20~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \conexionALU|ALT_INV_Add19~5_sumout\,
	cin => \conexionALU|Add20~14_cout\,
	sumout => \conexionALU|Add20~1_sumout\,
	cout => \conexionALU|Add20~2\);

-- Location: LABCELL_X43_Y3_N18
\conexionALU|Add21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add21~0_combout\ = !\conexionALU|Add20~1_sumout\ $ (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add20~1_sumout\,
	datac => \ALT_INV_b[0]~input_o\,
	combout => \conexionALU|Add21~0_combout\);

-- Location: LABCELL_X43_Y3_N33
\conexionALU|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add14~5_sumout\ = SUM(( \conexionALU|Add19~5_sumout\ ) + ( (\a[1]~input_o\ & \b[1]~input_o\) ) + ( \conexionALU|Add14~2\ ))
-- \conexionALU|Add14~6\ = CARRY(( \conexionALU|Add19~5_sumout\ ) + ( (\a[1]~input_o\ & \b[1]~input_o\) ) + ( \conexionALU|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \conexionALU|ALT_INV_Add19~5_sumout\,
	cin => \conexionALU|Add14~2\,
	sumout => \conexionALU|Add14~5_sumout\,
	cout => \conexionALU|Add14~6\);

-- Location: LABCELL_X43_Y3_N21
\conexionALU|Add15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add15~0_combout\ = ( \conexionALU|Add14~1_sumout\ & ( !\conexionALU|Add14~5_sumout\ ) ) # ( !\conexionALU|Add14~1_sumout\ & ( \conexionALU|Add14~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add14~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add14~1_sumout\,
	combout => \conexionALU|Add15~0_combout\);

-- Location: LABCELL_X40_Y3_N33
\conexionALU|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add10~5_sumout\ = SUM(( !\b[1]~input_o\ $ (\a[1]~input_o\) ) + ( \conexionALU|Add10~3\ ) + ( \conexionALU|Add10~2\ ))
-- \conexionALU|Add10~6\ = CARRY(( !\b[1]~input_o\ $ (\a[1]~input_o\) ) + ( \conexionALU|Add10~3\ ) + ( \conexionALU|Add10~2\ ))
-- \conexionALU|Add10~7\ = SHARE((!\b[1]~input_o\ & \a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	cin => \conexionALU|Add10~2\,
	sharein => \conexionALU|Add10~3\,
	sumout => \conexionALU|Add10~5_sumout\,
	cout => \conexionALU|Add10~6\,
	shareout => \conexionALU|Add10~7\);

-- Location: LABCELL_X43_Y3_N42
\conexionALU|o[1]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~57_combout\ = ( !\seleccion[3]~input_o\ & ( ((!\seleccion[2]~input_o\ & (!\conexionALU|Add19~5_sumout\ $ ((!\conexionALU|Add19~1_sumout\)))) # (\seleccion[2]~input_o\ & (((\conexionALU|Add10~5_sumout\))))) ) ) # ( \seleccion[3]~input_o\ 
-- & ( (((!\seleccion[2]~input_o\ & ((\conexionALU|Add15~0_combout\))) # (\seleccion[2]~input_o\ & (!\conexionALU|Add21~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110000111100000011110000111100000000111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add21~0_combout\,
	datab => \conexionALU|ALT_INV_Add19~5_sumout\,
	datac => \conexionALU|ALT_INV_Add15~0_combout\,
	datad => \conexionALU|ALT_INV_Add10~5_sumout\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	datag => \conexionALU|ALT_INV_Add19~1_sumout\,
	combout => \conexionALU|o[1]~57_combout\);

-- Location: MLABCELL_X39_Y3_N57
\conexionALU|o[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~14_combout\ = (!\seleccion[1]~input_o\ & !\seleccion[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[1]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[3]~14_combout\);

-- Location: MLABCELL_X39_Y3_N51
\conexionALU|o[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~13_combout\ = ( \seleccion[1]~input_o\ & ( !\seleccion[3]~input_o\ ) ) # ( !\seleccion[1]~input_o\ & ( (\seleccion[0]~input_o\ & !\seleccion[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \conexionALU|o[3]~13_combout\);

-- Location: LABCELL_X40_Y3_N54
\conexionALU|o[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~11_combout\ = ( \seleccion[2]~input_o\ & ( (\a[1]~input_o\ & (\seleccion[0]~input_o\ & (!\b[0]~input_o\ $ (\b[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_seleccion[0]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[1]~11_combout\);

-- Location: LABCELL_X40_Y3_N12
\conexionALU|o[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~12_combout\ = ( \seleccion[0]~input_o\ & ( \seleccion[2]~input_o\ & ( !\conexionALU|o[1]~11_combout\ ) ) ) # ( !\seleccion[0]~input_o\ & ( \seleccion[2]~input_o\ & ( (!\conexionALU|o[1]~11_combout\ & (!\conexionALU|Add10~5_sumout\ $ 
-- (!\conexionALU|Add10~1_sumout\))) ) ) ) # ( !\seleccion[0]~input_o\ & ( !\seleccion[2]~input_o\ & ( (!\conexionALU|o[1]~11_combout\ & !\conexionALU|Add19~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000001100000011000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add10~5_sumout\,
	datab => \conexionALU|ALT_INV_Add10~1_sumout\,
	datac => \conexionALU|ALT_INV_o[1]~11_combout\,
	datad => \conexionALU|ALT_INV_Add19~5_sumout\,
	datae => \ALT_INV_seleccion[0]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[1]~12_combout\);

-- Location: MLABCELL_X47_Y5_N33
\conexionALU|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add2~0_combout\ = ( \a[0]~input_o\ & ( !\b[0]~input_o\ $ (((!\b[1]~input_o\) # (!\a[1]~input_o\))) ) ) # ( !\a[0]~input_o\ & ( (\b[1]~input_o\ & \a[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111101000000101000001010000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \conexionALU|Add2~0_combout\);

-- Location: LABCELL_X42_Y3_N6
\conexionALU|o[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~9_combout\ = ( \seleccion[2]~input_o\ & ( \seleccion[0]~input_o\ & ( !\conexionALU|Add4~0_combout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( \seleccion[0]~input_o\ & ( !\conexionALU|Add2~0_combout\ ) ) ) # ( \seleccion[2]~input_o\ & ( 
-- !\seleccion[0]~input_o\ & ( \conexionALU|Add20~1_sumout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( !\seleccion[0]~input_o\ & ( \conexionALU|Add14~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010111001100110011001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add20~1_sumout\,
	datab => \conexionALU|ALT_INV_Add2~0_combout\,
	datac => \conexionALU|ALT_INV_Add14~5_sumout\,
	datad => \conexionALU|ALT_INV_Add4~0_combout\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \ALT_INV_seleccion[0]~input_o\,
	combout => \conexionALU|o[1]~9_combout\);

-- Location: MLABCELL_X39_Y3_N42
\conexionALU|o[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~10_combout\ = ( \conexionALU|Add11~5_sumout\ & ( (!\seleccion[1]~input_o\ & ((!\seleccion[0]~input_o\) # ((\conexionALU|Add17~1_sumout\)))) # (\seleccion[1]~input_o\ & (((\conexionALU|o[1]~9_combout\)))) ) ) # ( 
-- !\conexionALU|Add11~5_sumout\ & ( (!\seleccion[1]~input_o\ & (\seleccion[0]~input_o\ & (\conexionALU|Add17~1_sumout\))) # (\seleccion[1]~input_o\ & (((\conexionALU|o[1]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[1]~input_o\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \conexionALU|ALT_INV_Add17~1_sumout\,
	datad => \conexionALU|ALT_INV_o[1]~9_combout\,
	dataf => \conexionALU|ALT_INV_Add11~5_sumout\,
	combout => \conexionALU|o[1]~10_combout\);

-- Location: MLABCELL_X39_Y3_N30
\conexionALU|o[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~15_combout\ = ( \conexionALU|Add8~5_sumout\ & ( \conexionALU|o[1]~10_combout\ & ( (!\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\) # (!\conexionALU|o[1]~12_combout\)))) # (\conexionALU|o[3]~14_combout\ & 
-- (((\conexionALU|o[3]~13_combout\)) # (\conexionALU|Add6~5_sumout\))) ) ) ) # ( !\conexionALU|Add8~5_sumout\ & ( \conexionALU|o[1]~10_combout\ & ( (!\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\) # (!\conexionALU|o[1]~12_combout\)))) # 
-- (\conexionALU|o[3]~14_combout\ & (\conexionALU|Add6~5_sumout\ & (!\conexionALU|o[3]~13_combout\))) ) ) ) # ( \conexionALU|Add8~5_sumout\ & ( !\conexionALU|o[1]~10_combout\ & ( (!\conexionALU|o[3]~14_combout\ & (((\conexionALU|o[3]~13_combout\ & 
-- !\conexionALU|o[1]~12_combout\)))) # (\conexionALU|o[3]~14_combout\ & (((\conexionALU|o[3]~13_combout\)) # (\conexionALU|Add6~5_sumout\))) ) ) ) # ( !\conexionALU|Add8~5_sumout\ & ( !\conexionALU|o[1]~10_combout\ & ( (!\conexionALU|o[3]~14_combout\ & 
-- (((\conexionALU|o[3]~13_combout\ & !\conexionALU|o[1]~12_combout\)))) # (\conexionALU|o[3]~14_combout\ & (\conexionALU|Add6~5_sumout\ & (!\conexionALU|o[3]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000010000000111110001001111011100110100001101111111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add6~5_sumout\,
	datab => \conexionALU|ALT_INV_o[3]~14_combout\,
	datac => \conexionALU|ALT_INV_o[3]~13_combout\,
	datad => \conexionALU|ALT_INV_o[1]~12_combout\,
	datae => \conexionALU|ALT_INV_Add8~5_sumout\,
	dataf => \conexionALU|ALT_INV_o[1]~10_combout\,
	combout => \conexionALU|o[1]~15_combout\);

-- Location: MLABCELL_X39_Y3_N36
\conexionALU|o[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~17_combout\ = ( \ci~input_o\ & ( \conexionALU|Add16~5_sumout\ & ( (\conexionALU|o[1]~15_combout\) # (\conexionALU|o[3]~16_combout\) ) ) ) # ( !\ci~input_o\ & ( \conexionALU|Add16~5_sumout\ & ( (!\conexionALU|o[3]~16_combout\ & 
-- (\conexionALU|o[1]~8_combout\)) # (\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[1]~57_combout\))) ) ) ) # ( \ci~input_o\ & ( !\conexionALU|Add16~5_sumout\ & ( (!\conexionALU|o[3]~16_combout\ & \conexionALU|o[1]~15_combout\) ) ) ) # ( !\ci~input_o\ & ( 
-- !\conexionALU|Add16~5_sumout\ & ( (!\conexionALU|o[3]~16_combout\ & (\conexionALU|o[1]~8_combout\)) # (\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[1]~57_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[1]~8_combout\,
	datab => \conexionALU|ALT_INV_o[3]~16_combout\,
	datac => \conexionALU|ALT_INV_o[1]~57_combout\,
	datad => \conexionALU|ALT_INV_o[1]~15_combout\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \conexionALU|ALT_INV_Add16~5_sumout\,
	combout => \conexionALU|o[1]~17_combout\);

-- Location: LABCELL_X42_Y4_N6
\conexionALU|o[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~20_combout\ = ( \m~input_o\ & ( \seleccion[2]~input_o\ & ( \seleccion[1]~input_o\ ) ) ) # ( !\m~input_o\ & ( \seleccion[2]~input_o\ & ( (!\seleccion[1]~input_o\ & (\seleccion[3]~input_o\ & !\seleccion[0]~input_o\)) ) ) ) # ( \m~input_o\ 
-- & ( !\seleccion[2]~input_o\ & ( \seleccion[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100100000001000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[1]~input_o\,
	datab => \ALT_INV_seleccion[3]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_m~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~20_combout\);

-- Location: LABCELL_X42_Y4_N30
\conexionALU|o[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~19_combout\ = ( \seleccion[2]~input_o\ & ( (!\a[1]~input_o\ & (\b[1]~input_o\)) # (\a[1]~input_o\ & ((!\b[1]~input_o\) # (\seleccion[3]~input_o\))) ) ) # ( !\seleccion[2]~input_o\ & ( (\b[1]~input_o\ & ((!\a[1]~input_o\) # 
-- (\seleccion[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001101100111011001110110011101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[1]~19_combout\);

-- Location: LABCELL_X42_Y4_N42
\conexionALU|o[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~21_combout\ = ( \m~input_o\ & ( \conexionALU|o[1]~19_combout\ & ( (!\conexionALU|o[1]~18_combout\) # (\conexionALU|o[3]~20_combout\) ) ) ) # ( !\m~input_o\ & ( \conexionALU|o[1]~19_combout\ & ( (!\conexionALU|o[3]~20_combout\ & 
-- ((\conexionALU|o[1]~17_combout\))) # (\conexionALU|o[3]~20_combout\ & (\a[0]~input_o\)) ) ) ) # ( \m~input_o\ & ( !\conexionALU|o[1]~19_combout\ & ( (!\conexionALU|o[1]~18_combout\ & !\conexionALU|o[3]~20_combout\) ) ) ) # ( !\m~input_o\ & ( 
-- !\conexionALU|o[1]~19_combout\ & ( (!\conexionALU|o[3]~20_combout\ & ((\conexionALU|o[1]~17_combout\))) # (\conexionALU|o[3]~20_combout\ & (\a[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011101010100000000000001111001100111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[1]~18_combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \conexionALU|ALT_INV_o[1]~17_combout\,
	datad => \conexionALU|ALT_INV_o[3]~20_combout\,
	datae => \ALT_INV_m~input_o\,
	dataf => \conexionALU|ALT_INV_o[1]~19_combout\,
	combout => \conexionALU|o[1]~21_combout\);

-- Location: MLABCELL_X39_Y3_N0
\conexionALU|o[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~1_combout\ = ( \ci~input_o\ & ( \seleccion[2]~input_o\ & ( (\seleccion[1]~input_o\ & (\m~input_o\ & (\seleccion[0]~input_o\ & !\seleccion[3]~input_o\))) ) ) ) # ( !\ci~input_o\ & ( \seleccion[2]~input_o\ & ( (\seleccion[1]~input_o\ & 
-- (\seleccion[0]~input_o\ & !\seleccion[3]~input_o\)) ) ) ) # ( \ci~input_o\ & ( !\seleccion[2]~input_o\ & ( (\seleccion[1]~input_o\ & (\m~input_o\ & \seleccion[0]~input_o\)) ) ) ) # ( !\ci~input_o\ & ( !\seleccion[2]~input_o\ & ( (\seleccion[1]~input_o\ & 
-- \seleccion[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000010000000100000101000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[1]~input_o\,
	datab => \ALT_INV_m~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datad => \ALT_INV_seleccion[3]~input_o\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~1_combout\);

-- Location: LABCELL_X43_Y4_N24
\conexionALU|o[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~3_combout\ = ( \seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( (\seleccion[0]~input_o\ & (\seleccion[1]~input_o\ & ((!\ci~input_o\) # (\m~input_o\)))) ) ) ) # ( !\seleccion[3]~input_o\ & ( \seleccion[2]~input_o\ & ( 
-- (\seleccion[0]~input_o\ & (\seleccion[1]~input_o\ & ((!\ci~input_o\) # (\m~input_o\)))) ) ) ) # ( \seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( (\seleccion[0]~input_o\ & (\seleccion[1]~input_o\ & ((!\ci~input_o\) # (\m~input_o\)))) ) ) ) # ( 
-- !\seleccion[3]~input_o\ & ( !\seleccion[2]~input_o\ & ( (!\m~input_o\ & (!\seleccion[0]~input_o\ & (\ci~input_o\ & !\seleccion[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000011000100000000001100010000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~input_o\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_seleccion[1]~input_o\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~3_combout\);

-- Location: LABCELL_X42_Y4_N18
\conexionALU|o[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[1]~22_combout\ = ( \conexionALU|o[3]~1_combout\ & ( \conexionALU|o[3]~3_combout\ & ( (\a[1]~input_o\ & (!\conexionALU|o[3]~2_combout\ $ (!\b[1]~input_o\))) ) ) ) # ( !\conexionALU|o[3]~1_combout\ & ( \conexionALU|o[3]~3_combout\ & ( 
-- (\a[1]~input_o\ & ((!\conexionALU|o[3]~2_combout\) # (!\b[1]~input_o\))) ) ) ) # ( \conexionALU|o[3]~1_combout\ & ( !\conexionALU|o[3]~3_combout\ & ( (\a[1]~input_o\ & (\conexionALU|o[3]~2_combout\ & !\b[1]~input_o\)) ) ) ) # ( 
-- !\conexionALU|o[3]~1_combout\ & ( !\conexionALU|o[3]~3_combout\ & ( (!\conexionALU|o[3]~2_combout\ & (((\conexionALU|o[1]~21_combout\)))) # (\conexionALU|o[3]~2_combout\ & (\a[1]~input_o\ & (!\b[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100000100000001000001010100010101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \conexionALU|ALT_INV_o[3]~2_combout\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \conexionALU|ALT_INV_o[1]~21_combout\,
	datae => \conexionALU|ALT_INV_o[3]~1_combout\,
	dataf => \conexionALU|ALT_INV_o[3]~3_combout\,
	combout => \conexionALU|o[1]~22_combout\);

-- Location: IOIBUF_X4_Y0_N1
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X46_Y3_N6
\conexionALU|Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add16~9_sumout\ = SUM(( \b[2]~input_o\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add16~6\ ))
-- \conexionALU|Add16~10\ = CARRY(( \b[2]~input_o\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	cin => \conexionALU|Add16~6\,
	sumout => \conexionALU|Add16~9_sumout\,
	cout => \conexionALU|Add16~10\);

-- Location: LABCELL_X40_Y3_N48
\conexionALU|o[2]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~27_combout\ = ( \seleccion[0]~input_o\ & ( \seleccion[2]~input_o\ & ( (\a[2]~input_o\ & (!\b[2]~input_o\ $ (((\b[0]~input_o\ & \b[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_seleccion[0]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[2]~27_combout\);

-- Location: LABCELL_X40_Y3_N36
\conexionALU|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add10~9_sumout\ = SUM(( !\b[2]~input_o\ $ (\a[2]~input_o\) ) + ( \conexionALU|Add10~7\ ) + ( \conexionALU|Add10~6\ ))
-- \conexionALU|Add10~10\ = CARRY(( !\b[2]~input_o\ $ (\a[2]~input_o\) ) + ( \conexionALU|Add10~7\ ) + ( \conexionALU|Add10~6\ ))
-- \conexionALU|Add10~11\ = SHARE((!\b[2]~input_o\ & \a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	cin => \conexionALU|Add10~6\,
	sharein => \conexionALU|Add10~7\,
	sumout => \conexionALU|Add10~9_sumout\,
	cout => \conexionALU|Add10~10\,
	shareout => \conexionALU|Add10~11\);

-- Location: LABCELL_X43_Y3_N6
\conexionALU|Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add19~9_sumout\ = SUM(( !\b[2]~input_o\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add19~6\ ))
-- \conexionALU|Add19~10\ = CARRY(( !\b[2]~input_o\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add19~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	cin => \conexionALU|Add19~6\,
	sumout => \conexionALU|Add19~9_sumout\,
	cout => \conexionALU|Add19~10\);

-- Location: LABCELL_X40_Y3_N18
\conexionALU|o[2]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~49_combout\ = ( !\seleccion[2]~input_o\ & ( ((((\seleccion[0]~input_o\)) # (\conexionALU|Add19~9_sumout\))) # (\conexionALU|o[2]~27_combout\) ) ) # ( \seleccion[2]~input_o\ & ( ((!\seleccion[0]~input_o\ & (!\conexionALU|Add10~9_sumout\ $ 
-- (((\conexionALU|Add10~1_sumout\) # (\conexionALU|Add10~5_sumout\)))))) # (\conexionALU|o[2]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111111111111110101110101010101011111111111110111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[2]~27_combout\,
	datab => \conexionALU|ALT_INV_Add10~9_sumout\,
	datac => \conexionALU|ALT_INV_Add10~5_sumout\,
	datad => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \conexionALU|ALT_INV_Add10~1_sumout\,
	datag => \conexionALU|ALT_INV_Add19~9_sumout\,
	combout => \conexionALU|o[2]~49_combout\);

-- Location: LABCELL_X43_Y4_N6
\conexionALU|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add6~9_sumout\ = SUM(( (!\b[2]~input_o\ & \a[2]~input_o\) ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add6~6\ ))
-- \conexionALU|Add6~10\ = CARRY(( (!\b[2]~input_o\ & \a[2]~input_o\) ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	cin => \conexionALU|Add6~6\,
	sumout => \conexionALU|Add6~9_sumout\,
	cout => \conexionALU|Add6~10\);

-- Location: LABCELL_X45_Y3_N36
\conexionALU|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add11~9_sumout\ = SUM(( (\a[2]~input_o\ & \b[2]~input_o\) ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add11~6\ ))
-- \conexionALU|Add11~10\ = CARRY(( (\a[2]~input_o\ & \b[2]~input_o\) ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	cin => \conexionALU|Add11~6\,
	sumout => \conexionALU|Add11~9_sumout\,
	cout => \conexionALU|Add11~10\);

-- Location: LABCELL_X40_Y3_N6
\conexionALU|Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add17~5_sumout\ = SUM(( \a[2]~input_o\ ) + ( \conexionALU|Add16~9_sumout\ ) + ( \conexionALU|Add17~2\ ))
-- \conexionALU|Add17~6\ = CARRY(( \a[2]~input_o\ ) + ( \conexionALU|Add16~9_sumout\ ) + ( \conexionALU|Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	dataf => \conexionALU|ALT_INV_Add16~9_sumout\,
	cin => \conexionALU|Add17~2\,
	sumout => \conexionALU|Add17~5_sumout\,
	cout => \conexionALU|Add17~6\);

-- Location: LABCELL_X45_Y3_N45
\conexionALU|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add3~0_combout\ = ( \a[1]~input_o\ & ( !\a[2]~input_o\ ) ) # ( !\a[1]~input_o\ & ( !\a[0]~input_o\ $ (!\a[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \conexionALU|Add3~0_combout\);

-- Location: LABCELL_X43_Y3_N36
\conexionALU|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add14~9_sumout\ = SUM(( (\b[2]~input_o\ & \a[2]~input_o\) ) + ( \conexionALU|Add19~9_sumout\ ) + ( \conexionALU|Add14~6\ ))
-- \conexionALU|Add14~10\ = CARRY(( (\b[2]~input_o\ & \a[2]~input_o\) ) + ( \conexionALU|Add19~9_sumout\ ) + ( \conexionALU|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	dataf => \conexionALU|ALT_INV_Add19~9_sumout\,
	cin => \conexionALU|Add14~6\,
	sumout => \conexionALU|Add14~9_sumout\,
	cout => \conexionALU|Add14~10\);

-- Location: LABCELL_X42_Y3_N36
\conexionALU|Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add20~5_sumout\ = SUM(( \conexionALU|Add19~9_sumout\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add20~2\ ))
-- \conexionALU|Add20~6\ = CARRY(( \conexionALU|Add19~9_sumout\ ) + ( \a[2]~input_o\ ) + ( \conexionALU|Add20~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	datad => \conexionALU|ALT_INV_Add19~9_sumout\,
	cin => \conexionALU|Add20~2\,
	sumout => \conexionALU|Add20~5_sumout\,
	cout => \conexionALU|Add20~6\);

-- Location: LABCELL_X45_Y3_N12
\conexionALU|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add2~1_combout\ = ( \b[0]~input_o\ & ( \a[1]~input_o\ & ( (!\b[2]~input_o\ & (((\a[0]~input_o\)) # (\b[1]~input_o\))) # (\b[2]~input_o\ & (!\a[2]~input_o\ $ (((!\b[1]~input_o\ & !\a[0]~input_o\))))) ) ) ) # ( !\b[0]~input_o\ & ( 
-- \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\b[2]~input_o\) # (!\a[2]~input_o\))) ) ) ) # ( \b[0]~input_o\ & ( !\a[1]~input_o\ & ( !\a[0]~input_o\ $ (((!\b[2]~input_o\) # (!\a[2]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\a[1]~input_o\ & ( (\b[2]~input_o\ & 
-- \a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101101000110011011001100011111101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \conexionALU|Add2~1_combout\);

-- Location: LABCELL_X42_Y3_N24
\conexionALU|o[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~25_combout\ = ( \seleccion[2]~input_o\ & ( \seleccion[0]~input_o\ & ( !\conexionALU|Add3~0_combout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( \seleccion[0]~input_o\ & ( !\conexionALU|Add2~1_combout\ ) ) ) # ( \seleccion[2]~input_o\ & ( 
-- !\seleccion[0]~input_o\ & ( \conexionALU|Add20~5_sumout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( !\seleccion[0]~input_o\ & ( \conexionALU|Add14~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111111111000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add3~0_combout\,
	datab => \conexionALU|ALT_INV_Add14~9_sumout\,
	datac => \conexionALU|ALT_INV_Add20~5_sumout\,
	datad => \conexionALU|ALT_INV_Add2~1_combout\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \ALT_INV_seleccion[0]~input_o\,
	combout => \conexionALU|o[2]~25_combout\);

-- Location: MLABCELL_X39_Y3_N54
\conexionALU|o[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~26_combout\ = ( \seleccion[0]~input_o\ & ( (!\seleccion[1]~input_o\ & (\conexionALU|Add17~5_sumout\)) # (\seleccion[1]~input_o\ & ((\conexionALU|o[2]~25_combout\))) ) ) # ( !\seleccion[0]~input_o\ & ( (!\seleccion[1]~input_o\ & 
-- (\conexionALU|Add11~9_sumout\)) # (\seleccion[1]~input_o\ & ((\conexionALU|o[2]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[1]~input_o\,
	datab => \conexionALU|ALT_INV_Add11~9_sumout\,
	datac => \conexionALU|ALT_INV_Add17~5_sumout\,
	datad => \conexionALU|ALT_INV_o[2]~25_combout\,
	dataf => \ALT_INV_seleccion[0]~input_o\,
	combout => \conexionALU|o[2]~26_combout\);

-- Location: LABCELL_X46_Y3_N36
\conexionALU|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add8~9_sumout\ = SUM(( (!\b[2]~input_o\) # (!\a[2]~input_o\) ) + ( \conexionALU|Add16~9_sumout\ ) + ( \conexionALU|Add8~6\ ))
-- \conexionALU|Add8~10\ = CARRY(( (!\b[2]~input_o\) # (!\a[2]~input_o\) ) + ( \conexionALU|Add16~9_sumout\ ) + ( \conexionALU|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	dataf => \conexionALU|ALT_INV_Add16~9_sumout\,
	cin => \conexionALU|Add8~6\,
	sumout => \conexionALU|Add8~9_sumout\,
	cout => \conexionALU|Add8~10\);

-- Location: MLABCELL_X39_Y3_N12
\conexionALU|o[2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~28_combout\ = ( \conexionALU|o[2]~26_combout\ & ( \conexionALU|Add8~9_sumout\ & ( (!\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\)) # (\conexionALU|o[2]~49_combout\))) # (\conexionALU|o[3]~14_combout\ & 
-- (((\conexionALU|Add6~9_sumout\) # (\conexionALU|o[3]~13_combout\)))) ) ) ) # ( !\conexionALU|o[2]~26_combout\ & ( \conexionALU|Add8~9_sumout\ & ( (!\conexionALU|o[3]~14_combout\ & (\conexionALU|o[2]~49_combout\ & (\conexionALU|o[3]~13_combout\))) # 
-- (\conexionALU|o[3]~14_combout\ & (((\conexionALU|Add6~9_sumout\) # (\conexionALU|o[3]~13_combout\)))) ) ) ) # ( \conexionALU|o[2]~26_combout\ & ( !\conexionALU|Add8~9_sumout\ & ( (!\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\)) # 
-- (\conexionALU|o[2]~49_combout\))) # (\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\ & \conexionALU|Add6~9_sumout\)))) ) ) ) # ( !\conexionALU|o[2]~26_combout\ & ( !\conexionALU|Add8~9_sumout\ & ( (!\conexionALU|o[3]~14_combout\ & 
-- (\conexionALU|o[2]~49_combout\ & (\conexionALU|o[3]~13_combout\))) # (\conexionALU|o[3]~14_combout\ & (((!\conexionALU|o[3]~13_combout\ & \conexionALU|Add6~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[2]~49_combout\,
	datab => \conexionALU|ALT_INV_o[3]~14_combout\,
	datac => \conexionALU|ALT_INV_o[3]~13_combout\,
	datad => \conexionALU|ALT_INV_Add6~9_sumout\,
	datae => \conexionALU|ALT_INV_o[2]~26_combout\,
	dataf => \conexionALU|ALT_INV_Add8~9_sumout\,
	combout => \conexionALU|o[2]~28_combout\);

-- Location: LABCELL_X42_Y3_N42
\conexionALU|Add21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add21~1_combout\ = ( \conexionALU|Add20~1_sumout\ & ( !\conexionALU|Add20~5_sumout\ $ (\b[0]~input_o\) ) ) # ( !\conexionALU|Add20~1_sumout\ & ( \conexionALU|Add20~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add20~5_sumout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \conexionALU|ALT_INV_Add20~1_sumout\,
	combout => \conexionALU|Add21~1_combout\);

-- Location: LABCELL_X43_Y3_N27
\conexionALU|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add5~0_combout\ = ( \conexionALU|Add19~9_sumout\ & ( (!\conexionALU|Add19~1_sumout\) # (!\conexionALU|Add19~5_sumout\) ) ) # ( !\conexionALU|Add19~9_sumout\ & ( (\conexionALU|Add19~1_sumout\ & \conexionALU|Add19~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add19~1_sumout\,
	datad => \conexionALU|ALT_INV_Add19~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add19~9_sumout\,
	combout => \conexionALU|Add5~0_combout\);

-- Location: LABCELL_X42_Y3_N45
\conexionALU|Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add15~1_combout\ = ( \conexionALU|Add14~5_sumout\ & ( !\conexionALU|Add14~1_sumout\ $ (!\conexionALU|Add14~9_sumout\) ) ) # ( !\conexionALU|Add14~5_sumout\ & ( \conexionALU|Add14~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add14~1_sumout\,
	datac => \conexionALU|ALT_INV_Add14~9_sumout\,
	dataf => \conexionALU|ALT_INV_Add14~5_sumout\,
	combout => \conexionALU|Add15~1_combout\);

-- Location: LABCELL_X42_Y3_N18
\conexionALU|o[2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~24_combout\ = ( \seleccion[2]~input_o\ & ( \seleccion[3]~input_o\ & ( \conexionALU|Add21~1_combout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( \seleccion[3]~input_o\ & ( \conexionALU|Add15~1_combout\ ) ) ) # ( \seleccion[2]~input_o\ & ( 
-- !\seleccion[3]~input_o\ & ( \conexionALU|Add10~9_sumout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( !\seleccion[3]~input_o\ & ( \conexionALU|Add5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add10~9_sumout\,
	datab => \conexionALU|ALT_INV_Add21~1_combout\,
	datac => \conexionALU|ALT_INV_Add5~0_combout\,
	datad => \conexionALU|ALT_INV_Add15~1_combout\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[2]~24_combout\);

-- Location: LABCELL_X45_Y3_N51
\conexionALU|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add12~1_combout\ = ( \conexionALU|Add11~5_sumout\ & ( !\conexionALU|Add11~9_sumout\ $ (!\conexionALU|Add11~1_sumout\) ) ) # ( !\conexionALU|Add11~5_sumout\ & ( \conexionALU|Add11~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add11~9_sumout\,
	datab => \conexionALU|ALT_INV_Add11~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add11~5_sumout\,
	combout => \conexionALU|Add12~1_combout\);

-- Location: LABCELL_X45_Y3_N42
\conexionALU|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add4~1_combout\ = ( \a[1]~input_o\ & ( !\a[0]~input_o\ $ (!\a[2]~input_o\) ) ) # ( !\a[1]~input_o\ & ( \a[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \conexionALU|Add4~1_combout\);

-- Location: LABCELL_X43_Y4_N39
\conexionALU|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add7~1_combout\ = ( \conexionALU|Add6~1_sumout\ & ( \conexionALU|Add6~9_sumout\ & ( !\conexionALU|Add6~5_sumout\ ) ) ) # ( !\conexionALU|Add6~1_sumout\ & ( \conexionALU|Add6~9_sumout\ ) ) # ( \conexionALU|Add6~1_sumout\ & ( 
-- !\conexionALU|Add6~9_sumout\ & ( \conexionALU|Add6~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add6~5_sumout\,
	datae => \conexionALU|ALT_INV_Add6~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add6~9_sumout\,
	combout => \conexionALU|Add7~1_combout\);

-- Location: LABCELL_X46_Y3_N45
\conexionALU|Add18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add18~0_combout\ = ( \conexionALU|Add17~1_sumout\ & ( !\b[0]~input_o\ $ (!\conexionALU|Add17~5_sumout\) ) ) # ( !\conexionALU|Add17~1_sumout\ & ( \conexionALU|Add17~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \conexionALU|ALT_INV_Add17~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add17~1_sumout\,
	combout => \conexionALU|Add18~0_combout\);

-- Location: LABCELL_X46_Y3_N42
\conexionALU|Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add9~0_combout\ = ( \conexionALU|Add8~5_sumout\ & ( !\conexionALU|Add8~1_sumout\ $ (!\conexionALU|Add8~9_sumout\) ) ) # ( !\conexionALU|Add8~5_sumout\ & ( \conexionALU|Add8~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add8~1_sumout\,
	datac => \conexionALU|ALT_INV_Add8~9_sumout\,
	dataf => \conexionALU|ALT_INV_Add8~5_sumout\,
	combout => \conexionALU|Add9~0_combout\);

-- Location: LABCELL_X46_Y3_N12
\conexionALU|o[2]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~53_combout\ = ( !\seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & (!\conexionALU|Add16~9_sumout\ $ (((!\conexionALU|Add16~5_sumout\) # ((!\conexionALU|Add16~1_sumout\)))))) # (\seleccion[2]~input_o\ & 
-- ((((\conexionALU|Add9~0_combout\))))) ) ) # ( \seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & (!\conexionALU|Add16~9_sumout\ $ (((!\conexionALU|Add16~5_sumout\) # ((!\conexionALU|Add16~1_sumout\)))))) # (\seleccion[2]~input_o\ & 
-- ((((\conexionALU|Add18~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001101100110001100110110011000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~5_sumout\,
	datab => \conexionALU|ALT_INV_Add16~9_sumout\,
	datac => \conexionALU|ALT_INV_Add18~0_combout\,
	datad => \conexionALU|ALT_INV_Add16~1_sumout\,
	datae => \ALT_INV_seleccion[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	datag => \conexionALU|ALT_INV_Add9~0_combout\,
	combout => \conexionALU|o[2]~53_combout\);

-- Location: LABCELL_X45_Y3_N24
\conexionALU|o[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~23_combout\ = ( \conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add7~1_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add12~1_combout\ ) ) ) # ( 
-- \conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( \conexionALU|Add4~1_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( \conexionALU|o[2]~53_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add12~1_combout\,
	datab => \conexionALU|ALT_INV_Add4~1_combout\,
	datac => \conexionALU|ALT_INV_Add7~1_combout\,
	datad => \conexionALU|ALT_INV_o[2]~53_combout\,
	datae => \conexionALU|ALT_INV_o[3]~7_combout\,
	dataf => \conexionALU|ALT_INV_o[3]~6_combout\,
	combout => \conexionALU|o[2]~23_combout\);

-- Location: MLABCELL_X39_Y3_N18
\conexionALU|o[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~29_combout\ = ( \ci~input_o\ & ( \conexionALU|o[2]~23_combout\ & ( (!\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[2]~28_combout\))) # (\conexionALU|o[3]~16_combout\ & (\conexionALU|Add16~9_sumout\)) ) ) ) # ( !\ci~input_o\ & ( 
-- \conexionALU|o[2]~23_combout\ & ( (!\conexionALU|o[3]~16_combout\) # (\conexionALU|o[2]~24_combout\) ) ) ) # ( \ci~input_o\ & ( !\conexionALU|o[2]~23_combout\ & ( (!\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[2]~28_combout\))) # 
-- (\conexionALU|o[3]~16_combout\ & (\conexionALU|Add16~9_sumout\)) ) ) ) # ( !\ci~input_o\ & ( !\conexionALU|o[2]~23_combout\ & ( (\conexionALU|o[2]~24_combout\ & \conexionALU|o[3]~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~9_sumout\,
	datab => \conexionALU|ALT_INV_o[2]~28_combout\,
	datac => \conexionALU|ALT_INV_o[2]~24_combout\,
	datad => \conexionALU|ALT_INV_o[3]~16_combout\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \conexionALU|ALT_INV_o[2]~23_combout\,
	combout => \conexionALU|o[2]~29_combout\);

-- Location: LABCELL_X42_Y4_N27
\conexionALU|o[2]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~31_combout\ = ( \seleccion[2]~input_o\ & ( (!\a[2]~input_o\ & ((\b[2]~input_o\))) # (\a[2]~input_o\ & ((!\b[2]~input_o\) # (\seleccion[3]~input_o\))) ) ) # ( !\seleccion[2]~input_o\ & ( (\b[2]~input_o\ & ((!\a[2]~input_o\) # 
-- (\seleccion[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100111101001111010011110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[2]~31_combout\);

-- Location: LABCELL_X42_Y4_N24
\conexionALU|o[2]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~30_combout\ = ( \seleccion[2]~input_o\ & ( (!\seleccion[3]~input_o\ & (\b[2]~input_o\ & ((\seleccion[0]~input_o\) # (\a[2]~input_o\)))) # (\seleccion[3]~input_o\ & (\seleccion[0]~input_o\ & (!\a[2]~input_o\ $ (!\b[2]~input_o\)))) ) ) # ( 
-- !\seleccion[2]~input_o\ & ( (!\a[2]~input_o\ & (((\seleccion[0]~input_o\ & \b[2]~input_o\)))) # (\a[2]~input_o\ & ((!\seleccion[3]~input_o\) # ((!\b[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100101110001100110010111000000001001011100000000100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[2]~30_combout\);

-- Location: LABCELL_X42_Y4_N0
\conexionALU|o[2]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~32_combout\ = ( \conexionALU|o[2]~31_combout\ & ( \conexionALU|o[2]~30_combout\ & ( (!\conexionALU|o[3]~20_combout\ & (\conexionALU|o[2]~29_combout\ & ((!\m~input_o\)))) # (\conexionALU|o[3]~20_combout\ & (((\m~input_o\) # 
-- (\a[1]~input_o\)))) ) ) ) # ( !\conexionALU|o[2]~31_combout\ & ( \conexionALU|o[2]~30_combout\ & ( (!\m~input_o\ & ((!\conexionALU|o[3]~20_combout\ & (\conexionALU|o[2]~29_combout\)) # (\conexionALU|o[3]~20_combout\ & ((\a[1]~input_o\))))) ) ) ) # ( 
-- \conexionALU|o[2]~31_combout\ & ( !\conexionALU|o[2]~30_combout\ & ( ((!\conexionALU|o[3]~20_combout\ & (\conexionALU|o[2]~29_combout\)) # (\conexionALU|o[3]~20_combout\ & ((\a[1]~input_o\)))) # (\m~input_o\) ) ) ) # ( !\conexionALU|o[2]~31_combout\ & ( 
-- !\conexionALU|o[2]~30_combout\ & ( (!\conexionALU|o[3]~20_combout\ & (((\m~input_o\)) # (\conexionALU|o[2]~29_combout\))) # (\conexionALU|o[3]~20_combout\ & (((\a[1]~input_o\ & !\m~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001100010001111111111101000111000000000100011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[2]~29_combout\,
	datab => \conexionALU|ALT_INV_o[3]~20_combout\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_m~input_o\,
	datae => \conexionALU|ALT_INV_o[2]~31_combout\,
	dataf => \conexionALU|ALT_INV_o[2]~30_combout\,
	combout => \conexionALU|o[2]~32_combout\);

-- Location: LABCELL_X42_Y4_N36
\conexionALU|o[2]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[2]~33_combout\ = ( \b[2]~input_o\ & ( \conexionALU|o[3]~3_combout\ & ( (!\conexionALU|o[3]~2_combout\ & \a[2]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \conexionALU|o[3]~3_combout\ & ( (\a[2]~input_o\ & ((!\conexionALU|o[3]~1_combout\) # 
-- (\conexionALU|o[3]~2_combout\))) ) ) ) # ( \b[2]~input_o\ & ( !\conexionALU|o[3]~3_combout\ & ( (!\conexionALU|o[3]~2_combout\ & (\conexionALU|o[2]~32_combout\ & !\conexionALU|o[3]~1_combout\)) ) ) ) # ( !\b[2]~input_o\ & ( !\conexionALU|o[3]~3_combout\ & 
-- ( (!\conexionALU|o[3]~2_combout\ & (((\conexionALU|o[2]~32_combout\ & !\conexionALU|o[3]~1_combout\)))) # (\conexionALU|o[3]~2_combout\ & (\a[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100010001000010100000000000110011000100010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~2_combout\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \conexionALU|ALT_INV_o[2]~32_combout\,
	datad => \conexionALU|ALT_INV_o[3]~1_combout\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \conexionALU|ALT_INV_o[3]~3_combout\,
	combout => \conexionALU|o[2]~33_combout\);

-- Location: IOIBUF_X4_Y0_N35
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X42_Y4_N12
\conexionALU|o[3]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~41_combout\ = ( \seleccion[2]~input_o\ & ( (!\seleccion[3]~input_o\ & (\b[3]~input_o\ & ((\a[3]~input_o\) # (\seleccion[0]~input_o\)))) # (\seleccion[3]~input_o\ & (\seleccion[0]~input_o\ & (!\b[3]~input_o\ $ (!\a[3]~input_o\)))) ) ) # ( 
-- !\seleccion[2]~input_o\ & ( (!\b[3]~input_o\ & (((\a[3]~input_o\)))) # (\b[3]~input_o\ & ((!\a[3]~input_o\ & ((\seleccion[0]~input_o\))) # (\a[3]~input_o\ & (!\seleccion[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111101110000000111110111000000011001001100000001100100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~41_combout\);

-- Location: LABCELL_X46_Y3_N9
\conexionALU|Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add16~13_sumout\ = SUM(( \b[3]~input_o\ ) + ( \a[3]~input_o\ ) + ( \conexionALU|Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add16~10\,
	sumout => \conexionALU|Add16~13_sumout\);

-- Location: LABCELL_X45_Y3_N39
\conexionALU|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add11~13_sumout\ = SUM(( (\a[3]~input_o\ & \b[3]~input_o\) ) + ( \a[3]~input_o\ ) + ( \conexionALU|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add11~10\,
	sumout => \conexionALU|Add11~13_sumout\);

-- Location: LABCELL_X40_Y3_N9
\conexionALU|Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add17~9_sumout\ = SUM(( \conexionALU|Add16~13_sumout\ ) + ( \a[3]~input_o\ ) + ( \conexionALU|Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \conexionALU|ALT_INV_Add16~13_sumout\,
	cin => \conexionALU|Add17~6\,
	sumout => \conexionALU|Add17~9_sumout\);

-- Location: LABCELL_X43_Y3_N9
\conexionALU|Add19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add19~13_sumout\ = SUM(( \a[3]~input_o\ ) + ( !\b[3]~input_o\ ) + ( \conexionALU|Add19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	cin => \conexionALU|Add19~10\,
	sumout => \conexionALU|Add19~13_sumout\);

-- Location: LABCELL_X42_Y3_N39
\conexionALU|Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add20~9_sumout\ = SUM(( \conexionALU|Add19~13_sumout\ ) + ( \a[3]~input_o\ ) + ( \conexionALU|Add20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \conexionALU|ALT_INV_Add19~13_sumout\,
	cin => \conexionALU|Add20~6\,
	sumout => \conexionALU|Add20~9_sumout\);

-- Location: LABCELL_X43_Y3_N39
\conexionALU|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add14~13_sumout\ = SUM(( (\a[3]~input_o\ & \b[3]~input_o\) ) + ( \conexionALU|Add19~13_sumout\ ) + ( \conexionALU|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \conexionALU|ALT_INV_Add19~13_sumout\,
	datad => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add14~10\,
	sumout => \conexionALU|Add14~13_sumout\);

-- Location: LABCELL_X43_Y3_N51
\conexionALU|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add2~2_combout\ = ( \b[0]~input_o\ & ( ((\a[1]~input_o\ & \b[1]~input_o\)) # (\a[0]~input_o\) ) ) # ( !\b[0]~input_o\ & ( (\a[1]~input_o\ & \b[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \conexionALU|Add2~2_combout\);

-- Location: LABCELL_X43_Y3_N57
\conexionALU|Add2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add2~3_combout\ = ( \a[3]~input_o\ & ( \conexionALU|Add2~2_combout\ & ( \b[3]~input_o\ ) ) ) # ( \a[3]~input_o\ & ( !\conexionALU|Add2~2_combout\ & ( !\b[3]~input_o\ $ (((\a[2]~input_o\ & \b[2]~input_o\))) ) ) ) # ( !\a[3]~input_o\ & ( 
-- !\conexionALU|Add2~2_combout\ & ( (!\a[2]~input_o\) # (!\b[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \conexionALU|ALT_INV_Add2~2_combout\,
	combout => \conexionALU|Add2~3_combout\);

-- Location: LABCELL_X43_Y3_N24
\conexionALU|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add3~1_combout\ = ( \a[2]~input_o\ & ( !\a[3]~input_o\ ) ) # ( !\a[2]~input_o\ & ( !\a[3]~input_o\ $ (((!\a[0]~input_o\ & !\a[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \conexionALU|Add3~1_combout\);

-- Location: LABCELL_X42_Y3_N54
\conexionALU|o[3]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~37_combout\ = ( \seleccion[2]~input_o\ & ( \conexionALU|Add3~1_combout\ & ( (!\seleccion[0]~input_o\ & \conexionALU|Add20~9_sumout\) ) ) ) # ( !\seleccion[2]~input_o\ & ( \conexionALU|Add3~1_combout\ & ( (!\seleccion[0]~input_o\ & 
-- (\conexionALU|Add14~13_sumout\)) # (\seleccion[0]~input_o\ & ((\conexionALU|Add2~3_combout\))) ) ) ) # ( \seleccion[2]~input_o\ & ( !\conexionALU|Add3~1_combout\ & ( (\conexionALU|Add20~9_sumout\) # (\seleccion[0]~input_o\) ) ) ) # ( 
-- !\seleccion[2]~input_o\ & ( !\conexionALU|Add3~1_combout\ & ( (!\seleccion[0]~input_o\ & (\conexionALU|Add14~13_sumout\)) # (\seleccion[0]~input_o\ & ((\conexionALU|Add2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111011101110111011100001010010111110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[0]~input_o\,
	datab => \conexionALU|ALT_INV_Add20~9_sumout\,
	datac => \conexionALU|ALT_INV_Add14~13_sumout\,
	datad => \conexionALU|ALT_INV_Add2~3_combout\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \conexionALU|ALT_INV_Add3~1_combout\,
	combout => \conexionALU|o[3]~37_combout\);

-- Location: LABCELL_X42_Y3_N3
\conexionALU|o[3]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~38_combout\ = ( \seleccion[0]~input_o\ & ( (!\seleccion[1]~input_o\ & (\conexionALU|Add17~9_sumout\)) # (\seleccion[1]~input_o\ & ((\conexionALU|o[3]~37_combout\))) ) ) # ( !\seleccion[0]~input_o\ & ( (!\seleccion[1]~input_o\ & 
-- (\conexionALU|Add11~13_sumout\)) # (\seleccion[1]~input_o\ & ((\conexionALU|o[3]~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add11~13_sumout\,
	datab => \ALT_INV_seleccion[1]~input_o\,
	datac => \conexionALU|ALT_INV_Add17~9_sumout\,
	datad => \conexionALU|ALT_INV_o[3]~37_combout\,
	dataf => \ALT_INV_seleccion[0]~input_o\,
	combout => \conexionALU|o[3]~38_combout\);

-- Location: LABCELL_X40_Y3_N57
\conexionALU|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add0~0_combout\ = ( \conexionALU|Add10~5_sumout\ ) # ( !\conexionALU|Add10~5_sumout\ & ( (\conexionALU|Add10~9_sumout\) # (\conexionALU|Add10~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conexionALU|ALT_INV_Add10~1_sumout\,
	datad => \conexionALU|ALT_INV_Add10~9_sumout\,
	dataf => \conexionALU|ALT_INV_Add10~5_sumout\,
	combout => \conexionALU|Add0~0_combout\);

-- Location: LABCELL_X43_Y3_N12
\conexionALU|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add1~0_combout\ = ( \b[0]~input_o\ & ( !\b[3]~input_o\ $ (((\b[1]~input_o\ & \b[2]~input_o\))) ) ) # ( !\b[0]~input_o\ & ( !\b[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \conexionALU|Add1~0_combout\);

-- Location: LABCELL_X40_Y3_N39
\conexionALU|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add10~13_sumout\ = SUM(( !\a[3]~input_o\ $ (\b[3]~input_o\) ) + ( \conexionALU|Add10~11\ ) + ( \conexionALU|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add10~10\,
	sharein => \conexionALU|Add10~11\,
	sumout => \conexionALU|Add10~13_sumout\);

-- Location: LABCELL_X40_Y3_N42
\conexionALU|o[3]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~45_combout\ = ( !\seleccion[0]~input_o\ & ( ((!\seleccion[2]~input_o\ & (((\conexionALU|Add19~13_sumout\)))) # (\seleccion[2]~input_o\ & (!\conexionALU|Add0~0_combout\ $ (((\conexionALU|Add10~13_sumout\)))))) ) ) # ( 
-- \seleccion[0]~input_o\ & ( (((!\seleccion[2]~input_o\) # ((\conexionALU|Add1~0_combout\ & \a[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111110101010010101010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add0~0_combout\,
	datab => \conexionALU|ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \conexionALU|ALT_INV_Add10~13_sumout\,
	datae => \ALT_INV_seleccion[0]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	datag => \conexionALU|ALT_INV_Add19~13_sumout\,
	combout => \conexionALU|o[3]~45_combout\);

-- Location: LABCELL_X43_Y4_N9
\conexionALU|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add6~13_sumout\ = SUM(( \a[3]~input_o\ ) + ( (\a[3]~input_o\ & !\b[3]~input_o\) ) + ( \conexionALU|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add6~10\,
	sumout => \conexionALU|Add6~13_sumout\);

-- Location: LABCELL_X46_Y3_N39
\conexionALU|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add8~13_sumout\ = SUM(( \conexionALU|Add16~13_sumout\ ) + ( (!\a[3]~input_o\) # (!\b[3]~input_o\) ) + ( \conexionALU|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3]~input_o\,
	datac => \conexionALU|ALT_INV_Add16~13_sumout\,
	dataf => \ALT_INV_b[3]~input_o\,
	cin => \conexionALU|Add8~10\,
	sumout => \conexionALU|Add8~13_sumout\);

-- Location: LABCELL_X40_Y3_N24
\conexionALU|o[3]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~39_combout\ = ( \conexionALU|o[3]~14_combout\ & ( \conexionALU|Add8~13_sumout\ & ( (\conexionALU|Add6~13_sumout\) # (\conexionALU|o[3]~13_combout\) ) ) ) # ( !\conexionALU|o[3]~14_combout\ & ( \conexionALU|Add8~13_sumout\ & ( 
-- (!\conexionALU|o[3]~13_combout\ & (\conexionALU|o[3]~38_combout\)) # (\conexionALU|o[3]~13_combout\ & ((\conexionALU|o[3]~45_combout\))) ) ) ) # ( \conexionALU|o[3]~14_combout\ & ( !\conexionALU|Add8~13_sumout\ & ( (!\conexionALU|o[3]~13_combout\ & 
-- \conexionALU|Add6~13_sumout\) ) ) ) # ( !\conexionALU|o[3]~14_combout\ & ( !\conexionALU|Add8~13_sumout\ & ( (!\conexionALU|o[3]~13_combout\ & (\conexionALU|o[3]~38_combout\)) # (\conexionALU|o[3]~13_combout\ & ((\conexionALU|o[3]~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~38_combout\,
	datab => \conexionALU|ALT_INV_o[3]~45_combout\,
	datac => \conexionALU|ALT_INV_o[3]~13_combout\,
	datad => \conexionALU|ALT_INV_Add6~13_sumout\,
	datae => \conexionALU|ALT_INV_o[3]~14_combout\,
	dataf => \conexionALU|ALT_INV_Add8~13_sumout\,
	combout => \conexionALU|o[3]~39_combout\);

-- Location: LABCELL_X42_Y3_N12
\conexionALU|Add21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add21~2_combout\ = ( \conexionALU|Add20~1_sumout\ & ( !\conexionALU|Add20~9_sumout\ $ (((!\conexionALU|Add20~5_sumout\) # (\b[0]~input_o\))) ) ) # ( !\conexionALU|Add20~1_sumout\ & ( \conexionALU|Add20~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add20~9_sumout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add20~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add20~1_sumout\,
	combout => \conexionALU|Add21~2_combout\);

-- Location: LABCELL_X43_Y3_N15
\conexionALU|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add5~1_combout\ = ( \conexionALU|Add19~9_sumout\ & ( !\conexionALU|Add19~13_sumout\ $ (((!\conexionALU|Add19~1_sumout\) # (!\conexionALU|Add19~5_sumout\))) ) ) # ( !\conexionALU|Add19~9_sumout\ & ( \conexionALU|Add19~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add19~1_sumout\,
	datac => \conexionALU|ALT_INV_Add19~13_sumout\,
	datad => \conexionALU|ALT_INV_Add19~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add19~9_sumout\,
	combout => \conexionALU|Add5~1_combout\);

-- Location: LABCELL_X42_Y3_N15
\conexionALU|Add15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add15~2_combout\ = ( \conexionALU|Add14~5_sumout\ & ( !\conexionALU|Add14~13_sumout\ $ (((!\conexionALU|Add14~9_sumout\) # (!\conexionALU|Add14~1_sumout\))) ) ) # ( !\conexionALU|Add14~5_sumout\ & ( \conexionALU|Add14~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add14~13_sumout\,
	datac => \conexionALU|ALT_INV_Add14~9_sumout\,
	datad => \conexionALU|ALT_INV_Add14~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add14~5_sumout\,
	combout => \conexionALU|Add15~2_combout\);

-- Location: LABCELL_X42_Y3_N48
\conexionALU|o[3]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~36_combout\ = ( \seleccion[2]~input_o\ & ( \seleccion[3]~input_o\ & ( \conexionALU|Add21~2_combout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( \seleccion[3]~input_o\ & ( \conexionALU|Add15~2_combout\ ) ) ) # ( \seleccion[2]~input_o\ & ( 
-- !\seleccion[3]~input_o\ & ( \conexionALU|Add10~13_sumout\ ) ) ) # ( !\seleccion[2]~input_o\ & ( !\seleccion[3]~input_o\ & ( \conexionALU|Add5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add10~13_sumout\,
	datab => \conexionALU|ALT_INV_Add21~2_combout\,
	datac => \conexionALU|ALT_INV_Add5~1_combout\,
	datad => \conexionALU|ALT_INV_Add15~2_combout\,
	datae => \ALT_INV_seleccion[2]~input_o\,
	dataf => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[3]~36_combout\);

-- Location: LABCELL_X45_Y3_N18
\conexionALU|Add4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add4~2_combout\ = ( \a[3]~input_o\ & ( \a[1]~input_o\ & ( (!\a[2]~input_o\) # (!\a[0]~input_o\) ) ) ) # ( !\a[3]~input_o\ & ( \a[1]~input_o\ & ( (\a[2]~input_o\ & \a[0]~input_o\) ) ) ) # ( \a[3]~input_o\ & ( !\a[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \conexionALU|Add4~2_combout\);

-- Location: LABCELL_X43_Y4_N12
\conexionALU|Add7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add7~2_combout\ = ( \conexionALU|Add6~1_sumout\ & ( \conexionALU|Add6~9_sumout\ & ( !\conexionALU|Add6~13_sumout\ $ (!\conexionALU|Add6~5_sumout\) ) ) ) # ( !\conexionALU|Add6~1_sumout\ & ( \conexionALU|Add6~9_sumout\ & ( 
-- \conexionALU|Add6~13_sumout\ ) ) ) # ( \conexionALU|Add6~1_sumout\ & ( !\conexionALU|Add6~9_sumout\ & ( \conexionALU|Add6~13_sumout\ ) ) ) # ( !\conexionALU|Add6~1_sumout\ & ( !\conexionALU|Add6~9_sumout\ & ( \conexionALU|Add6~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add6~13_sumout\,
	datac => \conexionALU|ALT_INV_Add6~5_sumout\,
	datae => \conexionALU|ALT_INV_Add6~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add6~9_sumout\,
	combout => \conexionALU|Add7~2_combout\);

-- Location: LABCELL_X46_Y3_N54
\conexionALU|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add9~1_combout\ = !\conexionALU|Add8~13_sumout\ $ (((!\conexionALU|Add8~5_sumout\) # ((!\conexionALU|Add8~1_sumout\) # (!\conexionALU|Add8~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add8~5_sumout\,
	datab => \conexionALU|ALT_INV_Add8~1_sumout\,
	datac => \conexionALU|ALT_INV_Add8~9_sumout\,
	datad => \conexionALU|ALT_INV_Add8~13_sumout\,
	combout => \conexionALU|Add9~1_combout\);

-- Location: LABCELL_X46_Y3_N18
\conexionALU|Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add18~1_combout\ = ( \conexionALU|Add17~1_sumout\ & ( !\conexionALU|Add17~9_sumout\ $ (((!\conexionALU|Add17~5_sumout\) # (!\b[0]~input_o\))) ) ) # ( !\conexionALU|Add17~1_sumout\ & ( \conexionALU|Add17~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_Add17~5_sumout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \conexionALU|ALT_INV_Add17~9_sumout\,
	dataf => \conexionALU|ALT_INV_Add17~1_sumout\,
	combout => \conexionALU|Add18~1_combout\);

-- Location: LABCELL_X46_Y3_N21
\conexionALU|Add13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add13~0_combout\ = ( \conexionALU|Add16~9_sumout\ & ( !\conexionALU|Add16~13_sumout\ $ (((!\conexionALU|Add16~5_sumout\) # (!\conexionALU|Add16~1_sumout\))) ) ) # ( !\conexionALU|Add16~9_sumout\ & ( \conexionALU|Add16~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~5_sumout\,
	datac => \conexionALU|ALT_INV_Add16~13_sumout\,
	datad => \conexionALU|ALT_INV_Add16~1_sumout\,
	dataf => \conexionALU|ALT_INV_Add16~9_sumout\,
	combout => \conexionALU|Add13~0_combout\);

-- Location: LABCELL_X46_Y3_N24
\conexionALU|o[3]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~34_combout\ = ( \seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & ((\conexionALU|Add13~0_combout\))) # (\seleccion[2]~input_o\ & (\conexionALU|Add18~1_combout\)) ) ) # ( !\seleccion[3]~input_o\ & ( (!\seleccion[2]~input_o\ & 
-- ((\conexionALU|Add13~0_combout\))) # (\seleccion[2]~input_o\ & (\conexionALU|Add9~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add9~1_combout\,
	datab => \ALT_INV_seleccion[2]~input_o\,
	datac => \conexionALU|ALT_INV_Add18~1_combout\,
	datad => \conexionALU|ALT_INV_Add13~0_combout\,
	dataf => \ALT_INV_seleccion[3]~input_o\,
	combout => \conexionALU|o[3]~34_combout\);

-- Location: LABCELL_X45_Y3_N48
\conexionALU|Add12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|Add12~2_combout\ = ( \conexionALU|Add11~13_sumout\ & ( (!\conexionALU|Add11~9_sumout\) # ((!\conexionALU|Add11~1_sumout\) # (!\conexionALU|Add11~5_sumout\)) ) ) # ( !\conexionALU|Add11~13_sumout\ & ( (\conexionALU|Add11~9_sumout\ & 
-- (\conexionALU|Add11~1_sumout\ & \conexionALU|Add11~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add11~9_sumout\,
	datab => \conexionALU|ALT_INV_Add11~1_sumout\,
	datac => \conexionALU|ALT_INV_Add11~5_sumout\,
	dataf => \conexionALU|ALT_INV_Add11~13_sumout\,
	combout => \conexionALU|Add12~2_combout\);

-- Location: LABCELL_X45_Y3_N57
\conexionALU|o[3]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~35_combout\ = ( \conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add7~2_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( \conexionALU|o[3]~6_combout\ & ( \conexionALU|Add12~2_combout\ ) ) ) # ( 
-- \conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( \conexionALU|Add4~2_combout\ ) ) ) # ( !\conexionALU|o[3]~7_combout\ & ( !\conexionALU|o[3]~6_combout\ & ( \conexionALU|o[3]~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add4~2_combout\,
	datab => \conexionALU|ALT_INV_Add7~2_combout\,
	datac => \conexionALU|ALT_INV_o[3]~34_combout\,
	datad => \conexionALU|ALT_INV_Add12~2_combout\,
	datae => \conexionALU|ALT_INV_o[3]~7_combout\,
	dataf => \conexionALU|ALT_INV_o[3]~6_combout\,
	combout => \conexionALU|o[3]~35_combout\);

-- Location: MLABCELL_X39_Y3_N24
\conexionALU|o[3]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~40_combout\ = ( \ci~input_o\ & ( \conexionALU|o[3]~35_combout\ & ( (!\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[3]~39_combout\))) # (\conexionALU|o[3]~16_combout\ & (\conexionALU|Add16~13_sumout\)) ) ) ) # ( !\ci~input_o\ & ( 
-- \conexionALU|o[3]~35_combout\ & ( (!\conexionALU|o[3]~16_combout\) # (\conexionALU|o[3]~36_combout\) ) ) ) # ( \ci~input_o\ & ( !\conexionALU|o[3]~35_combout\ & ( (!\conexionALU|o[3]~16_combout\ & ((\conexionALU|o[3]~39_combout\))) # 
-- (\conexionALU|o[3]~16_combout\ & (\conexionALU|Add16~13_sumout\)) ) ) ) # ( !\ci~input_o\ & ( !\conexionALU|o[3]~35_combout\ & ( (\conexionALU|o[3]~36_combout\ & \conexionALU|o[3]~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_Add16~13_sumout\,
	datab => \conexionALU|ALT_INV_o[3]~39_combout\,
	datac => \conexionALU|ALT_INV_o[3]~36_combout\,
	datad => \conexionALU|ALT_INV_o[3]~16_combout\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \conexionALU|ALT_INV_o[3]~35_combout\,
	combout => \conexionALU|o[3]~40_combout\);

-- Location: LABCELL_X42_Y4_N15
\conexionALU|o[3]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~42_combout\ = ( \seleccion[2]~input_o\ & ( (!\b[3]~input_o\ & ((\a[3]~input_o\))) # (\b[3]~input_o\ & ((!\a[3]~input_o\) # (\seleccion[3]~input_o\))) ) ) # ( !\seleccion[2]~input_o\ & ( (\b[3]~input_o\ & ((!\a[3]~input_o\) # 
-- (\seleccion[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110011110111010011001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \conexionALU|o[3]~42_combout\);

-- Location: LABCELL_X42_Y4_N48
\conexionALU|o[3]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~43_combout\ = ( \m~input_o\ & ( \conexionALU|o[3]~42_combout\ & ( (!\conexionALU|o[3]~41_combout\) # (\conexionALU|o[3]~20_combout\) ) ) ) # ( !\m~input_o\ & ( \conexionALU|o[3]~42_combout\ & ( (!\conexionALU|o[3]~20_combout\ & 
-- ((\conexionALU|o[3]~40_combout\))) # (\conexionALU|o[3]~20_combout\ & (\a[2]~input_o\)) ) ) ) # ( \m~input_o\ & ( !\conexionALU|o[3]~42_combout\ & ( (!\conexionALU|o[3]~41_combout\ & !\conexionALU|o[3]~20_combout\) ) ) ) # ( !\m~input_o\ & ( 
-- !\conexionALU|o[3]~42_combout\ & ( (!\conexionALU|o[3]~20_combout\ & ((\conexionALU|o[3]~40_combout\))) # (\conexionALU|o[3]~20_combout\ & (\a[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011101010100000000000001111001100111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~41_combout\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \conexionALU|ALT_INV_o[3]~40_combout\,
	datad => \conexionALU|ALT_INV_o[3]~20_combout\,
	datae => \ALT_INV_m~input_o\,
	dataf => \conexionALU|ALT_INV_o[3]~42_combout\,
	combout => \conexionALU|o[3]~43_combout\);

-- Location: LABCELL_X42_Y4_N54
\conexionALU|o[3]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \conexionALU|o[3]~44_combout\ = ( \b[3]~input_o\ & ( \conexionALU|o[3]~3_combout\ & ( (\a[3]~input_o\ & !\conexionALU|o[3]~2_combout\) ) ) ) # ( !\b[3]~input_o\ & ( \conexionALU|o[3]~3_combout\ & ( (\a[3]~input_o\ & ((!\conexionALU|o[3]~1_combout\) # 
-- (\conexionALU|o[3]~2_combout\))) ) ) ) # ( \b[3]~input_o\ & ( !\conexionALU|o[3]~3_combout\ & ( (!\conexionALU|o[3]~2_combout\ & (\conexionALU|o[3]~43_combout\ & !\conexionALU|o[3]~1_combout\)) ) ) ) # ( !\b[3]~input_o\ & ( !\conexionALU|o[3]~3_combout\ & 
-- ( (!\conexionALU|o[3]~2_combout\ & (((\conexionALU|o[3]~43_combout\ & !\conexionALU|o[3]~1_combout\)))) # (\conexionALU|o[3]~2_combout\ & (\a[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100010001000011000000000001010101000100010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \conexionALU|ALT_INV_o[3]~2_combout\,
	datac => \conexionALU|ALT_INV_o[3]~43_combout\,
	datad => \conexionALU|ALT_INV_o[3]~1_combout\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \conexionALU|ALT_INV_o[3]~3_combout\,
	combout => \conexionALU|o[3]~44_combout\);

-- Location: LABCELL_X83_Y8_N3
\deco_salida_alu|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux6~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[1]~22_combout\) # (\conexionALU|o[3]~44_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( 
-- (\conexionALU|o[1]~22_combout\) # (\conexionALU|o[3]~44_combout\) ) ) ) # ( \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[3]~44_combout\) # (\conexionALU|o[1]~22_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( 
-- !\conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[1]~22_combout\) # (\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101011111010111101011111010111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~44_combout\,
	datac => \conexionALU|ALT_INV_o[1]~22_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux6~0_combout\);

-- Location: LABCELL_X83_Y8_N6
\deco_salida_alu|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux5~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( !\conexionALU|o[1]~22_combout\ $ (!\conexionALU|o[3]~44_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( 
-- !\conexionALU|o[3]~44_combout\ ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[1]~22_combout\ & !\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110000111100000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_o[1]~22_combout\,
	datac => \conexionALU|ALT_INV_o[3]~44_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux5~0_combout\);

-- Location: LABCELL_X83_Y8_N42
\deco_salida_alu|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux4~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( !\conexionALU|o[3]~44_combout\ ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[1]~22_combout\) # 
-- (!\conexionALU|o[3]~44_combout\) ) ) ) # ( \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[1]~22_combout\ & !\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111100111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_o[1]~22_combout\,
	datac => \conexionALU|ALT_INV_o[3]~44_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux4~0_combout\);

-- Location: LABCELL_X83_Y8_N21
\deco_salida_alu|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux3~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( \conexionALU|o[1]~22_combout\ ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( !\conexionALU|o[1]~22_combout\ ) ) ) # ( 
-- \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[3]~44_combout\ & !\conexionALU|o[1]~22_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[3]~44_combout\ & 
-- \conexionALU|o[1]~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~44_combout\,
	datac => \conexionALU|ALT_INV_o[1]~22_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux3~0_combout\);

-- Location: LABCELL_X83_Y8_N54
\deco_salida_alu|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux2~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[1]~22_combout\ & \conexionALU|o[3]~44_combout\) ) ) ) # ( \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( 
-- \conexionALU|o[3]~44_combout\ ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[1]~22_combout\ & !\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_o[1]~22_combout\,
	datac => \conexionALU|ALT_INV_o[3]~44_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux2~0_combout\);

-- Location: LABCELL_X83_Y8_N33
\deco_salida_alu|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux1~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( !\conexionALU|o[3]~44_combout\ $ (\conexionALU|o[1]~22_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( 
-- (\conexionALU|o[3]~44_combout\ & \conexionALU|o[1]~22_combout\) ) ) ) # ( \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (\conexionALU|o[1]~22_combout\) # (\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conexionALU|ALT_INV_o[3]~44_combout\,
	datac => \conexionALU|ALT_INV_o[1]~22_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux1~0_combout\);

-- Location: LABCELL_X83_Y8_N36
\deco_salida_alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_salida_alu|Mux0~0_combout\ = ( \conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[1]~22_combout\ & \conexionALU|o[3]~44_combout\) ) ) ) # ( !\conexionALU|o[2]~33_combout\ & ( \conexionALU|o[0]~0_combout\ & ( 
-- !\conexionALU|o[1]~22_combout\ $ (\conexionALU|o[3]~44_combout\) ) ) ) # ( \conexionALU|o[2]~33_combout\ & ( !\conexionALU|o[0]~0_combout\ & ( (!\conexionALU|o[1]~22_combout\ & !\conexionALU|o[3]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conexionALU|ALT_INV_o[1]~22_combout\,
	datac => \conexionALU|ALT_INV_o[3]~44_combout\,
	datae => \conexionALU|ALT_INV_o[2]~33_combout\,
	dataf => \conexionALU|ALT_INV_o[0]~0_combout\,
	combout => \deco_salida_alu|Mux0~0_combout\);

-- Location: MLABCELL_X47_Y5_N36
\deco_entrada_a|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux6~0_combout\ = ( \a[3]~input_o\ & ( ((!\a[2]~input_o\) # (\a[1]~input_o\)) # (\a[0]~input_o\) ) ) # ( !\a[3]~input_o\ & ( (!\a[2]~input_o\ & ((\a[1]~input_o\))) # (\a[2]~input_o\ & ((!\a[0]~input_o\) # (!\a[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux6~0_combout\);

-- Location: MLABCELL_X47_Y5_N42
\deco_entrada_a|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux5~0_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( (\a[2]~input_o\ & !\a[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[2]~input_o\) # (\a[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( 
-- (!\a[2]~input_o\ & \a[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011001111111100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux5~0_combout\);

-- Location: MLABCELL_X47_Y5_N51
\deco_entrada_a|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux4~0_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( (!\a[1]~input_o\ & !\a[2]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( !\a[3]~input_o\ ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[1]~input_o\ & \a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux4~0_combout\);

-- Location: MLABCELL_X47_Y5_N39
\deco_entrada_a|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux3~0_combout\ = ( \a[3]~input_o\ & ( (!\a[0]~input_o\ & (!\a[2]~input_o\ & \a[1]~input_o\)) # (\a[0]~input_o\ & (!\a[2]~input_o\ $ (\a[1]~input_o\))) ) ) # ( !\a[3]~input_o\ & ( (!\a[0]~input_o\ & (\a[2]~input_o\ & !\a[1]~input_o\)) # 
-- (\a[0]~input_o\ & (!\a[2]~input_o\ $ (\a[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000101001001010010010100100101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux3~0_combout\);

-- Location: MLABCELL_X47_Y5_N57
\deco_entrada_a|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux2~0_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( (\a[1]~input_o\ & \a[2]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \a[3]~input_o\ & ( \a[2]~input_o\ ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (\a[1]~input_o\ & 
-- !\a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux2~0_combout\);

-- Location: MLABCELL_X47_Y5_N3
\deco_entrada_a|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux1~0_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( \a[1]~input_o\ ) ) ) # ( !\a[0]~input_o\ & ( \a[3]~input_o\ & ( \a[2]~input_o\ ) ) ) # ( \a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[1]~input_o\ & \a[2]~input_o\) ) ) ) # ( 
-- !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (\a[1]~input_o\ & \a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux1~0_combout\);

-- Location: MLABCELL_X47_Y5_N9
\deco_entrada_a|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_a|Mux0~0_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( !\a[1]~input_o\ $ (!\a[2]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[1]~input_o\ & !\a[2]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( 
-- (!\a[1]~input_o\ & \a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \deco_entrada_a|Mux0~0_combout\);

-- Location: MLABCELL_X47_Y5_N15
\deco_entrada_b|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux6~0_combout\ = ( \b[1]~input_o\ & ( (!\b[0]~input_o\) # ((!\b[2]~input_o\) # (\b[3]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( (!\b[3]~input_o\ & ((\b[2]~input_o\))) # (\b[3]~input_o\ & ((!\b[2]~input_o\) # (\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101001111010011110111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux6~0_combout\);

-- Location: MLABCELL_X47_Y5_N18
\deco_entrada_b|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux5~0_combout\ = ( \b[1]~input_o\ & ( (!\b[3]~input_o\ & ((!\b[2]~input_o\) # (\b[0]~input_o\))) ) ) # ( !\b[1]~input_o\ & ( (\b[0]~input_o\ & (!\b[3]~input_o\ $ (\b[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000111001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux5~0_combout\);

-- Location: MLABCELL_X47_Y5_N21
\deco_entrada_b|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux4~0_combout\ = ( \b[1]~input_o\ & ( (\b[0]~input_o\ & !\b[3]~input_o\) ) ) # ( !\b[1]~input_o\ & ( (!\b[2]~input_o\ & (\b[0]~input_o\)) # (\b[2]~input_o\ & ((!\b[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux4~0_combout\);

-- Location: LABCELL_X43_Y3_N48
\deco_entrada_b|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux3~0_combout\ = ( \b[0]~input_o\ & ( !\b[1]~input_o\ $ (\b[2]~input_o\) ) ) # ( !\b[0]~input_o\ & ( (!\b[1]~input_o\ & (!\b[3]~input_o\ & \b[2]~input_o\)) # (\b[1]~input_o\ & (\b[3]~input_o\ & !\b[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \deco_entrada_b|Mux3~0_combout\);

-- Location: MLABCELL_X47_Y5_N24
\deco_entrada_b|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux2~0_combout\ = ( \b[1]~input_o\ & ( (!\b[3]~input_o\ & (!\b[0]~input_o\ & !\b[2]~input_o\)) # (\b[3]~input_o\ & ((\b[2]~input_o\))) ) ) # ( !\b[1]~input_o\ & ( (\b[3]~input_o\ & (!\b[0]~input_o\ & \b[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux2~0_combout\);

-- Location: MLABCELL_X47_Y5_N27
\deco_entrada_b|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux1~0_combout\ = ( \b[1]~input_o\ & ( (!\b[0]~input_o\ & ((\b[2]~input_o\))) # (\b[0]~input_o\ & (\b[3]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( (\b[2]~input_o\ & (!\b[0]~input_o\ $ (!\b[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux1~0_combout\);

-- Location: MLABCELL_X47_Y5_N12
\deco_entrada_b|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_entrada_b|Mux0~0_combout\ = ( \b[1]~input_o\ & ( (\b[3]~input_o\ & (\b[0]~input_o\ & !\b[2]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( (!\b[3]~input_o\ & (!\b[0]~input_o\ $ (!\b[2]~input_o\))) # (\b[3]~input_o\ & (\b[0]~input_o\ & \b[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \deco_entrada_b|Mux0~0_combout\);

-- Location: LABCELL_X57_Y5_N0
\deco_seleccion|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux6~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[2]~input_o\) # ((!\seleccion[0]~input_o\) # (\seleccion[3]~input_o\)) ) ) # ( !\seleccion[1]~input_o\ & ( (!\seleccion[2]~input_o\ & (\seleccion[3]~input_o\)) # 
-- (\seleccion[2]~input_o\ & ((!\seleccion[3]~input_o\) # (\seleccion[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101100111111110111111101101100111011001111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datab => \ALT_INV_seleccion[3]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux6~0_combout\);

-- Location: LABCELL_X57_Y5_N9
\deco_seleccion|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux5~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & ((!\seleccion[2]~input_o\) # (\seleccion[0]~input_o\))) ) ) # ( !\seleccion[1]~input_o\ & ( (\seleccion[0]~input_o\ & (!\seleccion[3]~input_o\ $ 
-- (\seleccion[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101111100000101000001010000000001011111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datad => \ALT_INV_seleccion[2]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux5~0_combout\);

-- Location: LABCELL_X57_Y5_N12
\deco_seleccion|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux4~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[3]~input_o\ & \seleccion[0]~input_o\) ) ) # ( !\seleccion[1]~input_o\ & ( (!\seleccion[2]~input_o\ & ((\seleccion[0]~input_o\))) # (\seleccion[2]~input_o\ & 
-- (!\seleccion[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110000011000000110001001110010011100000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datab => \ALT_INV_seleccion[3]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux4~0_combout\);

-- Location: LABCELL_X57_Y5_N51
\deco_seleccion|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux3~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[0]~input_o\ & (\seleccion[3]~input_o\ & !\seleccion[2]~input_o\)) # (\seleccion[0]~input_o\ & ((\seleccion[2]~input_o\))) ) ) # ( !\seleccion[1]~input_o\ & ( 
-- (!\seleccion[0]~input_o\ & (!\seleccion[3]~input_o\ & \seleccion[2]~input_o\)) # (\seleccion[0]~input_o\ & ((!\seleccion[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000000010100101010101010101101000000000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datad => \ALT_INV_seleccion[2]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux3~0_combout\);

-- Location: LABCELL_X46_Y4_N42
\deco_seleccion|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux2~0_combout\ = ( \seleccion[2]~input_o\ & ( (\seleccion[3]~input_o\ & ((!\seleccion[0]~input_o\) # (\seleccion[1]~input_o\))) ) ) # ( !\seleccion[2]~input_o\ & ( (!\seleccion[3]~input_o\ & (!\seleccion[0]~input_o\ & 
-- \seleccion[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[3]~input_o\,
	datab => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_seleccion[1]~input_o\,
	dataf => \ALT_INV_seleccion[2]~input_o\,
	combout => \deco_seleccion|Mux2~0_combout\);

-- Location: LABCELL_X57_Y5_N27
\deco_seleccion|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux1~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[0]~input_o\ & ((\seleccion[2]~input_o\))) # (\seleccion[0]~input_o\ & (\seleccion[3]~input_o\)) ) ) # ( !\seleccion[1]~input_o\ & ( (\seleccion[2]~input_o\ & 
-- (!\seleccion[0]~input_o\ $ (!\seleccion[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000001011010111100000000010110100000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[0]~input_o\,
	datac => \ALT_INV_seleccion[3]~input_o\,
	datad => \ALT_INV_seleccion[2]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux1~0_combout\);

-- Location: LABCELL_X57_Y5_N30
\deco_seleccion|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco_seleccion|Mux0~0_combout\ = ( \seleccion[1]~input_o\ & ( (!\seleccion[2]~input_o\ & (\seleccion[3]~input_o\ & \seleccion[0]~input_o\)) ) ) # ( !\seleccion[1]~input_o\ & ( (!\seleccion[2]~input_o\ & (!\seleccion[3]~input_o\ & \seleccion[0]~input_o\)) 
-- # (\seleccion[2]~input_o\ & (!\seleccion[3]~input_o\ $ (\seleccion[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001000000100000001001001001010010010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seleccion[2]~input_o\,
	datab => \ALT_INV_seleccion[3]~input_o\,
	datac => \ALT_INV_seleccion[0]~input_o\,
	datae => \ALT_INV_seleccion[1]~input_o\,
	combout => \deco_seleccion|Mux0~0_combout\);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\o[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o(0),
	o => \o[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\o[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o(1),
	o => \o[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\o[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o(2),
	o => \o[2]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\o[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o(3),
	o => \o[3]~input_o\);

-- Location: LABCELL_X60_Y18_N0
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


