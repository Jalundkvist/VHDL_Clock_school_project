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

-- DATE "06/06/2022 14:52:13"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE ClockTop_data_type IS

TYPE hex_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE hex_6_0_0_5_type IS ARRAY (0 TO 5) OF hex_6_0_type;
SUBTYPE hex_type IS hex_6_0_0_5_type;

END ClockTop_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.CLOCKTOP_DATA_TYPE.ALL;

ENTITY 	ClockTop IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	key_n : IN std_logic;
	hex : BUFFER hex_type
	);
END ClockTop;

-- Design Ports Information
-- hex[5][0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ClockTop IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_key_n : std_logic;
SIGNAL ww_hex : hex_type;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bigclock|Add0~1_sumout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bigclock|Add0~2\ : std_logic;
SIGNAL \bigclock|Add0~5_sumout\ : std_logic;
SIGNAL \bigclock|Add1~1_sumout\ : std_logic;
SIGNAL \bigclock|Add1~6\ : std_logic;
SIGNAL \bigclock|Add1~9_sumout\ : std_logic;
SIGNAL \key_n~input_o\ : std_logic;
SIGNAL \bigclock|q1~0_combout\ : std_logic;
SIGNAL \bigclock|q1~q\ : std_logic;
SIGNAL \bigclock|clk_state_s.counting~0_combout\ : std_logic;
SIGNAL \bigclock|clk_state_s.counting~q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~101_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~102\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~25_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~26\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~17_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~18\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~21_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~22\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~9_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~10\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~13_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~14\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~29_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~30\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~33_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~34\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~41_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|counter_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~42\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~45_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~46\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~49_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|counter_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~50\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~53_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~54\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~57_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~58\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~61_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~62\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~65_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~66\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~37_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~38\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~69_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~70\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~73_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~74\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~77_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~78\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~5_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|LessThan0~0_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~6\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~81_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~82\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~85_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~86\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~89_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~90\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~93_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~94\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~97_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~98\ : std_logic;
SIGNAL \bigclock|Sec_Clock|Add0~1_sumout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|LessThan0~1_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|LessThan0~3_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|LessThan0~2_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|LessThan0~4_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|slow_clk~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~1_sumout\ : std_logic;
SIGNAL \bigclock|Add1~14\ : std_logic;
SIGNAL \bigclock|Add1~69_sumout\ : std_logic;
SIGNAL \bigclock|Add1~70\ : std_logic;
SIGNAL \bigclock|Add1~85_sumout\ : std_logic;
SIGNAL \bigclock|Add1~86\ : std_logic;
SIGNAL \bigclock|Add1~81_sumout\ : std_logic;
SIGNAL \bigclock|Add1~82\ : std_logic;
SIGNAL \bigclock|Add1~73_sumout\ : std_logic;
SIGNAL \bigclock|Add1~74\ : std_logic;
SIGNAL \bigclock|Add1~121_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~122\ : std_logic;
SIGNAL \bigclock|Add1~117_sumout\ : std_logic;
SIGNAL \bigclock|Add1~118\ : std_logic;
SIGNAL \bigclock|Add1~113_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~114\ : std_logic;
SIGNAL \bigclock|Add1~109_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~110\ : std_logic;
SIGNAL \bigclock|Add1~77_sumout\ : std_logic;
SIGNAL \bigclock|Add1~78\ : std_logic;
SIGNAL \bigclock|Add1~105_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~106\ : std_logic;
SIGNAL \bigclock|Add1~101_sumout\ : std_logic;
SIGNAL \bigclock|Add1~102\ : std_logic;
SIGNAL \bigclock|Add1~97_sumout\ : std_logic;
SIGNAL \bigclock|Add1~98\ : std_logic;
SIGNAL \bigclock|Add1~93_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~94\ : std_logic;
SIGNAL \bigclock|Add1~89_sumout\ : std_logic;
SIGNAL \bigclock|Add1~90\ : std_logic;
SIGNAL \bigclock|Add1~41_sumout\ : std_logic;
SIGNAL \bigclock|Add1~42\ : std_logic;
SIGNAL \bigclock|Add1~37_sumout\ : std_logic;
SIGNAL \bigclock|Add1~38\ : std_logic;
SIGNAL \bigclock|Add1~33_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~34\ : std_logic;
SIGNAL \bigclock|Add1~29_sumout\ : std_logic;
SIGNAL \bigclock|Add1~30\ : std_logic;
SIGNAL \bigclock|Add1~25_sumout\ : std_logic;
SIGNAL \bigclock|Add1~26\ : std_logic;
SIGNAL \bigclock|Add1~21_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~22\ : std_logic;
SIGNAL \bigclock|Add1~17_sumout\ : std_logic;
SIGNAL \bigclock|Add1~18\ : std_logic;
SIGNAL \bigclock|Add1~57_sumout\ : std_logic;
SIGNAL \bigclock|Add1~58\ : std_logic;
SIGNAL \bigclock|Add1~53_sumout\ : std_logic;
SIGNAL \bigclock|Add1~54\ : std_logic;
SIGNAL \bigclock|Add1~61_sumout\ : std_logic;
SIGNAL \bigclock|Add1~62\ : std_logic;
SIGNAL \bigclock|Add1~49_sumout\ : std_logic;
SIGNAL \bigclock|Add1~50\ : std_logic;
SIGNAL \bigclock|Add1~45_sumout\ : std_logic;
SIGNAL \bigclock|counter24h~12_combout\ : std_logic;
SIGNAL \bigclock|counter24h~11_combout\ : std_logic;
SIGNAL \bigclock|hour_s[30]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add1~46\ : std_logic;
SIGNAL \bigclock|Add1~65_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~27_combout\ : std_logic;
SIGNAL \bigclock|hour_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|hour_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|hour_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~28_combout\ : std_logic;
SIGNAL \bigclock|hour_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~13_combout\ : std_logic;
SIGNAL \bigclock|counter24h~14_combout\ : std_logic;
SIGNAL \bigclock|counter24h~15_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~2_combout\ : std_logic;
SIGNAL \bigclock|Add5~18\ : std_logic;
SIGNAL \bigclock|Add5~49_sumout\ : std_logic;
SIGNAL \bigclock|Add5~50\ : std_logic;
SIGNAL \bigclock|Add5~45_sumout\ : std_logic;
SIGNAL \bigclock|second_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~46\ : std_logic;
SIGNAL \bigclock|Add5~41_sumout\ : std_logic;
SIGNAL \bigclock|Add5~42\ : std_logic;
SIGNAL \bigclock|Add5~37_sumout\ : std_logic;
SIGNAL \bigclock|Add5~38\ : std_logic;
SIGNAL \bigclock|Add5~33_sumout\ : std_logic;
SIGNAL \bigclock|Add5~34\ : std_logic;
SIGNAL \bigclock|Add5~29_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~8_combout\ : std_logic;
SIGNAL \bigclock|Add5~30\ : std_logic;
SIGNAL \bigclock|Add5~25_sumout\ : std_logic;
SIGNAL \bigclock|Add5~26\ : std_logic;
SIGNAL \bigclock|Add5~69_sumout\ : std_logic;
SIGNAL \bigclock|Add5~70\ : std_logic;
SIGNAL \bigclock|Add5~65_sumout\ : std_logic;
SIGNAL \bigclock|Add5~66\ : std_logic;
SIGNAL \bigclock|Add5~61_sumout\ : std_logic;
SIGNAL \bigclock|Add5~62\ : std_logic;
SIGNAL \bigclock|Add5~57_sumout\ : std_logic;
SIGNAL \bigclock|Add5~58\ : std_logic;
SIGNAL \bigclock|Add5~53_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~0_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~3_combout\ : std_logic;
SIGNAL \bigclock|Add5~54\ : std_logic;
SIGNAL \bigclock|Add5~21_sumout\ : std_logic;
SIGNAL \bigclock|Add5~22\ : std_logic;
SIGNAL \bigclock|Add5~89_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~1_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~9_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~4_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|slow_clk~q\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~5_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[9]~7_combout\ : std_logic;
SIGNAL \bigclock|Add5~2\ : std_logic;
SIGNAL \bigclock|Add5~5_sumout\ : std_logic;
SIGNAL \bigclock|Add5~6\ : std_logic;
SIGNAL \bigclock|Add5~9_sumout\ : std_logic;
SIGNAL \bigclock|Add5~10\ : std_logic;
SIGNAL \bigclock|Add5~13_sumout\ : std_logic;
SIGNAL \bigclock|Add5~14\ : std_logic;
SIGNAL \bigclock|Add5~121_sumout\ : std_logic;
SIGNAL \bigclock|Add5~122\ : std_logic;
SIGNAL \bigclock|Add5~93_sumout\ : std_logic;
SIGNAL \bigclock|second_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~94\ : std_logic;
SIGNAL \bigclock|Add5~97_sumout\ : std_logic;
SIGNAL \bigclock|second_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~98\ : std_logic;
SIGNAL \bigclock|Add5~73_sumout\ : std_logic;
SIGNAL \bigclock|Add5~74\ : std_logic;
SIGNAL \bigclock|Add5~77_sumout\ : std_logic;
SIGNAL \bigclock|Add5~78\ : std_logic;
SIGNAL \bigclock|Add5~117_sumout\ : std_logic;
SIGNAL \bigclock|Add5~118\ : std_logic;
SIGNAL \bigclock|Add5~81_sumout\ : std_logic;
SIGNAL \bigclock|second_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~82\ : std_logic;
SIGNAL \bigclock|Add5~85_sumout\ : std_logic;
SIGNAL \bigclock|Add5~86\ : std_logic;
SIGNAL \bigclock|Add5~113_sumout\ : std_logic;
SIGNAL \bigclock|second_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~114\ : std_logic;
SIGNAL \bigclock|Add5~109_sumout\ : std_logic;
SIGNAL \bigclock|Add5~110\ : std_logic;
SIGNAL \bigclock|Add5~105_sumout\ : std_logic;
SIGNAL \bigclock|second_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add5~106\ : std_logic;
SIGNAL \bigclock|Add5~101_sumout\ : std_logic;
SIGNAL \bigclock|Add5~102\ : std_logic;
SIGNAL \bigclock|Add5~17_sumout\ : std_logic;
SIGNAL \bigclock|Add2~1_sumout\ : std_logic;
SIGNAL \bigclock|Add3~1_sumout\ : std_logic;
SIGNAL \bigclock|Add4~1_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~7_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[3]~6_combout\ : std_logic;
SIGNAL \bigclock|Add4~2\ : std_logic;
SIGNAL \bigclock|Add4~5_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~6\ : std_logic;
SIGNAL \bigclock|Add4~9_sumout\ : std_logic;
SIGNAL \bigclock|Add4~10\ : std_logic;
SIGNAL \bigclock|Add4~13_sumout\ : std_logic;
SIGNAL \bigclock|Add4~14\ : std_logic;
SIGNAL \bigclock|Add4~57_sumout\ : std_logic;
SIGNAL \bigclock|Add4~58\ : std_logic;
SIGNAL \bigclock|Add4~105_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~106\ : std_logic;
SIGNAL \bigclock|Add4~101_sumout\ : std_logic;
SIGNAL \bigclock|Add4~102\ : std_logic;
SIGNAL \bigclock|Add4~97_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~98\ : std_logic;
SIGNAL \bigclock|Add4~93_sumout\ : std_logic;
SIGNAL \bigclock|Add4~94\ : std_logic;
SIGNAL \bigclock|Add4~89_sumout\ : std_logic;
SIGNAL \bigclock|Add4~90\ : std_logic;
SIGNAL \bigclock|Add4~33_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~34\ : std_logic;
SIGNAL \bigclock|Add4~29_sumout\ : std_logic;
SIGNAL \bigclock|Add4~30\ : std_logic;
SIGNAL \bigclock|Add4~25_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~26\ : std_logic;
SIGNAL \bigclock|Add4~109_sumout\ : std_logic;
SIGNAL \bigclock|Add4~110\ : std_logic;
SIGNAL \bigclock|Add4~21_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~22\ : std_logic;
SIGNAL \bigclock|Add4~17_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~18\ : std_logic;
SIGNAL \bigclock|Add4~53_sumout\ : std_logic;
SIGNAL \bigclock|Add4~54\ : std_logic;
SIGNAL \bigclock|Add4~49_sumout\ : std_logic;
SIGNAL \bigclock|Add4~50\ : std_logic;
SIGNAL \bigclock|Add4~45_sumout\ : std_logic;
SIGNAL \bigclock|Add4~46\ : std_logic;
SIGNAL \bigclock|Add4~41_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~42\ : std_logic;
SIGNAL \bigclock|Add4~37_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~38\ : std_logic;
SIGNAL \bigclock|Add4~65_sumout\ : std_logic;
SIGNAL \bigclock|Add4~66\ : std_logic;
SIGNAL \bigclock|Add4~85_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~86\ : std_logic;
SIGNAL \bigclock|Add4~81_sumout\ : std_logic;
SIGNAL \bigclock|Add4~82\ : std_logic;
SIGNAL \bigclock|Add4~77_sumout\ : std_logic;
SIGNAL \bigclock|Add4~78\ : std_logic;
SIGNAL \bigclock|Add4~73_sumout\ : std_logic;
SIGNAL \bigclock|Add4~74\ : std_logic;
SIGNAL \bigclock|Add4~69_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~1_combout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~8_combout\ : std_logic;
SIGNAL \bigclock|deci_second_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~70\ : std_logic;
SIGNAL \bigclock|Add4~61_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~9_combout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~2_combout\ : std_logic;
SIGNAL \bigclock|Add4~62\ : std_logic;
SIGNAL \bigclock|Add4~121_sumout\ : std_logic;
SIGNAL \bigclock|deci_second_s[28]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add4~122\ : std_logic;
SIGNAL \bigclock|Add4~117_sumout\ : std_logic;
SIGNAL \bigclock|Add4~118\ : std_logic;
SIGNAL \bigclock|Add4~113_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~3_combout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~0_combout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~4_combout\ : std_logic;
SIGNAL \bigclock|minute_s[8]~5_combout\ : std_logic;
SIGNAL \bigclock|counter24h~22_combout\ : std_logic;
SIGNAL \bigclock|minute_s[3]~6_combout\ : std_logic;
SIGNAL \bigclock|Add3~2\ : std_logic;
SIGNAL \bigclock|Add3~5_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~6\ : std_logic;
SIGNAL \bigclock|Add3~9_sumout\ : std_logic;
SIGNAL \bigclock|Add3~10\ : std_logic;
SIGNAL \bigclock|Add3~13_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~14\ : std_logic;
SIGNAL \bigclock|Add3~45_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~46\ : std_logic;
SIGNAL \bigclock|Add3~53_sumout\ : std_logic;
SIGNAL \bigclock|Add3~54\ : std_logic;
SIGNAL \bigclock|Add3~49_sumout\ : std_logic;
SIGNAL \bigclock|Add3~50\ : std_logic;
SIGNAL \bigclock|Add3~17_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~18\ : std_logic;
SIGNAL \bigclock|Add3~89_sumout\ : std_logic;
SIGNAL \bigclock|Add3~90\ : std_logic;
SIGNAL \bigclock|Add3~93_sumout\ : std_logic;
SIGNAL \bigclock|Add3~94\ : std_logic;
SIGNAL \bigclock|Add3~97_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[10]~feeder_combout\ : std_logic;
SIGNAL \bigclock|minute_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~98\ : std_logic;
SIGNAL \bigclock|Add3~101_sumout\ : std_logic;
SIGNAL \bigclock|Add3~102\ : std_logic;
SIGNAL \bigclock|Add3~105_sumout\ : std_logic;
SIGNAL \bigclock|Add3~106\ : std_logic;
SIGNAL \bigclock|Add3~77_sumout\ : std_logic;
SIGNAL \bigclock|Add3~78\ : std_logic;
SIGNAL \bigclock|Add3~69_sumout\ : std_logic;
SIGNAL \bigclock|Add3~70\ : std_logic;
SIGNAL \bigclock|Add3~109_sumout\ : std_logic;
SIGNAL \bigclock|Add3~110\ : std_logic;
SIGNAL \bigclock|Add3~113_sumout\ : std_logic;
SIGNAL \bigclock|Add3~114\ : std_logic;
SIGNAL \bigclock|Add3~117_sumout\ : std_logic;
SIGNAL \bigclock|Add3~118\ : std_logic;
SIGNAL \bigclock|Add3~121_sumout\ : std_logic;
SIGNAL \bigclock|Add3~122\ : std_logic;
SIGNAL \bigclock|Add3~81_sumout\ : std_logic;
SIGNAL \bigclock|Add3~82\ : std_logic;
SIGNAL \bigclock|Add3~85_sumout\ : std_logic;
SIGNAL \bigclock|Add3~86\ : std_logic;
SIGNAL \bigclock|Add3~41_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[21]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~42\ : std_logic;
SIGNAL \bigclock|Add3~37_sumout\ : std_logic;
SIGNAL \bigclock|Add3~38\ : std_logic;
SIGNAL \bigclock|Add3~33_sumout\ : std_logic;
SIGNAL \bigclock|Add3~34\ : std_logic;
SIGNAL \bigclock|Add3~29_sumout\ : std_logic;
SIGNAL \bigclock|Add3~30\ : std_logic;
SIGNAL \bigclock|Add3~73_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~1_combout\ : std_logic;
SIGNAL \bigclock|Add3~74\ : std_logic;
SIGNAL \bigclock|Add3~25_sumout\ : std_logic;
SIGNAL \bigclock|Add3~26\ : std_logic;
SIGNAL \bigclock|Add3~21_sumout\ : std_logic;
SIGNAL \bigclock|Add3~22\ : std_logic;
SIGNAL \bigclock|Add3~65_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add3~66\ : std_logic;
SIGNAL \bigclock|Add3~61_sumout\ : std_logic;
SIGNAL \bigclock|Add3~62\ : std_logic;
SIGNAL \bigclock|Add3~57_sumout\ : std_logic;
SIGNAL \bigclock|minute_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~0_combout\ : std_logic;
SIGNAL \bigclock|minute_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~23_combout\ : std_logic;
SIGNAL \bigclock|counter24h~3_combout\ : std_logic;
SIGNAL \bigclock|counter24h~2_combout\ : std_logic;
SIGNAL \bigclock|minute_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~24_combout\ : std_logic;
SIGNAL \bigclock|counter24h~4_combout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[3]~0_combout\ : std_logic;
SIGNAL \bigclock|Add2~2\ : std_logic;
SIGNAL \bigclock|Add2~5_sumout\ : std_logic;
SIGNAL \bigclock|Add2~6\ : std_logic;
SIGNAL \bigclock|Add2~9_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~10\ : std_logic;
SIGNAL \bigclock|Add2~13_sumout\ : std_logic;
SIGNAL \bigclock|Add2~14\ : std_logic;
SIGNAL \bigclock|Add2~25_sumout\ : std_logic;
SIGNAL \bigclock|Add2~26\ : std_logic;
SIGNAL \bigclock|Add2~21_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~22\ : std_logic;
SIGNAL \bigclock|Add2~17_sumout\ : std_logic;
SIGNAL \bigclock|Add2~18\ : std_logic;
SIGNAL \bigclock|Add2~77_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~78\ : std_logic;
SIGNAL \bigclock|Add2~73_sumout\ : std_logic;
SIGNAL \bigclock|Add2~74\ : std_logic;
SIGNAL \bigclock|Add2~69_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~70\ : std_logic;
SIGNAL \bigclock|Add2~61_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~62\ : std_logic;
SIGNAL \bigclock|Add2~117_sumout\ : std_logic;
SIGNAL \bigclock|Add2~118\ : std_logic;
SIGNAL \bigclock|Add2~113_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~114\ : std_logic;
SIGNAL \bigclock|Add2~109_sumout\ : std_logic;
SIGNAL \bigclock|Add2~110\ : std_logic;
SIGNAL \bigclock|Add2~57_sumout\ : std_logic;
SIGNAL \bigclock|counter24h~26_combout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~58\ : std_logic;
SIGNAL \bigclock|Add2~89_sumout\ : std_logic;
SIGNAL \bigclock|Add2~90\ : std_logic;
SIGNAL \bigclock|Add2~105_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~106\ : std_logic;
SIGNAL \bigclock|Add2~101_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[17]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~102\ : std_logic;
SIGNAL \bigclock|Add2~41_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~42\ : std_logic;
SIGNAL \bigclock|Add2~65_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~66\ : std_logic;
SIGNAL \bigclock|Add2~85_sumout\ : std_logic;
SIGNAL \bigclock|Add2~86\ : std_logic;
SIGNAL \bigclock|Add2~81_sumout\ : std_logic;
SIGNAL \bigclock|Add2~82\ : std_logic;
SIGNAL \bigclock|Add2~121_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~8_combout\ : std_logic;
SIGNAL \bigclock|Add2~122\ : std_logic;
SIGNAL \bigclock|Add2~45_sumout\ : std_logic;
SIGNAL \bigclock|Add2~46\ : std_logic;
SIGNAL \bigclock|Add2~37_sumout\ : std_logic;
SIGNAL \bigclock|Add2~38\ : std_logic;
SIGNAL \bigclock|Add2~49_sumout\ : std_logic;
SIGNAL \bigclock|Add2~50\ : std_logic;
SIGNAL \bigclock|Add2~53_sumout\ : std_logic;
SIGNAL \bigclock|Add2~54\ : std_logic;
SIGNAL \bigclock|Add2~97_sumout\ : std_logic;
SIGNAL \bigclock|deci_minute_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add2~98\ : std_logic;
SIGNAL \bigclock|Add2~93_sumout\ : std_logic;
SIGNAL \bigclock|counter24h~7_combout\ : std_logic;
SIGNAL \bigclock|counter24h~5_combout\ : std_logic;
SIGNAL \bigclock|Add2~94\ : std_logic;
SIGNAL \bigclock|Add2~33_sumout\ : std_logic;
SIGNAL \bigclock|Add2~34\ : std_logic;
SIGNAL \bigclock|Add2~29_sumout\ : std_logic;
SIGNAL \bigclock|counter24h~25_combout\ : std_logic;
SIGNAL \bigclock|counter24h~6_combout\ : std_logic;
SIGNAL \bigclock|counter24h~9_combout\ : std_logic;
SIGNAL \bigclock|counter24h~10_combout\ : std_logic;
SIGNAL \bigclock|hour_s[3]~1_combout\ : std_logic;
SIGNAL \bigclock|Add1~10\ : std_logic;
SIGNAL \bigclock|Add1~13_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[17]~0_combout\ : std_logic;
SIGNAL \bigclock|Add1~2\ : std_logic;
SIGNAL \bigclock|Add1~5_sumout\ : std_logic;
SIGNAL \bigclock|hour_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|deci_hour_s[3]~0_combout\ : std_logic;
SIGNAL \bigclock|Add0~6\ : std_logic;
SIGNAL \bigclock|Add0~9_sumout\ : std_logic;
SIGNAL \bigclock|Add0~10\ : std_logic;
SIGNAL \bigclock|Add0~13_sumout\ : std_logic;
SIGNAL \bigclock|Add0~14\ : std_logic;
SIGNAL \bigclock|Add0~41_sumout\ : std_logic;
SIGNAL \bigclock|Add0~42\ : std_logic;
SIGNAL \bigclock|Add0~45_sumout\ : std_logic;
SIGNAL \bigclock|Add0~46\ : std_logic;
SIGNAL \bigclock|Add0~49_sumout\ : std_logic;
SIGNAL \bigclock|Add0~50\ : std_logic;
SIGNAL \bigclock|Add0~53_sumout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add0~54\ : std_logic;
SIGNAL \bigclock|Add0~17_sumout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add0~18\ : std_logic;
SIGNAL \bigclock|Add0~21_sumout\ : std_logic;
SIGNAL \bigclock|Add0~22\ : std_logic;
SIGNAL \bigclock|Add0~25_sumout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Add0~26\ : std_logic;
SIGNAL \bigclock|Add0~29_sumout\ : std_logic;
SIGNAL \bigclock|Add0~30\ : std_logic;
SIGNAL \bigclock|Add0~33_sumout\ : std_logic;
SIGNAL \bigclock|Add0~34\ : std_logic;
SIGNAL \bigclock|Add0~101_sumout\ : std_logic;
SIGNAL \bigclock|Add0~102\ : std_logic;
SIGNAL \bigclock|Add0~105_sumout\ : std_logic;
SIGNAL \bigclock|Add0~106\ : std_logic;
SIGNAL \bigclock|Add0~77_sumout\ : std_logic;
SIGNAL \bigclock|Add0~78\ : std_logic;
SIGNAL \bigclock|Add0~109_sumout\ : std_logic;
SIGNAL \bigclock|Add0~110\ : std_logic;
SIGNAL \bigclock|Add0~113_sumout\ : std_logic;
SIGNAL \bigclock|Add0~114\ : std_logic;
SIGNAL \bigclock|Add0~97_sumout\ : std_logic;
SIGNAL \bigclock|Add0~98\ : std_logic;
SIGNAL \bigclock|Add0~61_sumout\ : std_logic;
SIGNAL \bigclock|Add0~62\ : std_logic;
SIGNAL \bigclock|Add0~57_sumout\ : std_logic;
SIGNAL \bigclock|Add0~58\ : std_logic;
SIGNAL \bigclock|Add0~73_sumout\ : std_logic;
SIGNAL \bigclock|Add0~74\ : std_logic;
SIGNAL \bigclock|Add0~69_sumout\ : std_logic;
SIGNAL \bigclock|Add0~70\ : std_logic;
SIGNAL \bigclock|Add0~89_sumout\ : std_logic;
SIGNAL \bigclock|Add0~90\ : std_logic;
SIGNAL \bigclock|Add0~37_sumout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[24]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~17_combout\ : std_logic;
SIGNAL \bigclock|counter24h~16_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|Add0~38\ : std_logic;
SIGNAL \bigclock|Add0~65_sumout\ : std_logic;
SIGNAL \bigclock|Add0~66\ : std_logic;
SIGNAL \bigclock|Add0~85_sumout\ : std_logic;
SIGNAL \bigclock|Add0~86\ : std_logic;
SIGNAL \bigclock|Add0~81_sumout\ : std_logic;
SIGNAL \bigclock|Add0~82\ : std_logic;
SIGNAL \bigclock|Add0~121_sumout\ : std_logic;
SIGNAL \bigclock|Add0~122\ : std_logic;
SIGNAL \bigclock|Add0~93_sumout\ : std_logic;
SIGNAL \bigclock|Add0~94\ : std_logic;
SIGNAL \bigclock|Add0~117_sumout\ : std_logic;
SIGNAL \bigclock|counter24h~18_combout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[25]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~30_combout\ : std_logic;
SIGNAL \bigclock|deci_hour_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|counter24h~29_combout\ : std_logic;
SIGNAL \bigclock|counter24h~19_combout\ : std_logic;
SIGNAL \bigclock|counter24h~20_combout\ : std_logic;
SIGNAL \bigclock|counter24h~21_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display0|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display1|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display2|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display3|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display4|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux6~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux5~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux3~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux2~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux1~0_combout\ : std_logic;
SIGNAL \bigclock|display5|Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|deci_hour_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|Sec_Clock|counter_s\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bigclock|hour_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|deci_minute_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|minute_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|deci_second_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|second_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|Sec_Clock|ALT_INV_slow_clk~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_counter_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[25]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[24]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[30]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[17]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[29]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[21]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[23]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[28]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[27]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[15]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_second_s[18]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst_n~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_key_n~input_o\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~30_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~29_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~28_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~27_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~26_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~25_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~24_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~23_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~9_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~8_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~9_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~8_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_q1~q\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~5_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~5_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_clk_state_s.counting~q\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~20_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~19_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~18_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~17_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~16_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~15_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~14_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~13_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~12_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~11_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~10_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~9_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~8_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~7_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~6_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~5_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~4_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~3_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~2_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~1_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_counter24h~0_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~4_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~3_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~2_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~1_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_minute_s[8]~0_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~4_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~3_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~2_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~1_combout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_second_s[9]~0_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_slow_clk~q\ : std_logic;
SIGNAL \bigclock|display5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bigclock|display0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \bigclock|Sec_Clock|ALT_INV_counter_s\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \bigclock|ALT_INV_deci_hour_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_hour_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_deci_minute_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_minute_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_deci_second_s\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \bigclock|ALT_INV_second_s\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_key_n <= key_n;
hex <= ww_hex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\bigclock|Sec_Clock|ALT_INV_slow_clk~DUPLICATE_q\ <= NOT \bigclock|Sec_Clock|slow_clk~DUPLICATE_q\;
\bigclock|Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\ <= NOT \bigclock|Sec_Clock|counter_s[10]~DUPLICATE_q\;
\bigclock|Sec_Clock|ALT_INV_counter_s[8]~DUPLICATE_q\ <= NOT \bigclock|Sec_Clock|counter_s[8]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[23]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[23]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[25]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[25]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[7]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[7]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[24]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[24]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[10]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_hour_s[8]~DUPLICATE_q\ <= NOT \bigclock|deci_hour_s[8]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[8]~DUPLICATE_q\ <= NOT \bigclock|hour_s[8]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[9]~DUPLICATE_q\ <= NOT \bigclock|hour_s[9]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[10]~DUPLICATE_q\ <= NOT \bigclock|hour_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[11]~DUPLICATE_q\ <= NOT \bigclock|hour_s[11]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[13]~DUPLICATE_q\ <= NOT \bigclock|hour_s[13]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[16]~DUPLICATE_q\ <= NOT \bigclock|hour_s[16]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[5]~DUPLICATE_q\ <= NOT \bigclock|hour_s[5]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[6]~DUPLICATE_q\ <= NOT \bigclock|hour_s[6]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[12]~DUPLICATE_q\ <= NOT \bigclock|hour_s[12]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[30]~DUPLICATE_q\ <= NOT \bigclock|hour_s[30]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[20]~DUPLICATE_q\ <= NOT \bigclock|hour_s[20]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[23]~DUPLICATE_q\ <= NOT \bigclock|hour_s[23]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[22]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[22]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[12]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[12]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[16]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[16]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[17]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[17]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[27]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[27]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[7]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[7]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[9]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[9]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[19]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[19]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[10]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[18]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[18]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[5]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[5]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[10]~DUPLICATE_q\ <= NOT \bigclock|minute_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[19]~DUPLICATE_q\ <= NOT \bigclock|minute_s[19]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[29]~DUPLICATE_q\ <= NOT \bigclock|minute_s[29]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[6]~DUPLICATE_q\ <= NOT \bigclock|minute_s[6]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[4]~DUPLICATE_q\ <= NOT \bigclock|minute_s[4]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[21]~DUPLICATE_q\ <= NOT \bigclock|minute_s[21]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[23]~DUPLICATE_q\ <= NOT \bigclock|minute_s[23]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[7]~DUPLICATE_q\ <= NOT \bigclock|minute_s[7]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[28]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[28]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[5]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[5]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[7]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[7]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[22]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[22]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[27]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[27]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[19]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[19]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[20]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[20]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[10]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[12]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[12]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[14]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[14]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[15]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[15]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[12]~DUPLICATE_q\ <= NOT \bigclock|second_s[12]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[14]~DUPLICATE_q\ <= NOT \bigclock|second_s[14]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[6]~DUPLICATE_q\ <= NOT \bigclock|second_s[6]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[5]~DUPLICATE_q\ <= NOT \bigclock|second_s[5]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[10]~DUPLICATE_q\ <= NOT \bigclock|second_s[10]~DUPLICATE_q\;
\bigclock|ALT_INV_second_s[18]~DUPLICATE_q\ <= NOT \bigclock|second_s[18]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_second_s[1]~DUPLICATE_q\ <= NOT \bigclock|deci_second_s[1]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[3]~DUPLICATE_q\ <= NOT \bigclock|minute_s[3]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\ <= NOT \bigclock|minute_s[1]~DUPLICATE_q\;
\bigclock|ALT_INV_minute_s[0]~DUPLICATE_q\ <= NOT \bigclock|minute_s[0]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[3]~DUPLICATE_q\;
\bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\ <= NOT \bigclock|deci_minute_s[0]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\ <= NOT \bigclock|hour_s[1]~DUPLICATE_q\;
\bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\ <= NOT \bigclock|hour_s[0]~DUPLICATE_q\;
\ALT_INV_rst_n~inputCLKENA0_outclk\ <= NOT \rst_n~inputCLKENA0_outclk\;
\ALT_INV_key_n~input_o\ <= NOT \key_n~input_o\;
\bigclock|ALT_INV_counter24h~30_combout\ <= NOT \bigclock|counter24h~30_combout\;
\bigclock|ALT_INV_counter24h~29_combout\ <= NOT \bigclock|counter24h~29_combout\;
\bigclock|ALT_INV_counter24h~28_combout\ <= NOT \bigclock|counter24h~28_combout\;
\bigclock|ALT_INV_counter24h~27_combout\ <= NOT \bigclock|counter24h~27_combout\;
\bigclock|ALT_INV_counter24h~26_combout\ <= NOT \bigclock|counter24h~26_combout\;
\bigclock|ALT_INV_counter24h~25_combout\ <= NOT \bigclock|counter24h~25_combout\;
\bigclock|ALT_INV_counter24h~24_combout\ <= NOT \bigclock|counter24h~24_combout\;
\bigclock|ALT_INV_counter24h~23_combout\ <= NOT \bigclock|counter24h~23_combout\;
\bigclock|ALT_INV_minute_s[8]~9_combout\ <= NOT \bigclock|minute_s[8]~9_combout\;
\bigclock|ALT_INV_minute_s[8]~8_combout\ <= NOT \bigclock|minute_s[8]~8_combout\;
\bigclock|ALT_INV_deci_second_s[9]~9_combout\ <= NOT \bigclock|deci_second_s[9]~9_combout\;
\bigclock|ALT_INV_deci_second_s[9]~8_combout\ <= NOT \bigclock|deci_second_s[9]~8_combout\;
\bigclock|ALT_INV_q1~q\ <= NOT \bigclock|q1~q\;
\bigclock|Sec_Clock|ALT_INV_LessThan0~3_combout\ <= NOT \bigclock|Sec_Clock|LessThan0~3_combout\;
\bigclock|Sec_Clock|ALT_INV_LessThan0~2_combout\ <= NOT \bigclock|Sec_Clock|LessThan0~2_combout\;
\bigclock|Sec_Clock|ALT_INV_LessThan0~1_combout\ <= NOT \bigclock|Sec_Clock|LessThan0~1_combout\;
\bigclock|Sec_Clock|ALT_INV_LessThan0~0_combout\ <= NOT \bigclock|Sec_Clock|LessThan0~0_combout\;
\bigclock|ALT_INV_deci_second_s[9]~5_combout\ <= NOT \bigclock|deci_second_s[9]~5_combout\;
\bigclock|ALT_INV_minute_s[8]~5_combout\ <= NOT \bigclock|minute_s[8]~5_combout\;
\bigclock|ALT_INV_clk_state_s.counting~q\ <= NOT \bigclock|clk_state_s.counting~q\;
\bigclock|ALT_INV_counter24h~20_combout\ <= NOT \bigclock|counter24h~20_combout\;
\bigclock|ALT_INV_counter24h~19_combout\ <= NOT \bigclock|counter24h~19_combout\;
\bigclock|ALT_INV_counter24h~18_combout\ <= NOT \bigclock|counter24h~18_combout\;
\bigclock|ALT_INV_counter24h~17_combout\ <= NOT \bigclock|counter24h~17_combout\;
\bigclock|ALT_INV_counter24h~16_combout\ <= NOT \bigclock|counter24h~16_combout\;
\bigclock|ALT_INV_counter24h~15_combout\ <= NOT \bigclock|counter24h~15_combout\;
\bigclock|ALT_INV_counter24h~14_combout\ <= NOT \bigclock|counter24h~14_combout\;
\bigclock|ALT_INV_counter24h~13_combout\ <= NOT \bigclock|counter24h~13_combout\;
\bigclock|ALT_INV_counter24h~12_combout\ <= NOT \bigclock|counter24h~12_combout\;
\bigclock|ALT_INV_counter24h~11_combout\ <= NOT \bigclock|counter24h~11_combout\;
\bigclock|ALT_INV_counter24h~10_combout\ <= NOT \bigclock|counter24h~10_combout\;
\bigclock|ALT_INV_counter24h~9_combout\ <= NOT \bigclock|counter24h~9_combout\;
\bigclock|ALT_INV_counter24h~8_combout\ <= NOT \bigclock|counter24h~8_combout\;
\bigclock|ALT_INV_counter24h~7_combout\ <= NOT \bigclock|counter24h~7_combout\;
\bigclock|ALT_INV_counter24h~6_combout\ <= NOT \bigclock|counter24h~6_combout\;
\bigclock|ALT_INV_counter24h~5_combout\ <= NOT \bigclock|counter24h~5_combout\;
\bigclock|ALT_INV_counter24h~4_combout\ <= NOT \bigclock|counter24h~4_combout\;
\bigclock|ALT_INV_counter24h~3_combout\ <= NOT \bigclock|counter24h~3_combout\;
\bigclock|ALT_INV_counter24h~2_combout\ <= NOT \bigclock|counter24h~2_combout\;
\bigclock|ALT_INV_counter24h~1_combout\ <= NOT \bigclock|counter24h~1_combout\;
\bigclock|ALT_INV_counter24h~0_combout\ <= NOT \bigclock|counter24h~0_combout\;
\bigclock|ALT_INV_minute_s[8]~4_combout\ <= NOT \bigclock|minute_s[8]~4_combout\;
\bigclock|ALT_INV_minute_s[8]~3_combout\ <= NOT \bigclock|minute_s[8]~3_combout\;
\bigclock|ALT_INV_minute_s[8]~2_combout\ <= NOT \bigclock|minute_s[8]~2_combout\;
\bigclock|ALT_INV_minute_s[8]~1_combout\ <= NOT \bigclock|minute_s[8]~1_combout\;
\bigclock|ALT_INV_minute_s[8]~0_combout\ <= NOT \bigclock|minute_s[8]~0_combout\;
\bigclock|ALT_INV_deci_second_s[9]~4_combout\ <= NOT \bigclock|deci_second_s[9]~4_combout\;
\bigclock|ALT_INV_deci_second_s[9]~3_combout\ <= NOT \bigclock|deci_second_s[9]~3_combout\;
\bigclock|ALT_INV_deci_second_s[9]~2_combout\ <= NOT \bigclock|deci_second_s[9]~2_combout\;
\bigclock|ALT_INV_deci_second_s[9]~1_combout\ <= NOT \bigclock|deci_second_s[9]~1_combout\;
\bigclock|ALT_INV_deci_second_s[9]~0_combout\ <= NOT \bigclock|deci_second_s[9]~0_combout\;
\bigclock|Sec_Clock|ALT_INV_slow_clk~q\ <= NOT \bigclock|Sec_Clock|slow_clk~q\;
\bigclock|display5|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display5|Mux0~0_combout\;
\bigclock|display4|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display4|Mux0~0_combout\;
\bigclock|display3|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display3|Mux0~0_combout\;
\bigclock|display2|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display2|Mux0~0_combout\;
\bigclock|display1|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display1|Mux0~0_combout\;
\bigclock|display0|ALT_INV_Mux0~0_combout\ <= NOT \bigclock|display0|Mux0~0_combout\;
\bigclock|display0|ALT_INV_Mux4~0_combout\ <= NOT \bigclock|display0|Mux4~0_combout\;
\bigclock|Sec_Clock|ALT_INV_counter_s\(0) <= NOT \bigclock|Sec_Clock|counter_s\(0);
\bigclock|ALT_INV_Add3~97_sumout\ <= NOT \bigclock|Add3~97_sumout\;
\bigclock|Sec_Clock|ALT_INV_counter_s\(24) <= NOT \bigclock|Sec_Clock|counter_s\(24);
\bigclock|Sec_Clock|ALT_INV_counter_s\(23) <= NOT \bigclock|Sec_Clock|counter_s\(23);
\bigclock|Sec_Clock|ALT_INV_counter_s\(22) <= NOT \bigclock|Sec_Clock|counter_s\(22);
\bigclock|Sec_Clock|ALT_INV_counter_s\(21) <= NOT \bigclock|Sec_Clock|counter_s\(21);
\bigclock|Sec_Clock|ALT_INV_counter_s\(20) <= NOT \bigclock|Sec_Clock|counter_s\(20);
\bigclock|Sec_Clock|ALT_INV_counter_s\(18) <= NOT \bigclock|Sec_Clock|counter_s\(18);
\bigclock|Sec_Clock|ALT_INV_counter_s\(17) <= NOT \bigclock|Sec_Clock|counter_s\(17);
\bigclock|Sec_Clock|ALT_INV_counter_s\(16) <= NOT \bigclock|Sec_Clock|counter_s\(16);
\bigclock|Sec_Clock|ALT_INV_counter_s\(14) <= NOT \bigclock|Sec_Clock|counter_s\(14);
\bigclock|Sec_Clock|ALT_INV_counter_s\(13) <= NOT \bigclock|Sec_Clock|counter_s\(13);
\bigclock|Sec_Clock|ALT_INV_counter_s\(12) <= NOT \bigclock|Sec_Clock|counter_s\(12);
\bigclock|Sec_Clock|ALT_INV_counter_s\(11) <= NOT \bigclock|Sec_Clock|counter_s\(11);
\bigclock|Sec_Clock|ALT_INV_counter_s\(10) <= NOT \bigclock|Sec_Clock|counter_s\(10);
\bigclock|Sec_Clock|ALT_INV_counter_s\(9) <= NOT \bigclock|Sec_Clock|counter_s\(9);
\bigclock|Sec_Clock|ALT_INV_counter_s\(8) <= NOT \bigclock|Sec_Clock|counter_s\(8);
\bigclock|Sec_Clock|ALT_INV_counter_s\(15) <= NOT \bigclock|Sec_Clock|counter_s\(15);
\bigclock|Sec_Clock|ALT_INV_counter_s\(7) <= NOT \bigclock|Sec_Clock|counter_s\(7);
\bigclock|Sec_Clock|ALT_INV_counter_s\(6) <= NOT \bigclock|Sec_Clock|counter_s\(6);
\bigclock|Sec_Clock|ALT_INV_counter_s\(1) <= NOT \bigclock|Sec_Clock|counter_s\(1);
\bigclock|Sec_Clock|ALT_INV_counter_s\(3) <= NOT \bigclock|Sec_Clock|counter_s\(3);
\bigclock|Sec_Clock|ALT_INV_counter_s\(2) <= NOT \bigclock|Sec_Clock|counter_s\(2);
\bigclock|Sec_Clock|ALT_INV_counter_s\(5) <= NOT \bigclock|Sec_Clock|counter_s\(5);
\bigclock|Sec_Clock|ALT_INV_counter_s\(4) <= NOT \bigclock|Sec_Clock|counter_s\(4);
\bigclock|Sec_Clock|ALT_INV_counter_s\(19) <= NOT \bigclock|Sec_Clock|counter_s\(19);
\bigclock|Sec_Clock|ALT_INV_counter_s\(25) <= NOT \bigclock|Sec_Clock|counter_s\(25);
\bigclock|ALT_INV_deci_hour_s\(28) <= NOT \bigclock|deci_hour_s\(28);
\bigclock|ALT_INV_deci_hour_s\(30) <= NOT \bigclock|deci_hour_s\(30);
\bigclock|ALT_INV_deci_hour_s\(17) <= NOT \bigclock|deci_hour_s\(17);
\bigclock|ALT_INV_deci_hour_s\(16) <= NOT \bigclock|deci_hour_s\(16);
\bigclock|ALT_INV_deci_hour_s\(14) <= NOT \bigclock|deci_hour_s\(14);
\bigclock|ALT_INV_deci_hour_s\(13) <= NOT \bigclock|deci_hour_s\(13);
\bigclock|ALT_INV_deci_hour_s\(18) <= NOT \bigclock|deci_hour_s\(18);
\bigclock|ALT_INV_deci_hour_s\(29) <= NOT \bigclock|deci_hour_s\(29);
\bigclock|ALT_INV_deci_hour_s\(23) <= NOT \bigclock|deci_hour_s\(23);
\bigclock|ALT_INV_deci_hour_s\(26) <= NOT \bigclock|deci_hour_s\(26);
\bigclock|ALT_INV_deci_hour_s\(27) <= NOT \bigclock|deci_hour_s\(27);
\bigclock|ALT_INV_deci_hour_s\(15) <= NOT \bigclock|deci_hour_s\(15);
\bigclock|ALT_INV_deci_hour_s\(21) <= NOT \bigclock|deci_hour_s\(21);
\bigclock|ALT_INV_deci_hour_s\(22) <= NOT \bigclock|deci_hour_s\(22);
\bigclock|ALT_INV_deci_hour_s\(25) <= NOT \bigclock|deci_hour_s\(25);
\bigclock|ALT_INV_deci_hour_s\(19) <= NOT \bigclock|deci_hour_s\(19);
\bigclock|ALT_INV_deci_hour_s\(20) <= NOT \bigclock|deci_hour_s\(20);
\bigclock|ALT_INV_deci_hour_s\(7) <= NOT \bigclock|deci_hour_s\(7);
\bigclock|ALT_INV_deci_hour_s\(6) <= NOT \bigclock|deci_hour_s\(6);
\bigclock|ALT_INV_deci_hour_s\(5) <= NOT \bigclock|deci_hour_s\(5);
\bigclock|ALT_INV_deci_hour_s\(4) <= NOT \bigclock|deci_hour_s\(4);
\bigclock|ALT_INV_deci_hour_s\(24) <= NOT \bigclock|deci_hour_s\(24);
\bigclock|ALT_INV_deci_hour_s\(12) <= NOT \bigclock|deci_hour_s\(12);
\bigclock|ALT_INV_deci_hour_s\(11) <= NOT \bigclock|deci_hour_s\(11);
\bigclock|ALT_INV_deci_hour_s\(10) <= NOT \bigclock|deci_hour_s\(10);
\bigclock|ALT_INV_deci_hour_s\(9) <= NOT \bigclock|deci_hour_s\(9);
\bigclock|ALT_INV_deci_hour_s\(8) <= NOT \bigclock|deci_hour_s\(8);
\bigclock|ALT_INV_hour_s\(8) <= NOT \bigclock|hour_s\(8);
\bigclock|ALT_INV_hour_s\(9) <= NOT \bigclock|hour_s\(9);
\bigclock|ALT_INV_hour_s\(10) <= NOT \bigclock|hour_s\(10);
\bigclock|ALT_INV_hour_s\(11) <= NOT \bigclock|hour_s\(11);
\bigclock|ALT_INV_hour_s\(13) <= NOT \bigclock|hour_s\(13);
\bigclock|ALT_INV_hour_s\(14) <= NOT \bigclock|hour_s\(14);
\bigclock|ALT_INV_hour_s\(15) <= NOT \bigclock|hour_s\(15);
\bigclock|ALT_INV_hour_s\(16) <= NOT \bigclock|hour_s\(16);
\bigclock|ALT_INV_hour_s\(17) <= NOT \bigclock|hour_s\(17);
\bigclock|ALT_INV_hour_s\(5) <= NOT \bigclock|hour_s\(5);
\bigclock|ALT_INV_hour_s\(6) <= NOT \bigclock|hour_s\(6);
\bigclock|ALT_INV_hour_s\(12) <= NOT \bigclock|hour_s\(12);
\bigclock|ALT_INV_hour_s\(7) <= NOT \bigclock|hour_s\(7);
\bigclock|ALT_INV_hour_s\(4) <= NOT \bigclock|hour_s\(4);
\bigclock|ALT_INV_hour_s\(30) <= NOT \bigclock|hour_s\(30);
\bigclock|ALT_INV_hour_s\(27) <= NOT \bigclock|hour_s\(27);
\bigclock|ALT_INV_hour_s\(25) <= NOT \bigclock|hour_s\(25);
\bigclock|ALT_INV_hour_s\(26) <= NOT \bigclock|hour_s\(26);
\bigclock|ALT_INV_hour_s\(28) <= NOT \bigclock|hour_s\(28);
\bigclock|ALT_INV_hour_s\(29) <= NOT \bigclock|hour_s\(29);
\bigclock|ALT_INV_hour_s\(18) <= NOT \bigclock|hour_s\(18);
\bigclock|ALT_INV_hour_s\(19) <= NOT \bigclock|hour_s\(19);
\bigclock|ALT_INV_hour_s\(20) <= NOT \bigclock|hour_s\(20);
\bigclock|ALT_INV_hour_s\(21) <= NOT \bigclock|hour_s\(21);
\bigclock|ALT_INV_hour_s\(22) <= NOT \bigclock|hour_s\(22);
\bigclock|ALT_INV_hour_s\(23) <= NOT \bigclock|hour_s\(23);
\bigclock|ALT_INV_hour_s\(24) <= NOT \bigclock|hour_s\(24);
\bigclock|ALT_INV_deci_minute_s\(22) <= NOT \bigclock|deci_minute_s\(22);
\bigclock|ALT_INV_deci_minute_s\(11) <= NOT \bigclock|deci_minute_s\(11);
\bigclock|ALT_INV_deci_minute_s\(12) <= NOT \bigclock|deci_minute_s\(12);
\bigclock|ALT_INV_deci_minute_s\(13) <= NOT \bigclock|deci_minute_s\(13);
\bigclock|ALT_INV_deci_minute_s\(16) <= NOT \bigclock|deci_minute_s\(16);
\bigclock|ALT_INV_deci_minute_s\(17) <= NOT \bigclock|deci_minute_s\(17);
\bigclock|ALT_INV_deci_minute_s\(27) <= NOT \bigclock|deci_minute_s\(27);
\bigclock|ALT_INV_deci_minute_s\(28) <= NOT \bigclock|deci_minute_s\(28);
\bigclock|ALT_INV_deci_minute_s\(15) <= NOT \bigclock|deci_minute_s\(15);
\bigclock|ALT_INV_deci_minute_s\(20) <= NOT \bigclock|deci_minute_s\(20);
\bigclock|ALT_INV_deci_minute_s\(21) <= NOT \bigclock|deci_minute_s\(21);
\bigclock|ALT_INV_deci_minute_s\(7) <= NOT \bigclock|deci_minute_s\(7);
\bigclock|ALT_INV_deci_minute_s\(8) <= NOT \bigclock|deci_minute_s\(8);
\bigclock|ALT_INV_deci_minute_s\(9) <= NOT \bigclock|deci_minute_s\(9);
\bigclock|ALT_INV_deci_minute_s\(19) <= NOT \bigclock|deci_minute_s\(19);
\bigclock|ALT_INV_deci_minute_s\(10) <= NOT \bigclock|deci_minute_s\(10);
\bigclock|ALT_INV_deci_minute_s\(14) <= NOT \bigclock|deci_minute_s\(14);
\bigclock|ALT_INV_deci_minute_s\(26) <= NOT \bigclock|deci_minute_s\(26);
\bigclock|ALT_INV_deci_minute_s\(25) <= NOT \bigclock|deci_minute_s\(25);
\bigclock|ALT_INV_deci_minute_s\(23) <= NOT \bigclock|deci_minute_s\(23);
\bigclock|ALT_INV_deci_minute_s\(18) <= NOT \bigclock|deci_minute_s\(18);
\bigclock|ALT_INV_deci_minute_s\(24) <= NOT \bigclock|deci_minute_s\(24);
\bigclock|ALT_INV_deci_minute_s\(29) <= NOT \bigclock|deci_minute_s\(29);
\bigclock|ALT_INV_deci_minute_s\(30) <= NOT \bigclock|deci_minute_s\(30);
\bigclock|ALT_INV_deci_minute_s\(4) <= NOT \bigclock|deci_minute_s\(4);
\bigclock|ALT_INV_deci_minute_s\(5) <= NOT \bigclock|deci_minute_s\(5);
\bigclock|ALT_INV_deci_minute_s\(6) <= NOT \bigclock|deci_minute_s\(6);
\bigclock|ALT_INV_minute_s\(18) <= NOT \bigclock|minute_s\(18);
\bigclock|ALT_INV_minute_s\(17) <= NOT \bigclock|minute_s\(17);
\bigclock|ALT_INV_minute_s\(16) <= NOT \bigclock|minute_s\(16);
\bigclock|ALT_INV_minute_s\(15) <= NOT \bigclock|minute_s\(15);
\bigclock|ALT_INV_minute_s\(12) <= NOT \bigclock|minute_s\(12);
\bigclock|ALT_INV_minute_s\(11) <= NOT \bigclock|minute_s\(11);
\bigclock|ALT_INV_minute_s\(10) <= NOT \bigclock|minute_s\(10);
\bigclock|ALT_INV_minute_s\(9) <= NOT \bigclock|minute_s\(9);
\bigclock|ALT_INV_minute_s\(8) <= NOT \bigclock|minute_s\(8);
\bigclock|ALT_INV_minute_s\(20) <= NOT \bigclock|minute_s\(20);
\bigclock|ALT_INV_minute_s\(19) <= NOT \bigclock|minute_s\(19);
\bigclock|ALT_INV_minute_s\(13) <= NOT \bigclock|minute_s\(13);
\bigclock|ALT_INV_minute_s\(25) <= NOT \bigclock|minute_s\(25);
\bigclock|ALT_INV_minute_s\(14) <= NOT \bigclock|minute_s\(14);
\bigclock|ALT_INV_minute_s\(28) <= NOT \bigclock|minute_s\(28);
\bigclock|ALT_INV_minute_s\(29) <= NOT \bigclock|minute_s\(29);
\bigclock|ALT_INV_minute_s\(30) <= NOT \bigclock|minute_s\(30);
\bigclock|ALT_INV_minute_s\(5) <= NOT \bigclock|minute_s\(5);
\bigclock|ALT_INV_minute_s\(6) <= NOT \bigclock|minute_s\(6);
\bigclock|ALT_INV_minute_s\(4) <= NOT \bigclock|minute_s\(4);
\bigclock|ALT_INV_minute_s\(21) <= NOT \bigclock|minute_s\(21);
\bigclock|ALT_INV_minute_s\(22) <= NOT \bigclock|minute_s\(22);
\bigclock|ALT_INV_minute_s\(23) <= NOT \bigclock|minute_s\(23);
\bigclock|ALT_INV_minute_s\(24) <= NOT \bigclock|minute_s\(24);
\bigclock|ALT_INV_minute_s\(26) <= NOT \bigclock|minute_s\(26);
\bigclock|ALT_INV_minute_s\(27) <= NOT \bigclock|minute_s\(27);
\bigclock|ALT_INV_minute_s\(7) <= NOT \bigclock|minute_s\(7);
\bigclock|ALT_INV_deci_second_s\(28) <= NOT \bigclock|deci_second_s\(28);
\bigclock|ALT_INV_deci_second_s\(29) <= NOT \bigclock|deci_second_s\(29);
\bigclock|ALT_INV_deci_second_s\(30) <= NOT \bigclock|deci_second_s\(30);
\bigclock|ALT_INV_deci_second_s\(13) <= NOT \bigclock|deci_second_s\(13);
\bigclock|ALT_INV_deci_second_s\(5) <= NOT \bigclock|deci_second_s\(5);
\bigclock|ALT_INV_deci_second_s\(6) <= NOT \bigclock|deci_second_s\(6);
\bigclock|ALT_INV_deci_second_s\(7) <= NOT \bigclock|deci_second_s\(7);
\bigclock|ALT_INV_deci_second_s\(8) <= NOT \bigclock|deci_second_s\(8);
\bigclock|ALT_INV_deci_second_s\(9) <= NOT \bigclock|deci_second_s\(9);
\bigclock|ALT_INV_deci_second_s\(22) <= NOT \bigclock|deci_second_s\(22);
\bigclock|ALT_INV_deci_second_s\(23) <= NOT \bigclock|deci_second_s\(23);
\bigclock|ALT_INV_deci_second_s\(24) <= NOT \bigclock|deci_second_s\(24);
\bigclock|ALT_INV_deci_second_s\(25) <= NOT \bigclock|deci_second_s\(25);
\bigclock|ALT_INV_deci_second_s\(26) <= NOT \bigclock|deci_second_s\(26);
\bigclock|ALT_INV_deci_second_s\(21) <= NOT \bigclock|deci_second_s\(21);
\bigclock|ALT_INV_deci_second_s\(27) <= NOT \bigclock|deci_second_s\(27);
\bigclock|ALT_INV_deci_second_s\(4) <= NOT \bigclock|deci_second_s\(4);
\bigclock|ALT_INV_deci_second_s\(16) <= NOT \bigclock|deci_second_s\(16);
\bigclock|ALT_INV_deci_second_s\(17) <= NOT \bigclock|deci_second_s\(17);
\bigclock|ALT_INV_deci_second_s\(18) <= NOT \bigclock|deci_second_s\(18);
\bigclock|ALT_INV_deci_second_s\(19) <= NOT \bigclock|deci_second_s\(19);
\bigclock|ALT_INV_deci_second_s\(20) <= NOT \bigclock|deci_second_s\(20);
\bigclock|ALT_INV_deci_second_s\(10) <= NOT \bigclock|deci_second_s\(10);
\bigclock|ALT_INV_deci_second_s\(11) <= NOT \bigclock|deci_second_s\(11);
\bigclock|ALT_INV_deci_second_s\(12) <= NOT \bigclock|deci_second_s\(12);
\bigclock|ALT_INV_deci_second_s\(14) <= NOT \bigclock|deci_second_s\(14);
\bigclock|ALT_INV_deci_second_s\(15) <= NOT \bigclock|deci_second_s\(15);
\bigclock|ALT_INV_second_s\(4) <= NOT \bigclock|second_s\(4);
\bigclock|ALT_INV_second_s\(9) <= NOT \bigclock|second_s\(9);
\bigclock|ALT_INV_second_s\(12) <= NOT \bigclock|second_s\(12);
\bigclock|ALT_INV_second_s\(13) <= NOT \bigclock|second_s\(13);
\bigclock|ALT_INV_second_s\(14) <= NOT \bigclock|second_s\(14);
\bigclock|ALT_INV_second_s\(15) <= NOT \bigclock|second_s\(15);
\bigclock|ALT_INV_second_s\(6) <= NOT \bigclock|second_s\(6);
\bigclock|ALT_INV_second_s\(5) <= NOT \bigclock|second_s\(5);
\bigclock|ALT_INV_second_s\(30) <= NOT \bigclock|second_s\(30);
\bigclock|ALT_INV_second_s\(11) <= NOT \bigclock|second_s\(11);
\bigclock|ALT_INV_second_s\(10) <= NOT \bigclock|second_s\(10);
\bigclock|ALT_INV_second_s\(8) <= NOT \bigclock|second_s\(8);
\bigclock|ALT_INV_second_s\(7) <= NOT \bigclock|second_s\(7);
\bigclock|ALT_INV_second_s\(24) <= NOT \bigclock|second_s\(24);
\bigclock|ALT_INV_second_s\(25) <= NOT \bigclock|second_s\(25);
\bigclock|ALT_INV_second_s\(26) <= NOT \bigclock|second_s\(26);
\bigclock|ALT_INV_second_s\(27) <= NOT \bigclock|second_s\(27);
\bigclock|ALT_INV_second_s\(28) <= NOT \bigclock|second_s\(28);
\bigclock|ALT_INV_second_s\(17) <= NOT \bigclock|second_s\(17);
\bigclock|ALT_INV_second_s\(18) <= NOT \bigclock|second_s\(18);
\bigclock|ALT_INV_second_s\(19) <= NOT \bigclock|second_s\(19);
\bigclock|ALT_INV_second_s\(20) <= NOT \bigclock|second_s\(20);
\bigclock|ALT_INV_second_s\(21) <= NOT \bigclock|second_s\(21);
\bigclock|ALT_INV_second_s\(22) <= NOT \bigclock|second_s\(22);
\bigclock|ALT_INV_second_s\(23) <= NOT \bigclock|second_s\(23);
\bigclock|ALT_INV_second_s\(29) <= NOT \bigclock|second_s\(29);
\bigclock|ALT_INV_second_s\(16) <= NOT \bigclock|second_s\(16);
\bigclock|ALT_INV_second_s\(3) <= NOT \bigclock|second_s\(3);
\bigclock|ALT_INV_second_s\(2) <= NOT \bigclock|second_s\(2);
\bigclock|ALT_INV_second_s\(1) <= NOT \bigclock|second_s\(1);
\bigclock|ALT_INV_second_s\(0) <= NOT \bigclock|second_s\(0);
\bigclock|ALT_INV_deci_second_s\(3) <= NOT \bigclock|deci_second_s\(3);
\bigclock|ALT_INV_deci_second_s\(2) <= NOT \bigclock|deci_second_s\(2);
\bigclock|ALT_INV_deci_second_s\(1) <= NOT \bigclock|deci_second_s\(1);
\bigclock|ALT_INV_deci_second_s\(0) <= NOT \bigclock|deci_second_s\(0);
\bigclock|ALT_INV_minute_s\(3) <= NOT \bigclock|minute_s\(3);
\bigclock|ALT_INV_minute_s\(2) <= NOT \bigclock|minute_s\(2);
\bigclock|ALT_INV_minute_s\(1) <= NOT \bigclock|minute_s\(1);
\bigclock|ALT_INV_minute_s\(0) <= NOT \bigclock|minute_s\(0);
\bigclock|ALT_INV_deci_minute_s\(3) <= NOT \bigclock|deci_minute_s\(3);
\bigclock|ALT_INV_deci_minute_s\(2) <= NOT \bigclock|deci_minute_s\(2);
\bigclock|ALT_INV_deci_minute_s\(1) <= NOT \bigclock|deci_minute_s\(1);
\bigclock|ALT_INV_deci_minute_s\(0) <= NOT \bigclock|deci_minute_s\(0);
\bigclock|ALT_INV_hour_s\(3) <= NOT \bigclock|hour_s\(3);
\bigclock|ALT_INV_hour_s\(2) <= NOT \bigclock|hour_s\(2);
\bigclock|ALT_INV_hour_s\(1) <= NOT \bigclock|hour_s\(1);
\bigclock|ALT_INV_hour_s\(0) <= NOT \bigclock|hour_s\(0);
\bigclock|ALT_INV_deci_hour_s\(3) <= NOT \bigclock|deci_hour_s\(3);
\bigclock|ALT_INV_deci_hour_s\(2) <= NOT \bigclock|deci_hour_s\(2);
\bigclock|ALT_INV_deci_hour_s\(1) <= NOT \bigclock|deci_hour_s\(1);
\bigclock|ALT_INV_deci_hour_s\(0) <= NOT \bigclock|deci_hour_s\(0);

-- Location: IOOBUF_X29_Y0_N2
\hex[5][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(0));

-- Location: IOOBUF_X22_Y0_N19
\hex[5][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(1));

-- Location: IOOBUF_X43_Y0_N19
\hex[5][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(2));

-- Location: IOOBUF_X50_Y0_N19
\hex[5][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(3));

-- Location: IOOBUF_X0_Y21_N56
\hex[5][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(4));

-- Location: IOOBUF_X0_Y21_N39
\hex[5][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(5));

-- Location: IOOBUF_X44_Y0_N2
\hex[5][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(6));

-- Location: IOOBUF_X52_Y0_N36
\hex[4][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(0));

-- Location: IOOBUF_X48_Y0_N59
\hex[4][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(1));

-- Location: IOOBUF_X44_Y0_N19
\hex[4][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(2));

-- Location: IOOBUF_X52_Y0_N19
\hex[4][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(3));

-- Location: IOOBUF_X43_Y0_N2
\hex[4][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(4));

-- Location: IOOBUF_X36_Y0_N2
\hex[4][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(5));

-- Location: IOOBUF_X29_Y0_N19
\hex[4][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(6));

-- Location: IOOBUF_X40_Y0_N59
\hex[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(0));

-- Location: IOOBUF_X46_Y0_N2
\hex[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(1));

-- Location: IOOBUF_X40_Y0_N42
\hex[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(2));

-- Location: IOOBUF_X46_Y0_N19
\hex[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(3));

-- Location: IOOBUF_X52_Y0_N2
\hex[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(4));

-- Location: IOOBUF_X51_Y0_N2
\hex[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(5));

-- Location: IOOBUF_X51_Y0_N19
\hex[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(6));

-- Location: IOOBUF_X48_Y0_N42
\hex[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(0));

-- Location: IOOBUF_X38_Y0_N53
\hex[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(1));

-- Location: IOOBUF_X22_Y0_N53
\hex[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(2));

-- Location: IOOBUF_X36_Y0_N19
\hex[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(3));

-- Location: IOOBUF_X38_Y0_N19
\hex[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(4));

-- Location: IOOBUF_X46_Y0_N53
\hex[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(5));

-- Location: IOOBUF_X40_Y0_N76
\hex[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(6));

-- Location: IOOBUF_X44_Y0_N36
\hex[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(0));

-- Location: IOOBUF_X40_Y0_N93
\hex[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(1));

-- Location: IOOBUF_X44_Y0_N53
\hex[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(2));

-- Location: IOOBUF_X43_Y0_N36
\hex[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(3));

-- Location: IOOBUF_X38_Y0_N36
\hex[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(4));

-- Location: IOOBUF_X43_Y0_N53
\hex[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(5));

-- Location: IOOBUF_X51_Y0_N53
\hex[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(6));

-- Location: IOOBUF_X52_Y0_N53
\hex[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(0));

-- Location: IOOBUF_X51_Y0_N36
\hex[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(1));

-- Location: IOOBUF_X48_Y0_N76
\hex[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(2));

-- Location: IOOBUF_X50_Y0_N36
\hex[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(3));

-- Location: IOOBUF_X48_Y0_N93
\hex[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(4));

-- Location: IOOBUF_X50_Y0_N53
\hex[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(5));

-- Location: IOOBUF_X46_Y0_N36
\hex[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bigclock|display5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(6));

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X42_Y2_N0
\bigclock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~1_sumout\ = SUM(( \bigclock|deci_hour_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Add0~2\ = CARRY(( \bigclock|deci_hour_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(0),
	cin => GND,
	sumout => \bigclock|Add0~1_sumout\,
	cout => \bigclock|Add0~2\);

-- Location: IOIBUF_X11_Y0_N35
\rst_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G7
\rst_n~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~input_o\,
	outclk => \rst_n~inputCLKENA0_outclk\);

-- Location: MLABCELL_X42_Y2_N3
\bigclock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~5_sumout\ = SUM(( \bigclock|deci_hour_s\(1) ) + ( GND ) + ( \bigclock|Add0~2\ ))
-- \bigclock|Add0~6\ = CARRY(( \bigclock|deci_hour_s\(1) ) + ( GND ) + ( \bigclock|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(1),
	cin => \bigclock|Add0~2\,
	sumout => \bigclock|Add0~5_sumout\,
	cout => \bigclock|Add0~6\);

-- Location: MLABCELL_X42_Y4_N0
\bigclock|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~1_sumout\ = SUM(( \bigclock|hour_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Add1~2\ = CARRY(( \bigclock|hour_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(0),
	cin => GND,
	sumout => \bigclock|Add1~1_sumout\,
	cout => \bigclock|Add1~2\);

-- Location: MLABCELL_X42_Y4_N3
\bigclock|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~5_sumout\ = SUM(( \bigclock|hour_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~2\ ))
-- \bigclock|Add1~6\ = CARRY(( \bigclock|hour_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	cin => \bigclock|Add1~2\,
	sumout => \bigclock|Add1~5_sumout\,
	cout => \bigclock|Add1~6\);

-- Location: MLABCELL_X42_Y4_N6
\bigclock|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~9_sumout\ = SUM(( \bigclock|hour_s\(2) ) + ( GND ) + ( \bigclock|Add1~6\ ))
-- \bigclock|Add1~10\ = CARRY(( \bigclock|hour_s\(2) ) + ( GND ) + ( \bigclock|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(2),
	cin => \bigclock|Add1~6\,
	sumout => \bigclock|Add1~9_sumout\,
	cout => \bigclock|Add1~10\);

-- Location: IOIBUF_X10_Y0_N92
\key_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n,
	o => \key_n~input_o\);

-- Location: LABCELL_X39_Y2_N15
\bigclock|q1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|q1~0_combout\ = !\key_n~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key_n~input_o\,
	combout => \bigclock|q1~0_combout\);

-- Location: FF_X39_Y2_N16
\bigclock|q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|q1~0_combout\,
	clrn => \ALT_INV_rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|q1~q\);

-- Location: LABCELL_X39_Y2_N12
\bigclock|clk_state_s.counting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|clk_state_s.counting~0_combout\ = ( \bigclock|q1~q\ & ( !\key_n~input_o\ $ (!\bigclock|clk_state_s.counting~q\) ) ) # ( !\bigclock|q1~q\ & ( \bigclock|clk_state_s.counting~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key_n~input_o\,
	datad => \bigclock|ALT_INV_clk_state_s.counting~q\,
	dataf => \bigclock|ALT_INV_q1~q\,
	combout => \bigclock|clk_state_s.counting~0_combout\);

-- Location: FF_X39_Y2_N14
\bigclock|clk_state_s.counting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|clk_state_s.counting~0_combout\,
	clrn => \ALT_INV_rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|clk_state_s.counting~q\);

-- Location: MLABCELL_X37_Y3_N0
\bigclock|Sec_Clock|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~101_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Sec_Clock|Add0~102\ = CARRY(( \bigclock|Sec_Clock|counter_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(0),
	cin => GND,
	sumout => \bigclock|Sec_Clock|Add0~101_sumout\,
	cout => \bigclock|Sec_Clock|Add0~102\);

-- Location: FF_X37_Y3_N2
\bigclock|Sec_Clock|counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(0));

-- Location: MLABCELL_X37_Y3_N3
\bigclock|Sec_Clock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~25_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(1) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~102\ ))
-- \bigclock|Sec_Clock|Add0~26\ = CARRY(( \bigclock|Sec_Clock|counter_s\(1) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(1),
	cin => \bigclock|Sec_Clock|Add0~102\,
	sumout => \bigclock|Sec_Clock|Add0~25_sumout\,
	cout => \bigclock|Sec_Clock|Add0~26\);

-- Location: FF_X37_Y3_N5
\bigclock|Sec_Clock|counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(1));

-- Location: MLABCELL_X37_Y3_N6
\bigclock|Sec_Clock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~17_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(2) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~26\ ))
-- \bigclock|Sec_Clock|Add0~18\ = CARRY(( \bigclock|Sec_Clock|counter_s\(2) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(2),
	cin => \bigclock|Sec_Clock|Add0~26\,
	sumout => \bigclock|Sec_Clock|Add0~17_sumout\,
	cout => \bigclock|Sec_Clock|Add0~18\);

-- Location: FF_X37_Y3_N7
\bigclock|Sec_Clock|counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(2));

-- Location: MLABCELL_X37_Y3_N9
\bigclock|Sec_Clock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~21_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(3) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~18\ ))
-- \bigclock|Sec_Clock|Add0~22\ = CARRY(( \bigclock|Sec_Clock|counter_s\(3) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(3),
	cin => \bigclock|Sec_Clock|Add0~18\,
	sumout => \bigclock|Sec_Clock|Add0~21_sumout\,
	cout => \bigclock|Sec_Clock|Add0~22\);

-- Location: FF_X37_Y3_N11
\bigclock|Sec_Clock|counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(3));

-- Location: MLABCELL_X37_Y3_N12
\bigclock|Sec_Clock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~9_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(4) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~22\ ))
-- \bigclock|Sec_Clock|Add0~10\ = CARRY(( \bigclock|Sec_Clock|counter_s\(4) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(4),
	cin => \bigclock|Sec_Clock|Add0~22\,
	sumout => \bigclock|Sec_Clock|Add0~9_sumout\,
	cout => \bigclock|Sec_Clock|Add0~10\);

-- Location: FF_X37_Y3_N14
\bigclock|Sec_Clock|counter_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(4));

-- Location: MLABCELL_X37_Y3_N15
\bigclock|Sec_Clock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~13_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(5) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~10\ ))
-- \bigclock|Sec_Clock|Add0~14\ = CARRY(( \bigclock|Sec_Clock|counter_s\(5) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(5),
	cin => \bigclock|Sec_Clock|Add0~10\,
	sumout => \bigclock|Sec_Clock|Add0~13_sumout\,
	cout => \bigclock|Sec_Clock|Add0~14\);

-- Location: FF_X37_Y3_N17
\bigclock|Sec_Clock|counter_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(5));

-- Location: MLABCELL_X37_Y3_N18
\bigclock|Sec_Clock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~29_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(6) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~14\ ))
-- \bigclock|Sec_Clock|Add0~30\ = CARRY(( \bigclock|Sec_Clock|counter_s\(6) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(6),
	cin => \bigclock|Sec_Clock|Add0~14\,
	sumout => \bigclock|Sec_Clock|Add0~29_sumout\,
	cout => \bigclock|Sec_Clock|Add0~30\);

-- Location: FF_X37_Y3_N20
\bigclock|Sec_Clock|counter_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(6));

-- Location: MLABCELL_X37_Y3_N21
\bigclock|Sec_Clock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~33_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(7) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~30\ ))
-- \bigclock|Sec_Clock|Add0~34\ = CARRY(( \bigclock|Sec_Clock|counter_s\(7) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(7),
	cin => \bigclock|Sec_Clock|Add0~30\,
	sumout => \bigclock|Sec_Clock|Add0~33_sumout\,
	cout => \bigclock|Sec_Clock|Add0~34\);

-- Location: FF_X37_Y3_N23
\bigclock|Sec_Clock|counter_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(7));

-- Location: MLABCELL_X37_Y3_N24
\bigclock|Sec_Clock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~41_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~34\ ))
-- \bigclock|Sec_Clock|Add0~42\ = CARRY(( \bigclock|Sec_Clock|counter_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s[8]~DUPLICATE_q\,
	cin => \bigclock|Sec_Clock|Add0~34\,
	sumout => \bigclock|Sec_Clock|Add0~41_sumout\,
	cout => \bigclock|Sec_Clock|Add0~42\);

-- Location: FF_X37_Y3_N26
\bigclock|Sec_Clock|counter_s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s[8]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y3_N27
\bigclock|Sec_Clock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~45_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(9) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~42\ ))
-- \bigclock|Sec_Clock|Add0~46\ = CARRY(( \bigclock|Sec_Clock|counter_s\(9) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(9),
	cin => \bigclock|Sec_Clock|Add0~42\,
	sumout => \bigclock|Sec_Clock|Add0~45_sumout\,
	cout => \bigclock|Sec_Clock|Add0~46\);

-- Location: FF_X37_Y3_N29
\bigclock|Sec_Clock|counter_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(9));

-- Location: MLABCELL_X37_Y2_N0
\bigclock|Sec_Clock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~49_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~46\ ))
-- \bigclock|Sec_Clock|Add0~50\ = CARRY(( \bigclock|Sec_Clock|counter_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\,
	cin => \bigclock|Sec_Clock|Add0~46\,
	sumout => \bigclock|Sec_Clock|Add0~49_sumout\,
	cout => \bigclock|Sec_Clock|Add0~50\);

-- Location: FF_X37_Y2_N2
\bigclock|Sec_Clock|counter_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s[10]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N3
\bigclock|Sec_Clock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~53_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(11) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~50\ ))
-- \bigclock|Sec_Clock|Add0~54\ = CARRY(( \bigclock|Sec_Clock|counter_s\(11) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(11),
	cin => \bigclock|Sec_Clock|Add0~50\,
	sumout => \bigclock|Sec_Clock|Add0~53_sumout\,
	cout => \bigclock|Sec_Clock|Add0~54\);

-- Location: FF_X37_Y2_N5
\bigclock|Sec_Clock|counter_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(11));

-- Location: MLABCELL_X37_Y2_N6
\bigclock|Sec_Clock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~57_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(12) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~54\ ))
-- \bigclock|Sec_Clock|Add0~58\ = CARRY(( \bigclock|Sec_Clock|counter_s\(12) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(12),
	cin => \bigclock|Sec_Clock|Add0~54\,
	sumout => \bigclock|Sec_Clock|Add0~57_sumout\,
	cout => \bigclock|Sec_Clock|Add0~58\);

-- Location: FF_X37_Y2_N7
\bigclock|Sec_Clock|counter_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(12));

-- Location: MLABCELL_X37_Y2_N9
\bigclock|Sec_Clock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~61_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(13) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~58\ ))
-- \bigclock|Sec_Clock|Add0~62\ = CARRY(( \bigclock|Sec_Clock|counter_s\(13) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(13),
	cin => \bigclock|Sec_Clock|Add0~58\,
	sumout => \bigclock|Sec_Clock|Add0~61_sumout\,
	cout => \bigclock|Sec_Clock|Add0~62\);

-- Location: FF_X37_Y2_N11
\bigclock|Sec_Clock|counter_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(13));

-- Location: MLABCELL_X37_Y2_N12
\bigclock|Sec_Clock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~65_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(14) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~62\ ))
-- \bigclock|Sec_Clock|Add0~66\ = CARRY(( \bigclock|Sec_Clock|counter_s\(14) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(14),
	cin => \bigclock|Sec_Clock|Add0~62\,
	sumout => \bigclock|Sec_Clock|Add0~65_sumout\,
	cout => \bigclock|Sec_Clock|Add0~66\);

-- Location: FF_X37_Y2_N14
\bigclock|Sec_Clock|counter_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(14));

-- Location: MLABCELL_X37_Y2_N15
\bigclock|Sec_Clock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~37_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(15) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~66\ ))
-- \bigclock|Sec_Clock|Add0~38\ = CARRY(( \bigclock|Sec_Clock|counter_s\(15) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(15),
	cin => \bigclock|Sec_Clock|Add0~66\,
	sumout => \bigclock|Sec_Clock|Add0~37_sumout\,
	cout => \bigclock|Sec_Clock|Add0~38\);

-- Location: FF_X37_Y2_N16
\bigclock|Sec_Clock|counter_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(15));

-- Location: MLABCELL_X37_Y2_N18
\bigclock|Sec_Clock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~69_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(16) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~38\ ))
-- \bigclock|Sec_Clock|Add0~70\ = CARRY(( \bigclock|Sec_Clock|counter_s\(16) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(16),
	cin => \bigclock|Sec_Clock|Add0~38\,
	sumout => \bigclock|Sec_Clock|Add0~69_sumout\,
	cout => \bigclock|Sec_Clock|Add0~70\);

-- Location: FF_X37_Y2_N20
\bigclock|Sec_Clock|counter_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(16));

-- Location: MLABCELL_X37_Y2_N21
\bigclock|Sec_Clock|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~73_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(17) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~70\ ))
-- \bigclock|Sec_Clock|Add0~74\ = CARRY(( \bigclock|Sec_Clock|counter_s\(17) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(17),
	cin => \bigclock|Sec_Clock|Add0~70\,
	sumout => \bigclock|Sec_Clock|Add0~73_sumout\,
	cout => \bigclock|Sec_Clock|Add0~74\);

-- Location: FF_X37_Y2_N23
\bigclock|Sec_Clock|counter_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(17));

-- Location: MLABCELL_X37_Y2_N24
\bigclock|Sec_Clock|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~77_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(18) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~74\ ))
-- \bigclock|Sec_Clock|Add0~78\ = CARRY(( \bigclock|Sec_Clock|counter_s\(18) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(18),
	cin => \bigclock|Sec_Clock|Add0~74\,
	sumout => \bigclock|Sec_Clock|Add0~77_sumout\,
	cout => \bigclock|Sec_Clock|Add0~78\);

-- Location: FF_X37_Y2_N26
\bigclock|Sec_Clock|counter_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(18));

-- Location: MLABCELL_X37_Y2_N27
\bigclock|Sec_Clock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~5_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(19) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~78\ ))
-- \bigclock|Sec_Clock|Add0~6\ = CARRY(( \bigclock|Sec_Clock|counter_s\(19) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(19),
	cin => \bigclock|Sec_Clock|Add0~78\,
	sumout => \bigclock|Sec_Clock|Add0~5_sumout\,
	cout => \bigclock|Sec_Clock|Add0~6\);

-- Location: FF_X37_Y2_N28
\bigclock|Sec_Clock|counter_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(19));

-- Location: MLABCELL_X37_Y3_N30
\bigclock|Sec_Clock|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|LessThan0~0_combout\ = ( \bigclock|Sec_Clock|counter_s\(1) & ( \bigclock|Sec_Clock|counter_s\(4) & ( \bigclock|Sec_Clock|counter_s\(5) ) ) ) # ( !\bigclock|Sec_Clock|counter_s\(1) & ( \bigclock|Sec_Clock|counter_s\(4) & ( 
-- (\bigclock|Sec_Clock|counter_s\(5) & ((\bigclock|Sec_Clock|counter_s\(3)) # (\bigclock|Sec_Clock|counter_s\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(2),
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(5),
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(3),
	datae => \bigclock|Sec_Clock|ALT_INV_counter_s\(1),
	dataf => \bigclock|Sec_Clock|ALT_INV_counter_s\(4),
	combout => \bigclock|Sec_Clock|LessThan0~0_combout\);

-- Location: MLABCELL_X37_Y2_N30
\bigclock|Sec_Clock|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~81_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(20) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~6\ ))
-- \bigclock|Sec_Clock|Add0~82\ = CARRY(( \bigclock|Sec_Clock|counter_s\(20) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(20),
	cin => \bigclock|Sec_Clock|Add0~6\,
	sumout => \bigclock|Sec_Clock|Add0~81_sumout\,
	cout => \bigclock|Sec_Clock|Add0~82\);

-- Location: FF_X37_Y2_N32
\bigclock|Sec_Clock|counter_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(20));

-- Location: MLABCELL_X37_Y2_N33
\bigclock|Sec_Clock|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~85_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(21) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~82\ ))
-- \bigclock|Sec_Clock|Add0~86\ = CARRY(( \bigclock|Sec_Clock|counter_s\(21) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(21),
	cin => \bigclock|Sec_Clock|Add0~82\,
	sumout => \bigclock|Sec_Clock|Add0~85_sumout\,
	cout => \bigclock|Sec_Clock|Add0~86\);

-- Location: FF_X37_Y2_N35
\bigclock|Sec_Clock|counter_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(21));

-- Location: MLABCELL_X37_Y2_N36
\bigclock|Sec_Clock|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~89_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(22) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~86\ ))
-- \bigclock|Sec_Clock|Add0~90\ = CARRY(( \bigclock|Sec_Clock|counter_s\(22) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(22),
	cin => \bigclock|Sec_Clock|Add0~86\,
	sumout => \bigclock|Sec_Clock|Add0~89_sumout\,
	cout => \bigclock|Sec_Clock|Add0~90\);

-- Location: FF_X37_Y2_N38
\bigclock|Sec_Clock|counter_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(22));

-- Location: MLABCELL_X37_Y2_N39
\bigclock|Sec_Clock|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~93_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(23) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~90\ ))
-- \bigclock|Sec_Clock|Add0~94\ = CARRY(( \bigclock|Sec_Clock|counter_s\(23) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(23),
	cin => \bigclock|Sec_Clock|Add0~90\,
	sumout => \bigclock|Sec_Clock|Add0~93_sumout\,
	cout => \bigclock|Sec_Clock|Add0~94\);

-- Location: FF_X37_Y2_N41
\bigclock|Sec_Clock|counter_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(23));

-- Location: MLABCELL_X37_Y2_N42
\bigclock|Sec_Clock|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~97_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(24) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~94\ ))
-- \bigclock|Sec_Clock|Add0~98\ = CARRY(( \bigclock|Sec_Clock|counter_s\(24) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(24),
	cin => \bigclock|Sec_Clock|Add0~94\,
	sumout => \bigclock|Sec_Clock|Add0~97_sumout\,
	cout => \bigclock|Sec_Clock|Add0~98\);

-- Location: FF_X37_Y2_N44
\bigclock|Sec_Clock|counter_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(24));

-- Location: MLABCELL_X37_Y2_N45
\bigclock|Sec_Clock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|Add0~1_sumout\ = SUM(( \bigclock|Sec_Clock|counter_s\(25) ) + ( GND ) + ( \bigclock|Sec_Clock|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(25),
	cin => \bigclock|Sec_Clock|Add0~98\,
	sumout => \bigclock|Sec_Clock|Add0~1_sumout\);

-- Location: FF_X37_Y2_N46
\bigclock|Sec_Clock|counter_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(25));

-- Location: FF_X37_Y3_N25
\bigclock|Sec_Clock|counter_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(8));

-- Location: FF_X37_Y2_N1
\bigclock|Sec_Clock|counter_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Sec_Clock|Add0~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|Sec_Clock|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|counter_s\(10));

-- Location: MLABCELL_X37_Y3_N48
\bigclock|Sec_Clock|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|LessThan0~1_combout\ = ( !\bigclock|Sec_Clock|counter_s\(9) & ( !\bigclock|Sec_Clock|counter_s\(10) & ( (!\bigclock|Sec_Clock|counter_s\(6) & (!\bigclock|Sec_Clock|counter_s\(15) & (!\bigclock|Sec_Clock|counter_s\(7) & 
-- !\bigclock|Sec_Clock|counter_s\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(6),
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(15),
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(7),
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(8),
	datae => \bigclock|Sec_Clock|ALT_INV_counter_s\(9),
	dataf => \bigclock|Sec_Clock|ALT_INV_counter_s\(10),
	combout => \bigclock|Sec_Clock|LessThan0~1_combout\);

-- Location: MLABCELL_X37_Y2_N54
\bigclock|Sec_Clock|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|LessThan0~3_combout\ = ( !\bigclock|Sec_Clock|counter_s\(22) & ( !\bigclock|Sec_Clock|counter_s\(23) & ( (!\bigclock|Sec_Clock|counter_s\(18) & (!\bigclock|Sec_Clock|counter_s\(24) & (!\bigclock|Sec_Clock|counter_s\(21) & 
-- !\bigclock|Sec_Clock|counter_s\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(18),
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(24),
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(21),
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(20),
	datae => \bigclock|Sec_Clock|ALT_INV_counter_s\(22),
	dataf => \bigclock|Sec_Clock|ALT_INV_counter_s\(23),
	combout => \bigclock|Sec_Clock|LessThan0~3_combout\);

-- Location: MLABCELL_X37_Y2_N48
\bigclock|Sec_Clock|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|LessThan0~2_combout\ = ( !\bigclock|Sec_Clock|counter_s\(11) & ( !\bigclock|Sec_Clock|counter_s\(16) & ( (!\bigclock|Sec_Clock|counter_s\(17) & (!\bigclock|Sec_Clock|counter_s\(13) & (!\bigclock|Sec_Clock|counter_s\(12) & 
-- !\bigclock|Sec_Clock|counter_s\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(17),
	datab => \bigclock|Sec_Clock|ALT_INV_counter_s\(13),
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(12),
	datad => \bigclock|Sec_Clock|ALT_INV_counter_s\(14),
	datae => \bigclock|Sec_Clock|ALT_INV_counter_s\(11),
	dataf => \bigclock|Sec_Clock|ALT_INV_counter_s\(16),
	combout => \bigclock|Sec_Clock|LessThan0~2_combout\);

-- Location: MLABCELL_X37_Y3_N57
\bigclock|Sec_Clock|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Sec_Clock|LessThan0~4_combout\ = ( \bigclock|Sec_Clock|LessThan0~3_combout\ & ( \bigclock|Sec_Clock|LessThan0~2_combout\ & ( (((!\bigclock|Sec_Clock|LessThan0~1_combout\) # (\bigclock|Sec_Clock|counter_s\(25))) # 
-- (\bigclock|Sec_Clock|LessThan0~0_combout\)) # (\bigclock|Sec_Clock|counter_s\(19)) ) ) ) # ( !\bigclock|Sec_Clock|LessThan0~3_combout\ & ( \bigclock|Sec_Clock|LessThan0~2_combout\ ) ) # ( \bigclock|Sec_Clock|LessThan0~3_combout\ & ( 
-- !\bigclock|Sec_Clock|LessThan0~2_combout\ ) ) # ( !\bigclock|Sec_Clock|LessThan0~3_combout\ & ( !\bigclock|Sec_Clock|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_counter_s\(19),
	datab => \bigclock|Sec_Clock|ALT_INV_LessThan0~0_combout\,
	datac => \bigclock|Sec_Clock|ALT_INV_counter_s\(25),
	datad => \bigclock|Sec_Clock|ALT_INV_LessThan0~1_combout\,
	datae => \bigclock|Sec_Clock|ALT_INV_LessThan0~3_combout\,
	dataf => \bigclock|Sec_Clock|ALT_INV_LessThan0~2_combout\,
	combout => \bigclock|Sec_Clock|LessThan0~4_combout\);

-- Location: FF_X40_Y3_N16
\bigclock|Sec_Clock|slow_clk~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Sec_Clock|LessThan0~4_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|slow_clk~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N0
\bigclock|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~1_sumout\ = SUM(( \bigclock|Sec_Clock|slow_clk~DUPLICATE_q\ ) + ( \bigclock|second_s\(0) ) + ( !VCC ))
-- \bigclock|Add5~2\ = CARRY(( \bigclock|Sec_Clock|slow_clk~DUPLICATE_q\ ) + ( \bigclock|second_s\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(0),
	datad => \bigclock|Sec_Clock|ALT_INV_slow_clk~DUPLICATE_q\,
	cin => GND,
	sumout => \bigclock|Add5~1_sumout\,
	cout => \bigclock|Add5~2\);

-- Location: FF_X42_Y4_N4
\bigclock|hour_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(1));

-- Location: MLABCELL_X42_Y4_N9
\bigclock|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~13_sumout\ = SUM(( \bigclock|hour_s\(3) ) + ( GND ) + ( \bigclock|Add1~10\ ))
-- \bigclock|Add1~14\ = CARRY(( \bigclock|hour_s\(3) ) + ( GND ) + ( \bigclock|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(3),
	cin => \bigclock|Add1~10\,
	sumout => \bigclock|Add1~13_sumout\,
	cout => \bigclock|Add1~14\);

-- Location: MLABCELL_X42_Y4_N12
\bigclock|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~69_sumout\ = SUM(( \bigclock|hour_s\(4) ) + ( GND ) + ( \bigclock|Add1~14\ ))
-- \bigclock|Add1~70\ = CARRY(( \bigclock|hour_s\(4) ) + ( GND ) + ( \bigclock|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(4),
	cin => \bigclock|Add1~14\,
	sumout => \bigclock|Add1~69_sumout\,
	cout => \bigclock|Add1~70\);

-- Location: FF_X42_Y4_N14
\bigclock|hour_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(4));

-- Location: MLABCELL_X42_Y4_N15
\bigclock|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~85_sumout\ = SUM(( \bigclock|hour_s\(5) ) + ( GND ) + ( \bigclock|Add1~70\ ))
-- \bigclock|Add1~86\ = CARRY(( \bigclock|hour_s\(5) ) + ( GND ) + ( \bigclock|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(5),
	cin => \bigclock|Add1~70\,
	sumout => \bigclock|Add1~85_sumout\,
	cout => \bigclock|Add1~86\);

-- Location: FF_X42_Y4_N17
\bigclock|hour_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(5));

-- Location: MLABCELL_X42_Y4_N18
\bigclock|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~81_sumout\ = SUM(( \bigclock|hour_s\(6) ) + ( GND ) + ( \bigclock|Add1~86\ ))
-- \bigclock|Add1~82\ = CARRY(( \bigclock|hour_s\(6) ) + ( GND ) + ( \bigclock|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(6),
	cin => \bigclock|Add1~86\,
	sumout => \bigclock|Add1~81_sumout\,
	cout => \bigclock|Add1~82\);

-- Location: FF_X42_Y4_N20
\bigclock|hour_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(6));

-- Location: MLABCELL_X42_Y4_N21
\bigclock|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~73_sumout\ = SUM(( \bigclock|hour_s\(7) ) + ( GND ) + ( \bigclock|Add1~82\ ))
-- \bigclock|Add1~74\ = CARRY(( \bigclock|hour_s\(7) ) + ( GND ) + ( \bigclock|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(7),
	cin => \bigclock|Add1~82\,
	sumout => \bigclock|Add1~73_sumout\,
	cout => \bigclock|Add1~74\);

-- Location: FF_X42_Y4_N23
\bigclock|hour_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(7));

-- Location: MLABCELL_X42_Y4_N24
\bigclock|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~121_sumout\ = SUM(( \bigclock|hour_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~74\ ))
-- \bigclock|Add1~122\ = CARRY(( \bigclock|hour_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[8]~DUPLICATE_q\,
	cin => \bigclock|Add1~74\,
	sumout => \bigclock|Add1~121_sumout\,
	cout => \bigclock|Add1~122\);

-- Location: FF_X42_Y4_N26
\bigclock|hour_s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[8]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N27
\bigclock|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~117_sumout\ = SUM(( \bigclock|hour_s\(9) ) + ( GND ) + ( \bigclock|Add1~122\ ))
-- \bigclock|Add1~118\ = CARRY(( \bigclock|hour_s\(9) ) + ( GND ) + ( \bigclock|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(9),
	cin => \bigclock|Add1~122\,
	sumout => \bigclock|Add1~117_sumout\,
	cout => \bigclock|Add1~118\);

-- Location: FF_X42_Y4_N29
\bigclock|hour_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(9));

-- Location: MLABCELL_X42_Y4_N30
\bigclock|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~113_sumout\ = SUM(( \bigclock|hour_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~118\ ))
-- \bigclock|Add1~114\ = CARRY(( \bigclock|hour_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add1~118\,
	sumout => \bigclock|Add1~113_sumout\,
	cout => \bigclock|Add1~114\);

-- Location: FF_X42_Y4_N31
\bigclock|hour_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[10]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N33
\bigclock|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~109_sumout\ = SUM(( \bigclock|hour_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~114\ ))
-- \bigclock|Add1~110\ = CARRY(( \bigclock|hour_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s[11]~DUPLICATE_q\,
	cin => \bigclock|Add1~114\,
	sumout => \bigclock|Add1~109_sumout\,
	cout => \bigclock|Add1~110\);

-- Location: FF_X42_Y4_N35
\bigclock|hour_s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[11]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N36
\bigclock|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~77_sumout\ = SUM(( \bigclock|hour_s\(12) ) + ( GND ) + ( \bigclock|Add1~110\ ))
-- \bigclock|Add1~78\ = CARRY(( \bigclock|hour_s\(12) ) + ( GND ) + ( \bigclock|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(12),
	cin => \bigclock|Add1~110\,
	sumout => \bigclock|Add1~77_sumout\,
	cout => \bigclock|Add1~78\);

-- Location: FF_X42_Y4_N38
\bigclock|hour_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(12));

-- Location: MLABCELL_X42_Y4_N39
\bigclock|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~105_sumout\ = SUM(( \bigclock|hour_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~78\ ))
-- \bigclock|Add1~106\ = CARRY(( \bigclock|hour_s[13]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[13]~DUPLICATE_q\,
	cin => \bigclock|Add1~78\,
	sumout => \bigclock|Add1~105_sumout\,
	cout => \bigclock|Add1~106\);

-- Location: FF_X42_Y4_N40
\bigclock|hour_s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[13]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N42
\bigclock|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~101_sumout\ = SUM(( \bigclock|hour_s\(14) ) + ( GND ) + ( \bigclock|Add1~106\ ))
-- \bigclock|Add1~102\ = CARRY(( \bigclock|hour_s\(14) ) + ( GND ) + ( \bigclock|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(14),
	cin => \bigclock|Add1~106\,
	sumout => \bigclock|Add1~101_sumout\,
	cout => \bigclock|Add1~102\);

-- Location: FF_X42_Y4_N43
\bigclock|hour_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(14));

-- Location: MLABCELL_X42_Y4_N45
\bigclock|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~97_sumout\ = SUM(( \bigclock|hour_s\(15) ) + ( GND ) + ( \bigclock|Add1~102\ ))
-- \bigclock|Add1~98\ = CARRY(( \bigclock|hour_s\(15) ) + ( GND ) + ( \bigclock|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(15),
	cin => \bigclock|Add1~102\,
	sumout => \bigclock|Add1~97_sumout\,
	cout => \bigclock|Add1~98\);

-- Location: FF_X42_Y4_N47
\bigclock|hour_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(15));

-- Location: MLABCELL_X42_Y4_N48
\bigclock|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~93_sumout\ = SUM(( \bigclock|hour_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~98\ ))
-- \bigclock|Add1~94\ = CARRY(( \bigclock|hour_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[16]~DUPLICATE_q\,
	cin => \bigclock|Add1~98\,
	sumout => \bigclock|Add1~93_sumout\,
	cout => \bigclock|Add1~94\);

-- Location: FF_X42_Y4_N50
\bigclock|hour_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[16]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N51
\bigclock|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~89_sumout\ = SUM(( \bigclock|hour_s\(17) ) + ( GND ) + ( \bigclock|Add1~94\ ))
-- \bigclock|Add1~90\ = CARRY(( \bigclock|hour_s\(17) ) + ( GND ) + ( \bigclock|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(17),
	cin => \bigclock|Add1~94\,
	sumout => \bigclock|Add1~89_sumout\,
	cout => \bigclock|Add1~90\);

-- Location: FF_X42_Y4_N52
\bigclock|hour_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(17));

-- Location: MLABCELL_X42_Y4_N54
\bigclock|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~41_sumout\ = SUM(( \bigclock|hour_s\(18) ) + ( GND ) + ( \bigclock|Add1~90\ ))
-- \bigclock|Add1~42\ = CARRY(( \bigclock|hour_s\(18) ) + ( GND ) + ( \bigclock|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(18),
	cin => \bigclock|Add1~90\,
	sumout => \bigclock|Add1~41_sumout\,
	cout => \bigclock|Add1~42\);

-- Location: FF_X42_Y4_N55
\bigclock|hour_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(18));

-- Location: MLABCELL_X42_Y4_N57
\bigclock|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~37_sumout\ = SUM(( \bigclock|hour_s\(19) ) + ( GND ) + ( \bigclock|Add1~42\ ))
-- \bigclock|Add1~38\ = CARRY(( \bigclock|hour_s\(19) ) + ( GND ) + ( \bigclock|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(19),
	cin => \bigclock|Add1~42\,
	sumout => \bigclock|Add1~37_sumout\,
	cout => \bigclock|Add1~38\);

-- Location: FF_X42_Y4_N59
\bigclock|hour_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(19));

-- Location: MLABCELL_X42_Y3_N0
\bigclock|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~33_sumout\ = SUM(( \bigclock|hour_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~38\ ))
-- \bigclock|Add1~34\ = CARRY(( \bigclock|hour_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[20]~DUPLICATE_q\,
	cin => \bigclock|Add1~38\,
	sumout => \bigclock|Add1~33_sumout\,
	cout => \bigclock|Add1~34\);

-- Location: FF_X42_Y3_N2
\bigclock|hour_s[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[20]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N3
\bigclock|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~29_sumout\ = SUM(( \bigclock|hour_s\(21) ) + ( GND ) + ( \bigclock|Add1~34\ ))
-- \bigclock|Add1~30\ = CARRY(( \bigclock|hour_s\(21) ) + ( GND ) + ( \bigclock|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(21),
	cin => \bigclock|Add1~34\,
	sumout => \bigclock|Add1~29_sumout\,
	cout => \bigclock|Add1~30\);

-- Location: FF_X42_Y3_N5
\bigclock|hour_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(21));

-- Location: MLABCELL_X42_Y3_N6
\bigclock|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~25_sumout\ = SUM(( \bigclock|hour_s\(22) ) + ( GND ) + ( \bigclock|Add1~30\ ))
-- \bigclock|Add1~26\ = CARRY(( \bigclock|hour_s\(22) ) + ( GND ) + ( \bigclock|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(22),
	cin => \bigclock|Add1~30\,
	sumout => \bigclock|Add1~25_sumout\,
	cout => \bigclock|Add1~26\);

-- Location: FF_X42_Y3_N8
\bigclock|hour_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(22));

-- Location: MLABCELL_X42_Y3_N9
\bigclock|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~21_sumout\ = SUM(( \bigclock|hour_s[23]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~26\ ))
-- \bigclock|Add1~22\ = CARRY(( \bigclock|hour_s[23]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s[23]~DUPLICATE_q\,
	cin => \bigclock|Add1~26\,
	sumout => \bigclock|Add1~21_sumout\,
	cout => \bigclock|Add1~22\);

-- Location: FF_X42_Y3_N10
\bigclock|hour_s[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[23]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N12
\bigclock|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~17_sumout\ = SUM(( \bigclock|hour_s\(24) ) + ( GND ) + ( \bigclock|Add1~22\ ))
-- \bigclock|Add1~18\ = CARRY(( \bigclock|hour_s\(24) ) + ( GND ) + ( \bigclock|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(24),
	cin => \bigclock|Add1~22\,
	sumout => \bigclock|Add1~17_sumout\,
	cout => \bigclock|Add1~18\);

-- Location: FF_X42_Y3_N14
\bigclock|hour_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(24));

-- Location: MLABCELL_X42_Y3_N15
\bigclock|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~57_sumout\ = SUM(( \bigclock|hour_s\(25) ) + ( GND ) + ( \bigclock|Add1~18\ ))
-- \bigclock|Add1~58\ = CARRY(( \bigclock|hour_s\(25) ) + ( GND ) + ( \bigclock|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(25),
	cin => \bigclock|Add1~18\,
	sumout => \bigclock|Add1~57_sumout\,
	cout => \bigclock|Add1~58\);

-- Location: FF_X42_Y3_N17
\bigclock|hour_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(25));

-- Location: MLABCELL_X42_Y3_N18
\bigclock|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~53_sumout\ = SUM(( \bigclock|hour_s\(26) ) + ( GND ) + ( \bigclock|Add1~58\ ))
-- \bigclock|Add1~54\ = CARRY(( \bigclock|hour_s\(26) ) + ( GND ) + ( \bigclock|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(26),
	cin => \bigclock|Add1~58\,
	sumout => \bigclock|Add1~53_sumout\,
	cout => \bigclock|Add1~54\);

-- Location: FF_X42_Y3_N20
\bigclock|hour_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(26));

-- Location: MLABCELL_X42_Y3_N21
\bigclock|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~61_sumout\ = SUM(( \bigclock|hour_s\(27) ) + ( GND ) + ( \bigclock|Add1~54\ ))
-- \bigclock|Add1~62\ = CARRY(( \bigclock|hour_s\(27) ) + ( GND ) + ( \bigclock|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_hour_s\(27),
	cin => \bigclock|Add1~54\,
	sumout => \bigclock|Add1~61_sumout\,
	cout => \bigclock|Add1~62\);

-- Location: FF_X42_Y3_N23
\bigclock|hour_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(27));

-- Location: MLABCELL_X42_Y3_N24
\bigclock|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~49_sumout\ = SUM(( \bigclock|hour_s\(28) ) + ( GND ) + ( \bigclock|Add1~62\ ))
-- \bigclock|Add1~50\ = CARRY(( \bigclock|hour_s\(28) ) + ( GND ) + ( \bigclock|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(28),
	cin => \bigclock|Add1~62\,
	sumout => \bigclock|Add1~49_sumout\,
	cout => \bigclock|Add1~50\);

-- Location: FF_X42_Y3_N26
\bigclock|hour_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(28));

-- Location: MLABCELL_X42_Y3_N27
\bigclock|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~45_sumout\ = SUM(( \bigclock|hour_s\(29) ) + ( GND ) + ( \bigclock|Add1~50\ ))
-- \bigclock|Add1~46\ = CARRY(( \bigclock|hour_s\(29) ) + ( GND ) + ( \bigclock|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(29),
	cin => \bigclock|Add1~50\,
	sumout => \bigclock|Add1~45_sumout\,
	cout => \bigclock|Add1~46\);

-- Location: FF_X42_Y3_N28
\bigclock|hour_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(29));

-- Location: LABCELL_X41_Y3_N36
\bigclock|counter24h~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~12_combout\ = ( !\bigclock|hour_s\(28) & ( (!\bigclock|hour_s\(26) & (!\bigclock|hour_s\(29) & !\bigclock|hour_s\(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(26),
	datac => \bigclock|ALT_INV_hour_s\(29),
	datad => \bigclock|ALT_INV_hour_s\(25),
	dataf => \bigclock|ALT_INV_hour_s\(28),
	combout => \bigclock|counter24h~12_combout\);

-- Location: FF_X42_Y3_N11
\bigclock|hour_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(23));

-- Location: FF_X42_Y3_N1
\bigclock|hour_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(20));

-- Location: LABCELL_X41_Y3_N0
\bigclock|counter24h~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~11_combout\ = ( !\bigclock|hour_s\(19) & ( !\bigclock|hour_s\(18) & ( (!\bigclock|hour_s\(22) & (!\bigclock|hour_s\(21) & !\bigclock|hour_s\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(22),
	datac => \bigclock|ALT_INV_hour_s\(21),
	datad => \bigclock|ALT_INV_hour_s\(20),
	datae => \bigclock|ALT_INV_hour_s\(19),
	dataf => \bigclock|ALT_INV_hour_s\(18),
	combout => \bigclock|counter24h~11_combout\);

-- Location: FF_X42_Y3_N31
\bigclock|hour_s[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[30]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N30
\bigclock|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add1~65_sumout\ = SUM(( \bigclock|hour_s[30]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s[30]~DUPLICATE_q\,
	cin => \bigclock|Add1~46\,
	sumout => \bigclock|Add1~65_sumout\);

-- Location: FF_X42_Y3_N32
\bigclock|hour_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(30));

-- Location: FF_X42_Y4_N37
\bigclock|hour_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[12]~DUPLICATE_q\);

-- Location: FF_X42_Y4_N41
\bigclock|hour_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(13));

-- Location: FF_X42_Y4_N49
\bigclock|hour_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(16));

-- Location: MLABCELL_X42_Y3_N57
\bigclock|counter24h~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~27_combout\ = ( !\bigclock|hour_s\(13) & ( !\bigclock|hour_s\(16) & ( (!\bigclock|hour_s\(7) & (!\bigclock|hour_s\(14) & (!\bigclock|hour_s\(17) & !\bigclock|hour_s\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(7),
	datab => \bigclock|ALT_INV_hour_s\(14),
	datac => \bigclock|ALT_INV_hour_s\(17),
	datad => \bigclock|ALT_INV_hour_s\(15),
	datae => \bigclock|ALT_INV_hour_s\(13),
	dataf => \bigclock|ALT_INV_hour_s\(16),
	combout => \bigclock|counter24h~27_combout\);

-- Location: FF_X42_Y4_N1
\bigclock|hour_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[0]~DUPLICATE_q\);

-- Location: FF_X42_Y4_N19
\bigclock|hour_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[6]~DUPLICATE_q\);

-- Location: FF_X42_Y4_N16
\bigclock|hour_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N27
\bigclock|counter24h~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~28_combout\ = ( !\bigclock|hour_s[5]~DUPLICATE_q\ & ( (\bigclock|hour_s[0]~DUPLICATE_q\ & (!\bigclock|hour_s\(2) & (!\bigclock|hour_s\(4) & !\bigclock|hour_s[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	datab => \bigclock|ALT_INV_hour_s\(2),
	datac => \bigclock|ALT_INV_hour_s\(4),
	datad => \bigclock|ALT_INV_hour_s[6]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_hour_s[5]~DUPLICATE_q\,
	combout => \bigclock|counter24h~28_combout\);

-- Location: FF_X42_Y4_N25
\bigclock|hour_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(8));

-- Location: FF_X42_Y4_N32
\bigclock|hour_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(10));

-- Location: FF_X42_Y4_N34
\bigclock|hour_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(11));

-- Location: FF_X42_Y4_N28
\bigclock|hour_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[9]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N42
\bigclock|counter24h~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~13_combout\ = ( !\bigclock|hour_s[9]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(8) & (!\bigclock|hour_s\(10) & !\bigclock|hour_s\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(8),
	datac => \bigclock|ALT_INV_hour_s\(10),
	datad => \bigclock|ALT_INV_hour_s\(11),
	dataf => \bigclock|ALT_INV_hour_s[9]~DUPLICATE_q\,
	combout => \bigclock|counter24h~13_combout\);

-- Location: LABCELL_X41_Y3_N30
\bigclock|counter24h~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~14_combout\ = ( \bigclock|counter24h~28_combout\ & ( \bigclock|counter24h~13_combout\ & ( (!\bigclock|hour_s\(30) & (!\bigclock|hour_s[12]~DUPLICATE_q\ & (!\bigclock|hour_s\(27) & \bigclock|counter24h~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(30),
	datab => \bigclock|ALT_INV_hour_s[12]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_hour_s\(27),
	datad => \bigclock|ALT_INV_counter24h~27_combout\,
	datae => \bigclock|ALT_INV_counter24h~28_combout\,
	dataf => \bigclock|ALT_INV_counter24h~13_combout\,
	combout => \bigclock|counter24h~14_combout\);

-- Location: LABCELL_X41_Y3_N6
\bigclock|counter24h~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~15_combout\ = ( \bigclock|counter24h~14_combout\ & ( (\bigclock|counter24h~12_combout\ & (!\bigclock|hour_s\(24) & (!\bigclock|hour_s\(23) & \bigclock|counter24h~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_counter24h~12_combout\,
	datab => \bigclock|ALT_INV_hour_s\(24),
	datac => \bigclock|ALT_INV_hour_s\(23),
	datad => \bigclock|ALT_INV_counter24h~11_combout\,
	dataf => \bigclock|ALT_INV_counter24h~14_combout\,
	combout => \bigclock|counter24h~15_combout\);

-- Location: FF_X39_Y5_N44
\bigclock|second_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(14));

-- Location: LABCELL_X40_Y3_N54
\bigclock|deci_second_s[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~2_combout\ = ( \bigclock|second_s\(3) & ( (!\bigclock|second_s\(13) & (!\bigclock|second_s\(2) & (!\bigclock|second_s\(14) & !\bigclock|second_s\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(13),
	datab => \bigclock|ALT_INV_second_s\(2),
	datac => \bigclock|ALT_INV_second_s\(14),
	datad => \bigclock|ALT_INV_second_s\(15),
	dataf => \bigclock|ALT_INV_second_s\(3),
	combout => \bigclock|deci_second_s[9]~2_combout\);

-- Location: LABCELL_X39_Y5_N48
\bigclock|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~17_sumout\ = SUM(( \bigclock|second_s\(16) ) + ( GND ) + ( \bigclock|Add5~102\ ))
-- \bigclock|Add5~18\ = CARRY(( \bigclock|second_s\(16) ) + ( GND ) + ( \bigclock|Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(16),
	cin => \bigclock|Add5~102\,
	sumout => \bigclock|Add5~17_sumout\,
	cout => \bigclock|Add5~18\);

-- Location: LABCELL_X39_Y5_N51
\bigclock|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~49_sumout\ = SUM(( \bigclock|second_s\(17) ) + ( GND ) + ( \bigclock|Add5~18\ ))
-- \bigclock|Add5~50\ = CARRY(( \bigclock|second_s\(17) ) + ( GND ) + ( \bigclock|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(17),
	cin => \bigclock|Add5~18\,
	sumout => \bigclock|Add5~49_sumout\,
	cout => \bigclock|Add5~50\);

-- Location: FF_X39_Y5_N53
\bigclock|second_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(17));

-- Location: LABCELL_X39_Y5_N54
\bigclock|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~45_sumout\ = SUM(( \bigclock|second_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~50\ ))
-- \bigclock|Add5~46\ = CARRY(( \bigclock|second_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s[18]~DUPLICATE_q\,
	cin => \bigclock|Add5~50\,
	sumout => \bigclock|Add5~45_sumout\,
	cout => \bigclock|Add5~46\);

-- Location: FF_X39_Y5_N56
\bigclock|second_s[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[18]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N57
\bigclock|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~41_sumout\ = SUM(( \bigclock|second_s\(19) ) + ( GND ) + ( \bigclock|Add5~46\ ))
-- \bigclock|Add5~42\ = CARRY(( \bigclock|second_s\(19) ) + ( GND ) + ( \bigclock|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(19),
	cin => \bigclock|Add5~46\,
	sumout => \bigclock|Add5~41_sumout\,
	cout => \bigclock|Add5~42\);

-- Location: FF_X39_Y5_N59
\bigclock|second_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(19));

-- Location: LABCELL_X39_Y4_N0
\bigclock|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~37_sumout\ = SUM(( \bigclock|second_s\(20) ) + ( GND ) + ( \bigclock|Add5~42\ ))
-- \bigclock|Add5~38\ = CARRY(( \bigclock|second_s\(20) ) + ( GND ) + ( \bigclock|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(20),
	cin => \bigclock|Add5~42\,
	sumout => \bigclock|Add5~37_sumout\,
	cout => \bigclock|Add5~38\);

-- Location: FF_X39_Y4_N1
\bigclock|second_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(20));

-- Location: LABCELL_X39_Y4_N3
\bigclock|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~33_sumout\ = SUM(( \bigclock|second_s\(21) ) + ( GND ) + ( \bigclock|Add5~38\ ))
-- \bigclock|Add5~34\ = CARRY(( \bigclock|second_s\(21) ) + ( GND ) + ( \bigclock|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(21),
	cin => \bigclock|Add5~38\,
	sumout => \bigclock|Add5~33_sumout\,
	cout => \bigclock|Add5~34\);

-- Location: FF_X39_Y4_N5
\bigclock|second_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(21));

-- Location: LABCELL_X39_Y4_N6
\bigclock|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~29_sumout\ = SUM(( \bigclock|second_s\(22) ) + ( GND ) + ( \bigclock|Add5~34\ ))
-- \bigclock|Add5~30\ = CARRY(( \bigclock|second_s\(22) ) + ( GND ) + ( \bigclock|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(22),
	cin => \bigclock|Add5~34\,
	sumout => \bigclock|Add5~29_sumout\,
	cout => \bigclock|Add5~30\);

-- Location: FF_X39_Y4_N8
\bigclock|second_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(22));

-- Location: FF_X39_Y5_N55
\bigclock|second_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(18));

-- Location: LABCELL_X40_Y3_N6
\bigclock|deci_second_s[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~8_combout\ = ( !\bigclock|second_s\(21) & ( !\bigclock|second_s\(18) & ( (!\bigclock|second_s\(17) & (!\bigclock|second_s\(19) & (!\bigclock|second_s\(22) & !\bigclock|second_s\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(17),
	datab => \bigclock|ALT_INV_second_s\(19),
	datac => \bigclock|ALT_INV_second_s\(22),
	datad => \bigclock|ALT_INV_second_s\(20),
	datae => \bigclock|ALT_INV_second_s\(21),
	dataf => \bigclock|ALT_INV_second_s\(18),
	combout => \bigclock|deci_second_s[9]~8_combout\);

-- Location: LABCELL_X39_Y4_N9
\bigclock|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~25_sumout\ = SUM(( \bigclock|second_s\(23) ) + ( GND ) + ( \bigclock|Add5~30\ ))
-- \bigclock|Add5~26\ = CARRY(( \bigclock|second_s\(23) ) + ( GND ) + ( \bigclock|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(23),
	cin => \bigclock|Add5~30\,
	sumout => \bigclock|Add5~25_sumout\,
	cout => \bigclock|Add5~26\);

-- Location: FF_X39_Y4_N11
\bigclock|second_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(23));

-- Location: LABCELL_X39_Y4_N12
\bigclock|Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~69_sumout\ = SUM(( \bigclock|second_s\(24) ) + ( GND ) + ( \bigclock|Add5~26\ ))
-- \bigclock|Add5~70\ = CARRY(( \bigclock|second_s\(24) ) + ( GND ) + ( \bigclock|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(24),
	cin => \bigclock|Add5~26\,
	sumout => \bigclock|Add5~69_sumout\,
	cout => \bigclock|Add5~70\);

-- Location: FF_X39_Y4_N14
\bigclock|second_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(24));

-- Location: LABCELL_X39_Y4_N15
\bigclock|Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~65_sumout\ = SUM(( \bigclock|second_s\(25) ) + ( GND ) + ( \bigclock|Add5~70\ ))
-- \bigclock|Add5~66\ = CARRY(( \bigclock|second_s\(25) ) + ( GND ) + ( \bigclock|Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(25),
	cin => \bigclock|Add5~70\,
	sumout => \bigclock|Add5~65_sumout\,
	cout => \bigclock|Add5~66\);

-- Location: FF_X39_Y4_N17
\bigclock|second_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(25));

-- Location: LABCELL_X39_Y4_N18
\bigclock|Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~61_sumout\ = SUM(( \bigclock|second_s\(26) ) + ( GND ) + ( \bigclock|Add5~66\ ))
-- \bigclock|Add5~62\ = CARRY(( \bigclock|second_s\(26) ) + ( GND ) + ( \bigclock|Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(26),
	cin => \bigclock|Add5~66\,
	sumout => \bigclock|Add5~61_sumout\,
	cout => \bigclock|Add5~62\);

-- Location: FF_X39_Y4_N20
\bigclock|second_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(26));

-- Location: LABCELL_X39_Y4_N21
\bigclock|Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~57_sumout\ = SUM(( \bigclock|second_s\(27) ) + ( GND ) + ( \bigclock|Add5~62\ ))
-- \bigclock|Add5~58\ = CARRY(( \bigclock|second_s\(27) ) + ( GND ) + ( \bigclock|Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(27),
	cin => \bigclock|Add5~62\,
	sumout => \bigclock|Add5~57_sumout\,
	cout => \bigclock|Add5~58\);

-- Location: FF_X39_Y4_N23
\bigclock|second_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(27));

-- Location: LABCELL_X39_Y4_N24
\bigclock|Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~53_sumout\ = SUM(( \bigclock|second_s\(28) ) + ( GND ) + ( \bigclock|Add5~58\ ))
-- \bigclock|Add5~54\ = CARRY(( \bigclock|second_s\(28) ) + ( GND ) + ( \bigclock|Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(28),
	cin => \bigclock|Add5~58\,
	sumout => \bigclock|Add5~53_sumout\,
	cout => \bigclock|Add5~54\);

-- Location: FF_X39_Y4_N26
\bigclock|second_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(28));

-- Location: LABCELL_X39_Y4_N36
\bigclock|deci_second_s[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~0_combout\ = ( !\bigclock|second_s\(27) & ( !\bigclock|second_s\(25) & ( (!\bigclock|second_s\(26) & (!\bigclock|second_s\(28) & !\bigclock|second_s\(24))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(26),
	datac => \bigclock|ALT_INV_second_s\(28),
	datad => \bigclock|ALT_INV_second_s\(24),
	datae => \bigclock|ALT_INV_second_s\(27),
	dataf => \bigclock|ALT_INV_second_s\(25),
	combout => \bigclock|deci_second_s[9]~0_combout\);

-- Location: FF_X39_Y5_N37
\bigclock|second_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(12));

-- Location: LABCELL_X40_Y3_N21
\bigclock|deci_second_s[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~3_combout\ = ( !\bigclock|second_s\(12) & ( (!\bigclock|second_s\(4) & (\bigclock|second_s\(0) & !\bigclock|second_s\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(4),
	datac => \bigclock|ALT_INV_second_s\(0),
	datad => \bigclock|ALT_INV_second_s\(9),
	dataf => \bigclock|ALT_INV_second_s\(12),
	combout => \bigclock|deci_second_s[9]~3_combout\);

-- Location: FF_X39_Y5_N32
\bigclock|second_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(10));

-- Location: LABCELL_X39_Y4_N27
\bigclock|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~21_sumout\ = SUM(( \bigclock|second_s\(29) ) + ( GND ) + ( \bigclock|Add5~54\ ))
-- \bigclock|Add5~22\ = CARRY(( \bigclock|second_s\(29) ) + ( GND ) + ( \bigclock|Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(29),
	cin => \bigclock|Add5~54\,
	sumout => \bigclock|Add5~21_sumout\,
	cout => \bigclock|Add5~22\);

-- Location: FF_X39_Y4_N29
\bigclock|second_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(29));

-- Location: LABCELL_X39_Y4_N30
\bigclock|Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~89_sumout\ = SUM(( \bigclock|second_s\(30) ) + ( GND ) + ( \bigclock|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(30),
	cin => \bigclock|Add5~22\,
	sumout => \bigclock|Add5~89_sumout\);

-- Location: FF_X39_Y4_N32
\bigclock|second_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(30));

-- Location: LABCELL_X39_Y3_N33
\bigclock|deci_second_s[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~1_combout\ = ( !\bigclock|second_s\(10) & ( !\bigclock|second_s\(30) & ( (!\bigclock|second_s\(8) & (!\bigclock|second_s\(11) & !\bigclock|second_s\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(8),
	datac => \bigclock|ALT_INV_second_s\(11),
	datad => \bigclock|ALT_INV_second_s\(7),
	datae => \bigclock|ALT_INV_second_s\(10),
	dataf => \bigclock|ALT_INV_second_s\(30),
	combout => \bigclock|deci_second_s[9]~1_combout\);

-- Location: FF_X39_Y5_N16
\bigclock|second_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(5));

-- Location: FF_X39_Y5_N19
\bigclock|second_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(6));

-- Location: LABCELL_X39_Y4_N48
\bigclock|deci_second_s[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~9_combout\ = ( !\bigclock|second_s\(5) & ( !\bigclock|second_s\(6) & ( (!\bigclock|second_s\(29) & (!\bigclock|second_s\(1) & !\bigclock|second_s\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(29),
	datac => \bigclock|ALT_INV_second_s\(1),
	datad => \bigclock|ALT_INV_second_s\(23),
	datae => \bigclock|ALT_INV_second_s\(5),
	dataf => \bigclock|ALT_INV_second_s\(6),
	combout => \bigclock|deci_second_s[9]~9_combout\);

-- Location: LABCELL_X40_Y3_N36
\bigclock|deci_second_s[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~4_combout\ = ( \bigclock|deci_second_s[9]~1_combout\ & ( \bigclock|deci_second_s[9]~9_combout\ & ( (\bigclock|deci_second_s[9]~2_combout\ & (\bigclock|deci_second_s[9]~8_combout\ & (\bigclock|deci_second_s[9]~0_combout\ & 
-- \bigclock|deci_second_s[9]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s[9]~2_combout\,
	datab => \bigclock|ALT_INV_deci_second_s[9]~8_combout\,
	datac => \bigclock|ALT_INV_deci_second_s[9]~0_combout\,
	datad => \bigclock|ALT_INV_deci_second_s[9]~3_combout\,
	datae => \bigclock|ALT_INV_deci_second_s[9]~1_combout\,
	dataf => \bigclock|ALT_INV_deci_second_s[9]~9_combout\,
	combout => \bigclock|deci_second_s[9]~4_combout\);

-- Location: FF_X40_Y3_N17
\bigclock|Sec_Clock|slow_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Sec_Clock|LessThan0~4_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|Sec_Clock|slow_clk~q\);

-- Location: LABCELL_X40_Y3_N57
\bigclock|deci_second_s[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~5_combout\ = ( \bigclock|Sec_Clock|slow_clk~q\ & ( (!\bigclock|second_s\(16) & \bigclock|deci_second_s[9]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(16),
	datad => \bigclock|ALT_INV_deci_second_s[9]~4_combout\,
	dataf => \bigclock|Sec_Clock|ALT_INV_slow_clk~q\,
	combout => \bigclock|deci_second_s[9]~5_combout\);

-- Location: LABCELL_X40_Y3_N48
\bigclock|deci_second_s[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[9]~7_combout\ = ( \bigclock|counter24h~10_combout\ & ( ((!\bigclock|hour_s\(1) & (\bigclock|hour_s\(3) & \bigclock|counter24h~15_combout\))) # (\bigclock|deci_second_s[9]~5_combout\) ) ) # ( !\bigclock|counter24h~10_combout\ & ( 
-- \bigclock|deci_second_s[9]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_counter24h~15_combout\,
	datad => \bigclock|ALT_INV_deci_second_s[9]~5_combout\,
	dataf => \bigclock|ALT_INV_counter24h~10_combout\,
	combout => \bigclock|deci_second_s[9]~7_combout\);

-- Location: FF_X39_Y5_N2
\bigclock|second_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(0));

-- Location: LABCELL_X39_Y5_N3
\bigclock|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~5_sumout\ = SUM(( \bigclock|second_s\(1) ) + ( GND ) + ( \bigclock|Add5~2\ ))
-- \bigclock|Add5~6\ = CARRY(( \bigclock|second_s\(1) ) + ( GND ) + ( \bigclock|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(1),
	cin => \bigclock|Add5~2\,
	sumout => \bigclock|Add5~5_sumout\,
	cout => \bigclock|Add5~6\);

-- Location: FF_X39_Y5_N5
\bigclock|second_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(1));

-- Location: LABCELL_X39_Y5_N6
\bigclock|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~9_sumout\ = SUM(( \bigclock|second_s\(2) ) + ( GND ) + ( \bigclock|Add5~6\ ))
-- \bigclock|Add5~10\ = CARRY(( \bigclock|second_s\(2) ) + ( GND ) + ( \bigclock|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(2),
	cin => \bigclock|Add5~6\,
	sumout => \bigclock|Add5~9_sumout\,
	cout => \bigclock|Add5~10\);

-- Location: FF_X39_Y5_N7
\bigclock|second_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(2));

-- Location: LABCELL_X39_Y5_N9
\bigclock|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~13_sumout\ = SUM(( \bigclock|second_s\(3) ) + ( GND ) + ( \bigclock|Add5~10\ ))
-- \bigclock|Add5~14\ = CARRY(( \bigclock|second_s\(3) ) + ( GND ) + ( \bigclock|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(3),
	cin => \bigclock|Add5~10\,
	sumout => \bigclock|Add5~13_sumout\,
	cout => \bigclock|Add5~14\);

-- Location: FF_X39_Y5_N11
\bigclock|second_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(3));

-- Location: LABCELL_X39_Y5_N12
\bigclock|Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~121_sumout\ = SUM(( \bigclock|second_s\(4) ) + ( GND ) + ( \bigclock|Add5~14\ ))
-- \bigclock|Add5~122\ = CARRY(( \bigclock|second_s\(4) ) + ( GND ) + ( \bigclock|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(4),
	cin => \bigclock|Add5~14\,
	sumout => \bigclock|Add5~121_sumout\,
	cout => \bigclock|Add5~122\);

-- Location: FF_X39_Y5_N14
\bigclock|second_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(4));

-- Location: LABCELL_X39_Y5_N15
\bigclock|Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~93_sumout\ = SUM(( \bigclock|second_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~122\ ))
-- \bigclock|Add5~94\ = CARRY(( \bigclock|second_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s[5]~DUPLICATE_q\,
	cin => \bigclock|Add5~122\,
	sumout => \bigclock|Add5~93_sumout\,
	cout => \bigclock|Add5~94\);

-- Location: FF_X39_Y5_N17
\bigclock|second_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N18
\bigclock|Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~97_sumout\ = SUM(( \bigclock|second_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~94\ ))
-- \bigclock|Add5~98\ = CARRY(( \bigclock|second_s[6]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s[6]~DUPLICATE_q\,
	cin => \bigclock|Add5~94\,
	sumout => \bigclock|Add5~97_sumout\,
	cout => \bigclock|Add5~98\);

-- Location: FF_X39_Y5_N20
\bigclock|second_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[6]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N21
\bigclock|Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~73_sumout\ = SUM(( \bigclock|second_s\(7) ) + ( GND ) + ( \bigclock|Add5~98\ ))
-- \bigclock|Add5~74\ = CARRY(( \bigclock|second_s\(7) ) + ( GND ) + ( \bigclock|Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(7),
	cin => \bigclock|Add5~98\,
	sumout => \bigclock|Add5~73_sumout\,
	cout => \bigclock|Add5~74\);

-- Location: FF_X39_Y5_N23
\bigclock|second_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(7));

-- Location: LABCELL_X39_Y5_N24
\bigclock|Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~77_sumout\ = SUM(( \bigclock|second_s\(8) ) + ( GND ) + ( \bigclock|Add5~74\ ))
-- \bigclock|Add5~78\ = CARRY(( \bigclock|second_s\(8) ) + ( GND ) + ( \bigclock|Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(8),
	cin => \bigclock|Add5~74\,
	sumout => \bigclock|Add5~77_sumout\,
	cout => \bigclock|Add5~78\);

-- Location: FF_X39_Y5_N26
\bigclock|second_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(8));

-- Location: LABCELL_X39_Y5_N27
\bigclock|Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~117_sumout\ = SUM(( \bigclock|second_s\(9) ) + ( GND ) + ( \bigclock|Add5~78\ ))
-- \bigclock|Add5~118\ = CARRY(( \bigclock|second_s\(9) ) + ( GND ) + ( \bigclock|Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s\(9),
	cin => \bigclock|Add5~78\,
	sumout => \bigclock|Add5~117_sumout\,
	cout => \bigclock|Add5~118\);

-- Location: FF_X39_Y5_N29
\bigclock|second_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(9));

-- Location: LABCELL_X39_Y5_N30
\bigclock|Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~81_sumout\ = SUM(( \bigclock|second_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~118\ ))
-- \bigclock|Add5~82\ = CARRY(( \bigclock|second_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add5~118\,
	sumout => \bigclock|Add5~81_sumout\,
	cout => \bigclock|Add5~82\);

-- Location: FF_X39_Y5_N31
\bigclock|second_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N33
\bigclock|Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~85_sumout\ = SUM(( \bigclock|second_s\(11) ) + ( GND ) + ( \bigclock|Add5~82\ ))
-- \bigclock|Add5~86\ = CARRY(( \bigclock|second_s\(11) ) + ( GND ) + ( \bigclock|Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(11),
	cin => \bigclock|Add5~82\,
	sumout => \bigclock|Add5~85_sumout\,
	cout => \bigclock|Add5~86\);

-- Location: FF_X39_Y5_N35
\bigclock|second_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(11));

-- Location: LABCELL_X39_Y5_N36
\bigclock|Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~113_sumout\ = SUM(( \bigclock|second_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~86\ ))
-- \bigclock|Add5~114\ = CARRY(( \bigclock|second_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s[12]~DUPLICATE_q\,
	cin => \bigclock|Add5~86\,
	sumout => \bigclock|Add5~113_sumout\,
	cout => \bigclock|Add5~114\);

-- Location: FF_X39_Y5_N38
\bigclock|second_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[12]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N39
\bigclock|Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~109_sumout\ = SUM(( \bigclock|second_s\(13) ) + ( GND ) + ( \bigclock|Add5~114\ ))
-- \bigclock|Add5~110\ = CARRY(( \bigclock|second_s\(13) ) + ( GND ) + ( \bigclock|Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(13),
	cin => \bigclock|Add5~114\,
	sumout => \bigclock|Add5~109_sumout\,
	cout => \bigclock|Add5~110\);

-- Location: FF_X39_Y5_N40
\bigclock|second_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(13));

-- Location: LABCELL_X39_Y5_N42
\bigclock|Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~105_sumout\ = SUM(( \bigclock|second_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~110\ ))
-- \bigclock|Add5~106\ = CARRY(( \bigclock|second_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_second_s[14]~DUPLICATE_q\,
	cin => \bigclock|Add5~110\,
	sumout => \bigclock|Add5~105_sumout\,
	cout => \bigclock|Add5~106\);

-- Location: FF_X39_Y5_N43
\bigclock|second_s[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s[14]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N45
\bigclock|Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add5~101_sumout\ = SUM(( \bigclock|second_s\(15) ) + ( GND ) + ( \bigclock|Add5~106\ ))
-- \bigclock|Add5~102\ = CARRY(( \bigclock|second_s\(15) ) + ( GND ) + ( \bigclock|Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(15),
	cin => \bigclock|Add5~106\,
	sumout => \bigclock|Add5~101_sumout\,
	cout => \bigclock|Add5~102\);

-- Location: FF_X39_Y5_N47
\bigclock|second_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(15));

-- Location: FF_X39_Y5_N49
\bigclock|second_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add5~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|deci_second_s[9]~7_combout\,
	ena => \bigclock|clk_state_s.counting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|second_s\(16));

-- Location: LABCELL_X41_Y5_N0
\bigclock|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~1_sumout\ = SUM(( \bigclock|deci_minute_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Add2~2\ = CARRY(( \bigclock|deci_minute_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(0),
	cin => GND,
	sumout => \bigclock|Add2~1_sumout\,
	cout => \bigclock|Add2~2\);

-- Location: LABCELL_X40_Y2_N0
\bigclock|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~1_sumout\ = SUM(( \bigclock|minute_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Add3~2\ = CARRY(( \bigclock|minute_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s\(0),
	cin => GND,
	sumout => \bigclock|Add3~1_sumout\,
	cout => \bigclock|Add3~2\);

-- Location: LABCELL_X40_Y5_N0
\bigclock|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~1_sumout\ = SUM(( \bigclock|deci_second_s\(0) ) + ( VCC ) + ( !VCC ))
-- \bigclock|Add4~2\ = CARRY(( \bigclock|deci_second_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(0),
	cin => GND,
	sumout => \bigclock|Add4~1_sumout\,
	cout => \bigclock|Add4~2\);

-- Location: LABCELL_X40_Y3_N51
\bigclock|minute_s[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~7_combout\ = ( \bigclock|minute_s[8]~5_combout\ ) # ( !\bigclock|minute_s[8]~5_combout\ & ( (!\bigclock|hour_s\(1) & (\bigclock|hour_s\(3) & (\bigclock|counter24h~10_combout\ & \bigclock|counter24h~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_counter24h~10_combout\,
	datad => \bigclock|ALT_INV_counter24h~15_combout\,
	dataf => \bigclock|ALT_INV_minute_s[8]~5_combout\,
	combout => \bigclock|minute_s[8]~7_combout\);

-- Location: LABCELL_X40_Y3_N0
\bigclock|deci_second_s[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_second_s[3]~6_combout\ = ( \bigclock|counter24h~15_combout\ & ( \bigclock|deci_second_s[9]~5_combout\ & ( \bigclock|clk_state_s.counting~q\ ) ) ) # ( !\bigclock|counter24h~15_combout\ & ( \bigclock|deci_second_s[9]~5_combout\ & ( 
-- \bigclock|clk_state_s.counting~q\ ) ) ) # ( \bigclock|counter24h~15_combout\ & ( !\bigclock|deci_second_s[9]~5_combout\ & ( (!\bigclock|hour_s\(1) & (\bigclock|hour_s\(3) & (\bigclock|clk_state_s.counting~q\ & \bigclock|counter24h~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_clk_state_s.counting~q\,
	datad => \bigclock|ALT_INV_counter24h~10_combout\,
	datae => \bigclock|ALT_INV_counter24h~15_combout\,
	dataf => \bigclock|ALT_INV_deci_second_s[9]~5_combout\,
	combout => \bigclock|deci_second_s[3]~6_combout\);

-- Location: FF_X40_Y5_N2
\bigclock|deci_second_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(0));

-- Location: LABCELL_X40_Y5_N3
\bigclock|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~5_sumout\ = SUM(( \bigclock|deci_second_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~2\ ))
-- \bigclock|Add4~6\ = CARRY(( \bigclock|deci_second_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s[1]~DUPLICATE_q\,
	cin => \bigclock|Add4~2\,
	sumout => \bigclock|Add4~5_sumout\,
	cout => \bigclock|Add4~6\);

-- Location: FF_X40_Y5_N5
\bigclock|deci_second_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N6
\bigclock|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~9_sumout\ = SUM(( \bigclock|deci_second_s\(2) ) + ( GND ) + ( \bigclock|Add4~6\ ))
-- \bigclock|Add4~10\ = CARRY(( \bigclock|deci_second_s\(2) ) + ( GND ) + ( \bigclock|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(2),
	cin => \bigclock|Add4~6\,
	sumout => \bigclock|Add4~9_sumout\,
	cout => \bigclock|Add4~10\);

-- Location: FF_X39_Y3_N26
\bigclock|deci_second_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add4~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	sload => VCC,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(2));

-- Location: LABCELL_X40_Y5_N9
\bigclock|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~13_sumout\ = SUM(( \bigclock|deci_second_s\(3) ) + ( GND ) + ( \bigclock|Add4~10\ ))
-- \bigclock|Add4~14\ = CARRY(( \bigclock|deci_second_s\(3) ) + ( GND ) + ( \bigclock|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(3),
	cin => \bigclock|Add4~10\,
	sumout => \bigclock|Add4~13_sumout\,
	cout => \bigclock|Add4~14\);

-- Location: FF_X40_Y3_N40
\bigclock|deci_second_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add4~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	sload => VCC,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(3));

-- Location: LABCELL_X40_Y5_N12
\bigclock|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~57_sumout\ = SUM(( \bigclock|deci_second_s\(4) ) + ( GND ) + ( \bigclock|Add4~14\ ))
-- \bigclock|Add4~58\ = CARRY(( \bigclock|deci_second_s\(4) ) + ( GND ) + ( \bigclock|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s\(4),
	cin => \bigclock|Add4~14\,
	sumout => \bigclock|Add4~57_sumout\,
	cout => \bigclock|Add4~58\);

-- Location: FF_X40_Y5_N14
\bigclock|deci_second_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(4));

-- Location: LABCELL_X40_Y5_N15
\bigclock|Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~105_sumout\ = SUM(( \bigclock|deci_second_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~58\ ))
-- \bigclock|Add4~106\ = CARRY(( \bigclock|deci_second_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[5]~DUPLICATE_q\,
	cin => \bigclock|Add4~58\,
	sumout => \bigclock|Add4~105_sumout\,
	cout => \bigclock|Add4~106\);

-- Location: FF_X40_Y5_N17
\bigclock|deci_second_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N18
\bigclock|Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~101_sumout\ = SUM(( \bigclock|deci_second_s\(6) ) + ( GND ) + ( \bigclock|Add4~106\ ))
-- \bigclock|Add4~102\ = CARRY(( \bigclock|deci_second_s\(6) ) + ( GND ) + ( \bigclock|Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(6),
	cin => \bigclock|Add4~106\,
	sumout => \bigclock|Add4~101_sumout\,
	cout => \bigclock|Add4~102\);

-- Location: FF_X40_Y5_N20
\bigclock|deci_second_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(6));

-- Location: LABCELL_X40_Y5_N21
\bigclock|Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~97_sumout\ = SUM(( \bigclock|deci_second_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~102\ ))
-- \bigclock|Add4~98\ = CARRY(( \bigclock|deci_second_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s[7]~DUPLICATE_q\,
	cin => \bigclock|Add4~102\,
	sumout => \bigclock|Add4~97_sumout\,
	cout => \bigclock|Add4~98\);

-- Location: FF_X40_Y5_N23
\bigclock|deci_second_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N24
\bigclock|Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~93_sumout\ = SUM(( \bigclock|deci_second_s\(8) ) + ( GND ) + ( \bigclock|Add4~98\ ))
-- \bigclock|Add4~94\ = CARRY(( \bigclock|deci_second_s\(8) ) + ( GND ) + ( \bigclock|Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(8),
	cin => \bigclock|Add4~98\,
	sumout => \bigclock|Add4~93_sumout\,
	cout => \bigclock|Add4~94\);

-- Location: FF_X39_Y3_N50
\bigclock|deci_second_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add4~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	sload => VCC,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(8));

-- Location: LABCELL_X40_Y5_N27
\bigclock|Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~89_sumout\ = SUM(( \bigclock|deci_second_s\(9) ) + ( GND ) + ( \bigclock|Add4~94\ ))
-- \bigclock|Add4~90\ = CARRY(( \bigclock|deci_second_s\(9) ) + ( GND ) + ( \bigclock|Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(9),
	cin => \bigclock|Add4~94\,
	sumout => \bigclock|Add4~89_sumout\,
	cout => \bigclock|Add4~90\);

-- Location: FF_X39_Y3_N2
\bigclock|deci_second_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add4~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	sload => VCC,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(9));

-- Location: LABCELL_X40_Y5_N30
\bigclock|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~33_sumout\ = SUM(( \bigclock|deci_second_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~90\ ))
-- \bigclock|Add4~34\ = CARRY(( \bigclock|deci_second_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add4~90\,
	sumout => \bigclock|Add4~33_sumout\,
	cout => \bigclock|Add4~34\);

-- Location: FF_X40_Y5_N32
\bigclock|deci_second_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N33
\bigclock|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~29_sumout\ = SUM(( \bigclock|deci_second_s\(11) ) + ( GND ) + ( \bigclock|Add4~34\ ))
-- \bigclock|Add4~30\ = CARRY(( \bigclock|deci_second_s\(11) ) + ( GND ) + ( \bigclock|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(11),
	cin => \bigclock|Add4~34\,
	sumout => \bigclock|Add4~29_sumout\,
	cout => \bigclock|Add4~30\);

-- Location: FF_X40_Y5_N35
\bigclock|deci_second_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(11));

-- Location: LABCELL_X40_Y5_N36
\bigclock|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~25_sumout\ = SUM(( \bigclock|deci_second_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~30\ ))
-- \bigclock|Add4~26\ = CARRY(( \bigclock|deci_second_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[12]~DUPLICATE_q\,
	cin => \bigclock|Add4~30\,
	sumout => \bigclock|Add4~25_sumout\,
	cout => \bigclock|Add4~26\);

-- Location: FF_X40_Y5_N38
\bigclock|deci_second_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[12]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N39
\bigclock|Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~109_sumout\ = SUM(( \bigclock|deci_second_s\(13) ) + ( GND ) + ( \bigclock|Add4~26\ ))
-- \bigclock|Add4~110\ = CARRY(( \bigclock|deci_second_s\(13) ) + ( GND ) + ( \bigclock|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(13),
	cin => \bigclock|Add4~26\,
	sumout => \bigclock|Add4~109_sumout\,
	cout => \bigclock|Add4~110\);

-- Location: FF_X40_Y5_N40
\bigclock|deci_second_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(13));

-- Location: LABCELL_X40_Y5_N42
\bigclock|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~21_sumout\ = SUM(( \bigclock|deci_second_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~110\ ))
-- \bigclock|Add4~22\ = CARRY(( \bigclock|deci_second_s[14]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s[14]~DUPLICATE_q\,
	cin => \bigclock|Add4~110\,
	sumout => \bigclock|Add4~21_sumout\,
	cout => \bigclock|Add4~22\);

-- Location: FF_X40_Y5_N43
\bigclock|deci_second_s[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[14]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N45
\bigclock|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~17_sumout\ = SUM(( \bigclock|deci_second_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~22\ ))
-- \bigclock|Add4~18\ = CARRY(( \bigclock|deci_second_s[15]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[15]~DUPLICATE_q\,
	cin => \bigclock|Add4~22\,
	sumout => \bigclock|Add4~17_sumout\,
	cout => \bigclock|Add4~18\);

-- Location: FF_X40_Y5_N47
\bigclock|deci_second_s[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[15]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N48
\bigclock|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~53_sumout\ = SUM(( \bigclock|deci_second_s\(16) ) + ( GND ) + ( \bigclock|Add4~18\ ))
-- \bigclock|Add4~54\ = CARRY(( \bigclock|deci_second_s\(16) ) + ( GND ) + ( \bigclock|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(16),
	cin => \bigclock|Add4~18\,
	sumout => \bigclock|Add4~53_sumout\,
	cout => \bigclock|Add4~54\);

-- Location: FF_X40_Y5_N50
\bigclock|deci_second_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(16));

-- Location: LABCELL_X40_Y5_N51
\bigclock|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~49_sumout\ = SUM(( \bigclock|deci_second_s\(17) ) + ( GND ) + ( \bigclock|Add4~54\ ))
-- \bigclock|Add4~50\ = CARRY(( \bigclock|deci_second_s\(17) ) + ( GND ) + ( \bigclock|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(17),
	cin => \bigclock|Add4~54\,
	sumout => \bigclock|Add4~49_sumout\,
	cout => \bigclock|Add4~50\);

-- Location: FF_X40_Y5_N52
\bigclock|deci_second_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(17));

-- Location: LABCELL_X40_Y5_N54
\bigclock|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~45_sumout\ = SUM(( \bigclock|deci_second_s\(18) ) + ( GND ) + ( \bigclock|Add4~50\ ))
-- \bigclock|Add4~46\ = CARRY(( \bigclock|deci_second_s\(18) ) + ( GND ) + ( \bigclock|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(18),
	cin => \bigclock|Add4~50\,
	sumout => \bigclock|Add4~45_sumout\,
	cout => \bigclock|Add4~46\);

-- Location: FF_X40_Y5_N55
\bigclock|deci_second_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(18));

-- Location: LABCELL_X40_Y5_N57
\bigclock|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~41_sumout\ = SUM(( \bigclock|deci_second_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~46\ ))
-- \bigclock|Add4~42\ = CARRY(( \bigclock|deci_second_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[19]~DUPLICATE_q\,
	cin => \bigclock|Add4~46\,
	sumout => \bigclock|Add4~41_sumout\,
	cout => \bigclock|Add4~42\);

-- Location: FF_X40_Y5_N59
\bigclock|deci_second_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N0
\bigclock|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~37_sumout\ = SUM(( \bigclock|deci_second_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~42\ ))
-- \bigclock|Add4~38\ = CARRY(( \bigclock|deci_second_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[20]~DUPLICATE_q\,
	cin => \bigclock|Add4~42\,
	sumout => \bigclock|Add4~37_sumout\,
	cout => \bigclock|Add4~38\);

-- Location: FF_X40_Y4_N1
\bigclock|deci_second_s[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[20]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N3
\bigclock|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~65_sumout\ = SUM(( \bigclock|deci_second_s\(21) ) + ( GND ) + ( \bigclock|Add4~38\ ))
-- \bigclock|Add4~66\ = CARRY(( \bigclock|deci_second_s\(21) ) + ( GND ) + ( \bigclock|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_second_s\(21),
	cin => \bigclock|Add4~38\,
	sumout => \bigclock|Add4~65_sumout\,
	cout => \bigclock|Add4~66\);

-- Location: FF_X40_Y4_N5
\bigclock|deci_second_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(21));

-- Location: LABCELL_X40_Y4_N6
\bigclock|Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~85_sumout\ = SUM(( \bigclock|deci_second_s[22]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~66\ ))
-- \bigclock|Add4~86\ = CARRY(( \bigclock|deci_second_s[22]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s[22]~DUPLICATE_q\,
	cin => \bigclock|Add4~66\,
	sumout => \bigclock|Add4~85_sumout\,
	cout => \bigclock|Add4~86\);

-- Location: FF_X40_Y4_N8
\bigclock|deci_second_s[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[22]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N9
\bigclock|Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~81_sumout\ = SUM(( \bigclock|deci_second_s\(23) ) + ( GND ) + ( \bigclock|Add4~86\ ))
-- \bigclock|Add4~82\ = CARRY(( \bigclock|deci_second_s\(23) ) + ( GND ) + ( \bigclock|Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(23),
	cin => \bigclock|Add4~86\,
	sumout => \bigclock|Add4~81_sumout\,
	cout => \bigclock|Add4~82\);

-- Location: FF_X40_Y4_N11
\bigclock|deci_second_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(23));

-- Location: LABCELL_X40_Y4_N12
\bigclock|Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~77_sumout\ = SUM(( \bigclock|deci_second_s\(24) ) + ( GND ) + ( \bigclock|Add4~82\ ))
-- \bigclock|Add4~78\ = CARRY(( \bigclock|deci_second_s\(24) ) + ( GND ) + ( \bigclock|Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s\(24),
	cin => \bigclock|Add4~82\,
	sumout => \bigclock|Add4~77_sumout\,
	cout => \bigclock|Add4~78\);

-- Location: FF_X40_Y4_N14
\bigclock|deci_second_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(24));

-- Location: LABCELL_X40_Y4_N15
\bigclock|Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~73_sumout\ = SUM(( \bigclock|deci_second_s\(25) ) + ( GND ) + ( \bigclock|Add4~78\ ))
-- \bigclock|Add4~74\ = CARRY(( \bigclock|deci_second_s\(25) ) + ( GND ) + ( \bigclock|Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(25),
	cin => \bigclock|Add4~78\,
	sumout => \bigclock|Add4~73_sumout\,
	cout => \bigclock|Add4~74\);

-- Location: FF_X40_Y4_N17
\bigclock|deci_second_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(25));

-- Location: LABCELL_X40_Y4_N18
\bigclock|Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~69_sumout\ = SUM(( \bigclock|deci_second_s\(26) ) + ( GND ) + ( \bigclock|Add4~74\ ))
-- \bigclock|Add4~70\ = CARRY(( \bigclock|deci_second_s\(26) ) + ( GND ) + ( \bigclock|Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(26),
	cin => \bigclock|Add4~74\,
	sumout => \bigclock|Add4~69_sumout\,
	cout => \bigclock|Add4~70\);

-- Location: FF_X40_Y4_N20
\bigclock|deci_second_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(26));

-- Location: FF_X40_Y4_N7
\bigclock|deci_second_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(22));

-- Location: LABCELL_X40_Y4_N42
\bigclock|minute_s[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~1_combout\ = ( !\bigclock|deci_second_s\(22) & ( !\bigclock|deci_second_s\(24) & ( (!\bigclock|deci_second_s\(23) & (!\bigclock|deci_second_s\(26) & !\bigclock|deci_second_s\(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s\(23),
	datac => \bigclock|ALT_INV_deci_second_s\(26),
	datad => \bigclock|ALT_INV_deci_second_s\(25),
	datae => \bigclock|ALT_INV_deci_second_s\(22),
	dataf => \bigclock|ALT_INV_deci_second_s\(24),
	combout => \bigclock|minute_s[8]~1_combout\);

-- Location: FF_X40_Y5_N37
\bigclock|deci_second_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(12));

-- Location: FF_X40_Y5_N44
\bigclock|deci_second_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(14));

-- Location: FF_X40_Y5_N31
\bigclock|deci_second_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(10));

-- Location: LABCELL_X39_Y3_N42
\bigclock|minute_s[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~8_combout\ = ( !\bigclock|deci_second_s\(21) & ( !\bigclock|deci_second_s\(10) & ( (!\bigclock|deci_second_s\(11) & (!\bigclock|deci_second_s\(12) & (\bigclock|deci_second_s\(0) & !\bigclock|deci_second_s\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(11),
	datab => \bigclock|ALT_INV_deci_second_s\(12),
	datac => \bigclock|ALT_INV_deci_second_s\(0),
	datad => \bigclock|ALT_INV_deci_second_s\(14),
	datae => \bigclock|ALT_INV_deci_second_s\(21),
	dataf => \bigclock|ALT_INV_deci_second_s\(10),
	combout => \bigclock|minute_s[8]~8_combout\);

-- Location: FF_X40_Y5_N4
\bigclock|deci_second_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(1));

-- Location: FF_X40_Y4_N22
\bigclock|deci_second_s[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[27]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N21
\bigclock|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~61_sumout\ = SUM(( \bigclock|deci_second_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~70\ ))
-- \bigclock|Add4~62\ = CARRY(( \bigclock|deci_second_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s[27]~DUPLICATE_q\,
	cin => \bigclock|Add4~70\,
	sumout => \bigclock|Add4~61_sumout\,
	cout => \bigclock|Add4~62\);

-- Location: FF_X40_Y4_N23
\bigclock|deci_second_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(27));

-- Location: FF_X40_Y5_N46
\bigclock|deci_second_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(15));

-- Location: LABCELL_X39_Y3_N15
\bigclock|minute_s[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~9_combout\ = ( !\bigclock|deci_second_s\(4) & ( (\bigclock|deci_second_s\(2) & (!\bigclock|deci_second_s\(1) & (!\bigclock|deci_second_s\(27) & !\bigclock|deci_second_s\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(2),
	datab => \bigclock|ALT_INV_deci_second_s\(1),
	datac => \bigclock|ALT_INV_deci_second_s\(27),
	datad => \bigclock|ALT_INV_deci_second_s\(15),
	dataf => \bigclock|ALT_INV_deci_second_s\(4),
	combout => \bigclock|minute_s[8]~9_combout\);

-- Location: FF_X40_Y5_N16
\bigclock|deci_second_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(5));

-- Location: FF_X40_Y5_N22
\bigclock|deci_second_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(7));

-- Location: LABCELL_X39_Y3_N36
\bigclock|minute_s[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~2_combout\ = ( !\bigclock|deci_second_s\(5) & ( !\bigclock|deci_second_s\(7) & ( (!\bigclock|deci_second_s\(9) & (!\bigclock|deci_second_s\(8) & !\bigclock|deci_second_s\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(9),
	datac => \bigclock|ALT_INV_deci_second_s\(8),
	datad => \bigclock|ALT_INV_deci_second_s\(6),
	datae => \bigclock|ALT_INV_deci_second_s\(5),
	dataf => \bigclock|ALT_INV_deci_second_s\(7),
	combout => \bigclock|minute_s[8]~2_combout\);

-- Location: FF_X40_Y4_N26
\bigclock|deci_second_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(28));

-- Location: LABCELL_X40_Y4_N24
\bigclock|Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~121_sumout\ = SUM(( \bigclock|deci_second_s\(28) ) + ( GND ) + ( \bigclock|Add4~62\ ))
-- \bigclock|Add4~122\ = CARRY(( \bigclock|deci_second_s\(28) ) + ( GND ) + ( \bigclock|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(28),
	cin => \bigclock|Add4~62\,
	sumout => \bigclock|Add4~121_sumout\,
	cout => \bigclock|Add4~122\);

-- Location: FF_X40_Y4_N25
\bigclock|deci_second_s[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s[28]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N27
\bigclock|Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~117_sumout\ = SUM(( \bigclock|deci_second_s\(29) ) + ( GND ) + ( \bigclock|Add4~122\ ))
-- \bigclock|Add4~118\ = CARRY(( \bigclock|deci_second_s\(29) ) + ( GND ) + ( \bigclock|Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_second_s\(29),
	cin => \bigclock|Add4~122\,
	sumout => \bigclock|Add4~117_sumout\,
	cout => \bigclock|Add4~118\);

-- Location: FF_X40_Y4_N28
\bigclock|deci_second_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(29));

-- Location: LABCELL_X40_Y4_N30
\bigclock|Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add4~113_sumout\ = SUM(( \bigclock|deci_second_s\(30) ) + ( GND ) + ( \bigclock|Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s\(30),
	cin => \bigclock|Add4~118\,
	sumout => \bigclock|Add4~113_sumout\);

-- Location: FF_X40_Y4_N32
\bigclock|deci_second_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(30));

-- Location: LABCELL_X39_Y3_N57
\bigclock|minute_s[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~3_combout\ = ( !\bigclock|deci_second_s\(30) & ( !\bigclock|deci_second_s\(29) & ( (!\bigclock|deci_second_s\(3) & (!\bigclock|deci_second_s\(13) & !\bigclock|deci_second_s[28]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(3),
	datac => \bigclock|ALT_INV_deci_second_s\(13),
	datad => \bigclock|ALT_INV_deci_second_s[28]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_deci_second_s\(30),
	dataf => \bigclock|ALT_INV_deci_second_s\(29),
	combout => \bigclock|minute_s[8]~3_combout\);

-- Location: FF_X40_Y5_N58
\bigclock|deci_second_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(19));

-- Location: FF_X40_Y4_N2
\bigclock|deci_second_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add4~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|minute_s[8]~7_combout\,
	ena => \bigclock|deci_second_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_second_s\(20));

-- Location: LABCELL_X39_Y3_N6
\bigclock|minute_s[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~0_combout\ = ( !\bigclock|deci_second_s\(20) & ( !\bigclock|deci_second_s\(16) & ( (!\bigclock|deci_second_s\(19) & (!\bigclock|deci_second_s\(18) & !\bigclock|deci_second_s\(17))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(19),
	datac => \bigclock|ALT_INV_deci_second_s\(18),
	datad => \bigclock|ALT_INV_deci_second_s\(17),
	datae => \bigclock|ALT_INV_deci_second_s\(20),
	dataf => \bigclock|ALT_INV_deci_second_s\(16),
	combout => \bigclock|minute_s[8]~0_combout\);

-- Location: LABCELL_X39_Y3_N21
\bigclock|minute_s[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~4_combout\ = ( \bigclock|minute_s[8]~3_combout\ & ( \bigclock|minute_s[8]~0_combout\ & ( (\bigclock|minute_s[8]~1_combout\ & (\bigclock|minute_s[8]~8_combout\ & (\bigclock|minute_s[8]~9_combout\ & \bigclock|minute_s[8]~2_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s[8]~1_combout\,
	datab => \bigclock|ALT_INV_minute_s[8]~8_combout\,
	datac => \bigclock|ALT_INV_minute_s[8]~9_combout\,
	datad => \bigclock|ALT_INV_minute_s[8]~2_combout\,
	datae => \bigclock|ALT_INV_minute_s[8]~3_combout\,
	dataf => \bigclock|ALT_INV_minute_s[8]~0_combout\,
	combout => \bigclock|minute_s[8]~4_combout\);

-- Location: LABCELL_X40_Y3_N24
\bigclock|minute_s[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[8]~5_combout\ = ( \bigclock|minute_s[8]~4_combout\ & ( (\bigclock|Sec_Clock|slow_clk~q\ & (\bigclock|deci_second_s[9]~4_combout\ & !\bigclock|second_s\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|Sec_Clock|ALT_INV_slow_clk~q\,
	datac => \bigclock|ALT_INV_deci_second_s[9]~4_combout\,
	datad => \bigclock|ALT_INV_second_s\(16),
	dataf => \bigclock|ALT_INV_minute_s[8]~4_combout\,
	combout => \bigclock|minute_s[8]~5_combout\);

-- Location: LABCELL_X41_Y3_N57
\bigclock|counter24h~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~22_combout\ = ( \bigclock|counter24h~4_combout\ & ( \bigclock|minute_s[8]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s[8]~5_combout\,
	dataf => \bigclock|ALT_INV_counter24h~4_combout\,
	combout => \bigclock|counter24h~22_combout\);

-- Location: LABCELL_X40_Y3_N3
\bigclock|minute_s[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[3]~6_combout\ = ( \bigclock|counter24h~15_combout\ & ( \bigclock|minute_s[8]~5_combout\ & ( \bigclock|clk_state_s.counting~q\ ) ) ) # ( !\bigclock|counter24h~15_combout\ & ( \bigclock|minute_s[8]~5_combout\ & ( 
-- \bigclock|clk_state_s.counting~q\ ) ) ) # ( \bigclock|counter24h~15_combout\ & ( !\bigclock|minute_s[8]~5_combout\ & ( (!\bigclock|hour_s\(1) & (\bigclock|hour_s\(3) & (\bigclock|counter24h~10_combout\ & \bigclock|clk_state_s.counting~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_counter24h~10_combout\,
	datad => \bigclock|ALT_INV_clk_state_s.counting~q\,
	datae => \bigclock|ALT_INV_counter24h~15_combout\,
	dataf => \bigclock|ALT_INV_minute_s[8]~5_combout\,
	combout => \bigclock|minute_s[3]~6_combout\);

-- Location: FF_X40_Y2_N2
\bigclock|minute_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(0));

-- Location: LABCELL_X40_Y2_N3
\bigclock|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~5_sumout\ = SUM(( \bigclock|minute_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~2\ ))
-- \bigclock|Add3~6\ = CARRY(( \bigclock|minute_s[1]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	cin => \bigclock|Add3~2\,
	sumout => \bigclock|Add3~5_sumout\,
	cout => \bigclock|Add3~6\);

-- Location: FF_X40_Y2_N5
\bigclock|minute_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N6
\bigclock|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~9_sumout\ = SUM(( \bigclock|minute_s\(2) ) + ( GND ) + ( \bigclock|Add3~6\ ))
-- \bigclock|Add3~10\ = CARRY(( \bigclock|minute_s\(2) ) + ( GND ) + ( \bigclock|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s\(2),
	cin => \bigclock|Add3~6\,
	sumout => \bigclock|Add3~9_sumout\,
	cout => \bigclock|Add3~10\);

-- Location: FF_X40_Y2_N7
\bigclock|minute_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(2));

-- Location: LABCELL_X40_Y2_N9
\bigclock|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~13_sumout\ = SUM(( \bigclock|minute_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~10\ ))
-- \bigclock|Add3~14\ = CARRY(( \bigclock|minute_s[3]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s[3]~DUPLICATE_q\,
	cin => \bigclock|Add3~10\,
	sumout => \bigclock|Add3~13_sumout\,
	cout => \bigclock|Add3~14\);

-- Location: FF_X40_Y2_N11
\bigclock|minute_s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N12
\bigclock|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~45_sumout\ = SUM(( \bigclock|minute_s[4]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~14\ ))
-- \bigclock|Add3~46\ = CARRY(( \bigclock|minute_s[4]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s[4]~DUPLICATE_q\,
	cin => \bigclock|Add3~14\,
	sumout => \bigclock|Add3~45_sumout\,
	cout => \bigclock|Add3~46\);

-- Location: FF_X40_Y2_N14
\bigclock|minute_s[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N15
\bigclock|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~53_sumout\ = SUM(( \bigclock|minute_s\(5) ) + ( GND ) + ( \bigclock|Add3~46\ ))
-- \bigclock|Add3~54\ = CARRY(( \bigclock|minute_s\(5) ) + ( GND ) + ( \bigclock|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(5),
	cin => \bigclock|Add3~46\,
	sumout => \bigclock|Add3~53_sumout\,
	cout => \bigclock|Add3~54\);

-- Location: FF_X40_Y2_N17
\bigclock|minute_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(5));

-- Location: LABCELL_X40_Y2_N18
\bigclock|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~49_sumout\ = SUM(( \bigclock|minute_s\(6) ) + ( GND ) + ( \bigclock|Add3~54\ ))
-- \bigclock|Add3~50\ = CARRY(( \bigclock|minute_s\(6) ) + ( GND ) + ( \bigclock|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(6),
	cin => \bigclock|Add3~54\,
	sumout => \bigclock|Add3~49_sumout\,
	cout => \bigclock|Add3~50\);

-- Location: FF_X40_Y2_N20
\bigclock|minute_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(6));

-- Location: LABCELL_X40_Y2_N21
\bigclock|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~17_sumout\ = SUM(( \bigclock|minute_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~50\ ))
-- \bigclock|Add3~18\ = CARRY(( \bigclock|minute_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s[7]~DUPLICATE_q\,
	cin => \bigclock|Add3~50\,
	sumout => \bigclock|Add3~17_sumout\,
	cout => \bigclock|Add3~18\);

-- Location: FF_X40_Y2_N23
\bigclock|minute_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N24
\bigclock|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~89_sumout\ = SUM(( \bigclock|minute_s\(8) ) + ( GND ) + ( \bigclock|Add3~18\ ))
-- \bigclock|Add3~90\ = CARRY(( \bigclock|minute_s\(8) ) + ( GND ) + ( \bigclock|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(8),
	cin => \bigclock|Add3~18\,
	sumout => \bigclock|Add3~89_sumout\,
	cout => \bigclock|Add3~90\);

-- Location: FF_X40_Y2_N26
\bigclock|minute_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(8));

-- Location: LABCELL_X40_Y2_N27
\bigclock|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~93_sumout\ = SUM(( \bigclock|minute_s\(9) ) + ( GND ) + ( \bigclock|Add3~90\ ))
-- \bigclock|Add3~94\ = CARRY(( \bigclock|minute_s\(9) ) + ( GND ) + ( \bigclock|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s\(9),
	cin => \bigclock|Add3~90\,
	sumout => \bigclock|Add3~93_sumout\,
	cout => \bigclock|Add3~94\);

-- Location: FF_X40_Y2_N29
\bigclock|minute_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(9));

-- Location: LABCELL_X40_Y2_N30
\bigclock|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~97_sumout\ = SUM(( \bigclock|minute_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~94\ ))
-- \bigclock|Add3~98\ = CARRY(( \bigclock|minute_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add3~94\,
	sumout => \bigclock|Add3~97_sumout\,
	cout => \bigclock|Add3~98\);

-- Location: LABCELL_X39_Y2_N27
\bigclock|minute_s[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|minute_s[10]~feeder_combout\ = ( \bigclock|Add3~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \bigclock|ALT_INV_Add3~97_sumout\,
	combout => \bigclock|minute_s[10]~feeder_combout\);

-- Location: FF_X39_Y2_N28
\bigclock|minute_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|minute_s[10]~feeder_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N33
\bigclock|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~101_sumout\ = SUM(( \bigclock|minute_s\(11) ) + ( GND ) + ( \bigclock|Add3~98\ ))
-- \bigclock|Add3~102\ = CARRY(( \bigclock|minute_s\(11) ) + ( GND ) + ( \bigclock|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(11),
	cin => \bigclock|Add3~98\,
	sumout => \bigclock|Add3~101_sumout\,
	cout => \bigclock|Add3~102\);

-- Location: FF_X40_Y2_N35
\bigclock|minute_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(11));

-- Location: LABCELL_X40_Y2_N36
\bigclock|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~105_sumout\ = SUM(( \bigclock|minute_s\(12) ) + ( GND ) + ( \bigclock|Add3~102\ ))
-- \bigclock|Add3~106\ = CARRY(( \bigclock|minute_s\(12) ) + ( GND ) + ( \bigclock|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(12),
	cin => \bigclock|Add3~102\,
	sumout => \bigclock|Add3~105_sumout\,
	cout => \bigclock|Add3~106\);

-- Location: FF_X40_Y2_N38
\bigclock|minute_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(12));

-- Location: LABCELL_X40_Y2_N39
\bigclock|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~77_sumout\ = SUM(( \bigclock|minute_s\(13) ) + ( GND ) + ( \bigclock|Add3~106\ ))
-- \bigclock|Add3~78\ = CARRY(( \bigclock|minute_s\(13) ) + ( GND ) + ( \bigclock|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(13),
	cin => \bigclock|Add3~106\,
	sumout => \bigclock|Add3~77_sumout\,
	cout => \bigclock|Add3~78\);

-- Location: FF_X40_Y2_N40
\bigclock|minute_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(13));

-- Location: LABCELL_X40_Y2_N42
\bigclock|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~69_sumout\ = SUM(( \bigclock|minute_s\(14) ) + ( GND ) + ( \bigclock|Add3~78\ ))
-- \bigclock|Add3~70\ = CARRY(( \bigclock|minute_s\(14) ) + ( GND ) + ( \bigclock|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s\(14),
	cin => \bigclock|Add3~78\,
	sumout => \bigclock|Add3~69_sumout\,
	cout => \bigclock|Add3~70\);

-- Location: FF_X40_Y2_N43
\bigclock|minute_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(14));

-- Location: LABCELL_X40_Y2_N45
\bigclock|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~109_sumout\ = SUM(( \bigclock|minute_s\(15) ) + ( GND ) + ( \bigclock|Add3~70\ ))
-- \bigclock|Add3~110\ = CARRY(( \bigclock|minute_s\(15) ) + ( GND ) + ( \bigclock|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(15),
	cin => \bigclock|Add3~70\,
	sumout => \bigclock|Add3~109_sumout\,
	cout => \bigclock|Add3~110\);

-- Location: FF_X40_Y2_N47
\bigclock|minute_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(15));

-- Location: LABCELL_X40_Y2_N48
\bigclock|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~113_sumout\ = SUM(( \bigclock|minute_s\(16) ) + ( GND ) + ( \bigclock|Add3~110\ ))
-- \bigclock|Add3~114\ = CARRY(( \bigclock|minute_s\(16) ) + ( GND ) + ( \bigclock|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(16),
	cin => \bigclock|Add3~110\,
	sumout => \bigclock|Add3~113_sumout\,
	cout => \bigclock|Add3~114\);

-- Location: FF_X40_Y2_N50
\bigclock|minute_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(16));

-- Location: LABCELL_X40_Y2_N51
\bigclock|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~117_sumout\ = SUM(( \bigclock|minute_s\(17) ) + ( GND ) + ( \bigclock|Add3~114\ ))
-- \bigclock|Add3~118\ = CARRY(( \bigclock|minute_s\(17) ) + ( GND ) + ( \bigclock|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(17),
	cin => \bigclock|Add3~114\,
	sumout => \bigclock|Add3~117_sumout\,
	cout => \bigclock|Add3~118\);

-- Location: FF_X40_Y2_N53
\bigclock|minute_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(17));

-- Location: LABCELL_X40_Y2_N54
\bigclock|Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~121_sumout\ = SUM(( \bigclock|minute_s\(18) ) + ( GND ) + ( \bigclock|Add3~118\ ))
-- \bigclock|Add3~122\ = CARRY(( \bigclock|minute_s\(18) ) + ( GND ) + ( \bigclock|Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(18),
	cin => \bigclock|Add3~118\,
	sumout => \bigclock|Add3~121_sumout\,
	cout => \bigclock|Add3~122\);

-- Location: FF_X40_Y2_N56
\bigclock|minute_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(18));

-- Location: LABCELL_X40_Y2_N57
\bigclock|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~81_sumout\ = SUM(( \bigclock|minute_s\(19) ) + ( GND ) + ( \bigclock|Add3~122\ ))
-- \bigclock|Add3~82\ = CARRY(( \bigclock|minute_s\(19) ) + ( GND ) + ( \bigclock|Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(19),
	cin => \bigclock|Add3~122\,
	sumout => \bigclock|Add3~81_sumout\,
	cout => \bigclock|Add3~82\);

-- Location: FF_X40_Y2_N59
\bigclock|minute_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(19));

-- Location: LABCELL_X40_Y1_N0
\bigclock|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~85_sumout\ = SUM(( \bigclock|minute_s\(20) ) + ( GND ) + ( \bigclock|Add3~82\ ))
-- \bigclock|Add3~86\ = CARRY(( \bigclock|minute_s\(20) ) + ( GND ) + ( \bigclock|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(20),
	cin => \bigclock|Add3~82\,
	sumout => \bigclock|Add3~85_sumout\,
	cout => \bigclock|Add3~86\);

-- Location: FF_X40_Y1_N2
\bigclock|minute_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(20));

-- Location: LABCELL_X40_Y1_N3
\bigclock|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~41_sumout\ = SUM(( \bigclock|minute_s[21]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~86\ ))
-- \bigclock|Add3~42\ = CARRY(( \bigclock|minute_s[21]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s[21]~DUPLICATE_q\,
	cin => \bigclock|Add3~86\,
	sumout => \bigclock|Add3~41_sumout\,
	cout => \bigclock|Add3~42\);

-- Location: FF_X40_Y1_N5
\bigclock|minute_s[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[21]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N6
\bigclock|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~37_sumout\ = SUM(( \bigclock|minute_s\(22) ) + ( GND ) + ( \bigclock|Add3~42\ ))
-- \bigclock|Add3~38\ = CARRY(( \bigclock|minute_s\(22) ) + ( GND ) + ( \bigclock|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(22),
	cin => \bigclock|Add3~42\,
	sumout => \bigclock|Add3~37_sumout\,
	cout => \bigclock|Add3~38\);

-- Location: FF_X40_Y1_N7
\bigclock|minute_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(22));

-- Location: LABCELL_X40_Y1_N9
\bigclock|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~33_sumout\ = SUM(( \bigclock|minute_s\(23) ) + ( GND ) + ( \bigclock|Add3~38\ ))
-- \bigclock|Add3~34\ = CARRY(( \bigclock|minute_s\(23) ) + ( GND ) + ( \bigclock|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(23),
	cin => \bigclock|Add3~38\,
	sumout => \bigclock|Add3~33_sumout\,
	cout => \bigclock|Add3~34\);

-- Location: FF_X40_Y1_N11
\bigclock|minute_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(23));

-- Location: LABCELL_X40_Y1_N12
\bigclock|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~29_sumout\ = SUM(( \bigclock|minute_s\(24) ) + ( GND ) + ( \bigclock|Add3~34\ ))
-- \bigclock|Add3~30\ = CARRY(( \bigclock|minute_s\(24) ) + ( GND ) + ( \bigclock|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s\(24),
	cin => \bigclock|Add3~34\,
	sumout => \bigclock|Add3~29_sumout\,
	cout => \bigclock|Add3~30\);

-- Location: FF_X40_Y1_N14
\bigclock|minute_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(24));

-- Location: LABCELL_X40_Y1_N15
\bigclock|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~73_sumout\ = SUM(( \bigclock|minute_s\(25) ) + ( GND ) + ( \bigclock|Add3~30\ ))
-- \bigclock|Add3~74\ = CARRY(( \bigclock|minute_s\(25) ) + ( GND ) + ( \bigclock|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(25),
	cin => \bigclock|Add3~30\,
	sumout => \bigclock|Add3~73_sumout\,
	cout => \bigclock|Add3~74\);

-- Location: FF_X40_Y1_N17
\bigclock|minute_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(25));

-- Location: FF_X40_Y2_N1
\bigclock|minute_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[0]~DUPLICATE_q\);

-- Location: FF_X40_Y2_N4
\bigclock|minute_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(1));

-- Location: LABCELL_X40_Y1_N54
\bigclock|counter24h~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~1_combout\ = ( !\bigclock|minute_s\(1) & ( !\bigclock|minute_s\(2) & ( (!\bigclock|minute_s\(25) & (!\bigclock|minute_s\(14) & \bigclock|minute_s[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s\(25),
	datac => \bigclock|ALT_INV_minute_s\(14),
	datad => \bigclock|ALT_INV_minute_s[0]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_minute_s\(1),
	dataf => \bigclock|ALT_INV_minute_s\(2),
	combout => \bigclock|counter24h~1_combout\);

-- Location: LABCELL_X40_Y1_N18
\bigclock|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~25_sumout\ = SUM(( \bigclock|minute_s\(26) ) + ( GND ) + ( \bigclock|Add3~74\ ))
-- \bigclock|Add3~26\ = CARRY(( \bigclock|minute_s\(26) ) + ( GND ) + ( \bigclock|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(26),
	cin => \bigclock|Add3~74\,
	sumout => \bigclock|Add3~25_sumout\,
	cout => \bigclock|Add3~26\);

-- Location: FF_X40_Y1_N19
\bigclock|minute_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(26));

-- Location: LABCELL_X40_Y1_N21
\bigclock|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~21_sumout\ = SUM(( \bigclock|minute_s\(27) ) + ( GND ) + ( \bigclock|Add3~26\ ))
-- \bigclock|Add3~22\ = CARRY(( \bigclock|minute_s\(27) ) + ( GND ) + ( \bigclock|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(27),
	cin => \bigclock|Add3~26\,
	sumout => \bigclock|Add3~21_sumout\,
	cout => \bigclock|Add3~22\);

-- Location: FF_X40_Y1_N22
\bigclock|minute_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(27));

-- Location: LABCELL_X40_Y1_N24
\bigclock|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~65_sumout\ = SUM(( \bigclock|minute_s\(28) ) + ( GND ) + ( \bigclock|Add3~22\ ))
-- \bigclock|Add3~66\ = CARRY(( \bigclock|minute_s\(28) ) + ( GND ) + ( \bigclock|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(28),
	cin => \bigclock|Add3~22\,
	sumout => \bigclock|Add3~65_sumout\,
	cout => \bigclock|Add3~66\);

-- Location: FF_X40_Y1_N26
\bigclock|minute_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(28));

-- Location: FF_X40_Y1_N29
\bigclock|minute_s[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[29]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N27
\bigclock|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~61_sumout\ = SUM(( \bigclock|minute_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~66\ ))
-- \bigclock|Add3~62\ = CARRY(( \bigclock|minute_s[29]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_minute_s[29]~DUPLICATE_q\,
	cin => \bigclock|Add3~66\,
	sumout => \bigclock|Add3~61_sumout\,
	cout => \bigclock|Add3~62\);

-- Location: FF_X40_Y1_N28
\bigclock|minute_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(29));

-- Location: FF_X40_Y2_N13
\bigclock|minute_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(4));

-- Location: LABCELL_X40_Y1_N30
\bigclock|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add3~57_sumout\ = SUM(( \bigclock|minute_s\(30) ) + ( GND ) + ( \bigclock|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s\(30),
	cin => \bigclock|Add3~62\,
	sumout => \bigclock|Add3~57_sumout\);

-- Location: FF_X40_Y1_N32
\bigclock|minute_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(30));

-- Location: FF_X40_Y2_N19
\bigclock|minute_s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N42
\bigclock|counter24h~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~0_combout\ = ( !\bigclock|minute_s[6]~DUPLICATE_q\ & ( !\bigclock|minute_s\(5) & ( (!\bigclock|minute_s\(28) & (!\bigclock|minute_s\(29) & (!\bigclock|minute_s\(4) & !\bigclock|minute_s\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(28),
	datab => \bigclock|ALT_INV_minute_s\(29),
	datac => \bigclock|ALT_INV_minute_s\(4),
	datad => \bigclock|ALT_INV_minute_s\(30),
	datae => \bigclock|ALT_INV_minute_s[6]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_minute_s\(5),
	combout => \bigclock|counter24h~0_combout\);

-- Location: FF_X40_Y1_N4
\bigclock|minute_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(21));

-- Location: FF_X40_Y1_N10
\bigclock|minute_s[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[23]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y1_N24
\bigclock|counter24h~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~23_combout\ = ( !\bigclock|minute_s\(24) & ( !\bigclock|minute_s\(26) & ( (!\bigclock|minute_s\(22) & (!\bigclock|minute_s\(21) & (!\bigclock|minute_s\(27) & !\bigclock|minute_s[23]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(22),
	datab => \bigclock|ALT_INV_minute_s\(21),
	datac => \bigclock|ALT_INV_minute_s\(27),
	datad => \bigclock|ALT_INV_minute_s[23]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_minute_s\(24),
	dataf => \bigclock|ALT_INV_minute_s\(26),
	combout => \bigclock|counter24h~23_combout\);

-- Location: LABCELL_X39_Y2_N48
\bigclock|counter24h~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~3_combout\ = ( !\bigclock|minute_s\(16) & ( !\bigclock|minute_s\(17) & ( (!\bigclock|minute_s\(15) & !\bigclock|minute_s\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_minute_s\(15),
	datad => \bigclock|ALT_INV_minute_s\(18),
	datae => \bigclock|ALT_INV_minute_s\(16),
	dataf => \bigclock|ALT_INV_minute_s\(17),
	combout => \bigclock|counter24h~3_combout\);

-- Location: FF_X39_Y2_N29
\bigclock|minute_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|minute_s[10]~feeder_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(10));

-- Location: LABCELL_X39_Y2_N42
\bigclock|counter24h~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~2_combout\ = ( !\bigclock|minute_s\(8) & ( (!\bigclock|minute_s\(10) & (!\bigclock|minute_s\(12) & (!\bigclock|minute_s\(11) & !\bigclock|minute_s\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(10),
	datab => \bigclock|ALT_INV_minute_s\(12),
	datac => \bigclock|ALT_INV_minute_s\(11),
	datad => \bigclock|ALT_INV_minute_s\(9),
	dataf => \bigclock|ALT_INV_minute_s\(8),
	combout => \bigclock|counter24h~2_combout\);

-- Location: FF_X40_Y2_N22
\bigclock|minute_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(7));

-- Location: FF_X40_Y2_N58
\bigclock|minute_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N48
\bigclock|counter24h~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~24_combout\ = ( !\bigclock|minute_s\(13) & ( (\bigclock|minute_s[3]~DUPLICATE_q\ & (!\bigclock|minute_s\(7) & (!\bigclock|minute_s[19]~DUPLICATE_q\ & !\bigclock|minute_s\(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s[3]~DUPLICATE_q\,
	datab => \bigclock|ALT_INV_minute_s\(7),
	datac => \bigclock|ALT_INV_minute_s[19]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_minute_s\(20),
	dataf => \bigclock|ALT_INV_minute_s\(13),
	combout => \bigclock|counter24h~24_combout\);

-- Location: LABCELL_X40_Y1_N36
\bigclock|counter24h~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~4_combout\ = ( \bigclock|counter24h~2_combout\ & ( \bigclock|counter24h~24_combout\ & ( (\bigclock|counter24h~1_combout\ & (\bigclock|counter24h~0_combout\ & (\bigclock|counter24h~23_combout\ & \bigclock|counter24h~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_counter24h~1_combout\,
	datab => \bigclock|ALT_INV_counter24h~0_combout\,
	datac => \bigclock|ALT_INV_counter24h~23_combout\,
	datad => \bigclock|ALT_INV_counter24h~3_combout\,
	datae => \bigclock|ALT_INV_counter24h~2_combout\,
	dataf => \bigclock|ALT_INV_counter24h~24_combout\,
	combout => \bigclock|counter24h~4_combout\);

-- Location: LABCELL_X40_Y3_N27
\bigclock|deci_minute_s[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_minute_s[3]~0_combout\ = ( \bigclock|minute_s[8]~5_combout\ & ( (\bigclock|counter24h~4_combout\ & \bigclock|clk_state_s.counting~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_counter24h~4_combout\,
	datac => \bigclock|ALT_INV_clk_state_s.counting~q\,
	dataf => \bigclock|ALT_INV_minute_s[8]~5_combout\,
	combout => \bigclock|deci_minute_s[3]~0_combout\);

-- Location: FF_X41_Y5_N2
\bigclock|deci_minute_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(0));

-- Location: LABCELL_X41_Y5_N3
\bigclock|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~5_sumout\ = SUM(( \bigclock|deci_minute_s\(1) ) + ( GND ) + ( \bigclock|Add2~2\ ))
-- \bigclock|Add2~6\ = CARRY(( \bigclock|deci_minute_s\(1) ) + ( GND ) + ( \bigclock|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(1),
	cin => \bigclock|Add2~2\,
	sumout => \bigclock|Add2~5_sumout\,
	cout => \bigclock|Add2~6\);

-- Location: FF_X41_Y5_N5
\bigclock|deci_minute_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(1));

-- Location: LABCELL_X41_Y5_N6
\bigclock|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~9_sumout\ = SUM(( \bigclock|deci_minute_s\(2) ) + ( GND ) + ( \bigclock|Add2~6\ ))
-- \bigclock|Add2~10\ = CARRY(( \bigclock|deci_minute_s\(2) ) + ( GND ) + ( \bigclock|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(2),
	cin => \bigclock|Add2~6\,
	sumout => \bigclock|Add2~9_sumout\,
	cout => \bigclock|Add2~10\);

-- Location: FF_X41_Y5_N7
\bigclock|deci_minute_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(2));

-- Location: FF_X41_Y5_N32
\bigclock|deci_minute_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N9
\bigclock|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~13_sumout\ = SUM(( \bigclock|deci_minute_s\(3) ) + ( GND ) + ( \bigclock|Add2~10\ ))
-- \bigclock|Add2~14\ = CARRY(( \bigclock|deci_minute_s\(3) ) + ( GND ) + ( \bigclock|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(3),
	cin => \bigclock|Add2~10\,
	sumout => \bigclock|Add2~13_sumout\,
	cout => \bigclock|Add2~14\);

-- Location: FF_X41_Y5_N11
\bigclock|deci_minute_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(3));

-- Location: LABCELL_X41_Y5_N12
\bigclock|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~25_sumout\ = SUM(( \bigclock|deci_minute_s\(4) ) + ( GND ) + ( \bigclock|Add2~14\ ))
-- \bigclock|Add2~26\ = CARRY(( \bigclock|deci_minute_s\(4) ) + ( GND ) + ( \bigclock|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s\(4),
	cin => \bigclock|Add2~14\,
	sumout => \bigclock|Add2~25_sumout\,
	cout => \bigclock|Add2~26\);

-- Location: FF_X41_Y5_N14
\bigclock|deci_minute_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(4));

-- Location: LABCELL_X41_Y5_N15
\bigclock|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~21_sumout\ = SUM(( \bigclock|deci_minute_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~26\ ))
-- \bigclock|Add2~22\ = CARRY(( \bigclock|deci_minute_s[5]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[5]~DUPLICATE_q\,
	cin => \bigclock|Add2~26\,
	sumout => \bigclock|Add2~21_sumout\,
	cout => \bigclock|Add2~22\);

-- Location: FF_X41_Y5_N17
\bigclock|deci_minute_s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[5]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N18
\bigclock|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~17_sumout\ = SUM(( \bigclock|deci_minute_s\(6) ) + ( GND ) + ( \bigclock|Add2~22\ ))
-- \bigclock|Add2~18\ = CARRY(( \bigclock|deci_minute_s\(6) ) + ( GND ) + ( \bigclock|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(6),
	cin => \bigclock|Add2~22\,
	sumout => \bigclock|Add2~17_sumout\,
	cout => \bigclock|Add2~18\);

-- Location: FF_X41_Y5_N20
\bigclock|deci_minute_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(6));

-- Location: LABCELL_X41_Y5_N21
\bigclock|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~77_sumout\ = SUM(( \bigclock|deci_minute_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~18\ ))
-- \bigclock|Add2~78\ = CARRY(( \bigclock|deci_minute_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s[7]~DUPLICATE_q\,
	cin => \bigclock|Add2~18\,
	sumout => \bigclock|Add2~77_sumout\,
	cout => \bigclock|Add2~78\);

-- Location: FF_X41_Y5_N23
\bigclock|deci_minute_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[7]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N24
\bigclock|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~73_sumout\ = SUM(( \bigclock|deci_minute_s\(8) ) + ( GND ) + ( \bigclock|Add2~78\ ))
-- \bigclock|Add2~74\ = CARRY(( \bigclock|deci_minute_s\(8) ) + ( GND ) + ( \bigclock|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(8),
	cin => \bigclock|Add2~78\,
	sumout => \bigclock|Add2~73_sumout\,
	cout => \bigclock|Add2~74\);

-- Location: FF_X41_Y5_N26
\bigclock|deci_minute_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(8));

-- Location: LABCELL_X41_Y5_N27
\bigclock|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~69_sumout\ = SUM(( \bigclock|deci_minute_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~74\ ))
-- \bigclock|Add2~70\ = CARRY(( \bigclock|deci_minute_s[9]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s[9]~DUPLICATE_q\,
	cin => \bigclock|Add2~74\,
	sumout => \bigclock|Add2~69_sumout\,
	cout => \bigclock|Add2~70\);

-- Location: FF_X41_Y4_N58
\bigclock|deci_minute_s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add2~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	sload => VCC,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[9]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N30
\bigclock|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~61_sumout\ = SUM(( \bigclock|deci_minute_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~70\ ))
-- \bigclock|Add2~62\ = CARRY(( \bigclock|deci_minute_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add2~70\,
	sumout => \bigclock|Add2~61_sumout\,
	cout => \bigclock|Add2~62\);

-- Location: FF_X41_Y5_N31
\bigclock|deci_minute_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(10));

-- Location: FF_X41_Y5_N10
\bigclock|deci_minute_s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N33
\bigclock|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~117_sumout\ = SUM(( \bigclock|deci_minute_s\(11) ) + ( GND ) + ( \bigclock|Add2~62\ ))
-- \bigclock|Add2~118\ = CARRY(( \bigclock|deci_minute_s\(11) ) + ( GND ) + ( \bigclock|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(11),
	cin => \bigclock|Add2~62\,
	sumout => \bigclock|Add2~117_sumout\,
	cout => \bigclock|Add2~118\);

-- Location: FF_X41_Y5_N35
\bigclock|deci_minute_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(11));

-- Location: LABCELL_X41_Y5_N36
\bigclock|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~113_sumout\ = SUM(( \bigclock|deci_minute_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~118\ ))
-- \bigclock|Add2~114\ = CARRY(( \bigclock|deci_minute_s[12]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[12]~DUPLICATE_q\,
	cin => \bigclock|Add2~118\,
	sumout => \bigclock|Add2~113_sumout\,
	cout => \bigclock|Add2~114\);

-- Location: FF_X41_Y5_N38
\bigclock|deci_minute_s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[12]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N39
\bigclock|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~109_sumout\ = SUM(( \bigclock|deci_minute_s\(13) ) + ( GND ) + ( \bigclock|Add2~114\ ))
-- \bigclock|Add2~110\ = CARRY(( \bigclock|deci_minute_s\(13) ) + ( GND ) + ( \bigclock|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(13),
	cin => \bigclock|Add2~114\,
	sumout => \bigclock|Add2~109_sumout\,
	cout => \bigclock|Add2~110\);

-- Location: FF_X41_Y5_N41
\bigclock|deci_minute_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(13));

-- Location: LABCELL_X41_Y5_N42
\bigclock|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~57_sumout\ = SUM(( \bigclock|deci_minute_s\(14) ) + ( GND ) + ( \bigclock|Add2~110\ ))
-- \bigclock|Add2~58\ = CARRY(( \bigclock|deci_minute_s\(14) ) + ( GND ) + ( \bigclock|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(14),
	cin => \bigclock|Add2~110\,
	sumout => \bigclock|Add2~57_sumout\,
	cout => \bigclock|Add2~58\);

-- Location: FF_X41_Y5_N43
\bigclock|deci_minute_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(14));

-- Location: LABCELL_X40_Y3_N33
\bigclock|counter24h~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~26_combout\ = ( !\bigclock|deci_minute_s\(14) & ( (\bigclock|deci_minute_s\(2) & (!\bigclock|deci_minute_s\(10) & (!\bigclock|deci_minute_s[3]~DUPLICATE_q\ & !\bigclock|deci_minute_s\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(2),
	datab => \bigclock|ALT_INV_deci_minute_s\(10),
	datac => \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_minute_s\(1),
	dataf => \bigclock|ALT_INV_deci_minute_s\(14),
	combout => \bigclock|counter24h~26_combout\);

-- Location: FF_X41_Y4_N8
\bigclock|deci_minute_s[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[22]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N45
\bigclock|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~89_sumout\ = SUM(( \bigclock|deci_minute_s\(15) ) + ( GND ) + ( \bigclock|Add2~58\ ))
-- \bigclock|Add2~90\ = CARRY(( \bigclock|deci_minute_s\(15) ) + ( GND ) + ( \bigclock|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(15),
	cin => \bigclock|Add2~58\,
	sumout => \bigclock|Add2~89_sumout\,
	cout => \bigclock|Add2~90\);

-- Location: FF_X41_Y5_N47
\bigclock|deci_minute_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(15));

-- Location: LABCELL_X41_Y5_N48
\bigclock|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~105_sumout\ = SUM(( \bigclock|deci_minute_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~90\ ))
-- \bigclock|Add2~106\ = CARRY(( \bigclock|deci_minute_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[16]~DUPLICATE_q\,
	cin => \bigclock|Add2~90\,
	sumout => \bigclock|Add2~105_sumout\,
	cout => \bigclock|Add2~106\);

-- Location: FF_X41_Y5_N50
\bigclock|deci_minute_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[16]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N51
\bigclock|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~101_sumout\ = SUM(( \bigclock|deci_minute_s[17]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~106\ ))
-- \bigclock|Add2~102\ = CARRY(( \bigclock|deci_minute_s[17]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s[17]~DUPLICATE_q\,
	cin => \bigclock|Add2~106\,
	sumout => \bigclock|Add2~101_sumout\,
	cout => \bigclock|Add2~102\);

-- Location: FF_X41_Y5_N53
\bigclock|deci_minute_s[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[17]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N54
\bigclock|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~41_sumout\ = SUM(( \bigclock|deci_minute_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~102\ ))
-- \bigclock|Add2~42\ = CARRY(( \bigclock|deci_minute_s[18]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[18]~DUPLICATE_q\,
	cin => \bigclock|Add2~102\,
	sumout => \bigclock|Add2~41_sumout\,
	cout => \bigclock|Add2~42\);

-- Location: FF_X41_Y5_N56
\bigclock|deci_minute_s[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[18]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y5_N57
\bigclock|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~65_sumout\ = SUM(( \bigclock|deci_minute_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~42\ ))
-- \bigclock|Add2~66\ = CARRY(( \bigclock|deci_minute_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[19]~DUPLICATE_q\,
	cin => \bigclock|Add2~42\,
	sumout => \bigclock|Add2~65_sumout\,
	cout => \bigclock|Add2~66\);

-- Location: FF_X41_Y5_N59
\bigclock|deci_minute_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N0
\bigclock|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~85_sumout\ = SUM(( \bigclock|deci_minute_s\(20) ) + ( GND ) + ( \bigclock|Add2~66\ ))
-- \bigclock|Add2~86\ = CARRY(( \bigclock|deci_minute_s\(20) ) + ( GND ) + ( \bigclock|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(20),
	cin => \bigclock|Add2~66\,
	sumout => \bigclock|Add2~85_sumout\,
	cout => \bigclock|Add2~86\);

-- Location: FF_X41_Y4_N2
\bigclock|deci_minute_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(20));

-- Location: LABCELL_X41_Y4_N3
\bigclock|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~81_sumout\ = SUM(( \bigclock|deci_minute_s\(21) ) + ( GND ) + ( \bigclock|Add2~86\ ))
-- \bigclock|Add2~82\ = CARRY(( \bigclock|deci_minute_s\(21) ) + ( GND ) + ( \bigclock|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(21),
	cin => \bigclock|Add2~86\,
	sumout => \bigclock|Add2~81_sumout\,
	cout => \bigclock|Add2~82\);

-- Location: FF_X41_Y4_N5
\bigclock|deci_minute_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(21));

-- Location: LABCELL_X41_Y4_N6
\bigclock|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~121_sumout\ = SUM(( \bigclock|deci_minute_s[22]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~82\ ))
-- \bigclock|Add2~122\ = CARRY(( \bigclock|deci_minute_s[22]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s[22]~DUPLICATE_q\,
	cin => \bigclock|Add2~82\,
	sumout => \bigclock|Add2~121_sumout\,
	cout => \bigclock|Add2~122\);

-- Location: FF_X41_Y4_N7
\bigclock|deci_minute_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(22));

-- Location: FF_X41_Y5_N1
\bigclock|deci_minute_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[0]~DUPLICATE_q\);

-- Location: FF_X41_Y5_N37
\bigclock|deci_minute_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(12));

-- Location: LABCELL_X41_Y3_N12
\bigclock|counter24h~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~8_combout\ = ( !\bigclock|deci_minute_s\(13) & ( (!\bigclock|deci_minute_s\(22) & (\bigclock|deci_minute_s[0]~DUPLICATE_q\ & (!\bigclock|deci_minute_s\(11) & !\bigclock|deci_minute_s\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(22),
	datab => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_deci_minute_s\(11),
	datad => \bigclock|ALT_INV_deci_minute_s\(12),
	dataf => \bigclock|ALT_INV_deci_minute_s\(13),
	combout => \bigclock|counter24h~8_combout\);

-- Location: LABCELL_X41_Y4_N9
\bigclock|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~45_sumout\ = SUM(( \bigclock|deci_minute_s\(23) ) + ( GND ) + ( \bigclock|Add2~122\ ))
-- \bigclock|Add2~46\ = CARRY(( \bigclock|deci_minute_s\(23) ) + ( GND ) + ( \bigclock|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(23),
	cin => \bigclock|Add2~122\,
	sumout => \bigclock|Add2~45_sumout\,
	cout => \bigclock|Add2~46\);

-- Location: FF_X41_Y4_N10
\bigclock|deci_minute_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(23));

-- Location: LABCELL_X41_Y4_N12
\bigclock|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~37_sumout\ = SUM(( \bigclock|deci_minute_s\(24) ) + ( GND ) + ( \bigclock|Add2~46\ ))
-- \bigclock|Add2~38\ = CARRY(( \bigclock|deci_minute_s\(24) ) + ( GND ) + ( \bigclock|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s\(24),
	cin => \bigclock|Add2~46\,
	sumout => \bigclock|Add2~37_sumout\,
	cout => \bigclock|Add2~38\);

-- Location: FF_X41_Y4_N14
\bigclock|deci_minute_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(24));

-- Location: LABCELL_X41_Y4_N15
\bigclock|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~49_sumout\ = SUM(( \bigclock|deci_minute_s\(25) ) + ( GND ) + ( \bigclock|Add2~38\ ))
-- \bigclock|Add2~50\ = CARRY(( \bigclock|deci_minute_s\(25) ) + ( GND ) + ( \bigclock|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(25),
	cin => \bigclock|Add2~38\,
	sumout => \bigclock|Add2~49_sumout\,
	cout => \bigclock|Add2~50\);

-- Location: FF_X41_Y4_N17
\bigclock|deci_minute_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(25));

-- Location: LABCELL_X41_Y4_N18
\bigclock|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~53_sumout\ = SUM(( \bigclock|deci_minute_s\(26) ) + ( GND ) + ( \bigclock|Add2~50\ ))
-- \bigclock|Add2~54\ = CARRY(( \bigclock|deci_minute_s\(26) ) + ( GND ) + ( \bigclock|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(26),
	cin => \bigclock|Add2~50\,
	sumout => \bigclock|Add2~53_sumout\,
	cout => \bigclock|Add2~54\);

-- Location: FF_X41_Y4_N20
\bigclock|deci_minute_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(26));

-- Location: LABCELL_X41_Y4_N21
\bigclock|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~97_sumout\ = SUM(( \bigclock|deci_minute_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~54\ ))
-- \bigclock|Add2~98\ = CARRY(( \bigclock|deci_minute_s[27]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s[27]~DUPLICATE_q\,
	cin => \bigclock|Add2~54\,
	sumout => \bigclock|Add2~97_sumout\,
	cout => \bigclock|Add2~98\);

-- Location: FF_X41_Y4_N23
\bigclock|deci_minute_s[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s[27]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N24
\bigclock|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~93_sumout\ = SUM(( \bigclock|deci_minute_s\(28) ) + ( GND ) + ( \bigclock|Add2~98\ ))
-- \bigclock|Add2~94\ = CARRY(( \bigclock|deci_minute_s\(28) ) + ( GND ) + ( \bigclock|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s\(28),
	cin => \bigclock|Add2~98\,
	sumout => \bigclock|Add2~93_sumout\,
	cout => \bigclock|Add2~94\);

-- Location: FF_X41_Y4_N26
\bigclock|deci_minute_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(28));

-- Location: FF_X41_Y4_N22
\bigclock|deci_minute_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(27));

-- Location: FF_X41_Y5_N52
\bigclock|deci_minute_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(17));

-- Location: FF_X41_Y5_N49
\bigclock|deci_minute_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(16));

-- Location: LABCELL_X41_Y4_N42
\bigclock|counter24h~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~7_combout\ = ( !\bigclock|deci_minute_s\(17) & ( !\bigclock|deci_minute_s\(16) & ( (!\bigclock|deci_minute_s\(28) & (!\bigclock|deci_minute_s\(15) & !\bigclock|deci_minute_s\(27))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(28),
	datac => \bigclock|ALT_INV_deci_minute_s\(15),
	datad => \bigclock|ALT_INV_deci_minute_s\(27),
	datae => \bigclock|ALT_INV_deci_minute_s\(17),
	dataf => \bigclock|ALT_INV_deci_minute_s\(16),
	combout => \bigclock|counter24h~7_combout\);

-- Location: FF_X41_Y5_N55
\bigclock|deci_minute_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(18));

-- Location: LABCELL_X41_Y4_N36
\bigclock|counter24h~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~5_combout\ = ( !\bigclock|deci_minute_s\(23) & ( !\bigclock|deci_minute_s\(18) & ( (!\bigclock|deci_minute_s\(24) & (!\bigclock|deci_minute_s\(26) & !\bigclock|deci_minute_s\(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s\(24),
	datac => \bigclock|ALT_INV_deci_minute_s\(26),
	datad => \bigclock|ALT_INV_deci_minute_s\(25),
	datae => \bigclock|ALT_INV_deci_minute_s\(23),
	dataf => \bigclock|ALT_INV_deci_minute_s\(18),
	combout => \bigclock|counter24h~5_combout\);

-- Location: LABCELL_X41_Y4_N27
\bigclock|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~33_sumout\ = SUM(( \bigclock|deci_minute_s\(29) ) + ( GND ) + ( \bigclock|Add2~94\ ))
-- \bigclock|Add2~34\ = CARRY(( \bigclock|deci_minute_s\(29) ) + ( GND ) + ( \bigclock|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_minute_s\(29),
	cin => \bigclock|Add2~94\,
	sumout => \bigclock|Add2~33_sumout\,
	cout => \bigclock|Add2~34\);

-- Location: FF_X41_Y4_N29
\bigclock|deci_minute_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(29));

-- Location: LABCELL_X41_Y4_N30
\bigclock|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add2~29_sumout\ = SUM(( \bigclock|deci_minute_s\(30) ) + ( GND ) + ( \bigclock|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s\(30),
	cin => \bigclock|Add2~34\,
	sumout => \bigclock|Add2~29_sumout\);

-- Location: FF_X41_Y4_N32
\bigclock|deci_minute_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(30));

-- Location: FF_X41_Y5_N16
\bigclock|deci_minute_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(5));

-- Location: FF_X41_Y5_N58
\bigclock|deci_minute_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(19));

-- Location: LABCELL_X41_Y4_N48
\bigclock|counter24h~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~25_combout\ = ( !\bigclock|deci_minute_s\(5) & ( !\bigclock|deci_minute_s\(19) & ( (!\bigclock|deci_minute_s\(29) & (!\bigclock|deci_minute_s\(30) & (!\bigclock|deci_minute_s\(6) & !\bigclock|deci_minute_s\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(29),
	datab => \bigclock|ALT_INV_deci_minute_s\(30),
	datac => \bigclock|ALT_INV_deci_minute_s\(6),
	datad => \bigclock|ALT_INV_deci_minute_s\(4),
	datae => \bigclock|ALT_INV_deci_minute_s\(5),
	dataf => \bigclock|ALT_INV_deci_minute_s\(19),
	combout => \bigclock|counter24h~25_combout\);

-- Location: FF_X41_Y4_N59
\bigclock|deci_minute_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add2~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	sload => VCC,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(9));

-- Location: FF_X41_Y5_N22
\bigclock|deci_minute_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add2~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~10_combout\,
	ena => \bigclock|deci_minute_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_minute_s\(7));

-- Location: LABCELL_X41_Y4_N54
\bigclock|counter24h~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~6_combout\ = ( !\bigclock|deci_minute_s\(8) & ( !\bigclock|deci_minute_s\(7) & ( (!\bigclock|deci_minute_s\(20) & (!\bigclock|deci_minute_s\(21) & !\bigclock|deci_minute_s\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(20),
	datac => \bigclock|ALT_INV_deci_minute_s\(21),
	datad => \bigclock|ALT_INV_deci_minute_s\(9),
	datae => \bigclock|ALT_INV_deci_minute_s\(8),
	dataf => \bigclock|ALT_INV_deci_minute_s\(7),
	combout => \bigclock|counter24h~6_combout\);

-- Location: LABCELL_X40_Y3_N42
\bigclock|counter24h~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~9_combout\ = ( \bigclock|counter24h~25_combout\ & ( \bigclock|counter24h~6_combout\ & ( (\bigclock|counter24h~26_combout\ & (\bigclock|counter24h~8_combout\ & (\bigclock|counter24h~7_combout\ & \bigclock|counter24h~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_counter24h~26_combout\,
	datab => \bigclock|ALT_INV_counter24h~8_combout\,
	datac => \bigclock|ALT_INV_counter24h~7_combout\,
	datad => \bigclock|ALT_INV_counter24h~5_combout\,
	datae => \bigclock|ALT_INV_counter24h~25_combout\,
	dataf => \bigclock|ALT_INV_counter24h~6_combout\,
	combout => \bigclock|counter24h~9_combout\);

-- Location: LABCELL_X40_Y3_N12
\bigclock|counter24h~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~10_combout\ = ( \bigclock|minute_s[8]~4_combout\ & ( \bigclock|counter24h~4_combout\ & ( (\bigclock|Sec_Clock|slow_clk~DUPLICATE_q\ & (!\bigclock|second_s\(16) & (\bigclock|deci_second_s[9]~4_combout\ & 
-- \bigclock|counter24h~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|Sec_Clock|ALT_INV_slow_clk~DUPLICATE_q\,
	datab => \bigclock|ALT_INV_second_s\(16),
	datac => \bigclock|ALT_INV_deci_second_s[9]~4_combout\,
	datad => \bigclock|ALT_INV_counter24h~9_combout\,
	datae => \bigclock|ALT_INV_minute_s[8]~4_combout\,
	dataf => \bigclock|ALT_INV_counter24h~4_combout\,
	combout => \bigclock|counter24h~10_combout\);

-- Location: LABCELL_X40_Y3_N30
\bigclock|hour_s[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|hour_s[3]~1_combout\ = ( \bigclock|counter24h~10_combout\ & ( \bigclock|clk_state_s.counting~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_clk_state_s.counting~q\,
	dataf => \bigclock|ALT_INV_counter24h~10_combout\,
	combout => \bigclock|hour_s[3]~1_combout\);

-- Location: FF_X42_Y4_N7
\bigclock|hour_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(2));

-- Location: FF_X42_Y4_N11
\bigclock|hour_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(3));

-- Location: LABCELL_X41_Y3_N18
\bigclock|hour_s[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|hour_s[17]~0_combout\ = ( \bigclock|counter24h~20_combout\ & ( \bigclock|counter24h~10_combout\ & ( (\bigclock|counter24h~15_combout\ & ((!\bigclock|hour_s\(3)) # (\bigclock|hour_s[1]~DUPLICATE_q\))) ) ) ) # ( !\bigclock|counter24h~20_combout\ & 
-- ( \bigclock|counter24h~10_combout\ & ( (\bigclock|hour_s\(3) & (!\bigclock|hour_s[1]~DUPLICATE_q\ & \bigclock|counter24h~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_counter24h~15_combout\,
	datae => \bigclock|ALT_INV_counter24h~20_combout\,
	dataf => \bigclock|ALT_INV_counter24h~10_combout\,
	combout => \bigclock|hour_s[17]~0_combout\);

-- Location: FF_X42_Y4_N2
\bigclock|hour_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s\(0));

-- Location: FF_X42_Y4_N5
\bigclock|hour_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add1~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|hour_s[17]~0_combout\,
	ena => \bigclock|hour_s[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|hour_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N48
\bigclock|deci_hour_s[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|deci_hour_s[3]~0_combout\ = ( \bigclock|counter24h~20_combout\ & ( \bigclock|counter24h~10_combout\ & ( (\bigclock|counter24h~15_combout\ & \bigclock|clk_state_s.counting~q\) ) ) ) # ( !\bigclock|counter24h~20_combout\ & ( 
-- \bigclock|counter24h~10_combout\ & ( (!\bigclock|hour_s[1]~DUPLICATE_q\ & (\bigclock|counter24h~15_combout\ & (\bigclock|clk_state_s.counting~q\ & \bigclock|hour_s\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	datab => \bigclock|ALT_INV_counter24h~15_combout\,
	datac => \bigclock|ALT_INV_clk_state_s.counting~q\,
	datad => \bigclock|ALT_INV_hour_s\(3),
	datae => \bigclock|ALT_INV_counter24h~20_combout\,
	dataf => \bigclock|ALT_INV_counter24h~10_combout\,
	combout => \bigclock|deci_hour_s[3]~0_combout\);

-- Location: FF_X42_Y2_N5
\bigclock|deci_hour_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(1));

-- Location: MLABCELL_X42_Y2_N6
\bigclock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~9_sumout\ = SUM(( \bigclock|deci_hour_s\(2) ) + ( GND ) + ( \bigclock|Add0~6\ ))
-- \bigclock|Add0~10\ = CARRY(( \bigclock|deci_hour_s\(2) ) + ( GND ) + ( \bigclock|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(2),
	cin => \bigclock|Add0~6\,
	sumout => \bigclock|Add0~9_sumout\,
	cout => \bigclock|Add0~10\);

-- Location: FF_X42_Y2_N7
\bigclock|deci_hour_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(2));

-- Location: MLABCELL_X42_Y2_N9
\bigclock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~13_sumout\ = SUM(( \bigclock|deci_hour_s\(3) ) + ( GND ) + ( \bigclock|Add0~10\ ))
-- \bigclock|Add0~14\ = CARRY(( \bigclock|deci_hour_s\(3) ) + ( GND ) + ( \bigclock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(3),
	cin => \bigclock|Add0~10\,
	sumout => \bigclock|Add0~13_sumout\,
	cout => \bigclock|Add0~14\);

-- Location: FF_X42_Y2_N11
\bigclock|deci_hour_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(3));

-- Location: MLABCELL_X42_Y2_N12
\bigclock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~41_sumout\ = SUM(( \bigclock|deci_hour_s\(4) ) + ( GND ) + ( \bigclock|Add0~14\ ))
-- \bigclock|Add0~42\ = CARRY(( \bigclock|deci_hour_s\(4) ) + ( GND ) + ( \bigclock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(4),
	cin => \bigclock|Add0~14\,
	sumout => \bigclock|Add0~41_sumout\,
	cout => \bigclock|Add0~42\);

-- Location: FF_X41_Y2_N38
\bigclock|deci_hour_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add0~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	sload => VCC,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(4));

-- Location: FF_X42_Y1_N14
\bigclock|deci_hour_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(24));

-- Location: MLABCELL_X42_Y2_N15
\bigclock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~45_sumout\ = SUM(( \bigclock|deci_hour_s\(5) ) + ( GND ) + ( \bigclock|Add0~42\ ))
-- \bigclock|Add0~46\ = CARRY(( \bigclock|deci_hour_s\(5) ) + ( GND ) + ( \bigclock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(5),
	cin => \bigclock|Add0~42\,
	sumout => \bigclock|Add0~45_sumout\,
	cout => \bigclock|Add0~46\);

-- Location: FF_X42_Y2_N17
\bigclock|deci_hour_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(5));

-- Location: MLABCELL_X42_Y2_N18
\bigclock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~49_sumout\ = SUM(( \bigclock|deci_hour_s\(6) ) + ( GND ) + ( \bigclock|Add0~46\ ))
-- \bigclock|Add0~50\ = CARRY(( \bigclock|deci_hour_s\(6) ) + ( GND ) + ( \bigclock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(6),
	cin => \bigclock|Add0~46\,
	sumout => \bigclock|Add0~49_sumout\,
	cout => \bigclock|Add0~50\);

-- Location: FF_X42_Y2_N20
\bigclock|deci_hour_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(6));

-- Location: MLABCELL_X42_Y2_N21
\bigclock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~53_sumout\ = SUM(( \bigclock|deci_hour_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~50\ ))
-- \bigclock|Add0~54\ = CARRY(( \bigclock|deci_hour_s[7]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s[7]~DUPLICATE_q\,
	cin => \bigclock|Add0~50\,
	sumout => \bigclock|Add0~53_sumout\,
	cout => \bigclock|Add0~54\);

-- Location: FF_X42_Y2_N23
\bigclock|deci_hour_s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[7]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N24
\bigclock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~17_sumout\ = SUM(( \bigclock|deci_hour_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~54\ ))
-- \bigclock|Add0~18\ = CARRY(( \bigclock|deci_hour_s[8]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s[8]~DUPLICATE_q\,
	cin => \bigclock|Add0~54\,
	sumout => \bigclock|Add0~17_sumout\,
	cout => \bigclock|Add0~18\);

-- Location: FF_X42_Y2_N26
\bigclock|deci_hour_s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[8]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N27
\bigclock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~21_sumout\ = SUM(( \bigclock|deci_hour_s\(9) ) + ( GND ) + ( \bigclock|Add0~18\ ))
-- \bigclock|Add0~22\ = CARRY(( \bigclock|deci_hour_s\(9) ) + ( GND ) + ( \bigclock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(9),
	cin => \bigclock|Add0~18\,
	sumout => \bigclock|Add0~21_sumout\,
	cout => \bigclock|Add0~22\);

-- Location: FF_X42_Y2_N29
\bigclock|deci_hour_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(9));

-- Location: MLABCELL_X42_Y2_N30
\bigclock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~25_sumout\ = SUM(( \bigclock|deci_hour_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~22\ ))
-- \bigclock|Add0~26\ = CARRY(( \bigclock|deci_hour_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \bigclock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s[10]~DUPLICATE_q\,
	cin => \bigclock|Add0~22\,
	sumout => \bigclock|Add0~25_sumout\,
	cout => \bigclock|Add0~26\);

-- Location: FF_X42_Y2_N31
\bigclock|deci_hour_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[10]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N33
\bigclock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~29_sumout\ = SUM(( \bigclock|deci_hour_s\(11) ) + ( GND ) + ( \bigclock|Add0~26\ ))
-- \bigclock|Add0~30\ = CARRY(( \bigclock|deci_hour_s\(11) ) + ( GND ) + ( \bigclock|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(11),
	cin => \bigclock|Add0~26\,
	sumout => \bigclock|Add0~29_sumout\,
	cout => \bigclock|Add0~30\);

-- Location: FF_X42_Y2_N35
\bigclock|deci_hour_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(11));

-- Location: MLABCELL_X42_Y2_N36
\bigclock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~33_sumout\ = SUM(( \bigclock|deci_hour_s\(12) ) + ( GND ) + ( \bigclock|Add0~30\ ))
-- \bigclock|Add0~34\ = CARRY(( \bigclock|deci_hour_s\(12) ) + ( GND ) + ( \bigclock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(12),
	cin => \bigclock|Add0~30\,
	sumout => \bigclock|Add0~33_sumout\,
	cout => \bigclock|Add0~34\);

-- Location: FF_X41_Y2_N7
\bigclock|deci_hour_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bigclock|Add0~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	sload => VCC,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(12));

-- Location: MLABCELL_X42_Y2_N39
\bigclock|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~101_sumout\ = SUM(( \bigclock|deci_hour_s\(13) ) + ( GND ) + ( \bigclock|Add0~34\ ))
-- \bigclock|Add0~102\ = CARRY(( \bigclock|deci_hour_s\(13) ) + ( GND ) + ( \bigclock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(13),
	cin => \bigclock|Add0~34\,
	sumout => \bigclock|Add0~101_sumout\,
	cout => \bigclock|Add0~102\);

-- Location: FF_X42_Y2_N41
\bigclock|deci_hour_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~101_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(13));

-- Location: MLABCELL_X42_Y2_N42
\bigclock|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~105_sumout\ = SUM(( \bigclock|deci_hour_s\(14) ) + ( GND ) + ( \bigclock|Add0~102\ ))
-- \bigclock|Add0~106\ = CARRY(( \bigclock|deci_hour_s\(14) ) + ( GND ) + ( \bigclock|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_hour_s\(14),
	cin => \bigclock|Add0~102\,
	sumout => \bigclock|Add0~105_sumout\,
	cout => \bigclock|Add0~106\);

-- Location: FF_X42_Y2_N44
\bigclock|deci_hour_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~105_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(14));

-- Location: MLABCELL_X42_Y2_N45
\bigclock|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~77_sumout\ = SUM(( \bigclock|deci_hour_s\(15) ) + ( GND ) + ( \bigclock|Add0~106\ ))
-- \bigclock|Add0~78\ = CARRY(( \bigclock|deci_hour_s\(15) ) + ( GND ) + ( \bigclock|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(15),
	cin => \bigclock|Add0~106\,
	sumout => \bigclock|Add0~77_sumout\,
	cout => \bigclock|Add0~78\);

-- Location: FF_X42_Y2_N47
\bigclock|deci_hour_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~77_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(15));

-- Location: MLABCELL_X42_Y2_N48
\bigclock|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~109_sumout\ = SUM(( \bigclock|deci_hour_s\(16) ) + ( GND ) + ( \bigclock|Add0~78\ ))
-- \bigclock|Add0~110\ = CARRY(( \bigclock|deci_hour_s\(16) ) + ( GND ) + ( \bigclock|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(16),
	cin => \bigclock|Add0~78\,
	sumout => \bigclock|Add0~109_sumout\,
	cout => \bigclock|Add0~110\);

-- Location: FF_X42_Y2_N49
\bigclock|deci_hour_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~109_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(16));

-- Location: MLABCELL_X42_Y2_N51
\bigclock|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~113_sumout\ = SUM(( \bigclock|deci_hour_s\(17) ) + ( GND ) + ( \bigclock|Add0~110\ ))
-- \bigclock|Add0~114\ = CARRY(( \bigclock|deci_hour_s\(17) ) + ( GND ) + ( \bigclock|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(17),
	cin => \bigclock|Add0~110\,
	sumout => \bigclock|Add0~113_sumout\,
	cout => \bigclock|Add0~114\);

-- Location: FF_X42_Y2_N53
\bigclock|deci_hour_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~113_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(17));

-- Location: MLABCELL_X42_Y2_N54
\bigclock|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~97_sumout\ = SUM(( \bigclock|deci_hour_s\(18) ) + ( GND ) + ( \bigclock|Add0~114\ ))
-- \bigclock|Add0~98\ = CARRY(( \bigclock|deci_hour_s\(18) ) + ( GND ) + ( \bigclock|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(18),
	cin => \bigclock|Add0~114\,
	sumout => \bigclock|Add0~97_sumout\,
	cout => \bigclock|Add0~98\);

-- Location: FF_X42_Y2_N56
\bigclock|deci_hour_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~97_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(18));

-- Location: MLABCELL_X42_Y2_N57
\bigclock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~61_sumout\ = SUM(( \bigclock|deci_hour_s\(19) ) + ( GND ) + ( \bigclock|Add0~98\ ))
-- \bigclock|Add0~62\ = CARRY(( \bigclock|deci_hour_s\(19) ) + ( GND ) + ( \bigclock|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(19),
	cin => \bigclock|Add0~98\,
	sumout => \bigclock|Add0~61_sumout\,
	cout => \bigclock|Add0~62\);

-- Location: FF_X42_Y2_N59
\bigclock|deci_hour_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(19));

-- Location: MLABCELL_X42_Y1_N0
\bigclock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~57_sumout\ = SUM(( \bigclock|deci_hour_s\(20) ) + ( GND ) + ( \bigclock|Add0~62\ ))
-- \bigclock|Add0~58\ = CARRY(( \bigclock|deci_hour_s\(20) ) + ( GND ) + ( \bigclock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(20),
	cin => \bigclock|Add0~62\,
	sumout => \bigclock|Add0~57_sumout\,
	cout => \bigclock|Add0~58\);

-- Location: FF_X42_Y1_N1
\bigclock|deci_hour_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(20));

-- Location: MLABCELL_X42_Y1_N3
\bigclock|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~73_sumout\ = SUM(( \bigclock|deci_hour_s\(21) ) + ( GND ) + ( \bigclock|Add0~58\ ))
-- \bigclock|Add0~74\ = CARRY(( \bigclock|deci_hour_s\(21) ) + ( GND ) + ( \bigclock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(21),
	cin => \bigclock|Add0~58\,
	sumout => \bigclock|Add0~73_sumout\,
	cout => \bigclock|Add0~74\);

-- Location: FF_X42_Y1_N5
\bigclock|deci_hour_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~73_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(21));

-- Location: MLABCELL_X42_Y1_N6
\bigclock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~69_sumout\ = SUM(( \bigclock|deci_hour_s\(22) ) + ( GND ) + ( \bigclock|Add0~74\ ))
-- \bigclock|Add0~70\ = CARRY(( \bigclock|deci_hour_s\(22) ) + ( GND ) + ( \bigclock|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(22),
	cin => \bigclock|Add0~74\,
	sumout => \bigclock|Add0~69_sumout\,
	cout => \bigclock|Add0~70\);

-- Location: FF_X42_Y1_N7
\bigclock|deci_hour_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~69_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(22));

-- Location: MLABCELL_X42_Y1_N9
\bigclock|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~89_sumout\ = SUM(( \bigclock|deci_hour_s\(23) ) + ( GND ) + ( \bigclock|Add0~70\ ))
-- \bigclock|Add0~90\ = CARRY(( \bigclock|deci_hour_s\(23) ) + ( GND ) + ( \bigclock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(23),
	cin => \bigclock|Add0~70\,
	sumout => \bigclock|Add0~89_sumout\,
	cout => \bigclock|Add0~90\);

-- Location: FF_X42_Y1_N11
\bigclock|deci_hour_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(23));

-- Location: MLABCELL_X42_Y1_N12
\bigclock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~37_sumout\ = SUM(( \bigclock|deci_hour_s\(24) ) + ( GND ) + ( \bigclock|Add0~90\ ))
-- \bigclock|Add0~38\ = CARRY(( \bigclock|deci_hour_s\(24) ) + ( GND ) + ( \bigclock|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_hour_s\(24),
	cin => \bigclock|Add0~90\,
	sumout => \bigclock|Add0~37_sumout\,
	cout => \bigclock|Add0~38\);

-- Location: FF_X42_Y1_N13
\bigclock|deci_hour_s[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[24]~DUPLICATE_q\);

-- Location: FF_X42_Y2_N22
\bigclock|deci_hour_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(7));

-- Location: LABCELL_X41_Y2_N33
\bigclock|counter24h~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~17_combout\ = ( !\bigclock|deci_hour_s\(5) & ( !\bigclock|deci_hour_s\(6) & ( (!\bigclock|deci_hour_s\(4) & (!\bigclock|deci_hour_s[24]~DUPLICATE_q\ & !\bigclock|deci_hour_s\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(4),
	datac => \bigclock|ALT_INV_deci_hour_s[24]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_hour_s\(7),
	datae => \bigclock|ALT_INV_deci_hour_s\(5),
	dataf => \bigclock|ALT_INV_deci_hour_s\(6),
	combout => \bigclock|counter24h~17_combout\);

-- Location: FF_X42_Y2_N25
\bigclock|deci_hour_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(8));

-- Location: FF_X42_Y2_N32
\bigclock|deci_hour_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(10));

-- Location: LABCELL_X41_Y2_N9
\bigclock|counter24h~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~16_combout\ = ( !\bigclock|deci_hour_s\(10) & ( !\bigclock|hour_s\(3) & ( (!\bigclock|deci_hour_s\(11) & (!\bigclock|deci_hour_s\(9) & !\bigclock|deci_hour_s\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(11),
	datab => \bigclock|ALT_INV_deci_hour_s\(9),
	datad => \bigclock|ALT_INV_deci_hour_s\(12),
	datae => \bigclock|ALT_INV_deci_hour_s\(10),
	dataf => \bigclock|ALT_INV_hour_s\(3),
	combout => \bigclock|counter24h~16_combout\);

-- Location: LABCELL_X41_Y2_N51
\bigclock|display0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux4~0_combout\ = ( !\bigclock|deci_hour_s\(0) & ( !\bigclock|deci_hour_s\(2) & ( \bigclock|deci_hour_s\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bigclock|ALT_INV_deci_hour_s\(1),
	datae => \bigclock|ALT_INV_deci_hour_s\(0),
	dataf => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y1_N15
\bigclock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~65_sumout\ = SUM(( \bigclock|deci_hour_s\(25) ) + ( GND ) + ( \bigclock|Add0~38\ ))
-- \bigclock|Add0~66\ = CARRY(( \bigclock|deci_hour_s\(25) ) + ( GND ) + ( \bigclock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(25),
	cin => \bigclock|Add0~38\,
	sumout => \bigclock|Add0~65_sumout\,
	cout => \bigclock|Add0~66\);

-- Location: FF_X42_Y1_N17
\bigclock|deci_hour_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(25));

-- Location: MLABCELL_X42_Y1_N18
\bigclock|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~85_sumout\ = SUM(( \bigclock|deci_hour_s\(26) ) + ( GND ) + ( \bigclock|Add0~66\ ))
-- \bigclock|Add0~86\ = CARRY(( \bigclock|deci_hour_s\(26) ) + ( GND ) + ( \bigclock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(26),
	cin => \bigclock|Add0~66\,
	sumout => \bigclock|Add0~85_sumout\,
	cout => \bigclock|Add0~86\);

-- Location: FF_X42_Y1_N20
\bigclock|deci_hour_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~85_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(26));

-- Location: MLABCELL_X42_Y1_N21
\bigclock|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~81_sumout\ = SUM(( \bigclock|deci_hour_s\(27) ) + ( GND ) + ( \bigclock|Add0~86\ ))
-- \bigclock|Add0~82\ = CARRY(( \bigclock|deci_hour_s\(27) ) + ( GND ) + ( \bigclock|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(27),
	cin => \bigclock|Add0~86\,
	sumout => \bigclock|Add0~81_sumout\,
	cout => \bigclock|Add0~82\);

-- Location: FF_X42_Y1_N22
\bigclock|deci_hour_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~81_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(27));

-- Location: MLABCELL_X42_Y1_N24
\bigclock|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~121_sumout\ = SUM(( \bigclock|deci_hour_s\(28) ) + ( GND ) + ( \bigclock|Add0~82\ ))
-- \bigclock|Add0~122\ = CARRY(( \bigclock|deci_hour_s\(28) ) + ( GND ) + ( \bigclock|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(28),
	cin => \bigclock|Add0~82\,
	sumout => \bigclock|Add0~121_sumout\,
	cout => \bigclock|Add0~122\);

-- Location: FF_X42_Y1_N26
\bigclock|deci_hour_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~121_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(28));

-- Location: MLABCELL_X42_Y1_N27
\bigclock|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~93_sumout\ = SUM(( \bigclock|deci_hour_s\(29) ) + ( GND ) + ( \bigclock|Add0~122\ ))
-- \bigclock|Add0~94\ = CARRY(( \bigclock|deci_hour_s\(29) ) + ( GND ) + ( \bigclock|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(29),
	cin => \bigclock|Add0~122\,
	sumout => \bigclock|Add0~93_sumout\,
	cout => \bigclock|Add0~94\);

-- Location: FF_X42_Y1_N28
\bigclock|deci_hour_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~93_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(29));

-- Location: MLABCELL_X42_Y1_N30
\bigclock|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|Add0~117_sumout\ = SUM(( \bigclock|deci_hour_s\(30) ) + ( GND ) + ( \bigclock|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(30),
	cin => \bigclock|Add0~94\,
	sumout => \bigclock|Add0~117_sumout\);

-- Location: FF_X42_Y1_N31
\bigclock|deci_hour_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~117_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(30));

-- Location: LABCELL_X41_Y2_N54
\bigclock|counter24h~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~18_combout\ = ( !\bigclock|deci_hour_s\(30) & ( (!\bigclock|deci_hour_s\(28) & (!\bigclock|deci_hour_s\(17) & !\bigclock|deci_hour_s\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_hour_s\(28),
	datac => \bigclock|ALT_INV_deci_hour_s\(17),
	datad => \bigclock|ALT_INV_deci_hour_s\(16),
	dataf => \bigclock|ALT_INV_deci_hour_s\(30),
	combout => \bigclock|counter24h~18_combout\);

-- Location: FF_X42_Y1_N16
\bigclock|deci_hour_s[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~65_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[25]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y2_N0
\bigclock|counter24h~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~30_combout\ = ( !\bigclock|deci_hour_s[25]~DUPLICATE_q\ & ( (!\bigclock|deci_hour_s\(3) & (!\bigclock|deci_hour_s\(22) & (!\bigclock|deci_hour_s\(26) & !\bigclock|deci_hour_s\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(3),
	datab => \bigclock|ALT_INV_deci_hour_s\(22),
	datac => \bigclock|ALT_INV_deci_hour_s\(26),
	datad => \bigclock|ALT_INV_deci_hour_s\(27),
	dataf => \bigclock|ALT_INV_deci_hour_s[25]~DUPLICATE_q\,
	combout => \bigclock|counter24h~30_combout\);

-- Location: FF_X42_Y1_N10
\bigclock|deci_hour_s[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~89_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s[23]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y2_N18
\bigclock|counter24h~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~29_combout\ = ( !\bigclock|deci_hour_s\(29) & ( !\bigclock|deci_hour_s\(21) & ( (!\bigclock|deci_hour_s\(13) & (!\bigclock|deci_hour_s\(14) & (!\bigclock|deci_hour_s[23]~DUPLICATE_q\ & !\bigclock|deci_hour_s\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(13),
	datab => \bigclock|ALT_INV_deci_hour_s\(14),
	datac => \bigclock|ALT_INV_deci_hour_s[23]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_hour_s\(18),
	datae => \bigclock|ALT_INV_deci_hour_s\(29),
	dataf => \bigclock|ALT_INV_deci_hour_s\(21),
	combout => \bigclock|counter24h~29_combout\);

-- Location: LABCELL_X41_Y2_N12
\bigclock|counter24h~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~19_combout\ = ( \bigclock|counter24h~30_combout\ & ( \bigclock|counter24h~29_combout\ & ( (!\bigclock|deci_hour_s\(15) & (!\bigclock|deci_hour_s\(19) & (\bigclock|counter24h~18_combout\ & !\bigclock|deci_hour_s\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(15),
	datab => \bigclock|ALT_INV_deci_hour_s\(19),
	datac => \bigclock|ALT_INV_counter24h~18_combout\,
	datad => \bigclock|ALT_INV_deci_hour_s\(20),
	datae => \bigclock|ALT_INV_counter24h~30_combout\,
	dataf => \bigclock|ALT_INV_counter24h~29_combout\,
	combout => \bigclock|counter24h~19_combout\);

-- Location: LABCELL_X41_Y2_N45
\bigclock|counter24h~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~20_combout\ = ( \bigclock|hour_s[1]~DUPLICATE_q\ & ( \bigclock|counter24h~19_combout\ & ( (\bigclock|counter24h~17_combout\ & (!\bigclock|deci_hour_s\(8) & (\bigclock|counter24h~16_combout\ & \bigclock|display0|Mux4~0_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_counter24h~17_combout\,
	datab => \bigclock|ALT_INV_deci_hour_s\(8),
	datac => \bigclock|ALT_INV_counter24h~16_combout\,
	datad => \bigclock|display0|ALT_INV_Mux4~0_combout\,
	datae => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_counter24h~19_combout\,
	combout => \bigclock|counter24h~20_combout\);

-- Location: LABCELL_X41_Y2_N27
\bigclock|counter24h~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|counter24h~21_combout\ = ( \bigclock|counter24h~10_combout\ & ( (\bigclock|counter24h~20_combout\ & \bigclock|counter24h~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_counter24h~20_combout\,
	datad => \bigclock|ALT_INV_counter24h~15_combout\,
	dataf => \bigclock|ALT_INV_counter24h~10_combout\,
	combout => \bigclock|counter24h~21_combout\);

-- Location: FF_X42_Y2_N2
\bigclock|deci_hour_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add0~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~21_combout\,
	ena => \bigclock|deci_hour_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|deci_hour_s\(0));

-- Location: LABCELL_X41_Y2_N57
\bigclock|display0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux6~0_combout\ = ( \bigclock|deci_hour_s\(2) & ( (!\bigclock|deci_hour_s\(0) & (!\bigclock|deci_hour_s\(1) & !\bigclock|deci_hour_s\(3))) ) ) # ( !\bigclock|deci_hour_s\(2) & ( (\bigclock|deci_hour_s\(0) & (!\bigclock|deci_hour_s\(1) & 
-- !\bigclock|deci_hour_s\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(0),
	datac => \bigclock|ALT_INV_deci_hour_s\(1),
	datad => \bigclock|ALT_INV_deci_hour_s\(3),
	dataf => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux6~0_combout\);

-- Location: LABCELL_X39_Y2_N36
\bigclock|display0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux5~0_combout\ = ( \bigclock|deci_hour_s\(2) & ( !\bigclock|deci_hour_s\(0) $ (!\bigclock|deci_hour_s\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(0),
	datac => \bigclock|ALT_INV_deci_hour_s\(1),
	datae => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux5~0_combout\);

-- Location: LABCELL_X41_Y2_N24
\bigclock|display0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux3~0_combout\ = ( \bigclock|deci_hour_s\(2) & ( (!\bigclock|deci_hour_s\(3) & (!\bigclock|deci_hour_s\(1) $ (\bigclock|deci_hour_s\(0)))) ) ) # ( !\bigclock|deci_hour_s\(2) & ( (!\bigclock|deci_hour_s\(1) & (\bigclock|deci_hour_s\(0) 
-- & !\bigclock|deci_hour_s\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(1),
	datac => \bigclock|ALT_INV_deci_hour_s\(0),
	datad => \bigclock|ALT_INV_deci_hour_s\(3),
	dataf => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux3~0_combout\);

-- Location: LABCELL_X41_Y2_N3
\bigclock|display0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux2~0_combout\ = ( \bigclock|deci_hour_s\(2) & ( (!\bigclock|deci_hour_s\(1)) # (\bigclock|deci_hour_s\(0)) ) ) # ( !\bigclock|deci_hour_s\(2) & ( \bigclock|deci_hour_s\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_hour_s\(1),
	datad => \bigclock|ALT_INV_deci_hour_s\(0),
	dataf => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux2~0_combout\);

-- Location: LABCELL_X41_Y2_N36
\bigclock|display0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux1~0_combout\ = ( \bigclock|deci_hour_s\(2) & ( (\bigclock|deci_hour_s\(0) & (\bigclock|deci_hour_s\(1) & !\bigclock|deci_hour_s\(3))) ) ) # ( !\bigclock|deci_hour_s\(2) & ( (!\bigclock|deci_hour_s\(3) & ((\bigclock|deci_hour_s\(1)) # 
-- (\bigclock|deci_hour_s\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(0),
	datab => \bigclock|ALT_INV_deci_hour_s\(1),
	datac => \bigclock|ALT_INV_deci_hour_s\(3),
	dataf => \bigclock|ALT_INV_deci_hour_s\(2),
	combout => \bigclock|display0|Mux1~0_combout\);

-- Location: LABCELL_X41_Y2_N39
\bigclock|display0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display0|Mux0~0_combout\ = ((!\bigclock|deci_hour_s\(1) & ((\bigclock|deci_hour_s\(2)))) # (\bigclock|deci_hour_s\(1) & ((!\bigclock|deci_hour_s\(0)) # (!\bigclock|deci_hour_s\(2))))) # (\bigclock|deci_hour_s\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011111111001111101111111100111110111111110011111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_hour_s\(0),
	datab => \bigclock|ALT_INV_deci_hour_s\(1),
	datac => \bigclock|ALT_INV_deci_hour_s\(2),
	datad => \bigclock|ALT_INV_deci_hour_s\(3),
	combout => \bigclock|display0|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y3_N39
\bigclock|display1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux6~0_combout\ = ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(1) & (!\bigclock|hour_s\(3) & !\bigclock|hour_s\(2))) ) ) # ( !\bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(1) & (!\bigclock|hour_s\(3) & 
-- \bigclock|hour_s\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datad => \bigclock|ALT_INV_hour_s\(2),
	dataf => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux6~0_combout\);

-- Location: LABCELL_X43_Y2_N36
\bigclock|display1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux5~0_combout\ = ( !\bigclock|hour_s\(1) & ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( \bigclock|hour_s\(2) ) ) ) # ( \bigclock|hour_s\(1) & ( !\bigclock|hour_s[0]~DUPLICATE_q\ & ( \bigclock|hour_s\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(2),
	datae => \bigclock|ALT_INV_hour_s\(1),
	dataf => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux5~0_combout\);

-- Location: LABCELL_X39_Y2_N45
\bigclock|display1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux4~0_combout\ = ( \bigclock|hour_s[1]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(2) & !\bigclock|hour_s[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_hour_s\(2),
	datad => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y3_N36
\bigclock|display1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux3~0_combout\ = ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(3) & (!\bigclock|hour_s\(1) $ (\bigclock|hour_s\(2)))) ) ) # ( !\bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(1) & (!\bigclock|hour_s\(3) & 
-- \bigclock|hour_s\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s\(1),
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_hour_s\(2),
	dataf => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux3~0_combout\);

-- Location: LABCELL_X41_Y3_N24
\bigclock|display1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux2~0_combout\ = ( \bigclock|hour_s[1]~DUPLICATE_q\ & ( \bigclock|hour_s[0]~DUPLICATE_q\ ) ) # ( !\bigclock|hour_s[1]~DUPLICATE_q\ & ( (\bigclock|hour_s\(2)) # (\bigclock|hour_s[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	datab => \bigclock|ALT_INV_hour_s\(2),
	dataf => \bigclock|ALT_INV_hour_s[1]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y3_N42
\bigclock|display1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux1~0_combout\ = ( \bigclock|hour_s\(2) & ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(3) & \bigclock|hour_s\(1)) ) ) ) # ( !\bigclock|hour_s\(2) & ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( !\bigclock|hour_s\(3) ) ) ) # ( 
-- !\bigclock|hour_s\(2) & ( !\bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(3) & \bigclock|hour_s\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011001100110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_hour_s\(1),
	datae => \bigclock|ALT_INV_hour_s\(2),
	dataf => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y3_N48
\bigclock|display1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display1|Mux0~0_combout\ = ( \bigclock|hour_s\(2) & ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( (!\bigclock|hour_s\(1)) # (\bigclock|hour_s\(3)) ) ) ) # ( !\bigclock|hour_s\(2) & ( \bigclock|hour_s[0]~DUPLICATE_q\ & ( (\bigclock|hour_s\(1)) # 
-- (\bigclock|hour_s\(3)) ) ) ) # ( \bigclock|hour_s\(2) & ( !\bigclock|hour_s[0]~DUPLICATE_q\ ) ) # ( !\bigclock|hour_s\(2) & ( !\bigclock|hour_s[0]~DUPLICATE_q\ & ( (\bigclock|hour_s\(1)) # (\bigclock|hour_s\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_hour_s\(3),
	datac => \bigclock|ALT_INV_hour_s\(1),
	datae => \bigclock|ALT_INV_hour_s\(2),
	dataf => \bigclock|ALT_INV_hour_s[0]~DUPLICATE_q\,
	combout => \bigclock|display1|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y1_N39
\bigclock|display2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux6~0_combout\ = ( !\bigclock|deci_minute_s\(1) & ( \bigclock|deci_minute_s\(2) & ( (!\bigclock|deci_minute_s[3]~DUPLICATE_q\ & !\bigclock|deci_minute_s[0]~DUPLICATE_q\) ) ) ) # ( !\bigclock|deci_minute_s\(1) & ( 
-- !\bigclock|deci_minute_s\(2) & ( (!\bigclock|deci_minute_s[3]~DUPLICATE_q\ & \bigclock|deci_minute_s[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_deci_minute_s\(1),
	dataf => \bigclock|ALT_INV_deci_minute_s\(2),
	combout => \bigclock|display2|Mux6~0_combout\);

-- Location: LABCELL_X41_Y3_N9
\bigclock|display2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux5~0_combout\ = ( \bigclock|deci_minute_s\(1) & ( (!\bigclock|deci_minute_s[0]~DUPLICATE_q\ & \bigclock|deci_minute_s\(2)) ) ) # ( !\bigclock|deci_minute_s\(1) & ( (\bigclock|deci_minute_s[0]~DUPLICATE_q\ & 
-- \bigclock|deci_minute_s\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_minute_s\(2),
	dataf => \bigclock|ALT_INV_deci_minute_s\(1),
	combout => \bigclock|display2|Mux5~0_combout\);

-- Location: LABCELL_X41_Y3_N15
\bigclock|display2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux4~0_combout\ = ( \bigclock|deci_minute_s\(1) & ( (!\bigclock|deci_minute_s[0]~DUPLICATE_q\ & !\bigclock|deci_minute_s\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_minute_s\(2),
	dataf => \bigclock|ALT_INV_deci_minute_s\(1),
	combout => \bigclock|display2|Mux4~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\bigclock|display2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux3~0_combout\ = ( !\bigclock|deci_minute_s[3]~DUPLICATE_q\ & ( (!\bigclock|deci_minute_s[0]~DUPLICATE_q\ & (\bigclock|deci_minute_s\(2) & !\bigclock|deci_minute_s\(1))) # (\bigclock|deci_minute_s[0]~DUPLICATE_q\ & 
-- (!\bigclock|deci_minute_s\(2) $ (\bigclock|deci_minute_s\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_deci_minute_s\(2),
	datad => \bigclock|ALT_INV_deci_minute_s\(1),
	dataf => \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\,
	combout => \bigclock|display2|Mux3~0_combout\);

-- Location: LABCELL_X41_Y3_N45
\bigclock|display2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux2~0_combout\ = ( \bigclock|deci_minute_s\(1) & ( \bigclock|deci_minute_s[0]~DUPLICATE_q\ ) ) # ( !\bigclock|deci_minute_s\(1) & ( (\bigclock|deci_minute_s[0]~DUPLICATE_q\) # (\bigclock|deci_minute_s\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(2),
	datac => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_deci_minute_s\(1),
	combout => \bigclock|display2|Mux2~0_combout\);

-- Location: LABCELL_X41_Y3_N39
\bigclock|display2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux1~0_combout\ = ( \bigclock|deci_minute_s\(1) & ( (!\bigclock|deci_minute_s[3]~DUPLICATE_q\ & ((!\bigclock|deci_minute_s\(2)) # (\bigclock|deci_minute_s[0]~DUPLICATE_q\))) ) ) # ( !\bigclock|deci_minute_s\(1) & ( 
-- (!\bigclock|deci_minute_s\(2) & (!\bigclock|deci_minute_s[3]~DUPLICATE_q\ & \bigclock|deci_minute_s[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(2),
	datac => \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_deci_minute_s\(1),
	combout => \bigclock|display2|Mux1~0_combout\);

-- Location: LABCELL_X41_Y3_N54
\bigclock|display2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display2|Mux0~0_combout\ = ( \bigclock|deci_minute_s[0]~DUPLICATE_q\ & ( (!\bigclock|deci_minute_s\(2) $ (!\bigclock|deci_minute_s\(1))) # (\bigclock|deci_minute_s[3]~DUPLICATE_q\) ) ) # ( !\bigclock|deci_minute_s[0]~DUPLICATE_q\ & ( 
-- ((\bigclock|deci_minute_s\(1)) # (\bigclock|deci_minute_s[3]~DUPLICATE_q\)) # (\bigclock|deci_minute_s\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_minute_s\(2),
	datab => \bigclock|ALT_INV_deci_minute_s[3]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_deci_minute_s\(1),
	dataf => \bigclock|ALT_INV_deci_minute_s[0]~DUPLICATE_q\,
	combout => \bigclock|display2|Mux0~0_combout\);

-- Location: FF_X40_Y2_N10
\bigclock|minute_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bigclock|Add3~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \bigclock|counter24h~22_combout\,
	ena => \bigclock|minute_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bigclock|minute_s\(3));

-- Location: LABCELL_X39_Y2_N33
\bigclock|display3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux6~0_combout\ = ( !\bigclock|minute_s[1]~DUPLICATE_q\ & ( (!\bigclock|minute_s\(3) & (!\bigclock|minute_s\(0) $ (!\bigclock|minute_s\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000000000000000000001010000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(0),
	datac => \bigclock|ALT_INV_minute_s\(3),
	datad => \bigclock|ALT_INV_minute_s\(2),
	datae => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	combout => \bigclock|display3|Mux6~0_combout\);

-- Location: LABCELL_X39_Y1_N3
\bigclock|display3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux5~0_combout\ = ( \bigclock|minute_s\(0) & ( (\bigclock|minute_s\(2) & !\bigclock|minute_s[1]~DUPLICATE_q\) ) ) # ( !\bigclock|minute_s\(0) & ( (\bigclock|minute_s\(2) & \bigclock|minute_s[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s\(2),
	datac => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_minute_s\(0),
	combout => \bigclock|display3|Mux5~0_combout\);

-- Location: LABCELL_X39_Y1_N9
\bigclock|display3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux4~0_combout\ = ( !\bigclock|minute_s\(0) & ( (!\bigclock|minute_s\(2) & \bigclock|minute_s[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s\(2),
	datac => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datae => \bigclock|ALT_INV_minute_s\(0),
	combout => \bigclock|display3|Mux4~0_combout\);

-- Location: LABCELL_X39_Y3_N24
\bigclock|display3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux3~0_combout\ = ( !\bigclock|minute_s\(3) & ( (!\bigclock|minute_s\(0) & (!\bigclock|minute_s[1]~DUPLICATE_q\ & \bigclock|minute_s\(2))) # (\bigclock|minute_s\(0) & (!\bigclock|minute_s[1]~DUPLICATE_q\ $ (\bigclock|minute_s\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001000000000000000001001001010010010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s\(0),
	datab => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_minute_s\(2),
	datae => \bigclock|ALT_INV_minute_s\(3),
	combout => \bigclock|display3|Mux3~0_combout\);

-- Location: LABCELL_X39_Y1_N36
\bigclock|display3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux2~0_combout\ = ( \bigclock|minute_s\(2) & ( (!\bigclock|minute_s[1]~DUPLICATE_q\) # (\bigclock|minute_s\(0)) ) ) # ( !\bigclock|minute_s\(2) & ( \bigclock|minute_s\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011001111111100000000111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_minute_s\(0),
	datae => \bigclock|ALT_INV_minute_s\(2),
	combout => \bigclock|display3|Mux2~0_combout\);

-- Location: LABCELL_X39_Y1_N30
\bigclock|display3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux1~0_combout\ = ( \bigclock|minute_s\(2) & ( !\bigclock|minute_s\(3) & ( (\bigclock|minute_s[1]~DUPLICATE_q\ & \bigclock|minute_s\(0)) ) ) ) # ( !\bigclock|minute_s\(2) & ( !\bigclock|minute_s\(3) & ( (\bigclock|minute_s\(0)) # 
-- (\bigclock|minute_s[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_minute_s\(0),
	datae => \bigclock|ALT_INV_minute_s\(2),
	dataf => \bigclock|ALT_INV_minute_s\(3),
	combout => \bigclock|display3|Mux1~0_combout\);

-- Location: LABCELL_X40_Y1_N51
\bigclock|display3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display3|Mux0~0_combout\ = ( \bigclock|minute_s\(2) & ( ((!\bigclock|minute_s[1]~DUPLICATE_q\) # (!\bigclock|minute_s[0]~DUPLICATE_q\)) # (\bigclock|minute_s[3]~DUPLICATE_q\) ) ) # ( !\bigclock|minute_s\(2) & ( 
-- (\bigclock|minute_s[1]~DUPLICATE_q\) # (\bigclock|minute_s[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_minute_s[3]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_minute_s[1]~DUPLICATE_q\,
	datad => \bigclock|ALT_INV_minute_s[0]~DUPLICATE_q\,
	dataf => \bigclock|ALT_INV_minute_s\(2),
	combout => \bigclock|display3|Mux0~0_combout\);

-- Location: LABCELL_X40_Y4_N36
\bigclock|display4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux6~0_combout\ = ( \bigclock|deci_second_s\(0) & ( !\bigclock|deci_second_s[1]~DUPLICATE_q\ & ( (!\bigclock|deci_second_s\(3) & !\bigclock|deci_second_s\(2)) ) ) ) # ( !\bigclock|deci_second_s\(0) & ( 
-- !\bigclock|deci_second_s[1]~DUPLICATE_q\ & ( (!\bigclock|deci_second_s\(3) & \bigclock|deci_second_s\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s\(3),
	datac => \bigclock|ALT_INV_deci_second_s\(2),
	datae => \bigclock|ALT_INV_deci_second_s\(0),
	dataf => \bigclock|ALT_INV_deci_second_s[1]~DUPLICATE_q\,
	combout => \bigclock|display4|Mux6~0_combout\);

-- Location: LABCELL_X39_Y3_N51
\bigclock|display4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux5~0_combout\ = (\bigclock|deci_second_s\(2) & (!\bigclock|deci_second_s\(1) $ (!\bigclock|deci_second_s\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(2),
	datab => \bigclock|ALT_INV_deci_second_s\(1),
	datac => \bigclock|ALT_INV_deci_second_s\(0),
	combout => \bigclock|display4|Mux5~0_combout\);

-- Location: LABCELL_X39_Y3_N12
\bigclock|display4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux4~0_combout\ = ( \bigclock|deci_second_s\(1) & ( (!\bigclock|deci_second_s\(2) & !\bigclock|deci_second_s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(2),
	datac => \bigclock|ALT_INV_deci_second_s\(0),
	dataf => \bigclock|ALT_INV_deci_second_s\(1),
	combout => \bigclock|display4|Mux4~0_combout\);

-- Location: LABCELL_X39_Y3_N0
\bigclock|display4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux3~0_combout\ = ( \bigclock|deci_second_s\(2) & ( (!\bigclock|deci_second_s\(3) & (!\bigclock|deci_second_s\(1) $ (\bigclock|deci_second_s\(0)))) ) ) # ( !\bigclock|deci_second_s\(2) & ( (!\bigclock|deci_second_s\(3) & 
-- (!\bigclock|deci_second_s\(1) & \bigclock|deci_second_s\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(3),
	datab => \bigclock|ALT_INV_deci_second_s\(1),
	datac => \bigclock|ALT_INV_deci_second_s\(0),
	dataf => \bigclock|ALT_INV_deci_second_s\(2),
	combout => \bigclock|display4|Mux3~0_combout\);

-- Location: LABCELL_X39_Y3_N48
\bigclock|display4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux2~0_combout\ = ( \bigclock|deci_second_s\(0) ) # ( !\bigclock|deci_second_s\(0) & ( (\bigclock|deci_second_s\(2) & !\bigclock|deci_second_s\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(2),
	datab => \bigclock|ALT_INV_deci_second_s\(1),
	dataf => \bigclock|ALT_INV_deci_second_s\(0),
	combout => \bigclock|display4|Mux2~0_combout\);

-- Location: LABCELL_X39_Y3_N3
\bigclock|display4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux1~0_combout\ = (!\bigclock|deci_second_s\(3) & ((!\bigclock|deci_second_s\(1) & (\bigclock|deci_second_s\(0) & !\bigclock|deci_second_s\(2))) # (\bigclock|deci_second_s\(1) & ((!\bigclock|deci_second_s\(2)) # 
-- (\bigclock|deci_second_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010001010100000001000101010000000100010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_deci_second_s\(3),
	datab => \bigclock|ALT_INV_deci_second_s\(1),
	datac => \bigclock|ALT_INV_deci_second_s\(0),
	datad => \bigclock|ALT_INV_deci_second_s\(2),
	combout => \bigclock|display4|Mux1~0_combout\);

-- Location: LABCELL_X40_Y4_N54
\bigclock|display4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display4|Mux0~0_combout\ = ( \bigclock|deci_second_s\(3) ) # ( !\bigclock|deci_second_s\(3) & ( (!\bigclock|deci_second_s[1]~DUPLICATE_q\ & (\bigclock|deci_second_s\(2))) # (\bigclock|deci_second_s[1]~DUPLICATE_q\ & 
-- ((!\bigclock|deci_second_s\(2)) # (!\bigclock|deci_second_s\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_deci_second_s[1]~DUPLICATE_q\,
	datac => \bigclock|ALT_INV_deci_second_s\(2),
	datad => \bigclock|ALT_INV_deci_second_s\(0),
	dataf => \bigclock|ALT_INV_deci_second_s\(3),
	combout => \bigclock|display4|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y3_N42
\bigclock|display5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux6~0_combout\ = ( !\bigclock|second_s\(3) & ( \bigclock|second_s\(2) & ( (!\bigclock|second_s\(0) & !\bigclock|second_s\(1)) ) ) ) # ( !\bigclock|second_s\(3) & ( !\bigclock|second_s\(2) & ( (\bigclock|second_s\(0) & 
-- !\bigclock|second_s\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(0),
	datac => \bigclock|ALT_INV_second_s\(1),
	datae => \bigclock|ALT_INV_second_s\(3),
	dataf => \bigclock|ALT_INV_second_s\(2),
	combout => \bigclock|display5|Mux6~0_combout\);

-- Location: LABCELL_X40_Y4_N51
\bigclock|display5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux5~0_combout\ = ( \bigclock|second_s\(2) & ( !\bigclock|second_s\(1) $ (!\bigclock|second_s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(1),
	datac => \bigclock|ALT_INV_second_s\(0),
	dataf => \bigclock|ALT_INV_second_s\(2),
	combout => \bigclock|display5|Mux5~0_combout\);

-- Location: LABCELL_X39_Y4_N42
\bigclock|display5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux4~0_combout\ = ( !\bigclock|second_s\(0) & ( !\bigclock|second_s\(2) & ( \bigclock|second_s\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bigclock|ALT_INV_second_s\(1),
	datae => \bigclock|ALT_INV_second_s\(0),
	dataf => \bigclock|ALT_INV_second_s\(2),
	combout => \bigclock|display5|Mux4~0_combout\);

-- Location: LABCELL_X39_Y4_N54
\bigclock|display5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux3~0_combout\ = ( !\bigclock|second_s\(3) & ( (!\bigclock|second_s\(0) & (\bigclock|second_s\(2) & !\bigclock|second_s\(1))) # (\bigclock|second_s\(0) & (!\bigclock|second_s\(2) $ (\bigclock|second_s\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(0),
	datab => \bigclock|ALT_INV_second_s\(2),
	datac => \bigclock|ALT_INV_second_s\(1),
	dataf => \bigclock|ALT_INV_second_s\(3),
	combout => \bigclock|display5|Mux3~0_combout\);

-- Location: LABCELL_X40_Y4_N57
\bigclock|display5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux2~0_combout\ = ( \bigclock|second_s\(2) & ( (!\bigclock|second_s\(1)) # (\bigclock|second_s\(0)) ) ) # ( !\bigclock|second_s\(2) & ( \bigclock|second_s\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(1),
	datac => \bigclock|ALT_INV_second_s\(0),
	dataf => \bigclock|ALT_INV_second_s\(2),
	combout => \bigclock|display5|Mux2~0_combout\);

-- Location: MLABCELL_X37_Y3_N36
\bigclock|display5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux1~0_combout\ = ( !\bigclock|second_s\(3) & ( \bigclock|second_s\(2) & ( (\bigclock|second_s\(0) & \bigclock|second_s\(1)) ) ) ) # ( !\bigclock|second_s\(3) & ( !\bigclock|second_s\(2) & ( (\bigclock|second_s\(1)) # 
-- (\bigclock|second_s\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bigclock|ALT_INV_second_s\(0),
	datac => \bigclock|ALT_INV_second_s\(1),
	datae => \bigclock|ALT_INV_second_s\(3),
	dataf => \bigclock|ALT_INV_second_s\(2),
	combout => \bigclock|display5|Mux1~0_combout\);

-- Location: LABCELL_X39_Y4_N57
\bigclock|display5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bigclock|display5|Mux0~0_combout\ = ( \bigclock|second_s\(1) & ( (!\bigclock|second_s\(0)) # ((!\bigclock|second_s\(2)) # (\bigclock|second_s\(3))) ) ) # ( !\bigclock|second_s\(1) & ( (\bigclock|second_s\(3)) # (\bigclock|second_s\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bigclock|ALT_INV_second_s\(0),
	datab => \bigclock|ALT_INV_second_s\(2),
	datac => \bigclock|ALT_INV_second_s\(3),
	dataf => \bigclock|ALT_INV_second_s\(1),
	combout => \bigclock|display5|Mux0~0_combout\);

-- Location: LABCELL_X52_Y6_N0
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


