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

-- DATE "06/06/2022 12:19:05"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE Digital_clock_data_type IS

TYPE hex_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE hex_6_0_0_5_type IS ARRAY (0 TO 5) OF hex_6_0_type;
SUBTYPE hex_type IS hex_6_0_0_5_type;

END Digital_clock_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.DIGITAL_CLOCK_DATA_TYPE.ALL;

ENTITY 	Digital_clock IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	key_n : IN std_logic;
	hex : BUFFER hex_type
	);
END Digital_clock;

-- Design Ports Information
-- hex[5][0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5][6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][5]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4][6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3][6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2][6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1][6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0][6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Digital_clock IS
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
SIGNAL \Sec_Clock|Add0~101_sumout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Sec_Clock|Add0~102\ : std_logic;
SIGNAL \Sec_Clock|Add0~1_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~2\ : std_logic;
SIGNAL \Sec_Clock|Add0~25_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~26\ : std_logic;
SIGNAL \Sec_Clock|Add0~9_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~10\ : std_logic;
SIGNAL \Sec_Clock|Add0~13_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~14\ : std_logic;
SIGNAL \Sec_Clock|Add0~17_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~18\ : std_logic;
SIGNAL \Sec_Clock|Add0~21_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~22\ : std_logic;
SIGNAL \Sec_Clock|Add0~29_sumout\ : std_logic;
SIGNAL \Sec_Clock|Equal0~0_combout\ : std_logic;
SIGNAL \Sec_Clock|Add0~30\ : std_logic;
SIGNAL \Sec_Clock|Add0~33_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~34\ : std_logic;
SIGNAL \Sec_Clock|Add0~41_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~42\ : std_logic;
SIGNAL \Sec_Clock|Add0~45_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~46\ : std_logic;
SIGNAL \Sec_Clock|Add0~49_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~50\ : std_logic;
SIGNAL \Sec_Clock|Add0~53_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~54\ : std_logic;
SIGNAL \Sec_Clock|Add0~57_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~58\ : std_logic;
SIGNAL \Sec_Clock|Add0~61_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~62\ : std_logic;
SIGNAL \Sec_Clock|Add0~65_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~66\ : std_logic;
SIGNAL \Sec_Clock|Add0~37_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~38\ : std_logic;
SIGNAL \Sec_Clock|Add0~69_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~70\ : std_logic;
SIGNAL \Sec_Clock|Add0~73_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~74\ : std_logic;
SIGNAL \Sec_Clock|Add0~77_sumout\ : std_logic;
SIGNAL \Sec_Clock|Equal0~2_combout\ : std_logic;
SIGNAL \Sec_Clock|Equal0~1_combout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Add0~78\ : std_logic;
SIGNAL \Sec_Clock|Add0~5_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~6\ : std_logic;
SIGNAL \Sec_Clock|Add0~81_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~82\ : std_logic;
SIGNAL \Sec_Clock|Add0~85_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~86\ : std_logic;
SIGNAL \Sec_Clock|Add0~89_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~90\ : std_logic;
SIGNAL \Sec_Clock|Add0~93_sumout\ : std_logic;
SIGNAL \Sec_Clock|Add0~94\ : std_logic;
SIGNAL \Sec_Clock|Add0~97_sumout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|counter_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Equal0~3_combout\ : std_logic;
SIGNAL \Sec_Clock|counter_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|Equal0~4_combout\ : std_logic;
SIGNAL \Sec_Clock|slow_clk~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \key_n~input_o\ : std_logic;
SIGNAL \q1~q\ : std_logic;
SIGNAL \state_mach~0_combout\ : std_logic;
SIGNAL \q2~q\ : std_logic;
SIGNAL \clk_state_s~8_combout\ : std_logic;
SIGNAL \clk_state_s.off~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \clk_state_s.counting~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \clk_state_s.paused~q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \counter24h~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \counter24h~4_combout\ : std_logic;
SIGNAL \counter24h~2_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \counter24h~5_combout\ : std_logic;
SIGNAL \counter24h~1_combout\ : std_logic;
SIGNAL \counter24h~3_combout\ : std_logic;
SIGNAL \counter24h~6_combout\ : std_logic;
SIGNAL \second_s[23]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \display5|Mux6~0_combout\ : std_logic;
SIGNAL \display5|Mux5~0_combout\ : std_logic;
SIGNAL \display5|Mux4~0_combout\ : std_logic;
SIGNAL \display5|Mux3~0_combout\ : std_logic;
SIGNAL \display5|Mux2~0_combout\ : std_logic;
SIGNAL \display5|Mux1~0_combout\ : std_logic;
SIGNAL \display5|Mux0~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \deci_second_s[17]~1_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \counter24h~7_combout\ : std_logic;
SIGNAL \counter24h~10_combout\ : std_logic;
SIGNAL \counter24h~27_combout\ : std_logic;
SIGNAL \counter24h~9_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \counter24h~8_combout\ : std_logic;
SIGNAL \counter24h~11_combout\ : std_logic;
SIGNAL \deci_second_s[17]~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \display4|Mux6~0_combout\ : std_logic;
SIGNAL \display4|Mux5~0_combout\ : std_logic;
SIGNAL \display4|Mux4~0_combout\ : std_logic;
SIGNAL \display4|Mux3~0_combout\ : std_logic;
SIGNAL \display4|Mux2~0_combout\ : std_logic;
SIGNAL \display4|Mux1~0_combout\ : std_logic;
SIGNAL \display4|Mux0~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \minute_s[26]~1_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \minute_s[26]~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux5~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \deci_minute_s[7]~1_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \deci_minute_s[7]~0_combout\ : std_logic;
SIGNAL \display2|Mux6~0_combout\ : std_logic;
SIGNAL \display2|Mux5~0_combout\ : std_logic;
SIGNAL \display2|Mux4~0_combout\ : std_logic;
SIGNAL \display2|Mux3~0_combout\ : std_logic;
SIGNAL \display2|Mux2~0_combout\ : std_logic;
SIGNAL \display2|Mux1~0_combout\ : std_logic;
SIGNAL \display2|Mux0~0_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \counter24h~12_combout\ : std_logic;
SIGNAL \hour_s[20]~1_combout\ : std_logic;
SIGNAL \counter24h~19_combout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \counter24h~17_combout\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \counter24h~28_combout\ : std_logic;
SIGNAL \counter24h~16_combout\ : std_logic;
SIGNAL \counter24h~15_combout\ : std_logic;
SIGNAL \counter24h~14_combout\ : std_logic;
SIGNAL \counter24h~29_combout\ : std_logic;
SIGNAL \counter24h~18_combout\ : std_logic;
SIGNAL \counter24h~13_combout\ : std_logic;
SIGNAL \deci_hour_s[24]~0_combout\ : std_logic;
SIGNAL \deci_hour_s[24]~1_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \counter24h~21_combout\ : std_logic;
SIGNAL \display0|Mux4~0_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \counter24h~20_combout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \counter24h~24_combout\ : std_logic;
SIGNAL \counter24h~22_combout\ : std_logic;
SIGNAL \counter24h~23_combout\ : std_logic;
SIGNAL \counter24h~25_combout\ : std_logic;
SIGNAL \counter24h~26_combout\ : std_logic;
SIGNAL \hour_s[20]~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display1|Mux0~0_combout\ : std_logic;
SIGNAL \display0|Mux6~0_combout\ : std_logic;
SIGNAL \display0|Mux5~0_combout\ : std_logic;
SIGNAL \display0|Mux3~0_combout\ : std_logic;
SIGNAL \display0|Mux2~0_combout\ : std_logic;
SIGNAL \display0|Mux1~0_combout\ : std_logic;
SIGNAL \display0|Mux0~0_combout\ : std_logic;
SIGNAL second_s : std_logic_vector(30 DOWNTO 0);
SIGNAL deci_second_s : std_logic_vector(30 DOWNTO 0);
SIGNAL minute_s : std_logic_vector(30 DOWNTO 0);
SIGNAL deci_minute_s : std_logic_vector(30 DOWNTO 0);
SIGNAL \Sec_Clock|counter_s\ : std_logic_vector(25 DOWNTO 0);
SIGNAL hour_s : std_logic_vector(30 DOWNTO 0);
SIGNAL deci_hour_s : std_logic_vector(30 DOWNTO 0);
SIGNAL \Sec_Clock|ALT_INV_counter_s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key_n~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;
SIGNAL \ALT_INV_counter24h~29_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~28_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~27_combout\ : std_logic;
SIGNAL \ALT_INV_q1~q\ : std_logic;
SIGNAL \ALT_INV_q2~q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~26_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~25_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~24_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~23_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~22_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~21_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~20_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~19_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~18_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~17_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~16_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~15_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~14_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~12_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~11_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~10_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~9_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~8_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~7_combout\ : std_logic;
SIGNAL \ALT_INV_clk_state_s.paused~q\ : std_logic;
SIGNAL \ALT_INV_counter24h~6_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~5_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~4_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~3_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~1_combout\ : std_logic;
SIGNAL \ALT_INV_counter24h~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_state_s.off~q\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_slow_clk~q\ : std_logic;
SIGNAL \display0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Sec_Clock|ALT_INV_counter_s\ : std_logic_vector(25 DOWNTO 0);
SIGNAL ALT_INV_deci_hour_s : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_hour_s : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_deci_minute_s : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_minute_s : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_clk_state_s.counting~q\ : std_logic;
SIGNAL ALT_INV_deci_second_s : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_second_s : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_key_n <= key_n;
hex <= ww_hex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Sec_Clock|ALT_INV_counter_s[0]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[0]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[22]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[22]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[19]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[19]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[11]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[11]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[10]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[16]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[16]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[2]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[2]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[20]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[20]~DUPLICATE_q\;
\Sec_Clock|ALT_INV_counter_s[1]~DUPLICATE_q\ <= NOT \Sec_Clock|counter_s[1]~DUPLICATE_q\;
\ALT_INV_key_n~input_o\ <= NOT \key_n~input_o\;
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;
\ALT_INV_counter24h~29_combout\ <= NOT \counter24h~29_combout\;
\ALT_INV_counter24h~28_combout\ <= NOT \counter24h~28_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_counter24h~27_combout\ <= NOT \counter24h~27_combout\;
\ALT_INV_q1~q\ <= NOT \q1~q\;
\ALT_INV_q2~q\ <= NOT \q2~q\;
\Sec_Clock|ALT_INV_Equal0~3_combout\ <= NOT \Sec_Clock|Equal0~3_combout\;
\Sec_Clock|ALT_INV_Equal0~2_combout\ <= NOT \Sec_Clock|Equal0~2_combout\;
\Sec_Clock|ALT_INV_Equal0~1_combout\ <= NOT \Sec_Clock|Equal0~1_combout\;
\Sec_Clock|ALT_INV_Equal0~0_combout\ <= NOT \Sec_Clock|Equal0~0_combout\;
\ALT_INV_counter24h~26_combout\ <= NOT \counter24h~26_combout\;
\ALT_INV_counter24h~25_combout\ <= NOT \counter24h~25_combout\;
\ALT_INV_counter24h~24_combout\ <= NOT \counter24h~24_combout\;
\ALT_INV_counter24h~23_combout\ <= NOT \counter24h~23_combout\;
\ALT_INV_counter24h~22_combout\ <= NOT \counter24h~22_combout\;
\ALT_INV_counter24h~21_combout\ <= NOT \counter24h~21_combout\;
\ALT_INV_counter24h~20_combout\ <= NOT \counter24h~20_combout\;
\ALT_INV_counter24h~19_combout\ <= NOT \counter24h~19_combout\;
\ALT_INV_counter24h~18_combout\ <= NOT \counter24h~18_combout\;
\ALT_INV_counter24h~17_combout\ <= NOT \counter24h~17_combout\;
\ALT_INV_counter24h~16_combout\ <= NOT \counter24h~16_combout\;
\ALT_INV_counter24h~15_combout\ <= NOT \counter24h~15_combout\;
\ALT_INV_counter24h~14_combout\ <= NOT \counter24h~14_combout\;
\ALT_INV_counter24h~13_combout\ <= NOT \counter24h~13_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_counter24h~12_combout\ <= NOT \counter24h~12_combout\;
\ALT_INV_counter24h~11_combout\ <= NOT \counter24h~11_combout\;
\ALT_INV_counter24h~10_combout\ <= NOT \counter24h~10_combout\;
\ALT_INV_counter24h~9_combout\ <= NOT \counter24h~9_combout\;
\ALT_INV_counter24h~8_combout\ <= NOT \counter24h~8_combout\;
\ALT_INV_counter24h~7_combout\ <= NOT \counter24h~7_combout\;
\ALT_INV_clk_state_s.paused~q\ <= NOT \clk_state_s.paused~q\;
\ALT_INV_counter24h~6_combout\ <= NOT \counter24h~6_combout\;
\ALT_INV_counter24h~5_combout\ <= NOT \counter24h~5_combout\;
\ALT_INV_counter24h~4_combout\ <= NOT \counter24h~4_combout\;
\ALT_INV_counter24h~3_combout\ <= NOT \counter24h~3_combout\;
\ALT_INV_counter24h~2_combout\ <= NOT \counter24h~2_combout\;
\ALT_INV_counter24h~1_combout\ <= NOT \counter24h~1_combout\;
\ALT_INV_counter24h~0_combout\ <= NOT \counter24h~0_combout\;
\ALT_INV_clk_state_s.off~q\ <= NOT \clk_state_s.off~q\;
\Sec_Clock|ALT_INV_slow_clk~q\ <= NOT \Sec_Clock|slow_clk~q\;
\display0|ALT_INV_Mux0~0_combout\ <= NOT \display0|Mux0~0_combout\;
\display0|ALT_INV_Mux4~0_combout\ <= NOT \display0|Mux4~0_combout\;
\display1|ALT_INV_Mux0~0_combout\ <= NOT \display1|Mux0~0_combout\;
\display2|ALT_INV_Mux0~0_combout\ <= NOT \display2|Mux0~0_combout\;
\display3|ALT_INV_Mux0~0_combout\ <= NOT \display3|Mux0~0_combout\;
\display4|ALT_INV_Mux0~0_combout\ <= NOT \display4|Mux0~0_combout\;
\display5|ALT_INV_Mux0~0_combout\ <= NOT \display5|Mux0~0_combout\;
\Sec_Clock|ALT_INV_counter_s\(0) <= NOT \Sec_Clock|counter_s\(0);
\Sec_Clock|ALT_INV_counter_s\(25) <= NOT \Sec_Clock|counter_s\(25);
\Sec_Clock|ALT_INV_counter_s\(24) <= NOT \Sec_Clock|counter_s\(24);
\Sec_Clock|ALT_INV_counter_s\(23) <= NOT \Sec_Clock|counter_s\(23);
\Sec_Clock|ALT_INV_counter_s\(22) <= NOT \Sec_Clock|counter_s\(22);
\Sec_Clock|ALT_INV_counter_s\(21) <= NOT \Sec_Clock|counter_s\(21);
\Sec_Clock|ALT_INV_counter_s\(19) <= NOT \Sec_Clock|counter_s\(19);
\Sec_Clock|ALT_INV_counter_s\(18) <= NOT \Sec_Clock|counter_s\(18);
\Sec_Clock|ALT_INV_counter_s\(17) <= NOT \Sec_Clock|counter_s\(17);
\Sec_Clock|ALT_INV_counter_s\(15) <= NOT \Sec_Clock|counter_s\(15);
\Sec_Clock|ALT_INV_counter_s\(14) <= NOT \Sec_Clock|counter_s\(14);
\Sec_Clock|ALT_INV_counter_s\(13) <= NOT \Sec_Clock|counter_s\(13);
\Sec_Clock|ALT_INV_counter_s\(12) <= NOT \Sec_Clock|counter_s\(12);
\Sec_Clock|ALT_INV_counter_s\(11) <= NOT \Sec_Clock|counter_s\(11);
\Sec_Clock|ALT_INV_counter_s\(10) <= NOT \Sec_Clock|counter_s\(10);
\Sec_Clock|ALT_INV_counter_s\(9) <= NOT \Sec_Clock|counter_s\(9);
\Sec_Clock|ALT_INV_counter_s\(16) <= NOT \Sec_Clock|counter_s\(16);
\Sec_Clock|ALT_INV_counter_s\(8) <= NOT \Sec_Clock|counter_s\(8);
\Sec_Clock|ALT_INV_counter_s\(7) <= NOT \Sec_Clock|counter_s\(7);
\Sec_Clock|ALT_INV_counter_s\(2) <= NOT \Sec_Clock|counter_s\(2);
\Sec_Clock|ALT_INV_counter_s\(6) <= NOT \Sec_Clock|counter_s\(6);
\Sec_Clock|ALT_INV_counter_s\(5) <= NOT \Sec_Clock|counter_s\(5);
\Sec_Clock|ALT_INV_counter_s\(4) <= NOT \Sec_Clock|counter_s\(4);
\Sec_Clock|ALT_INV_counter_s\(3) <= NOT \Sec_Clock|counter_s\(3);
\Sec_Clock|ALT_INV_counter_s\(20) <= NOT \Sec_Clock|counter_s\(20);
\Sec_Clock|ALT_INV_counter_s\(1) <= NOT \Sec_Clock|counter_s\(1);
ALT_INV_deci_hour_s(6) <= NOT deci_hour_s(6);
ALT_INV_deci_hour_s(4) <= NOT deci_hour_s(4);
ALT_INV_deci_hour_s(5) <= NOT deci_hour_s(5);
ALT_INV_deci_hour_s(25) <= NOT deci_hour_s(25);
ALT_INV_deci_hour_s(29) <= NOT deci_hour_s(29);
ALT_INV_deci_hour_s(28) <= NOT deci_hour_s(28);
ALT_INV_deci_hour_s(27) <= NOT deci_hour_s(27);
ALT_INV_deci_hour_s(26) <= NOT deci_hour_s(26);
ALT_INV_deci_hour_s(24) <= NOT deci_hour_s(24);
ALT_INV_deci_hour_s(12) <= NOT deci_hour_s(12);
ALT_INV_deci_hour_s(11) <= NOT deci_hour_s(11);
ALT_INV_deci_hour_s(10) <= NOT deci_hour_s(10);
ALT_INV_deci_hour_s(9) <= NOT deci_hour_s(9);
ALT_INV_deci_hour_s(8) <= NOT deci_hour_s(8);
ALT_INV_deci_hour_s(13) <= NOT deci_hour_s(13);
ALT_INV_deci_hour_s(7) <= NOT deci_hour_s(7);
ALT_INV_deci_hour_s(30) <= NOT deci_hour_s(30);
ALT_INV_deci_hour_s(18) <= NOT deci_hour_s(18);
ALT_INV_deci_hour_s(17) <= NOT deci_hour_s(17);
ALT_INV_deci_hour_s(16) <= NOT deci_hour_s(16);
ALT_INV_deci_hour_s(15) <= NOT deci_hour_s(15);
ALT_INV_deci_hour_s(14) <= NOT deci_hour_s(14);
ALT_INV_deci_hour_s(23) <= NOT deci_hour_s(23);
ALT_INV_deci_hour_s(22) <= NOT deci_hour_s(22);
ALT_INV_deci_hour_s(21) <= NOT deci_hour_s(21);
ALT_INV_deci_hour_s(20) <= NOT deci_hour_s(20);
ALT_INV_deci_hour_s(19) <= NOT deci_hour_s(19);
ALT_INV_hour_s(11) <= NOT hour_s(11);
ALT_INV_hour_s(12) <= NOT hour_s(12);
ALT_INV_hour_s(14) <= NOT hour_s(14);
ALT_INV_hour_s(16) <= NOT hour_s(16);
ALT_INV_hour_s(17) <= NOT hour_s(17);
ALT_INV_hour_s(18) <= NOT hour_s(18);
ALT_INV_hour_s(19) <= NOT hour_s(19);
ALT_INV_hour_s(20) <= NOT hour_s(20);
ALT_INV_hour_s(9) <= NOT hour_s(9);
ALT_INV_hour_s(10) <= NOT hour_s(10);
ALT_INV_hour_s(15) <= NOT hour_s(15);
ALT_INV_hour_s(4) <= NOT hour_s(4);
ALT_INV_hour_s(5) <= NOT hour_s(5);
ALT_INV_hour_s(6) <= NOT hour_s(6);
ALT_INV_hour_s(7) <= NOT hour_s(7);
ALT_INV_hour_s(8) <= NOT hour_s(8);
ALT_INV_hour_s(28) <= NOT hour_s(28);
ALT_INV_hour_s(13) <= NOT hour_s(13);
ALT_INV_hour_s(21) <= NOT hour_s(21);
ALT_INV_hour_s(22) <= NOT hour_s(22);
ALT_INV_hour_s(23) <= NOT hour_s(23);
ALT_INV_hour_s(25) <= NOT hour_s(25);
ALT_INV_hour_s(26) <= NOT hour_s(26);
ALT_INV_hour_s(27) <= NOT hour_s(27);
ALT_INV_hour_s(29) <= NOT hour_s(29);
ALT_INV_hour_s(30) <= NOT hour_s(30);
ALT_INV_hour_s(24) <= NOT hour_s(24);
ALT_INV_deci_minute_s(19) <= NOT deci_minute_s(19);
ALT_INV_deci_minute_s(18) <= NOT deci_minute_s(18);
ALT_INV_deci_minute_s(17) <= NOT deci_minute_s(17);
ALT_INV_deci_minute_s(16) <= NOT deci_minute_s(16);
ALT_INV_deci_minute_s(15) <= NOT deci_minute_s(15);
ALT_INV_deci_minute_s(14) <= NOT deci_minute_s(14);
ALT_INV_deci_minute_s(12) <= NOT deci_minute_s(12);
ALT_INV_deci_minute_s(11) <= NOT deci_minute_s(11);
ALT_INV_deci_minute_s(10) <= NOT deci_minute_s(10);
ALT_INV_deci_minute_s(9) <= NOT deci_minute_s(9);
ALT_INV_deci_minute_s(8) <= NOT deci_minute_s(8);
ALT_INV_deci_minute_s(7) <= NOT deci_minute_s(7);
ALT_INV_deci_minute_s(24) <= NOT deci_minute_s(24);
ALT_INV_deci_minute_s(5) <= NOT deci_minute_s(5);
ALT_INV_deci_minute_s(6) <= NOT deci_minute_s(6);
ALT_INV_deci_minute_s(4) <= NOT deci_minute_s(4);
ALT_INV_deci_minute_s(13) <= NOT deci_minute_s(13);
ALT_INV_deci_minute_s(25) <= NOT deci_minute_s(25);
ALT_INV_deci_minute_s(26) <= NOT deci_minute_s(26);
ALT_INV_deci_minute_s(27) <= NOT deci_minute_s(27);
ALT_INV_deci_minute_s(28) <= NOT deci_minute_s(28);
ALT_INV_deci_minute_s(29) <= NOT deci_minute_s(29);
ALT_INV_deci_minute_s(30) <= NOT deci_minute_s(30);
ALT_INV_deci_minute_s(20) <= NOT deci_minute_s(20);
ALT_INV_deci_minute_s(21) <= NOT deci_minute_s(21);
ALT_INV_deci_minute_s(22) <= NOT deci_minute_s(22);
ALT_INV_deci_minute_s(23) <= NOT deci_minute_s(23);
ALT_INV_minute_s(22) <= NOT minute_s(22);
ALT_INV_minute_s(14) <= NOT minute_s(14);
ALT_INV_minute_s(10) <= NOT minute_s(10);
ALT_INV_minute_s(11) <= NOT minute_s(11);
ALT_INV_minute_s(12) <= NOT minute_s(12);
ALT_INV_minute_s(13) <= NOT minute_s(13);
ALT_INV_minute_s(15) <= NOT minute_s(15);
ALT_INV_minute_s(16) <= NOT minute_s(16);
ALT_INV_minute_s(27) <= NOT minute_s(27);
ALT_INV_minute_s(28) <= NOT minute_s(28);
ALT_INV_minute_s(26) <= NOT minute_s(26);
ALT_INV_minute_s(21) <= NOT minute_s(21);
ALT_INV_minute_s(7) <= NOT minute_s(7);
ALT_INV_minute_s(8) <= NOT minute_s(8);
ALT_INV_minute_s(9) <= NOT minute_s(9);
ALT_INV_minute_s(18) <= NOT minute_s(18);
ALT_INV_minute_s(20) <= NOT minute_s(20);
ALT_INV_minute_s(25) <= NOT minute_s(25);
ALT_INV_minute_s(19) <= NOT minute_s(19);
ALT_INV_minute_s(24) <= NOT minute_s(24);
ALT_INV_minute_s(23) <= NOT minute_s(23);
ALT_INV_minute_s(30) <= NOT minute_s(30);
ALT_INV_minute_s(4) <= NOT minute_s(4);
ALT_INV_minute_s(5) <= NOT minute_s(5);
ALT_INV_minute_s(6) <= NOT minute_s(6);
ALT_INV_minute_s(17) <= NOT minute_s(17);
ALT_INV_minute_s(29) <= NOT minute_s(29);
\ALT_INV_clk_state_s.counting~q\ <= NOT \clk_state_s.counting~q\;
ALT_INV_deci_second_s(5) <= NOT deci_second_s(5);
ALT_INV_deci_second_s(6) <= NOT deci_second_s(6);
ALT_INV_deci_second_s(8) <= NOT deci_second_s(8);
ALT_INV_deci_second_s(9) <= NOT deci_second_s(9);
ALT_INV_deci_second_s(10) <= NOT deci_second_s(10);
ALT_INV_deci_second_s(11) <= NOT deci_second_s(11);
ALT_INV_deci_second_s(12) <= NOT deci_second_s(12);
ALT_INV_deci_second_s(13) <= NOT deci_second_s(13);
ALT_INV_deci_second_s(14) <= NOT deci_second_s(14);
ALT_INV_deci_second_s(15) <= NOT deci_second_s(15);
ALT_INV_deci_second_s(16) <= NOT deci_second_s(16);
ALT_INV_deci_second_s(17) <= NOT deci_second_s(17);
ALT_INV_deci_second_s(30) <= NOT deci_second_s(30);
ALT_INV_deci_second_s(27) <= NOT deci_second_s(27);
ALT_INV_deci_second_s(7) <= NOT deci_second_s(7);
ALT_INV_deci_second_s(4) <= NOT deci_second_s(4);
ALT_INV_deci_second_s(23) <= NOT deci_second_s(23);
ALT_INV_deci_second_s(24) <= NOT deci_second_s(24);
ALT_INV_deci_second_s(25) <= NOT deci_second_s(25);
ALT_INV_deci_second_s(26) <= NOT deci_second_s(26);
ALT_INV_deci_second_s(28) <= NOT deci_second_s(28);
ALT_INV_deci_second_s(29) <= NOT deci_second_s(29);
ALT_INV_deci_second_s(18) <= NOT deci_second_s(18);
ALT_INV_deci_second_s(19) <= NOT deci_second_s(19);
ALT_INV_deci_second_s(20) <= NOT deci_second_s(20);
ALT_INV_deci_second_s(21) <= NOT deci_second_s(21);
ALT_INV_deci_second_s(22) <= NOT deci_second_s(22);
ALT_INV_second_s(27) <= NOT second_s(27);
ALT_INV_second_s(28) <= NOT second_s(28);
ALT_INV_second_s(30) <= NOT second_s(30);
ALT_INV_second_s(17) <= NOT second_s(17);
ALT_INV_second_s(16) <= NOT second_s(16);
ALT_INV_second_s(15) <= NOT second_s(15);
ALT_INV_second_s(14) <= NOT second_s(14);
ALT_INV_second_s(13) <= NOT second_s(13);
ALT_INV_second_s(18) <= NOT second_s(18);
ALT_INV_second_s(29) <= NOT second_s(29);
ALT_INV_second_s(23) <= NOT second_s(23);
ALT_INV_second_s(22) <= NOT second_s(22);
ALT_INV_second_s(25) <= NOT second_s(25);
ALT_INV_second_s(5) <= NOT second_s(5);
ALT_INV_second_s(4) <= NOT second_s(4);
ALT_INV_second_s(24) <= NOT second_s(24);
ALT_INV_second_s(19) <= NOT second_s(19);
ALT_INV_second_s(20) <= NOT second_s(20);
ALT_INV_second_s(21) <= NOT second_s(21);
ALT_INV_second_s(11) <= NOT second_s(11);
ALT_INV_second_s(10) <= NOT second_s(10);
ALT_INV_second_s(9) <= NOT second_s(9);
ALT_INV_second_s(8) <= NOT second_s(8);
ALT_INV_second_s(7) <= NOT second_s(7);
ALT_INV_second_s(6) <= NOT second_s(6);
ALT_INV_second_s(26) <= NOT second_s(26);
ALT_INV_second_s(12) <= NOT second_s(12);
ALT_INV_deci_hour_s(3) <= NOT deci_hour_s(3);
ALT_INV_deci_hour_s(2) <= NOT deci_hour_s(2);
ALT_INV_deci_hour_s(1) <= NOT deci_hour_s(1);
ALT_INV_deci_hour_s(0) <= NOT deci_hour_s(0);
ALT_INV_hour_s(3) <= NOT hour_s(3);
ALT_INV_hour_s(2) <= NOT hour_s(2);
ALT_INV_hour_s(1) <= NOT hour_s(1);
ALT_INV_hour_s(0) <= NOT hour_s(0);
ALT_INV_deci_minute_s(3) <= NOT deci_minute_s(3);
ALT_INV_deci_minute_s(2) <= NOT deci_minute_s(2);
ALT_INV_deci_minute_s(1) <= NOT deci_minute_s(1);
ALT_INV_deci_minute_s(0) <= NOT deci_minute_s(0);
ALT_INV_minute_s(3) <= NOT minute_s(3);
ALT_INV_minute_s(2) <= NOT minute_s(2);
ALT_INV_minute_s(1) <= NOT minute_s(1);
ALT_INV_minute_s(0) <= NOT minute_s(0);
ALT_INV_deci_second_s(3) <= NOT deci_second_s(3);
ALT_INV_deci_second_s(2) <= NOT deci_second_s(2);
ALT_INV_deci_second_s(1) <= NOT deci_second_s(1);
ALT_INV_deci_second_s(0) <= NOT deci_second_s(0);
ALT_INV_second_s(3) <= NOT second_s(3);
ALT_INV_second_s(2) <= NOT second_s(2);
ALT_INV_second_s(1) <= NOT second_s(1);
ALT_INV_second_s(0) <= NOT second_s(0);

-- Location: IOOBUF_X50_Y45_N2
\hex[5][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(0));

-- Location: IOOBUF_X54_Y17_N5
\hex[5][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(1));

-- Location: IOOBUF_X48_Y0_N42
\hex[5][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(2));

-- Location: IOOBUF_X54_Y21_N5
\hex[5][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(3));

-- Location: IOOBUF_X54_Y16_N39
\hex[5][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(4));

-- Location: IOOBUF_X54_Y19_N56
\hex[5][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(5));

-- Location: IOOBUF_X54_Y15_N39
\hex[5][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5)(6));

-- Location: IOOBUF_X54_Y20_N5
\hex[4][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(0));

-- Location: IOOBUF_X54_Y16_N56
\hex[4][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(1));

-- Location: IOOBUF_X54_Y20_N22
\hex[4][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(2));

-- Location: IOOBUF_X54_Y18_N96
\hex[4][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(3));

-- Location: IOOBUF_X54_Y15_N56
\hex[4][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(4));

-- Location: IOOBUF_X54_Y21_N39
\hex[4][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(5));

-- Location: IOOBUF_X54_Y17_N39
\hex[4][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4)(6));

-- Location: IOOBUF_X54_Y14_N45
\hex[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(0));

-- Location: IOOBUF_X54_Y18_N45
\hex[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(1));

-- Location: IOOBUF_X54_Y17_N56
\hex[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(2));

-- Location: IOOBUF_X54_Y17_N22
\hex[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(3));

-- Location: IOOBUF_X54_Y20_N39
\hex[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(4));

-- Location: IOOBUF_X0_Y18_N45
\hex[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(5));

-- Location: IOOBUF_X50_Y0_N2
\hex[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3)(6));

-- Location: IOOBUF_X48_Y45_N19
\hex[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(0));

-- Location: IOOBUF_X46_Y45_N59
\hex[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(1));

-- Location: IOOBUF_X44_Y45_N36
\hex[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(2));

-- Location: IOOBUF_X44_Y45_N53
\hex[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(3));

-- Location: IOOBUF_X44_Y45_N2
\hex[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(4));

-- Location: IOOBUF_X44_Y45_N19
\hex[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(5));

-- Location: IOOBUF_X46_Y45_N42
\hex[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2)(6));

-- Location: IOOBUF_X54_Y21_N22
\hex[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(0));

-- Location: IOOBUF_X54_Y19_N39
\hex[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(1));

-- Location: IOOBUF_X54_Y21_N56
\hex[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(2));

-- Location: IOOBUF_X54_Y19_N5
\hex[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(3));

-- Location: IOOBUF_X51_Y0_N2
\hex[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(4));

-- Location: IOOBUF_X54_Y19_N22
\hex[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(5));

-- Location: IOOBUF_X52_Y45_N2
\hex[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1)(6));

-- Location: IOOBUF_X54_Y16_N22
\hex[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(0));

-- Location: IOOBUF_X52_Y45_N53
\hex[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(1));

-- Location: IOOBUF_X52_Y0_N19
\hex[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(2));

-- Location: IOOBUF_X51_Y0_N36
\hex[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(3));

-- Location: IOOBUF_X54_Y20_N56
\hex[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(4));

-- Location: IOOBUF_X54_Y18_N79
\hex[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(5));

-- Location: IOOBUF_X54_Y14_N62
\hex[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0)(6));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: LABCELL_X50_Y17_N30
\Sec_Clock|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~101_sumout\ = SUM(( \Sec_Clock|counter_s\(0) ) + ( VCC ) + ( !VCC ))
-- \Sec_Clock|Add0~102\ = CARRY(( \Sec_Clock|counter_s\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(0),
	cin => GND,
	sumout => \Sec_Clock|Add0~101_sumout\,
	cout => \Sec_Clock|Add0~102\);

-- Location: IOIBUF_X54_Y16_N4
\rst_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X50_Y17_N31
\Sec_Clock|counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~101_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(0));

-- Location: LABCELL_X50_Y17_N33
\Sec_Clock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~1_sumout\ = SUM(( \Sec_Clock|counter_s\(1) ) + ( GND ) + ( \Sec_Clock|Add0~102\ ))
-- \Sec_Clock|Add0~2\ = CARRY(( \Sec_Clock|counter_s\(1) ) + ( GND ) + ( \Sec_Clock|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(1),
	cin => \Sec_Clock|Add0~102\,
	sumout => \Sec_Clock|Add0~1_sumout\,
	cout => \Sec_Clock|Add0~2\);

-- Location: FF_X50_Y17_N34
\Sec_Clock|counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~1_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(1));

-- Location: LABCELL_X50_Y17_N36
\Sec_Clock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~25_sumout\ = SUM(( \Sec_Clock|counter_s[2]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~2\ ))
-- \Sec_Clock|Add0~26\ = CARRY(( \Sec_Clock|counter_s[2]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s[2]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~2\,
	sumout => \Sec_Clock|Add0~25_sumout\,
	cout => \Sec_Clock|Add0~26\);

-- Location: FF_X50_Y17_N38
\Sec_Clock|counter_s[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~25_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y17_N39
\Sec_Clock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~9_sumout\ = SUM(( \Sec_Clock|counter_s\(3) ) + ( GND ) + ( \Sec_Clock|Add0~26\ ))
-- \Sec_Clock|Add0~10\ = CARRY(( \Sec_Clock|counter_s\(3) ) + ( GND ) + ( \Sec_Clock|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(3),
	cin => \Sec_Clock|Add0~26\,
	sumout => \Sec_Clock|Add0~9_sumout\,
	cout => \Sec_Clock|Add0~10\);

-- Location: FF_X50_Y17_N41
\Sec_Clock|counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~9_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(3));

-- Location: LABCELL_X50_Y17_N42
\Sec_Clock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~13_sumout\ = SUM(( \Sec_Clock|counter_s\(4) ) + ( GND ) + ( \Sec_Clock|Add0~10\ ))
-- \Sec_Clock|Add0~14\ = CARRY(( \Sec_Clock|counter_s\(4) ) + ( GND ) + ( \Sec_Clock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(4),
	cin => \Sec_Clock|Add0~10\,
	sumout => \Sec_Clock|Add0~13_sumout\,
	cout => \Sec_Clock|Add0~14\);

-- Location: FF_X50_Y17_N43
\Sec_Clock|counter_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~13_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(4));

-- Location: LABCELL_X50_Y17_N45
\Sec_Clock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~17_sumout\ = SUM(( \Sec_Clock|counter_s\(5) ) + ( GND ) + ( \Sec_Clock|Add0~14\ ))
-- \Sec_Clock|Add0~18\ = CARRY(( \Sec_Clock|counter_s\(5) ) + ( GND ) + ( \Sec_Clock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(5),
	cin => \Sec_Clock|Add0~14\,
	sumout => \Sec_Clock|Add0~17_sumout\,
	cout => \Sec_Clock|Add0~18\);

-- Location: FF_X50_Y17_N47
\Sec_Clock|counter_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~17_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(5));

-- Location: LABCELL_X50_Y17_N48
\Sec_Clock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~21_sumout\ = SUM(( \Sec_Clock|counter_s\(6) ) + ( GND ) + ( \Sec_Clock|Add0~18\ ))
-- \Sec_Clock|Add0~22\ = CARRY(( \Sec_Clock|counter_s\(6) ) + ( GND ) + ( \Sec_Clock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(6),
	cin => \Sec_Clock|Add0~18\,
	sumout => \Sec_Clock|Add0~21_sumout\,
	cout => \Sec_Clock|Add0~22\);

-- Location: FF_X50_Y17_N50
\Sec_Clock|counter_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~21_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(6));

-- Location: LABCELL_X50_Y17_N51
\Sec_Clock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~29_sumout\ = SUM(( \Sec_Clock|counter_s\(7) ) + ( GND ) + ( \Sec_Clock|Add0~22\ ))
-- \Sec_Clock|Add0~30\ = CARRY(( \Sec_Clock|counter_s\(7) ) + ( GND ) + ( \Sec_Clock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(7),
	cin => \Sec_Clock|Add0~22\,
	sumout => \Sec_Clock|Add0~29_sumout\,
	cout => \Sec_Clock|Add0~30\);

-- Location: FF_X50_Y17_N53
\Sec_Clock|counter_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~29_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(7));

-- Location: FF_X50_Y17_N37
\Sec_Clock|counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~25_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(2));

-- Location: LABCELL_X50_Y17_N24
\Sec_Clock|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Equal0~0_combout\ = ( !\Sec_Clock|counter_s\(4) & ( !\Sec_Clock|counter_s\(3) & ( (!\Sec_Clock|counter_s\(6) & (!\Sec_Clock|counter_s\(5) & (!\Sec_Clock|counter_s\(7) & \Sec_Clock|counter_s\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(6),
	datab => \Sec_Clock|ALT_INV_counter_s\(5),
	datac => \Sec_Clock|ALT_INV_counter_s\(7),
	datad => \Sec_Clock|ALT_INV_counter_s\(2),
	datae => \Sec_Clock|ALT_INV_counter_s\(4),
	dataf => \Sec_Clock|ALT_INV_counter_s\(3),
	combout => \Sec_Clock|Equal0~0_combout\);

-- Location: LABCELL_X50_Y17_N54
\Sec_Clock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~33_sumout\ = SUM(( \Sec_Clock|counter_s\(8) ) + ( GND ) + ( \Sec_Clock|Add0~30\ ))
-- \Sec_Clock|Add0~34\ = CARRY(( \Sec_Clock|counter_s\(8) ) + ( GND ) + ( \Sec_Clock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(8),
	cin => \Sec_Clock|Add0~30\,
	sumout => \Sec_Clock|Add0~33_sumout\,
	cout => \Sec_Clock|Add0~34\);

-- Location: FF_X50_Y17_N56
\Sec_Clock|counter_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~33_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(8));

-- Location: LABCELL_X50_Y17_N57
\Sec_Clock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~41_sumout\ = SUM(( \Sec_Clock|counter_s\(9) ) + ( GND ) + ( \Sec_Clock|Add0~34\ ))
-- \Sec_Clock|Add0~42\ = CARRY(( \Sec_Clock|counter_s\(9) ) + ( GND ) + ( \Sec_Clock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(9),
	cin => \Sec_Clock|Add0~34\,
	sumout => \Sec_Clock|Add0~41_sumout\,
	cout => \Sec_Clock|Add0~42\);

-- Location: FF_X50_Y17_N59
\Sec_Clock|counter_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~41_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(9));

-- Location: LABCELL_X50_Y16_N0
\Sec_Clock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~45_sumout\ = SUM(( \Sec_Clock|counter_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~42\ ))
-- \Sec_Clock|Add0~46\ = CARRY(( \Sec_Clock|counter_s[10]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s[10]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~42\,
	sumout => \Sec_Clock|Add0~45_sumout\,
	cout => \Sec_Clock|Add0~46\);

-- Location: FF_X50_Y16_N2
\Sec_Clock|counter_s[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~45_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[10]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N3
\Sec_Clock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~49_sumout\ = SUM(( \Sec_Clock|counter_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~46\ ))
-- \Sec_Clock|Add0~50\ = CARRY(( \Sec_Clock|counter_s[11]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s[11]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~46\,
	sumout => \Sec_Clock|Add0~49_sumout\,
	cout => \Sec_Clock|Add0~50\);

-- Location: FF_X50_Y16_N5
\Sec_Clock|counter_s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~49_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[11]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N6
\Sec_Clock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~53_sumout\ = SUM(( \Sec_Clock|counter_s\(12) ) + ( GND ) + ( \Sec_Clock|Add0~50\ ))
-- \Sec_Clock|Add0~54\ = CARRY(( \Sec_Clock|counter_s\(12) ) + ( GND ) + ( \Sec_Clock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(12),
	cin => \Sec_Clock|Add0~50\,
	sumout => \Sec_Clock|Add0~53_sumout\,
	cout => \Sec_Clock|Add0~54\);

-- Location: FF_X50_Y16_N7
\Sec_Clock|counter_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~53_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(12));

-- Location: LABCELL_X50_Y16_N9
\Sec_Clock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~57_sumout\ = SUM(( \Sec_Clock|counter_s\(13) ) + ( GND ) + ( \Sec_Clock|Add0~54\ ))
-- \Sec_Clock|Add0~58\ = CARRY(( \Sec_Clock|counter_s\(13) ) + ( GND ) + ( \Sec_Clock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(13),
	cin => \Sec_Clock|Add0~54\,
	sumout => \Sec_Clock|Add0~57_sumout\,
	cout => \Sec_Clock|Add0~58\);

-- Location: FF_X50_Y16_N11
\Sec_Clock|counter_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~57_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(13));

-- Location: LABCELL_X50_Y16_N12
\Sec_Clock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~61_sumout\ = SUM(( \Sec_Clock|counter_s\(14) ) + ( GND ) + ( \Sec_Clock|Add0~58\ ))
-- \Sec_Clock|Add0~62\ = CARRY(( \Sec_Clock|counter_s\(14) ) + ( GND ) + ( \Sec_Clock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sec_Clock|ALT_INV_counter_s\(14),
	cin => \Sec_Clock|Add0~58\,
	sumout => \Sec_Clock|Add0~61_sumout\,
	cout => \Sec_Clock|Add0~62\);

-- Location: FF_X50_Y16_N14
\Sec_Clock|counter_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~61_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(14));

-- Location: LABCELL_X50_Y16_N15
\Sec_Clock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~65_sumout\ = SUM(( \Sec_Clock|counter_s\(15) ) + ( GND ) + ( \Sec_Clock|Add0~62\ ))
-- \Sec_Clock|Add0~66\ = CARRY(( \Sec_Clock|counter_s\(15) ) + ( GND ) + ( \Sec_Clock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(15),
	cin => \Sec_Clock|Add0~62\,
	sumout => \Sec_Clock|Add0~65_sumout\,
	cout => \Sec_Clock|Add0~66\);

-- Location: FF_X50_Y16_N17
\Sec_Clock|counter_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~65_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(15));

-- Location: LABCELL_X50_Y16_N18
\Sec_Clock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~37_sumout\ = SUM(( \Sec_Clock|counter_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~66\ ))
-- \Sec_Clock|Add0~38\ = CARRY(( \Sec_Clock|counter_s[16]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s[16]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~66\,
	sumout => \Sec_Clock|Add0~37_sumout\,
	cout => \Sec_Clock|Add0~38\);

-- Location: FF_X50_Y16_N20
\Sec_Clock|counter_s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~37_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[16]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N21
\Sec_Clock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~69_sumout\ = SUM(( \Sec_Clock|counter_s\(17) ) + ( GND ) + ( \Sec_Clock|Add0~38\ ))
-- \Sec_Clock|Add0~70\ = CARRY(( \Sec_Clock|counter_s\(17) ) + ( GND ) + ( \Sec_Clock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(17),
	cin => \Sec_Clock|Add0~38\,
	sumout => \Sec_Clock|Add0~69_sumout\,
	cout => \Sec_Clock|Add0~70\);

-- Location: FF_X50_Y16_N23
\Sec_Clock|counter_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~69_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(17));

-- Location: LABCELL_X50_Y16_N24
\Sec_Clock|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~73_sumout\ = SUM(( \Sec_Clock|counter_s\(18) ) + ( GND ) + ( \Sec_Clock|Add0~70\ ))
-- \Sec_Clock|Add0~74\ = CARRY(( \Sec_Clock|counter_s\(18) ) + ( GND ) + ( \Sec_Clock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(18),
	cin => \Sec_Clock|Add0~70\,
	sumout => \Sec_Clock|Add0~73_sumout\,
	cout => \Sec_Clock|Add0~74\);

-- Location: FF_X50_Y16_N26
\Sec_Clock|counter_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~73_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(18));

-- Location: FF_X50_Y16_N28
\Sec_Clock|counter_s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~77_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[19]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N27
\Sec_Clock|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~77_sumout\ = SUM(( \Sec_Clock|counter_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~74\ ))
-- \Sec_Clock|Add0~78\ = CARRY(( \Sec_Clock|counter_s[19]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s[19]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~74\,
	sumout => \Sec_Clock|Add0~77_sumout\,
	cout => \Sec_Clock|Add0~78\);

-- Location: FF_X50_Y16_N29
\Sec_Clock|counter_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~77_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(19));

-- Location: LABCELL_X50_Y16_N48
\Sec_Clock|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Equal0~2_combout\ = ( !\Sec_Clock|counter_s\(17) & ( !\Sec_Clock|counter_s\(13) & ( (!\Sec_Clock|counter_s\(18) & (!\Sec_Clock|counter_s\(14) & (!\Sec_Clock|counter_s\(19) & !\Sec_Clock|counter_s\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(18),
	datab => \Sec_Clock|ALT_INV_counter_s\(14),
	datac => \Sec_Clock|ALT_INV_counter_s\(19),
	datad => \Sec_Clock|ALT_INV_counter_s\(15),
	datae => \Sec_Clock|ALT_INV_counter_s\(17),
	dataf => \Sec_Clock|ALT_INV_counter_s\(13),
	combout => \Sec_Clock|Equal0~2_combout\);

-- Location: FF_X50_Y16_N4
\Sec_Clock|counter_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~49_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(11));

-- Location: FF_X50_Y16_N19
\Sec_Clock|counter_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~37_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(16));

-- Location: FF_X50_Y16_N1
\Sec_Clock|counter_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~45_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(10));

-- Location: LABCELL_X50_Y17_N18
\Sec_Clock|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Equal0~1_combout\ = ( !\Sec_Clock|counter_s\(16) & ( !\Sec_Clock|counter_s\(10) & ( (!\Sec_Clock|counter_s\(8) & (!\Sec_Clock|counter_s\(9) & (!\Sec_Clock|counter_s\(11) & !\Sec_Clock|counter_s\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(8),
	datab => \Sec_Clock|ALT_INV_counter_s\(9),
	datac => \Sec_Clock|ALT_INV_counter_s\(11),
	datad => \Sec_Clock|ALT_INV_counter_s\(12),
	datae => \Sec_Clock|ALT_INV_counter_s\(16),
	dataf => \Sec_Clock|ALT_INV_counter_s\(10),
	combout => \Sec_Clock|Equal0~1_combout\);

-- Location: FF_X50_Y16_N32
\Sec_Clock|counter_s[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~5_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[20]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N30
\Sec_Clock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~5_sumout\ = SUM(( \Sec_Clock|counter_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~78\ ))
-- \Sec_Clock|Add0~6\ = CARRY(( \Sec_Clock|counter_s[20]~DUPLICATE_q\ ) + ( GND ) + ( \Sec_Clock|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sec_Clock|ALT_INV_counter_s[20]~DUPLICATE_q\,
	cin => \Sec_Clock|Add0~78\,
	sumout => \Sec_Clock|Add0~5_sumout\,
	cout => \Sec_Clock|Add0~6\);

-- Location: FF_X50_Y16_N31
\Sec_Clock|counter_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~5_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(20));

-- Location: LABCELL_X50_Y16_N33
\Sec_Clock|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~81_sumout\ = SUM(( \Sec_Clock|counter_s\(21) ) + ( GND ) + ( \Sec_Clock|Add0~6\ ))
-- \Sec_Clock|Add0~82\ = CARRY(( \Sec_Clock|counter_s\(21) ) + ( GND ) + ( \Sec_Clock|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(21),
	cin => \Sec_Clock|Add0~6\,
	sumout => \Sec_Clock|Add0~81_sumout\,
	cout => \Sec_Clock|Add0~82\);

-- Location: FF_X50_Y16_N35
\Sec_Clock|counter_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~81_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(21));

-- Location: LABCELL_X50_Y16_N36
\Sec_Clock|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~85_sumout\ = SUM(( \Sec_Clock|counter_s\(22) ) + ( GND ) + ( \Sec_Clock|Add0~82\ ))
-- \Sec_Clock|Add0~86\ = CARRY(( \Sec_Clock|counter_s\(22) ) + ( GND ) + ( \Sec_Clock|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(22),
	cin => \Sec_Clock|Add0~82\,
	sumout => \Sec_Clock|Add0~85_sumout\,
	cout => \Sec_Clock|Add0~86\);

-- Location: FF_X50_Y16_N38
\Sec_Clock|counter_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~85_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(22));

-- Location: LABCELL_X50_Y16_N39
\Sec_Clock|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~89_sumout\ = SUM(( \Sec_Clock|counter_s\(23) ) + ( GND ) + ( \Sec_Clock|Add0~86\ ))
-- \Sec_Clock|Add0~90\ = CARRY(( \Sec_Clock|counter_s\(23) ) + ( GND ) + ( \Sec_Clock|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(23),
	cin => \Sec_Clock|Add0~86\,
	sumout => \Sec_Clock|Add0~89_sumout\,
	cout => \Sec_Clock|Add0~90\);

-- Location: FF_X50_Y16_N40
\Sec_Clock|counter_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~89_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(23));

-- Location: LABCELL_X50_Y16_N42
\Sec_Clock|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~93_sumout\ = SUM(( \Sec_Clock|counter_s\(24) ) + ( GND ) + ( \Sec_Clock|Add0~90\ ))
-- \Sec_Clock|Add0~94\ = CARRY(( \Sec_Clock|counter_s\(24) ) + ( GND ) + ( \Sec_Clock|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Sec_Clock|ALT_INV_counter_s\(24),
	cin => \Sec_Clock|Add0~90\,
	sumout => \Sec_Clock|Add0~93_sumout\,
	cout => \Sec_Clock|Add0~94\);

-- Location: FF_X50_Y16_N43
\Sec_Clock|counter_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~93_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(24));

-- Location: LABCELL_X50_Y16_N45
\Sec_Clock|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Add0~97_sumout\ = SUM(( \Sec_Clock|counter_s\(25) ) + ( GND ) + ( \Sec_Clock|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Sec_Clock|ALT_INV_counter_s\(25),
	cin => \Sec_Clock|Add0~94\,
	sumout => \Sec_Clock|Add0~97_sumout\);

-- Location: FF_X50_Y16_N47
\Sec_Clock|counter_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~97_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s\(25));

-- Location: FF_X50_Y17_N32
\Sec_Clock|counter_s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~101_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[0]~DUPLICATE_q\);

-- Location: FF_X50_Y16_N37
\Sec_Clock|counter_s[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~85_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[22]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y17_N0
\Sec_Clock|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Equal0~3_combout\ = ( !\Sec_Clock|counter_s\(23) & ( !\Sec_Clock|counter_s[22]~DUPLICATE_q\ & ( (!\Sec_Clock|counter_s\(25) & (\Sec_Clock|counter_s[0]~DUPLICATE_q\ & (!\Sec_Clock|counter_s\(21) & !\Sec_Clock|counter_s\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_counter_s\(25),
	datab => \Sec_Clock|ALT_INV_counter_s[0]~DUPLICATE_q\,
	datac => \Sec_Clock|ALT_INV_counter_s\(21),
	datad => \Sec_Clock|ALT_INV_counter_s\(24),
	datae => \Sec_Clock|ALT_INV_counter_s\(23),
	dataf => \Sec_Clock|ALT_INV_counter_s[22]~DUPLICATE_q\,
	combout => \Sec_Clock|Equal0~3_combout\);

-- Location: FF_X50_Y17_N35
\Sec_Clock|counter_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Sec_Clock|Add0~1_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Sec_Clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|counter_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y17_N6
\Sec_Clock|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sec_Clock|Equal0~4_combout\ = ( \Sec_Clock|Equal0~3_combout\ & ( !\Sec_Clock|counter_s[1]~DUPLICATE_q\ & ( (\Sec_Clock|Equal0~0_combout\ & (\Sec_Clock|Equal0~2_combout\ & (\Sec_Clock|Equal0~1_combout\ & !\Sec_Clock|counter_s\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_Equal0~0_combout\,
	datab => \Sec_Clock|ALT_INV_Equal0~2_combout\,
	datac => \Sec_Clock|ALT_INV_Equal0~1_combout\,
	datad => \Sec_Clock|ALT_INV_counter_s\(20),
	datae => \Sec_Clock|ALT_INV_Equal0~3_combout\,
	dataf => \Sec_Clock|ALT_INV_counter_s[1]~DUPLICATE_q\,
	combout => \Sec_Clock|Equal0~4_combout\);

-- Location: FF_X50_Y17_N17
\Sec_Clock|slow_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Sec_Clock|Equal0~4_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sec_Clock|slow_clk~q\);

-- Location: LABCELL_X52_Y17_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \Sec_Clock|slow_clk~q\ ) + ( second_s(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \Sec_Clock|slow_clk~q\ ) + ( second_s(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(0),
	datad => \Sec_Clock|ALT_INV_slow_clk~q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X0_Y19_N55
\key_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n,
	o => \key_n~input_o\);

-- Location: FF_X52_Y19_N31
q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \key_n~input_o\,
	sload => VCC,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1~q\);

-- Location: LABCELL_X52_Y19_N45
\state_mach~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach~0_combout\ = ( !\q1~q\ & ( \key_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key_n~input_o\,
	dataf => \ALT_INV_q1~q\,
	combout => \state_mach~0_combout\);

-- Location: FF_X52_Y19_N47
q2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state_mach~0_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q2~q\);

-- Location: LABCELL_X52_Y19_N39
\clk_state_s~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_state_s~8_combout\ = ( \q2~q\ & ( \rst_n~input_o\ ) ) # ( !\q2~q\ & ( (\rst_n~input_o\ & \clk_state_s.off~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \ALT_INV_clk_state_s.off~q\,
	dataf => \ALT_INV_q2~q\,
	combout => \clk_state_s~8_combout\);

-- Location: FF_X52_Y19_N41
\clk_state_s.off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_state_s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_state_s.off~q\);

-- Location: LABCELL_X52_Y17_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( second_s(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( second_s(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X52_Y17_N12
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( second_s(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~66\ = CARRY(( second_s(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(4),
	cin => \Add0~14\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X52_Y19_N51
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \q2~q\ & ( !\clk_state_s.counting~q\ ) ) # ( !\q2~q\ & ( \clk_state_s.counting~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk_state_s.counting~q\,
	dataf => \ALT_INV_q2~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X52_Y19_N53
\clk_state_s.counting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_state_s.counting~q\);

-- Location: LABCELL_X52_Y19_N21
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \clk_state_s.counting~q\ & ( (\rst_n~input_o\ & \q2~q\) ) ) # ( !\clk_state_s.counting~q\ & ( (\rst_n~input_o\ & (\clk_state_s.paused~q\ & !\q2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datac => \ALT_INV_clk_state_s.paused~q\,
	datad => \ALT_INV_q2~q\,
	dataf => \ALT_INV_clk_state_s.counting~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X52_Y19_N17
\clk_state_s.paused\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_state_s.paused~q\);

-- Location: FF_X52_Y17_N14
\second_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~65_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(4));

-- Location: LABCELL_X52_Y17_N15
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( second_s(5) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( second_s(5) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(5),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X52_Y17_N17
\second_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~69_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(5));

-- Location: LABCELL_X52_Y17_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( second_s(6) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~26\ = CARRY(( second_s(6) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(6),
	cin => \Add0~70\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X52_Y17_N20
\second_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~25_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(6));

-- Location: LABCELL_X52_Y17_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( second_s(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( second_s(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X52_Y17_N23
\second_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~29_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(7));

-- Location: LABCELL_X52_Y17_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( second_s(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( second_s(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X52_Y17_N26
\second_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~33_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(8));

-- Location: LABCELL_X52_Y17_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( second_s(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( second_s(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X52_Y17_N29
\second_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~37_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(9));

-- Location: LABCELL_X52_Y17_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( second_s(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( second_s(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X52_Y17_N32
\second_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~41_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(10));

-- Location: LABCELL_X52_Y17_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( second_s(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( second_s(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X52_Y17_N35
\second_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~45_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(11));

-- Location: LABCELL_X52_Y17_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( second_s(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~18\ = CARRY(( second_s(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(12),
	cin => \Add0~46\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X52_Y17_N38
\second_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~17_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(12));

-- Location: LABCELL_X53_Y17_N51
\counter24h~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~0_combout\ = ( \Sec_Clock|slow_clk~q\ & ( !second_s(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(12),
	dataf => \Sec_Clock|ALT_INV_slow_clk~q\,
	combout => \counter24h~0_combout\);

-- Location: LABCELL_X52_Y17_N39
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( second_s(13) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~94\ = CARRY(( second_s(13) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(13),
	cin => \Add0~18\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X52_Y17_N41
\second_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~93_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(13));

-- Location: LABCELL_X52_Y17_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( second_s(14) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( second_s(14) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(14),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X52_Y17_N44
\second_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~97_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(14));

-- Location: LABCELL_X52_Y17_N45
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( second_s(15) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( second_s(15) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(15),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X52_Y17_N47
\second_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~101_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(15));

-- Location: LABCELL_X52_Y17_N48
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( second_s(16) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( second_s(16) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(16),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X52_Y17_N50
\second_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~105_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(16));

-- Location: LABCELL_X52_Y17_N51
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( second_s(17) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( second_s(17) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(17),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X52_Y17_N53
\second_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~109_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(17));

-- Location: LABCELL_X52_Y17_N54
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( second_s(18) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~90\ = CARRY(( second_s(18) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(18),
	cin => \Add0~110\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X52_Y17_N56
\second_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~89_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(18));

-- Location: LABCELL_X52_Y17_N57
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( second_s(19) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~58\ = CARRY(( second_s(19) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(19),
	cin => \Add0~90\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X52_Y17_N59
\second_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~57_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(19));

-- Location: LABCELL_X52_Y16_N0
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( second_s(20) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( second_s(20) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(20),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X52_Y16_N2
\second_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~53_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(20));

-- Location: LABCELL_X52_Y16_N3
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( second_s(21) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( second_s(21) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(21),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X52_Y16_N5
\second_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~49_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(21));

-- Location: LABCELL_X52_Y16_N6
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( second_s(22) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~78\ = CARRY(( second_s(22) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(22),
	cin => \Add0~50\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X52_Y16_N8
\second_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~77_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(22));

-- Location: LABCELL_X52_Y16_N9
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( second_s(23) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( second_s(23) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(23),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X52_Y16_N11
\second_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~81_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(23));

-- Location: LABCELL_X52_Y16_N12
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( second_s(24) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~62\ = CARRY(( second_s(24) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(24),
	cin => \Add0~82\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X52_Y16_N14
\second_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~61_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(24));

-- Location: LABCELL_X52_Y16_N15
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( second_s(25) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~74\ = CARRY(( second_s(25) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(25),
	cin => \Add0~62\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X52_Y16_N17
\second_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~73_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(25));

-- Location: LABCELL_X52_Y16_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( second_s(26) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~22\ = CARRY(( second_s(26) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(26),
	cin => \Add0~74\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X52_Y16_N20
\second_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~21_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(26));

-- Location: LABCELL_X52_Y16_N21
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( second_s(27) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~122\ = CARRY(( second_s(27) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(27),
	cin => \Add0~22\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X52_Y16_N23
\second_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~121_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(27));

-- Location: LABCELL_X52_Y16_N24
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( second_s(28) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( second_s(28) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_second_s(28),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X52_Y16_N26
\second_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~117_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(28));

-- Location: LABCELL_X52_Y16_N27
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( second_s(29) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~86\ = CARRY(( second_s(29) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(29),
	cin => \Add0~118\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X52_Y16_N29
\second_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~85_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(29));

-- Location: LABCELL_X52_Y16_N54
\counter24h~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~4_combout\ = ( !second_s(14) & ( !second_s(18) & ( (!second_s(29) & (!second_s(23) & (!second_s(15) & !second_s(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(29),
	datab => ALT_INV_second_s(23),
	datac => ALT_INV_second_s(15),
	datad => ALT_INV_second_s(13),
	datae => ALT_INV_second_s(14),
	dataf => ALT_INV_second_s(18),
	combout => \counter24h~4_combout\);

-- Location: LABCELL_X52_Y16_N36
\counter24h~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~2_combout\ = ( !second_s(5) & ( !second_s(19) & ( (!second_s(21) & (!second_s(24) & (!second_s(20) & !second_s(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(21),
	datab => ALT_INV_second_s(24),
	datac => ALT_INV_second_s(20),
	datad => ALT_INV_second_s(4),
	datae => ALT_INV_second_s(5),
	dataf => ALT_INV_second_s(19),
	combout => \counter24h~2_combout\);

-- Location: LABCELL_X52_Y16_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( second_s(30) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(30),
	cin => \Add0~86\,
	sumout => \Add0~113_sumout\);

-- Location: FF_X52_Y16_N32
\second_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~113_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(30));

-- Location: LABCELL_X52_Y16_N51
\counter24h~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~5_combout\ = ( !second_s(17) & ( !second_s(16) & ( (!second_s(27) & (!second_s(30) & !second_s(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(27),
	datac => ALT_INV_second_s(30),
	datad => ALT_INV_second_s(28),
	datae => ALT_INV_second_s(17),
	dataf => ALT_INV_second_s(16),
	combout => \counter24h~5_combout\);

-- Location: LABCELL_X53_Y17_N42
\counter24h~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~1_combout\ = ( !second_s(8) & ( !second_s(6) & ( (!second_s(9) & (!second_s(10) & (!second_s(7) & !second_s(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(9),
	datab => ALT_INV_second_s(10),
	datac => ALT_INV_second_s(7),
	datad => ALT_INV_second_s(11),
	datae => ALT_INV_second_s(8),
	dataf => ALT_INV_second_s(6),
	combout => \counter24h~1_combout\);

-- Location: LABCELL_X53_Y16_N33
\counter24h~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~3_combout\ = ( !second_s(25) & ( !second_s(2) & ( (!second_s(1) & (second_s(3) & (second_s(0) & !second_s(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(1),
	datab => ALT_INV_second_s(3),
	datac => ALT_INV_second_s(0),
	datad => ALT_INV_second_s(22),
	datae => ALT_INV_second_s(25),
	dataf => ALT_INV_second_s(2),
	combout => \counter24h~3_combout\);

-- Location: LABCELL_X52_Y16_N42
\counter24h~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~6_combout\ = ( \counter24h~1_combout\ & ( \counter24h~3_combout\ & ( (!second_s(26) & (\counter24h~4_combout\ & (\counter24h~2_combout\ & \counter24h~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(26),
	datab => \ALT_INV_counter24h~4_combout\,
	datac => \ALT_INV_counter24h~2_combout\,
	datad => \ALT_INV_counter24h~5_combout\,
	datae => \ALT_INV_counter24h~1_combout\,
	dataf => \ALT_INV_counter24h~3_combout\,
	combout => \counter24h~6_combout\);

-- Location: LABCELL_X52_Y19_N24
\second_s[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_s[23]~0_combout\ = ( \counter24h~6_combout\ & ( (!\clk_state_s.off~q\) # (\counter24h~0_combout\) ) ) # ( !\counter24h~6_combout\ & ( !\clk_state_s.off~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk_state_s.off~q\,
	datad => \ALT_INV_counter24h~0_combout\,
	dataf => \ALT_INV_counter24h~6_combout\,
	combout => \second_s[23]~0_combout\);

-- Location: FF_X52_Y17_N2
\second_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~1_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(0));

-- Location: LABCELL_X52_Y17_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( second_s(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( second_s(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second_s(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X52_Y17_N5
\second_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~5_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(1));

-- Location: LABCELL_X52_Y17_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( second_s(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( second_s(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X52_Y17_N8
\second_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~9_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(2));

-- Location: FF_X52_Y17_N11
\second_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add0~13_sumout\,
	sclr => \second_s[23]~0_combout\,
	ena => \ALT_INV_clk_state_s.paused~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second_s(3));

-- Location: LABCELL_X50_Y19_N45
\display5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux6~0_combout\ = ( !second_s(1) & ( (!second_s(3) & (!second_s(2) $ (!second_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(3),
	datab => ALT_INV_second_s(2),
	datad => ALT_INV_second_s(0),
	dataf => ALT_INV_second_s(1),
	combout => \display5|Mux6~0_combout\);

-- Location: LABCELL_X50_Y17_N12
\display5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux5~0_combout\ = ( second_s(2) & ( !second_s(1) $ (!second_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(1),
	datac => ALT_INV_second_s(0),
	datae => ALT_INV_second_s(2),
	combout => \display5|Mux5~0_combout\);

-- Location: LABCELL_X50_Y18_N48
\display5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux4~0_combout\ = (!second_s(2) & (second_s(1) & !second_s(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(2),
	datac => ALT_INV_second_s(1),
	datad => ALT_INV_second_s(0),
	combout => \display5|Mux4~0_combout\);

-- Location: LABCELL_X50_Y19_N54
\display5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux3~0_combout\ = ( second_s(2) & ( (!second_s(3) & (!second_s(1) $ (second_s(0)))) ) ) # ( !second_s(2) & ( (!second_s(1) & (!second_s(3) & second_s(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(1),
	datac => ALT_INV_second_s(3),
	datad => ALT_INV_second_s(0),
	dataf => ALT_INV_second_s(2),
	combout => \display5|Mux3~0_combout\);

-- Location: LABCELL_X53_Y16_N3
\display5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux2~0_combout\ = ( second_s(2) & ( (!second_s(1)) # (second_s(0)) ) ) # ( !second_s(2) & ( second_s(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(0),
	datac => ALT_INV_second_s(1),
	dataf => ALT_INV_second_s(2),
	combout => \display5|Mux2~0_combout\);

-- Location: LABCELL_X50_Y19_N57
\display5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux1~0_combout\ = ( !second_s(3) & ( (!second_s(1) & (!second_s(2) & second_s(0))) # (second_s(1) & ((!second_s(2)) # (second_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(1),
	datac => ALT_INV_second_s(2),
	datad => ALT_INV_second_s(0),
	dataf => ALT_INV_second_s(3),
	combout => \display5|Mux1~0_combout\);

-- Location: LABCELL_X50_Y19_N42
\display5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|Mux0~0_combout\ = ( second_s(1) & ( ((!second_s(2)) # (!second_s(0))) # (second_s(3)) ) ) # ( !second_s(1) & ( (second_s(2)) # (second_s(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111110111011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(3),
	datab => ALT_INV_second_s(2),
	datad => ALT_INV_second_s(0),
	dataf => ALT_INV_second_s(1),
	combout => \display5|Mux0~0_combout\);

-- Location: LABCELL_X53_Y21_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( deci_second_s(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( deci_second_s(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X53_Y21_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( deci_second_s(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( deci_second_s(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X53_Y21_N12
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( deci_second_s(4) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~62\ = CARRY(( deci_second_s(4) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(4),
	cin => \Add1~14\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: LABCELL_X52_Y19_N42
\deci_second_s[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_second_s[17]~1_combout\ = ( \counter24h~6_combout\ & ( (!\clk_state_s.off~q\) # ((\Sec_Clock|slow_clk~q\ & (\clk_state_s.counting~q\ & !second_s(12)))) ) ) # ( !\counter24h~6_combout\ & ( !\clk_state_s.off~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001101110011001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_slow_clk~q\,
	datab => \ALT_INV_clk_state_s.off~q\,
	datac => \ALT_INV_clk_state_s.counting~q\,
	datad => ALT_INV_second_s(12),
	dataf => \ALT_INV_counter24h~6_combout\,
	combout => \deci_second_s[17]~1_combout\);

-- Location: FF_X53_Y21_N14
\deci_second_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~61_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(4));

-- Location: LABCELL_X53_Y21_N15
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( deci_second_s(5) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~122\ = CARRY(( deci_second_s(5) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(5),
	cin => \Add1~62\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X53_Y21_N17
\deci_second_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~121_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(5));

-- Location: LABCELL_X53_Y21_N18
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( deci_second_s(6) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( deci_second_s(6) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(6),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X53_Y21_N20
\deci_second_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~117_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(6));

-- Location: LABCELL_X53_Y21_N21
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( deci_second_s(7) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~66\ = CARRY(( deci_second_s(7) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(7),
	cin => \Add1~118\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X53_Y21_N23
\deci_second_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~65_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(7));

-- Location: LABCELL_X53_Y21_N24
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( deci_second_s(8) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~114\ = CARRY(( deci_second_s(8) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(8),
	cin => \Add1~66\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X53_Y21_N26
\deci_second_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~113_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(8));

-- Location: LABCELL_X53_Y21_N27
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( deci_second_s(9) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( deci_second_s(9) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(9),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X53_Y21_N29
\deci_second_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~109_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(9));

-- Location: LABCELL_X53_Y21_N30
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( deci_second_s(10) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( deci_second_s(10) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(10),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X53_Y21_N32
\deci_second_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~105_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(10));

-- Location: LABCELL_X53_Y21_N33
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( deci_second_s(11) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( deci_second_s(11) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(11),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X53_Y21_N35
\deci_second_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~101_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(11));

-- Location: LABCELL_X53_Y21_N36
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( deci_second_s(12) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( deci_second_s(12) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(12),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X53_Y21_N38
\deci_second_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~97_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(12));

-- Location: LABCELL_X53_Y21_N39
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( deci_second_s(13) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( deci_second_s(13) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(13),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X53_Y21_N41
\deci_second_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~93_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(13));

-- Location: LABCELL_X53_Y21_N42
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( deci_second_s(14) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( deci_second_s(14) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(14),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X53_Y21_N44
\deci_second_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~89_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(14));

-- Location: LABCELL_X53_Y21_N45
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( deci_second_s(15) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( deci_second_s(15) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(15),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X53_Y21_N47
\deci_second_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~85_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(15));

-- Location: LABCELL_X53_Y21_N48
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( deci_second_s(16) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( deci_second_s(16) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(16),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X53_Y21_N50
\deci_second_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~81_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(16));

-- Location: LABCELL_X53_Y21_N51
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( deci_second_s(17) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( deci_second_s(17) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(17),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X53_Y21_N53
\deci_second_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~77_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(17));

-- Location: LABCELL_X53_Y21_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( deci_second_s(18) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~34\ = CARRY(( deci_second_s(18) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(18),
	cin => \Add1~78\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X53_Y21_N56
\deci_second_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~33_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(18));

-- Location: LABCELL_X53_Y21_N57
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( deci_second_s(19) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( deci_second_s(19) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(19),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X53_Y21_N59
\deci_second_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~29_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(19));

-- Location: LABCELL_X53_Y20_N0
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( deci_second_s(20) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( deci_second_s(20) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(20),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X53_Y20_N2
\deci_second_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~25_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(20));

-- Location: LABCELL_X53_Y20_N3
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( deci_second_s(21) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( deci_second_s(21) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(21),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X53_Y20_N5
\deci_second_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~21_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(21));

-- Location: LABCELL_X53_Y20_N6
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( deci_second_s(22) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( deci_second_s(22) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(22),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X53_Y20_N8
\deci_second_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~17_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(22));

-- Location: LABCELL_X53_Y20_N9
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( deci_second_s(23) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~58\ = CARRY(( deci_second_s(23) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(23),
	cin => \Add1~18\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X53_Y20_N11
\deci_second_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~57_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(23));

-- Location: LABCELL_X53_Y20_N12
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( deci_second_s(24) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( deci_second_s(24) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(24),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X53_Y20_N14
\deci_second_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~53_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(24));

-- Location: LABCELL_X53_Y20_N15
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( deci_second_s(25) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( deci_second_s(25) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(25),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X53_Y20_N17
\deci_second_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~49_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(25));

-- Location: LABCELL_X53_Y20_N18
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( deci_second_s(26) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( deci_second_s(26) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(26),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X53_Y20_N20
\deci_second_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~45_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(26));

-- Location: LABCELL_X53_Y20_N21
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( deci_second_s(27) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~70\ = CARRY(( deci_second_s(27) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(27),
	cin => \Add1~46\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X53_Y20_N23
\deci_second_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~69_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(27));

-- Location: LABCELL_X53_Y20_N24
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( deci_second_s(28) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~42\ = CARRY(( deci_second_s(28) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(28),
	cin => \Add1~70\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X53_Y20_N26
\deci_second_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~41_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(28));

-- Location: LABCELL_X53_Y20_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( deci_second_s(29) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( deci_second_s(29) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(29),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X53_Y20_N29
\deci_second_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~37_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(29));

-- Location: LABCELL_X53_Y20_N48
\counter24h~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~7_combout\ = ( !deci_second_s(29) & ( !deci_second_s(23) & ( (!deci_second_s(28) & (!deci_second_s(25) & (!deci_second_s(26) & !deci_second_s(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(28),
	datab => ALT_INV_deci_second_s(25),
	datac => ALT_INV_deci_second_s(26),
	datad => ALT_INV_deci_second_s(24),
	datae => ALT_INV_deci_second_s(29),
	dataf => ALT_INV_deci_second_s(23),
	combout => \counter24h~7_combout\);

-- Location: LABCELL_X52_Y18_N6
\counter24h~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~10_combout\ = ( !deci_second_s(10) & ( !deci_second_s(5) & ( (!deci_second_s(6) & (!deci_second_s(9) & (!deci_second_s(11) & !deci_second_s(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(6),
	datab => ALT_INV_deci_second_s(9),
	datac => ALT_INV_deci_second_s(11),
	datad => ALT_INV_deci_second_s(8),
	datae => ALT_INV_deci_second_s(10),
	dataf => ALT_INV_deci_second_s(5),
	combout => \counter24h~10_combout\);

-- Location: LABCELL_X52_Y18_N57
\counter24h~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~27_combout\ = ( !deci_second_s(18) & ( !deci_second_s(19) & ( (!deci_second_s(20) & (!deci_second_s(21) & (deci_second_s(2) & !deci_second_s(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(20),
	datab => ALT_INV_deci_second_s(21),
	datac => ALT_INV_deci_second_s(2),
	datad => ALT_INV_deci_second_s(22),
	datae => ALT_INV_deci_second_s(18),
	dataf => ALT_INV_deci_second_s(19),
	combout => \counter24h~27_combout\);

-- Location: LABCELL_X52_Y18_N0
\counter24h~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~9_combout\ = ( !deci_second_s(15) & ( !deci_second_s(14) & ( (!deci_second_s(17) & (!deci_second_s(16) & (!deci_second_s(13) & !deci_second_s(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(17),
	datab => ALT_INV_deci_second_s(16),
	datac => ALT_INV_deci_second_s(13),
	datad => ALT_INV_deci_second_s(12),
	datae => ALT_INV_deci_second_s(15),
	dataf => ALT_INV_deci_second_s(14),
	combout => \counter24h~9_combout\);

-- Location: LABCELL_X53_Y20_N30
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( deci_second_s(30) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(30),
	cin => \Add1~38\,
	sumout => \Add1~73_sumout\);

-- Location: FF_X53_Y20_N32
\deci_second_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~73_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(30));

-- Location: LABCELL_X52_Y18_N30
\counter24h~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~8_combout\ = ( !deci_second_s(3) & ( deci_second_s(0) & ( (!deci_second_s(4) & (!deci_second_s(30) & (!deci_second_s(7) & !deci_second_s(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(4),
	datab => ALT_INV_deci_second_s(30),
	datac => ALT_INV_deci_second_s(7),
	datad => ALT_INV_deci_second_s(27),
	datae => ALT_INV_deci_second_s(3),
	dataf => ALT_INV_deci_second_s(0),
	combout => \counter24h~8_combout\);

-- Location: LABCELL_X52_Y18_N24
\counter24h~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~11_combout\ = ( \counter24h~9_combout\ & ( \counter24h~8_combout\ & ( (\counter24h~7_combout\ & (\counter24h~10_combout\ & (!deci_second_s(1) & \counter24h~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~7_combout\,
	datab => \ALT_INV_counter24h~10_combout\,
	datac => ALT_INV_deci_second_s(1),
	datad => \ALT_INV_counter24h~27_combout\,
	datae => \ALT_INV_counter24h~9_combout\,
	dataf => \ALT_INV_counter24h~8_combout\,
	combout => \counter24h~11_combout\);

-- Location: LABCELL_X53_Y20_N54
\deci_second_s[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_second_s[17]~0_combout\ = ( \clk_state_s.off~q\ & ( (\Sec_Clock|slow_clk~q\ & (\counter24h~6_combout\ & (!second_s(12) & \counter24h~11_combout\))) ) ) # ( !\clk_state_s.off~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_slow_clk~q\,
	datab => \ALT_INV_counter24h~6_combout\,
	datac => ALT_INV_second_s(12),
	datad => \ALT_INV_counter24h~11_combout\,
	dataf => \ALT_INV_clk_state_s.off~q\,
	combout => \deci_second_s[17]~0_combout\);

-- Location: FF_X53_Y21_N2
\deci_second_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~1_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(0));

-- Location: LABCELL_X53_Y21_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( deci_second_s(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( deci_second_s(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_second_s(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X53_Y21_N5
\deci_second_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~5_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(1));

-- Location: LABCELL_X53_Y21_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( deci_second_s(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( deci_second_s(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X53_Y21_N8
\deci_second_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~9_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(2));

-- Location: FF_X53_Y21_N11
\deci_second_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add1~13_sumout\,
	sclr => \deci_second_s[17]~0_combout\,
	ena => \deci_second_s[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_second_s(3));

-- Location: LABCELL_X52_Y18_N51
\display4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux6~0_combout\ = ( !deci_second_s(1) & ( (!deci_second_s(3) & (!deci_second_s(2) $ (!deci_second_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000000000000000000000101000001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(3),
	datab => ALT_INV_deci_second_s(2),
	datac => ALT_INV_deci_second_s(0),
	datae => ALT_INV_deci_second_s(1),
	combout => \display4|Mux6~0_combout\);

-- Location: LABCELL_X53_Y16_N9
\display4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux5~0_combout\ = ( deci_second_s(2) & ( !deci_second_s(1) $ (!deci_second_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(1),
	datac => ALT_INV_deci_second_s(0),
	datae => ALT_INV_deci_second_s(2),
	combout => \display4|Mux5~0_combout\);

-- Location: LABCELL_X52_Y20_N48
\display4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux4~0_combout\ = ( !deci_second_s(0) & ( (!deci_second_s(2) & deci_second_s(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(2),
	datac => ALT_INV_deci_second_s(1),
	dataf => ALT_INV_deci_second_s(0),
	combout => \display4|Mux4~0_combout\);

-- Location: LABCELL_X52_Y18_N45
\display4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux3~0_combout\ = ( deci_second_s(1) & ( (!deci_second_s(3) & (deci_second_s(2) & deci_second_s(0))) ) ) # ( !deci_second_s(1) & ( (!deci_second_s(3) & (!deci_second_s(2) $ (!deci_second_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000000000100000001000101000001010000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(3),
	datab => ALT_INV_deci_second_s(2),
	datac => ALT_INV_deci_second_s(0),
	datae => ALT_INV_deci_second_s(1),
	combout => \display4|Mux3~0_combout\);

-- Location: LABCELL_X53_Y16_N36
\display4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux2~0_combout\ = ( deci_second_s(2) & ( deci_second_s(0) ) ) # ( !deci_second_s(2) & ( deci_second_s(0) ) ) # ( deci_second_s(2) & ( !deci_second_s(0) & ( !deci_second_s(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_second_s(1),
	datae => ALT_INV_deci_second_s(2),
	dataf => ALT_INV_deci_second_s(0),
	combout => \display4|Mux2~0_combout\);

-- Location: LABCELL_X52_Y18_N15
\display4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux1~0_combout\ = ( deci_second_s(1) & ( (!deci_second_s(3) & ((!deci_second_s(2)) # (deci_second_s(0)))) ) ) # ( !deci_second_s(1) & ( (!deci_second_s(3) & (!deci_second_s(2) & deci_second_s(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100010101000101000001000000010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_second_s(3),
	datab => ALT_INV_deci_second_s(2),
	datac => ALT_INV_deci_second_s(0),
	datae => ALT_INV_deci_second_s(1),
	combout => \display4|Mux1~0_combout\);

-- Location: LABCELL_X53_Y20_N36
\display4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux0~0_combout\ = ( deci_second_s(0) & ( (!deci_second_s(2) $ (!deci_second_s(1))) # (deci_second_s(3)) ) ) # ( !deci_second_s(0) & ( ((deci_second_s(1)) # (deci_second_s(2))) # (deci_second_s(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_second_s(3),
	datac => ALT_INV_deci_second_s(2),
	datad => ALT_INV_deci_second_s(1),
	dataf => ALT_INV_deci_second_s(0),
	combout => \display4|Mux0~0_combout\);

-- Location: LABCELL_X50_Y20_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( minute_s(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( minute_s(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X50_Y20_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( minute_s(1) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( minute_s(1) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X50_Y20_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( minute_s(2) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( minute_s(2) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X50_Y19_N36
\minute_s[26]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute_s[26]~1_combout\ = ( \counter24h~11_combout\ & ( \clk_state_s.counting~q\ & ( (!\clk_state_s.off~q\) # ((!second_s(12) & (\Sec_Clock|slow_clk~q\ & \counter24h~6_combout\))) ) ) ) # ( !\counter24h~11_combout\ & ( \clk_state_s.counting~q\ & ( 
-- !\clk_state_s.off~q\ ) ) ) # ( \counter24h~11_combout\ & ( !\clk_state_s.counting~q\ & ( !\clk_state_s.off~q\ ) ) ) # ( !\counter24h~11_combout\ & ( !\clk_state_s.counting~q\ & ( !\clk_state_s.off~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(12),
	datab => \Sec_Clock|ALT_INV_slow_clk~q\,
	datac => \ALT_INV_counter24h~6_combout\,
	datad => \ALT_INV_clk_state_s.off~q\,
	datae => \ALT_INV_counter24h~11_combout\,
	dataf => \ALT_INV_clk_state_s.counting~q\,
	combout => \minute_s[26]~1_combout\);

-- Location: FF_X50_Y20_N8
\minute_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~9_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(2));

-- Location: LABCELL_X50_Y20_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( minute_s(3) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( minute_s(3) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute_s(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X50_Y20_N11
\minute_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~13_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(3));

-- Location: LABCELL_X50_Y20_N12
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( minute_s(4) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~34\ = CARRY(( minute_s(4) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(4),
	cin => \Add2~14\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X50_Y20_N14
\minute_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~33_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(4));

-- Location: LABCELL_X50_Y20_N15
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( minute_s(5) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( minute_s(5) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute_s(5),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X50_Y20_N17
\minute_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~29_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(5));

-- Location: LABCELL_X50_Y20_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( minute_s(6) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( minute_s(6) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute_s(6),
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X50_Y20_N20
\minute_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~25_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(6));

-- Location: LABCELL_X50_Y20_N21
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( minute_s(7) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~74\ = CARRY(( minute_s(7) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(7),
	cin => \Add2~26\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X50_Y20_N23
\minute_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~73_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(7));

-- Location: LABCELL_X50_Y20_N24
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( minute_s(8) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( minute_s(8) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(8),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X50_Y20_N26
\minute_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~69_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(8));

-- Location: LABCELL_X50_Y20_N27
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( minute_s(9) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( minute_s(9) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(9),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X50_Y20_N29
\minute_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~65_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(9));

-- Location: LABCELL_X50_Y20_N30
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( minute_s(10) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~114\ = CARRY(( minute_s(10) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(10),
	cin => \Add2~66\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X50_Y20_N32
\minute_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~113_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(10));

-- Location: LABCELL_X50_Y20_N33
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( minute_s(11) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( minute_s(11) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(11),
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X50_Y20_N35
\minute_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~109_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(11));

-- Location: LABCELL_X50_Y20_N36
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( minute_s(12) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( minute_s(12) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(12),
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X50_Y20_N38
\minute_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~105_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(12));

-- Location: LABCELL_X50_Y20_N39
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( GND ) + ( minute_s(13) ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( GND ) + ( minute_s(13) ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_minute_s(13),
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X50_Y20_N41
\minute_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~101_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(13));

-- Location: LABCELL_X50_Y20_N42
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( minute_s(14) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~118\ = CARRY(( minute_s(14) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(14),
	cin => \Add2~102\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X50_Y20_N44
\minute_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~117_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(14));

-- Location: LABCELL_X50_Y20_N45
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( minute_s(15) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~98\ = CARRY(( minute_s(15) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(15),
	cin => \Add2~118\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X50_Y20_N47
\minute_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~97_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(15));

-- Location: LABCELL_X50_Y20_N48
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( minute_s(16) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( minute_s(16) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(16),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X50_Y20_N50
\minute_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~93_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(16));

-- Location: LABCELL_X50_Y20_N51
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( minute_s(17) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~22\ = CARRY(( minute_s(17) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(17),
	cin => \Add2~94\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X50_Y20_N53
\minute_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~21_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(17));

-- Location: LABCELL_X50_Y20_N54
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( minute_s(18) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~62\ = CARRY(( minute_s(18) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(18),
	cin => \Add2~22\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X50_Y20_N56
\minute_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~61_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(18));

-- Location: LABCELL_X50_Y20_N57
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( minute_s(19) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~50\ = CARRY(( minute_s(19) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(19),
	cin => \Add2~62\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X50_Y20_N59
\minute_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~49_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(19));

-- Location: LABCELL_X50_Y19_N0
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( minute_s(20) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~58\ = CARRY(( minute_s(20) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(20),
	cin => \Add2~50\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X50_Y19_N2
\minute_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~57_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(20));

-- Location: LABCELL_X50_Y19_N3
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( minute_s(21) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~78\ = CARRY(( minute_s(21) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(21),
	cin => \Add2~58\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X50_Y19_N5
\minute_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~77_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(21));

-- Location: LABCELL_X50_Y19_N6
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( minute_s(22) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~122\ = CARRY(( minute_s(22) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(22),
	cin => \Add2~78\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X50_Y19_N8
\minute_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~121_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(22));

-- Location: LABCELL_X50_Y19_N9
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( minute_s(23) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~42\ = CARRY(( minute_s(23) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(23),
	cin => \Add2~122\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X50_Y19_N11
\minute_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~41_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(23));

-- Location: LABCELL_X50_Y19_N12
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( minute_s(24) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( minute_s(24) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(24),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X50_Y19_N14
\minute_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~45_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(24));

-- Location: LABCELL_X50_Y19_N15
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( minute_s(25) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~54\ = CARRY(( minute_s(25) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute_s(25),
	cin => \Add2~46\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X50_Y19_N17
\minute_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~53_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(25));

-- Location: LABCELL_X50_Y19_N18
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( minute_s(26) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~82\ = CARRY(( minute_s(26) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(26),
	cin => \Add2~54\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X50_Y19_N20
\minute_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~81_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(26));

-- Location: LABCELL_X50_Y19_N21
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( minute_s(27) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~90\ = CARRY(( minute_s(27) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(27),
	cin => \Add2~82\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X50_Y19_N23
\minute_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~89_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(27));

-- Location: LABCELL_X50_Y19_N24
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( minute_s(28) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( minute_s(28) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute_s(28),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X50_Y19_N26
\minute_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~85_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(28));

-- Location: LABCELL_X50_Y19_N27
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( minute_s(29) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~18\ = CARRY(( minute_s(29) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(29),
	cin => \Add2~86\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X50_Y19_N29
\minute_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~17_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(29));

-- Location: LABCELL_X50_Y19_N30
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( minute_s(30) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(30),
	cin => \Add2~18\,
	sumout => \Add2~37_sumout\);

-- Location: FF_X50_Y19_N32
\minute_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~37_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(30));

-- Location: LABCELL_X52_Y19_N54
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !minute_s(5) & ( !minute_s(4) & ( (!minute_s(30) & (!minute_s(17) & (!minute_s(6) & minute_s(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(30),
	datab => ALT_INV_minute_s(17),
	datac => ALT_INV_minute_s(6),
	datad => ALT_INV_minute_s(3),
	datae => ALT_INV_minute_s(5),
	dataf => ALT_INV_minute_s(4),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X50_Y19_N48
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !minute_s(23) & ( !minute_s(19) & ( (!minute_s(20) & (!minute_s(24) & (!minute_s(25) & !minute_s(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(20),
	datab => ALT_INV_minute_s(24),
	datac => ALT_INV_minute_s(25),
	datad => ALT_INV_minute_s(18),
	datae => ALT_INV_minute_s(23),
	dataf => ALT_INV_minute_s(19),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X52_Y20_N42
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( minute_s(0) & ( !minute_s(10) & ( (!minute_s(11) & (!minute_s(22) & (!minute_s(12) & !minute_s(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(11),
	datab => ALT_INV_minute_s(22),
	datac => ALT_INV_minute_s(12),
	datad => ALT_INV_minute_s(14),
	datae => ALT_INV_minute_s(0),
	dataf => ALT_INV_minute_s(10),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X50_Y18_N54
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !minute_s(26) & ( !minute_s(15) & ( (!minute_s(13) & (!minute_s(27) & (!minute_s(16) & !minute_s(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(13),
	datab => ALT_INV_minute_s(27),
	datac => ALT_INV_minute_s(16),
	datad => ALT_INV_minute_s(28),
	datae => ALT_INV_minute_s(26),
	dataf => ALT_INV_minute_s(15),
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X53_Y20_N42
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !minute_s(2) & ( !minute_s(21) & ( (!minute_s(9) & (!minute_s(8) & (!minute_s(7) & !minute_s(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute_s(9),
	datab => ALT_INV_minute_s(8),
	datac => ALT_INV_minute_s(7),
	datad => ALT_INV_minute_s(1),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(21),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X52_Y19_N0
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( \Equal2~3_combout\ & ( \Equal2~2_combout\ & ( (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~4_combout\ & !minute_s(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Equal2~4_combout\,
	datad => ALT_INV_minute_s(29),
	datae => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X50_Y19_N39
\minute_s[26]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \minute_s[26]~0_combout\ = ( \counter24h~11_combout\ & ( \Equal2~5_combout\ & ( (!\clk_state_s.off~q\) # ((!second_s(12) & (\Sec_Clock|slow_clk~q\ & \counter24h~6_combout\))) ) ) ) # ( !\counter24h~11_combout\ & ( \Equal2~5_combout\ & ( 
-- !\clk_state_s.off~q\ ) ) ) # ( \counter24h~11_combout\ & ( !\Equal2~5_combout\ & ( !\clk_state_s.off~q\ ) ) ) # ( !\counter24h~11_combout\ & ( !\Equal2~5_combout\ & ( !\clk_state_s.off~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second_s(12),
	datab => \Sec_Clock|ALT_INV_slow_clk~q\,
	datac => \ALT_INV_clk_state_s.off~q\,
	datad => \ALT_INV_counter24h~6_combout\,
	datae => \ALT_INV_counter24h~11_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \minute_s[26]~0_combout\);

-- Location: FF_X50_Y20_N2
\minute_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~1_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(0));

-- Location: FF_X50_Y20_N5
\minute_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add2~5_sumout\,
	sclr => \minute_s[26]~0_combout\,
	ena => \minute_s[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute_s(1));

-- Location: LABCELL_X50_Y18_N6
\display3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = ( !minute_s(2) & ( minute_s(0) & ( (!minute_s(1) & !minute_s(3)) ) ) ) # ( minute_s(2) & ( !minute_s(0) & ( (!minute_s(1) & !minute_s(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datad => ALT_INV_minute_s(3),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(0),
	combout => \display3|Mux6~0_combout\);

-- Location: LABCELL_X50_Y18_N36
\display3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux5~0_combout\ = ( minute_s(2) & ( minute_s(0) & ( !minute_s(1) ) ) ) # ( minute_s(2) & ( !minute_s(0) & ( minute_s(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(0),
	combout => \display3|Mux5~0_combout\);

-- Location: LABCELL_X50_Y18_N45
\display3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = ( !minute_s(2) & ( !minute_s(0) & ( minute_s(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(0),
	combout => \display3|Mux4~0_combout\);

-- Location: LABCELL_X50_Y18_N3
\display3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = ( minute_s(2) & ( !minute_s(3) & ( !minute_s(1) $ (minute_s(0)) ) ) ) # ( !minute_s(2) & ( !minute_s(3) & ( (!minute_s(1) & minute_s(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datac => ALT_INV_minute_s(0),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(3),
	combout => \display3|Mux3~0_combout\);

-- Location: LABCELL_X53_Y20_N57
\display3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = ( minute_s(1) & ( minute_s(0) ) ) # ( !minute_s(1) & ( (minute_s(2)) # (minute_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_minute_s(0),
	datad => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(1),
	combout => \display3|Mux2~0_combout\);

-- Location: LABCELL_X50_Y18_N30
\display3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = ( minute_s(2) & ( minute_s(0) & ( (minute_s(1) & !minute_s(3)) ) ) ) # ( !minute_s(2) & ( minute_s(0) & ( !minute_s(3) ) ) ) # ( !minute_s(2) & ( !minute_s(0) & ( (minute_s(1) & !minute_s(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011111111000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datad => ALT_INV_minute_s(3),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(0),
	combout => \display3|Mux1~0_combout\);

-- Location: LABCELL_X50_Y18_N27
\display3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = ( minute_s(2) & ( minute_s(3) ) ) # ( !minute_s(2) & ( minute_s(3) ) ) # ( minute_s(2) & ( !minute_s(3) & ( (!minute_s(1)) # (!minute_s(0)) ) ) ) # ( !minute_s(2) & ( !minute_s(3) & ( minute_s(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_minute_s(1),
	datac => ALT_INV_minute_s(0),
	datae => ALT_INV_minute_s(2),
	dataf => ALT_INV_minute_s(3),
	combout => \display3|Mux0~0_combout\);

-- Location: MLABCELL_X49_Y20_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( deci_minute_s(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( deci_minute_s(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X49_Y20_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( deci_minute_s(1) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( deci_minute_s(1) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(1),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X52_Y19_N6
\deci_minute_s[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_minute_s[7]~1_combout\ = ( \Equal2~5_combout\ & ( \clk_state_s.counting~q\ & ( (!\clk_state_s.off~q\) # ((\counter24h~0_combout\ & (\counter24h~11_combout\ & \counter24h~6_combout\))) ) ) ) # ( !\Equal2~5_combout\ & ( \clk_state_s.counting~q\ & ( 
-- !\clk_state_s.off~q\ ) ) ) # ( \Equal2~5_combout\ & ( !\clk_state_s.counting~q\ & ( !\clk_state_s.off~q\ ) ) ) # ( !\Equal2~5_combout\ & ( !\clk_state_s.counting~q\ & ( !\clk_state_s.off~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~0_combout\,
	datab => \ALT_INV_counter24h~11_combout\,
	datac => \ALT_INV_counter24h~6_combout\,
	datad => \ALT_INV_clk_state_s.off~q\,
	datae => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_clk_state_s.counting~q\,
	combout => \deci_minute_s[7]~1_combout\);

-- Location: FF_X49_Y20_N5
\deci_minute_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~5_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(1));

-- Location: MLABCELL_X49_Y20_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( deci_minute_s(2) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( deci_minute_s(2) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(2),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X49_Y20_N8
\deci_minute_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~9_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(2));

-- Location: MLABCELL_X49_Y20_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( deci_minute_s(3) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( deci_minute_s(3) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(3),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X49_Y20_N11
\deci_minute_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~13_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(3));

-- Location: MLABCELL_X49_Y20_N12
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( deci_minute_s(4) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~62\ = CARRY(( deci_minute_s(4) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(4),
	cin => \Add3~14\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X49_Y20_N14
\deci_minute_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~61_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(4));

-- Location: MLABCELL_X49_Y20_N15
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( deci_minute_s(5) ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~70\ = CARRY(( deci_minute_s(5) ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(5),
	cin => \Add3~62\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X49_Y20_N17
\deci_minute_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~69_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(5));

-- Location: MLABCELL_X49_Y20_N18
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( deci_minute_s(6) ) + ( GND ) + ( \Add3~70\ ))
-- \Add3~66\ = CARRY(( deci_minute_s(6) ) + ( GND ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(6),
	cin => \Add3~70\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X49_Y20_N20
\deci_minute_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~65_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(6));

-- Location: MLABCELL_X49_Y20_N21
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( deci_minute_s(7) ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~78\ = CARRY(( deci_minute_s(7) ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(7),
	cin => \Add3~66\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X49_Y20_N23
\deci_minute_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~77_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(7));

-- Location: MLABCELL_X49_Y20_N24
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( deci_minute_s(8) ) + ( GND ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( deci_minute_s(8) ) + ( GND ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(8),
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X49_Y20_N26
\deci_minute_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~81_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(8));

-- Location: MLABCELL_X49_Y20_N27
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( deci_minute_s(9) ) + ( GND ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( deci_minute_s(9) ) + ( GND ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(9),
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X49_Y20_N29
\deci_minute_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~85_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(9));

-- Location: MLABCELL_X49_Y20_N30
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( deci_minute_s(10) ) + ( GND ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( deci_minute_s(10) ) + ( GND ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(10),
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X49_Y20_N32
\deci_minute_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~89_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(10));

-- Location: MLABCELL_X49_Y20_N33
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( deci_minute_s(11) ) + ( GND ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( deci_minute_s(11) ) + ( GND ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(11),
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X49_Y20_N35
\deci_minute_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~93_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(11));

-- Location: MLABCELL_X49_Y20_N36
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( deci_minute_s(12) ) + ( GND ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( deci_minute_s(12) ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(12),
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X49_Y20_N38
\deci_minute_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~97_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(12));

-- Location: MLABCELL_X49_Y20_N39
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( deci_minute_s(13) ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~58\ = CARRY(( deci_minute_s(13) ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(13),
	cin => \Add3~98\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X49_Y20_N41
\deci_minute_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~57_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(13));

-- Location: MLABCELL_X49_Y20_N42
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( deci_minute_s(14) ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~102\ = CARRY(( deci_minute_s(14) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(14),
	cin => \Add3~58\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X49_Y20_N44
\deci_minute_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~101_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(14));

-- Location: MLABCELL_X49_Y20_N45
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( deci_minute_s(15) ) + ( GND ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( deci_minute_s(15) ) + ( GND ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(15),
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: FF_X49_Y20_N47
\deci_minute_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~105_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(15));

-- Location: MLABCELL_X49_Y20_N48
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( deci_minute_s(16) ) + ( GND ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( deci_minute_s(16) ) + ( GND ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(16),
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: FF_X49_Y20_N50
\deci_minute_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~109_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(16));

-- Location: MLABCELL_X49_Y20_N51
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( deci_minute_s(17) ) + ( GND ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( deci_minute_s(17) ) + ( GND ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(17),
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X49_Y20_N53
\deci_minute_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~113_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(17));

-- Location: MLABCELL_X49_Y20_N54
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( deci_minute_s(18) ) + ( GND ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( deci_minute_s(18) ) + ( GND ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(18),
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X49_Y20_N56
\deci_minute_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~117_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(18));

-- Location: MLABCELL_X49_Y20_N57
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( deci_minute_s(19) ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( deci_minute_s(19) ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(19),
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X49_Y20_N59
\deci_minute_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~121_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(19));

-- Location: MLABCELL_X49_Y19_N0
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( deci_minute_s(20) ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~30\ = CARRY(( deci_minute_s(20) ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(20),
	cin => \Add3~122\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X49_Y19_N2
\deci_minute_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~29_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(20));

-- Location: MLABCELL_X49_Y19_N3
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( deci_minute_s(21) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~26\ = CARRY(( deci_minute_s(21) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(21),
	cin => \Add3~30\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X49_Y19_N5
\deci_minute_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~25_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(21));

-- Location: MLABCELL_X49_Y19_N6
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( deci_minute_s(22) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~22\ = CARRY(( deci_minute_s(22) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(22),
	cin => \Add3~26\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X49_Y19_N8
\deci_minute_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~21_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(22));

-- Location: MLABCELL_X49_Y19_N9
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( deci_minute_s(23) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~18\ = CARRY(( deci_minute_s(23) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_minute_s(23),
	cin => \Add3~22\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X49_Y19_N11
\deci_minute_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~17_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(23));

-- Location: MLABCELL_X49_Y19_N12
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( deci_minute_s(24) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~74\ = CARRY(( deci_minute_s(24) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(24),
	cin => \Add3~18\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X49_Y19_N14
\deci_minute_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~73_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(24));

-- Location: MLABCELL_X49_Y19_N15
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( deci_minute_s(25) ) + ( GND ) + ( \Add3~74\ ))
-- \Add3~54\ = CARRY(( deci_minute_s(25) ) + ( GND ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(25),
	cin => \Add3~74\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X49_Y19_N17
\deci_minute_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~53_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(25));

-- Location: MLABCELL_X49_Y19_N18
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( deci_minute_s(26) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~50\ = CARRY(( deci_minute_s(26) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(26),
	cin => \Add3~54\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X49_Y19_N20
\deci_minute_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~49_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(26));

-- Location: MLABCELL_X49_Y19_N21
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( deci_minute_s(27) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~46\ = CARRY(( deci_minute_s(27) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(27),
	cin => \Add3~50\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X49_Y19_N23
\deci_minute_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~45_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(27));

-- Location: MLABCELL_X49_Y19_N24
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( deci_minute_s(28) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~42\ = CARRY(( deci_minute_s(28) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_minute_s(28),
	cin => \Add3~46\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X49_Y19_N26
\deci_minute_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~41_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(28));

-- Location: MLABCELL_X49_Y19_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( deci_minute_s(29) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( deci_minute_s(29) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(29),
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X49_Y19_N29
\deci_minute_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~37_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(29));

-- Location: MLABCELL_X49_Y19_N30
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( deci_minute_s(30) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_minute_s(30),
	cin => \Add3~38\,
	sumout => \Add3~33_sumout\);

-- Location: FF_X49_Y19_N32
\deci_minute_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~33_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(30));

-- Location: MLABCELL_X49_Y19_N48
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !deci_minute_s(29) & ( !deci_minute_s(26) & ( (!deci_minute_s(27) & (!deci_minute_s(30) & (!deci_minute_s(28) & !deci_minute_s(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(27),
	datab => ALT_INV_deci_minute_s(30),
	datac => ALT_INV_deci_minute_s(28),
	datad => ALT_INV_deci_minute_s(25),
	datae => ALT_INV_deci_minute_s(29),
	dataf => ALT_INV_deci_minute_s(26),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X48_Y20_N12
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !deci_minute_s(9) & ( !deci_minute_s(10) & ( (!deci_minute_s(7) & (!deci_minute_s(12) & (!deci_minute_s(11) & !deci_minute_s(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(7),
	datab => ALT_INV_deci_minute_s(12),
	datac => ALT_INV_deci_minute_s(11),
	datad => ALT_INV_deci_minute_s(8),
	datae => ALT_INV_deci_minute_s(9),
	dataf => ALT_INV_deci_minute_s(10),
	combout => \Equal1~2_combout\);

-- Location: MLABCELL_X49_Y19_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( deci_minute_s(2) & ( !deci_minute_s(3) & ( (!deci_minute_s(21) & (!deci_minute_s(23) & (!deci_minute_s(20) & !deci_minute_s(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(21),
	datab => ALT_INV_deci_minute_s(23),
	datac => ALT_INV_deci_minute_s(20),
	datad => ALT_INV_deci_minute_s(22),
	datae => ALT_INV_deci_minute_s(2),
	dataf => ALT_INV_deci_minute_s(3),
	combout => \Equal1~5_combout\);

-- Location: MLABCELL_X49_Y19_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !deci_minute_s(6) & ( !deci_minute_s(5) & ( (!deci_minute_s(13) & (!deci_minute_s(24) & (deci_minute_s(0) & !deci_minute_s(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(13),
	datab => ALT_INV_deci_minute_s(24),
	datac => ALT_INV_deci_minute_s(0),
	datad => ALT_INV_deci_minute_s(4),
	datae => ALT_INV_deci_minute_s(6),
	dataf => ALT_INV_deci_minute_s(5),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X48_Y20_N30
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !deci_minute_s(14) & ( !deci_minute_s(15) & ( (!deci_minute_s(17) & (!deci_minute_s(18) & (!deci_minute_s(16) & !deci_minute_s(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(17),
	datab => ALT_INV_deci_minute_s(18),
	datac => ALT_INV_deci_minute_s(16),
	datad => ALT_INV_deci_minute_s(19),
	datae => ALT_INV_deci_minute_s(14),
	dataf => ALT_INV_deci_minute_s(15),
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X49_Y19_N36
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( \Equal1~1_combout\ & ( \Equal1~3_combout\ & ( (\Equal1~0_combout\ & (!deci_minute_s(1) & (\Equal1~2_combout\ & \Equal1~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_deci_minute_s(1),
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~5_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X52_Y19_N9
\deci_minute_s[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_minute_s[7]~0_combout\ = ( \Equal1~4_combout\ & ( \Equal2~5_combout\ & ( (!\clk_state_s.off~q\) # ((\counter24h~0_combout\ & (\counter24h~11_combout\ & \counter24h~6_combout\))) ) ) ) # ( !\Equal1~4_combout\ & ( \Equal2~5_combout\ & ( 
-- !\clk_state_s.off~q\ ) ) ) # ( \Equal1~4_combout\ & ( !\Equal2~5_combout\ & ( !\clk_state_s.off~q\ ) ) ) # ( !\Equal1~4_combout\ & ( !\Equal2~5_combout\ & ( !\clk_state_s.off~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~0_combout\,
	datab => \ALT_INV_counter24h~11_combout\,
	datac => \ALT_INV_clk_state_s.off~q\,
	datad => \ALT_INV_counter24h~6_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \deci_minute_s[7]~0_combout\);

-- Location: FF_X49_Y20_N2
\deci_minute_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add3~1_sumout\,
	sclr => \deci_minute_s[7]~0_combout\,
	ena => \deci_minute_s[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_minute_s(0));

-- Location: MLABCELL_X45_Y41_N24
\display2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux6~0_combout\ = ( deci_minute_s(2) & ( (!deci_minute_s(0) & (!deci_minute_s(3) & !deci_minute_s(1))) ) ) # ( !deci_minute_s(2) & ( (deci_minute_s(0) & (!deci_minute_s(3) & !deci_minute_s(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(0),
	datab => ALT_INV_deci_minute_s(3),
	datac => ALT_INV_deci_minute_s(1),
	dataf => ALT_INV_deci_minute_s(2),
	combout => \display2|Mux6~0_combout\);

-- Location: MLABCELL_X45_Y41_N30
\display2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux5~0_combout\ = ( deci_minute_s(2) & ( !deci_minute_s(0) $ (!deci_minute_s(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(0),
	datac => ALT_INV_deci_minute_s(1),
	dataf => ALT_INV_deci_minute_s(2),
	combout => \display2|Mux5~0_combout\);

-- Location: MLABCELL_X45_Y41_N3
\display2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux4~0_combout\ = ( !deci_minute_s(0) & ( (deci_minute_s(1) & !deci_minute_s(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(1),
	datac => ALT_INV_deci_minute_s(2),
	dataf => ALT_INV_deci_minute_s(0),
	combout => \display2|Mux4~0_combout\);

-- Location: MLABCELL_X45_Y41_N18
\display2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux3~0_combout\ = ( deci_minute_s(2) & ( (!deci_minute_s(3) & (!deci_minute_s(0) $ (deci_minute_s(1)))) ) ) # ( !deci_minute_s(2) & ( (deci_minute_s(0) & (!deci_minute_s(3) & !deci_minute_s(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(0),
	datab => ALT_INV_deci_minute_s(3),
	datac => ALT_INV_deci_minute_s(1),
	dataf => ALT_INV_deci_minute_s(2),
	combout => \display2|Mux3~0_combout\);

-- Location: MLABCELL_X45_Y41_N39
\display2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux2~0_combout\ = ( deci_minute_s(0) ) # ( !deci_minute_s(0) & ( (!deci_minute_s(1) & deci_minute_s(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(1),
	datac => ALT_INV_deci_minute_s(2),
	dataf => ALT_INV_deci_minute_s(0),
	combout => \display2|Mux2~0_combout\);

-- Location: MLABCELL_X45_Y41_N9
\display2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux1~0_combout\ = ( deci_minute_s(0) & ( (!deci_minute_s(3) & ((!deci_minute_s(2)) # (deci_minute_s(1)))) ) ) # ( !deci_minute_s(0) & ( (deci_minute_s(1) & (!deci_minute_s(2) & !deci_minute_s(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(1),
	datab => ALT_INV_deci_minute_s(2),
	datac => ALT_INV_deci_minute_s(3),
	dataf => ALT_INV_deci_minute_s(0),
	combout => \display2|Mux1~0_combout\);

-- Location: MLABCELL_X45_Y41_N15
\display2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux0~0_combout\ = ( deci_minute_s(0) & ( (!deci_minute_s(1) $ (!deci_minute_s(2))) # (deci_minute_s(3)) ) ) # ( !deci_minute_s(0) & ( ((deci_minute_s(3)) # (deci_minute_s(2))) # (deci_minute_s(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_minute_s(1),
	datab => ALT_INV_deci_minute_s(2),
	datac => ALT_INV_deci_minute_s(3),
	dataf => ALT_INV_deci_minute_s(0),
	combout => \display2|Mux0~0_combout\);

-- Location: LABCELL_X53_Y18_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( hour_s(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( hour_s(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(0),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X53_Y18_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( hour_s(2) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( hour_s(2) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X53_Y18_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( hour_s(3) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( hour_s(3) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: LABCELL_X52_Y19_N18
\counter24h~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~12_combout\ = ( \counter24h~6_combout\ & ( (!second_s(12) & (\Sec_Clock|slow_clk~q\ & \counter24h~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_second_s(12),
	datac => \Sec_Clock|ALT_INV_slow_clk~q\,
	datad => \ALT_INV_counter24h~11_combout\,
	dataf => \ALT_INV_counter24h~6_combout\,
	combout => \counter24h~12_combout\);

-- Location: LABCELL_X52_Y19_N27
\hour_s[20]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour_s[20]~1_combout\ = ( \counter24h~12_combout\ & ( (!\clk_state_s.off~q\) # ((\clk_state_s.counting~q\ & (\Equal1~4_combout\ & \Equal2~5_combout\))) ) ) # ( !\counter24h~12_combout\ & ( !\clk_state_s.off~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_state_s.counting~q\,
	datab => \ALT_INV_clk_state_s.off~q\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_counter24h~12_combout\,
	combout => \hour_s[20]~1_combout\);

-- Location: FF_X53_Y18_N11
\hour_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~13_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(3));

-- Location: LABCELL_X53_Y19_N33
\counter24h~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~19_combout\ = ( !hour_s(1) & ( hour_s(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(3),
	dataf => ALT_INV_hour_s(1),
	combout => \counter24h~19_combout\);

-- Location: LABCELL_X52_Y21_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( deci_hour_s(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( deci_hour_s(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(0),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X53_Y18_N12
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( hour_s(4) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~78\ = CARRY(( hour_s(4) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(4),
	cin => \Add4~14\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: FF_X53_Y18_N14
\hour_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~77_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(4));

-- Location: LABCELL_X53_Y18_N15
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( hour_s(5) ) + ( GND ) + ( \Add4~78\ ))
-- \Add4~74\ = CARRY(( hour_s(5) ) + ( GND ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(5),
	cin => \Add4~78\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X53_Y18_N17
\hour_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~73_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(5));

-- Location: LABCELL_X53_Y18_N18
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( hour_s(6) ) + ( GND ) + ( \Add4~74\ ))
-- \Add4~70\ = CARRY(( hour_s(6) ) + ( GND ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(6),
	cin => \Add4~74\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: FF_X53_Y18_N20
\hour_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~69_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(6));

-- Location: LABCELL_X53_Y18_N21
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( hour_s(7) ) + ( GND ) + ( \Add4~70\ ))
-- \Add4~66\ = CARRY(( hour_s(7) ) + ( GND ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(7),
	cin => \Add4~70\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: FF_X53_Y18_N23
\hour_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~65_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(7));

-- Location: LABCELL_X53_Y18_N24
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( hour_s(8) ) + ( GND ) + ( \Add4~66\ ))
-- \Add4~62\ = CARRY(( hour_s(8) ) + ( GND ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(8),
	cin => \Add4~66\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: FF_X53_Y18_N26
\hour_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~61_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(8));

-- Location: LABCELL_X53_Y18_N27
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( hour_s(9) ) + ( GND ) + ( \Add4~62\ ))
-- \Add4~90\ = CARRY(( hour_s(9) ) + ( GND ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(9),
	cin => \Add4~62\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: FF_X53_Y18_N29
\hour_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~89_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(9));

-- Location: LABCELL_X53_Y18_N30
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( hour_s(10) ) + ( GND ) + ( \Add4~90\ ))
-- \Add4~86\ = CARRY(( hour_s(10) ) + ( GND ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(10),
	cin => \Add4~90\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X53_Y18_N32
\hour_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~85_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(10));

-- Location: LABCELL_X53_Y18_N33
\Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( hour_s(11) ) + ( GND ) + ( \Add4~86\ ))
-- \Add4~122\ = CARRY(( hour_s(11) ) + ( GND ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(11),
	cin => \Add4~86\,
	sumout => \Add4~121_sumout\,
	cout => \Add4~122\);

-- Location: FF_X53_Y18_N35
\hour_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~121_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(11));

-- Location: LABCELL_X53_Y18_N36
\Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( hour_s(12) ) + ( GND ) + ( \Add4~122\ ))
-- \Add4~118\ = CARRY(( hour_s(12) ) + ( GND ) + ( \Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(12),
	cin => \Add4~122\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: FF_X53_Y18_N38
\hour_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~117_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(12));

-- Location: LABCELL_X53_Y18_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( hour_s(13) ) + ( GND ) + ( \Add4~118\ ))
-- \Add4~54\ = CARRY(( hour_s(13) ) + ( GND ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(13),
	cin => \Add4~118\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X53_Y18_N41
\hour_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~53_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(13));

-- Location: LABCELL_X53_Y18_N42
\Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( hour_s(14) ) + ( GND ) + ( \Add4~54\ ))
-- \Add4~114\ = CARRY(( hour_s(14) ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(14),
	cin => \Add4~54\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: FF_X53_Y18_N44
\hour_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~113_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(14));

-- Location: LABCELL_X52_Y18_N36
\counter24h~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~17_combout\ = ( !hour_s(12) & ( !hour_s(11) & ( (!hour_s(14) & !hour_s(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(14),
	datac => ALT_INV_hour_s(2),
	datae => ALT_INV_hour_s(12),
	dataf => ALT_INV_hour_s(11),
	combout => \counter24h~17_combout\);

-- Location: LABCELL_X53_Y18_N45
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( hour_s(15) ) + ( GND ) + ( \Add4~114\ ))
-- \Add4~82\ = CARRY(( hour_s(15) ) + ( GND ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(15),
	cin => \Add4~114\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: FF_X53_Y18_N47
\hour_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~81_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(15));

-- Location: LABCELL_X53_Y18_N48
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( hour_s(16) ) + ( GND ) + ( \Add4~82\ ))
-- \Add4~110\ = CARRY(( hour_s(16) ) + ( GND ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(16),
	cin => \Add4~82\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: FF_X53_Y18_N50
\hour_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~109_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(16));

-- Location: LABCELL_X53_Y18_N51
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( hour_s(17) ) + ( GND ) + ( \Add4~110\ ))
-- \Add4~106\ = CARRY(( hour_s(17) ) + ( GND ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(17),
	cin => \Add4~110\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: FF_X53_Y18_N53
\hour_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~105_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(17));

-- Location: LABCELL_X53_Y18_N54
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( hour_s(18) ) + ( GND ) + ( \Add4~106\ ))
-- \Add4~102\ = CARRY(( hour_s(18) ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(18),
	cin => \Add4~106\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: FF_X53_Y18_N56
\hour_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~101_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(18));

-- Location: LABCELL_X53_Y18_N57
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( hour_s(19) ) + ( GND ) + ( \Add4~102\ ))
-- \Add4~98\ = CARRY(( hour_s(19) ) + ( GND ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(19),
	cin => \Add4~102\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: FF_X53_Y18_N59
\hour_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~97_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(19));

-- Location: LABCELL_X53_Y17_N0
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( hour_s(20) ) + ( GND ) + ( \Add4~98\ ))
-- \Add4~94\ = CARRY(( hour_s(20) ) + ( GND ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(20),
	cin => \Add4~98\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: FF_X53_Y17_N2
\hour_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~93_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(20));

-- Location: LABCELL_X53_Y17_N3
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( hour_s(21) ) + ( GND ) + ( \Add4~94\ ))
-- \Add4~50\ = CARRY(( hour_s(21) ) + ( GND ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(21),
	cin => \Add4~94\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X53_Y17_N5
\hour_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~49_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(21));

-- Location: LABCELL_X53_Y17_N6
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( hour_s(22) ) + ( GND ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( hour_s(22) ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(22),
	cin => \Add4~50\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X53_Y17_N8
\hour_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~45_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(22));

-- Location: LABCELL_X53_Y17_N9
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( hour_s(23) ) + ( GND ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( hour_s(23) ) + ( GND ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(23),
	cin => \Add4~46\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X53_Y17_N11
\hour_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~41_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(23));

-- Location: LABCELL_X53_Y17_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( hour_s(24) ) + ( GND ) + ( \Add4~42\ ))
-- \Add4~18\ = CARRY(( hour_s(24) ) + ( GND ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(24),
	cin => \Add4~42\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X53_Y17_N14
\hour_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~17_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(24));

-- Location: LABCELL_X53_Y17_N15
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( hour_s(25) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~38\ = CARRY(( hour_s(25) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(25),
	cin => \Add4~18\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X53_Y17_N17
\hour_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~37_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(25));

-- Location: LABCELL_X53_Y17_N18
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( hour_s(26) ) + ( GND ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( hour_s(26) ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(26),
	cin => \Add4~38\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X53_Y17_N20
\hour_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~33_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(26));

-- Location: LABCELL_X53_Y17_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( hour_s(27) ) + ( GND ) + ( \Add4~34\ ))
-- \Add4~30\ = CARRY(( hour_s(27) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(27),
	cin => \Add4~34\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X53_Y17_N23
\hour_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~29_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(27));

-- Location: LABCELL_X53_Y17_N24
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( hour_s(28) ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~58\ = CARRY(( hour_s(28) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour_s(28),
	cin => \Add4~30\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: FF_X53_Y17_N26
\hour_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~57_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(28));

-- Location: LABCELL_X53_Y17_N27
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( hour_s(29) ) + ( GND ) + ( \Add4~58\ ))
-- \Add4~26\ = CARRY(( hour_s(29) ) + ( GND ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(29),
	cin => \Add4~58\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X53_Y17_N29
\hour_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~25_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(29));

-- Location: LABCELL_X53_Y17_N30
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( hour_s(30) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(30),
	cin => \Add4~26\,
	sumout => \Add4~21_sumout\);

-- Location: FF_X53_Y17_N32
\hour_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~21_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(30));

-- Location: LABCELL_X53_Y17_N36
\counter24h~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~28_combout\ = ( !hour_s(29) & ( !hour_s(9) & ( (!hour_s(27) & (!hour_s(25) & (!hour_s(26) & !hour_s(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(27),
	datab => ALT_INV_hour_s(25),
	datac => ALT_INV_hour_s(26),
	datad => ALT_INV_hour_s(30),
	datae => ALT_INV_hour_s(29),
	dataf => ALT_INV_hour_s(9),
	combout => \counter24h~28_combout\);

-- Location: LABCELL_X53_Y19_N0
\counter24h~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~16_combout\ = ( !hour_s(19) & ( (!hour_s(17) & (!hour_s(20) & (!hour_s(18) & !hour_s(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(17),
	datab => ALT_INV_hour_s(20),
	datac => ALT_INV_hour_s(18),
	datad => ALT_INV_hour_s(16),
	dataf => ALT_INV_hour_s(19),
	combout => \counter24h~16_combout\);

-- Location: LABCELL_X52_Y18_N18
\counter24h~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~15_combout\ = ( !hour_s(7) & ( !hour_s(4) & ( (!hour_s(6) & (!hour_s(5) & !hour_s(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(6),
	datac => ALT_INV_hour_s(5),
	datad => ALT_INV_hour_s(8),
	datae => ALT_INV_hour_s(7),
	dataf => ALT_INV_hour_s(4),
	combout => \counter24h~15_combout\);

-- Location: LABCELL_X53_Y17_N48
\counter24h~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~14_combout\ = ( !hour_s(13) & ( (!hour_s(28) & (!hour_s(22) & (!hour_s(21) & !hour_s(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(28),
	datab => ALT_INV_hour_s(22),
	datac => ALT_INV_hour_s(21),
	datad => ALT_INV_hour_s(23),
	dataf => ALT_INV_hour_s(13),
	combout => \counter24h~14_combout\);

-- Location: LABCELL_X53_Y17_N54
\counter24h~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~29_combout\ = ( hour_s(0) & ( !hour_s(10) & ( (!hour_s(24) & !hour_s(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour_s(24),
	datad => ALT_INV_hour_s(15),
	datae => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(10),
	combout => \counter24h~29_combout\);

-- Location: LABCELL_X53_Y19_N36
\counter24h~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~18_combout\ = ( \counter24h~14_combout\ & ( \counter24h~29_combout\ & ( (\counter24h~17_combout\ & (\counter24h~28_combout\ & (\counter24h~16_combout\ & \counter24h~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~17_combout\,
	datab => \ALT_INV_counter24h~28_combout\,
	datac => \ALT_INV_counter24h~16_combout\,
	datad => \ALT_INV_counter24h~15_combout\,
	datae => \ALT_INV_counter24h~14_combout\,
	dataf => \ALT_INV_counter24h~29_combout\,
	combout => \counter24h~18_combout\);

-- Location: LABCELL_X52_Y19_N30
\counter24h~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~13_combout\ = ( \Equal2~5_combout\ & ( \counter24h~6_combout\ & ( (\Sec_Clock|slow_clk~q\ & (!second_s(12) & (\Equal1~4_combout\ & \counter24h~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sec_Clock|ALT_INV_slow_clk~q\,
	datab => ALT_INV_second_s(12),
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_counter24h~11_combout\,
	datae => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_counter24h~6_combout\,
	combout => \counter24h~13_combout\);

-- Location: LABCELL_X52_Y19_N36
\deci_hour_s[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_hour_s[24]~0_combout\ = ( \counter24h~13_combout\ & ( (!\clk_state_s.off~q\) # ((\counter24h~26_combout\ & \counter24h~18_combout\)) ) ) # ( !\counter24h~13_combout\ & ( !\clk_state_s.off~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk_state_s.off~q\,
	datac => \ALT_INV_counter24h~26_combout\,
	datad => \ALT_INV_counter24h~18_combout\,
	dataf => \ALT_INV_counter24h~13_combout\,
	combout => \deci_hour_s[24]~0_combout\);

-- Location: LABCELL_X52_Y19_N12
\deci_hour_s[24]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deci_hour_s[24]~1_combout\ = ( \counter24h~26_combout\ & ( \counter24h~13_combout\ & ( (!\clk_state_s.off~q\) # ((\clk_state_s.counting~q\ & \counter24h~18_combout\)) ) ) ) # ( !\counter24h~26_combout\ & ( \counter24h~13_combout\ & ( 
-- (!\clk_state_s.off~q\) # ((\counter24h~19_combout\ & (\clk_state_s.counting~q\ & \counter24h~18_combout\))) ) ) ) # ( \counter24h~26_combout\ & ( !\counter24h~13_combout\ & ( !\clk_state_s.off~q\ ) ) ) # ( !\counter24h~26_combout\ & ( 
-- !\counter24h~13_combout\ & ( !\clk_state_s.off~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011011100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~19_combout\,
	datab => \ALT_INV_clk_state_s.off~q\,
	datac => \ALT_INV_clk_state_s.counting~q\,
	datad => \ALT_INV_counter24h~18_combout\,
	datae => \ALT_INV_counter24h~26_combout\,
	dataf => \ALT_INV_counter24h~13_combout\,
	combout => \deci_hour_s[24]~1_combout\);

-- Location: FF_X52_Y21_N2
\deci_hour_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~1_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(0));

-- Location: LABCELL_X52_Y21_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( deci_hour_s(1) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( deci_hour_s(1) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(1),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X52_Y21_N5
\deci_hour_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~5_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(1));

-- Location: LABCELL_X52_Y21_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( deci_hour_s(2) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( deci_hour_s(2) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(2),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X52_Y21_N8
\deci_hour_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~9_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(2));

-- Location: LABCELL_X52_Y21_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( deci_hour_s(3) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( deci_hour_s(3) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(3),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X52_Y21_N11
\deci_hour_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~13_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(3));

-- Location: LABCELL_X52_Y21_N12
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( deci_hour_s(4) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~118\ = CARRY(( deci_hour_s(4) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(4),
	cin => \Add5~14\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: FF_X52_Y21_N14
\deci_hour_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~117_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(4));

-- Location: LABCELL_X52_Y21_N15
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( deci_hour_s(5) ) + ( GND ) + ( \Add5~118\ ))
-- \Add5~114\ = CARRY(( deci_hour_s(5) ) + ( GND ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(5),
	cin => \Add5~118\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X52_Y21_N17
\deci_hour_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~113_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(5));

-- Location: LABCELL_X52_Y21_N18
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( deci_hour_s(6) ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~122\ = CARRY(( deci_hour_s(6) ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(6),
	cin => \Add5~114\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X52_Y21_N20
\deci_hour_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~121_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(6));

-- Location: LABCELL_X52_Y21_N21
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( deci_hour_s(7) ) + ( GND ) + ( \Add5~122\ ))
-- \Add5~62\ = CARRY(( deci_hour_s(7) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(7),
	cin => \Add5~122\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X52_Y21_N23
\deci_hour_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~61_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(7));

-- Location: LABCELL_X52_Y21_N24
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( deci_hour_s(8) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~70\ = CARRY(( deci_hour_s(8) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(8),
	cin => \Add5~62\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X52_Y21_N26
\deci_hour_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~69_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(8));

-- Location: LABCELL_X52_Y21_N27
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( deci_hour_s(9) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~74\ = CARRY(( deci_hour_s(9) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(9),
	cin => \Add5~70\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X52_Y21_N29
\deci_hour_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~73_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(9));

-- Location: LABCELL_X52_Y21_N30
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( deci_hour_s(10) ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~78\ = CARRY(( deci_hour_s(10) ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(10),
	cin => \Add5~74\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: FF_X52_Y21_N32
\deci_hour_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~77_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(10));

-- Location: LABCELL_X52_Y21_N33
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( deci_hour_s(11) ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~82\ = CARRY(( deci_hour_s(11) ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(11),
	cin => \Add5~78\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X52_Y21_N35
\deci_hour_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~81_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(11));

-- Location: LABCELL_X52_Y21_N36
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( deci_hour_s(12) ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~86\ = CARRY(( deci_hour_s(12) ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(12),
	cin => \Add5~82\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X52_Y21_N38
\deci_hour_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~85_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(12));

-- Location: LABCELL_X52_Y21_N39
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( deci_hour_s(13) ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~66\ = CARRY(( deci_hour_s(13) ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(13),
	cin => \Add5~86\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X52_Y21_N41
\deci_hour_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~65_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(13));

-- Location: LABCELL_X52_Y21_N42
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( deci_hour_s(14) ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~38\ = CARRY(( deci_hour_s(14) ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(14),
	cin => \Add5~66\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X52_Y21_N44
\deci_hour_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~37_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(14));

-- Location: LABCELL_X52_Y21_N45
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( deci_hour_s(15) ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( deci_hour_s(15) ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(15),
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X52_Y21_N47
\deci_hour_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~41_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(15));

-- Location: LABCELL_X52_Y21_N48
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( deci_hour_s(16) ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( deci_hour_s(16) ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(16),
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X52_Y21_N50
\deci_hour_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~45_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(16));

-- Location: LABCELL_X52_Y21_N51
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( deci_hour_s(17) ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( deci_hour_s(17) ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(17),
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X52_Y21_N53
\deci_hour_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~49_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(17));

-- Location: LABCELL_X52_Y21_N54
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( deci_hour_s(18) ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( deci_hour_s(18) ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(18),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X52_Y21_N56
\deci_hour_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~53_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(18));

-- Location: LABCELL_X52_Y21_N57
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( deci_hour_s(19) ) + ( GND ) + ( \Add5~54\ ))
-- \Add5~18\ = CARRY(( deci_hour_s(19) ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(19),
	cin => \Add5~54\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X52_Y21_N59
\deci_hour_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~17_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(19));

-- Location: LABCELL_X53_Y19_N27
\counter24h~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~21_combout\ = ( !deci_hour_s(15) & ( (!deci_hour_s(17) & (!deci_hour_s(14) & (!deci_hour_s(18) & !deci_hour_s(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(17),
	datab => ALT_INV_deci_hour_s(14),
	datac => ALT_INV_deci_hour_s(18),
	datad => ALT_INV_deci_hour_s(16),
	dataf => ALT_INV_deci_hour_s(15),
	combout => \counter24h~21_combout\);

-- Location: LABCELL_X53_Y19_N57
\display0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux4~0_combout\ = ( !deci_hour_s(2) & ( (deci_hour_s(1) & !deci_hour_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(1),
	datad => ALT_INV_deci_hour_s(0),
	dataf => ALT_INV_deci_hour_s(2),
	combout => \display0|Mux4~0_combout\);

-- Location: LABCELL_X52_Y20_N0
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( deci_hour_s(20) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( deci_hour_s(20) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(20),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X52_Y20_N2
\deci_hour_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~21_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(20));

-- Location: LABCELL_X52_Y20_N3
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( deci_hour_s(21) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( deci_hour_s(21) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(21),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X52_Y20_N5
\deci_hour_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~25_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(21));

-- Location: LABCELL_X52_Y20_N6
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( deci_hour_s(22) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( deci_hour_s(22) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(22),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X52_Y20_N8
\deci_hour_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~29_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(22));

-- Location: LABCELL_X52_Y20_N9
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( deci_hour_s(23) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( deci_hour_s(23) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(23),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X52_Y20_N11
\deci_hour_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~33_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(23));

-- Location: LABCELL_X52_Y20_N36
\counter24h~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~20_combout\ = ( !deci_hour_s(20) & ( !hour_s(3) & ( (!deci_hour_s(23) & (!deci_hour_s(21) & !deci_hour_s(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(23),
	datac => ALT_INV_deci_hour_s(21),
	datad => ALT_INV_deci_hour_s(22),
	datae => ALT_INV_deci_hour_s(20),
	dataf => ALT_INV_hour_s(3),
	combout => \counter24h~20_combout\);

-- Location: LABCELL_X52_Y20_N12
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( deci_hour_s(24) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~90\ = CARRY(( deci_hour_s(24) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(24),
	cin => \Add5~34\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X52_Y20_N14
\deci_hour_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~89_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(24));

-- Location: LABCELL_X52_Y20_N15
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( deci_hour_s(25) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~110\ = CARRY(( deci_hour_s(25) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(25),
	cin => \Add5~90\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X52_Y20_N17
\deci_hour_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~109_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(25));

-- Location: LABCELL_X52_Y20_N18
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( deci_hour_s(26) ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~94\ = CARRY(( deci_hour_s(26) ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(26),
	cin => \Add5~110\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X52_Y20_N20
\deci_hour_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~93_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(26));

-- Location: LABCELL_X52_Y20_N21
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( deci_hour_s(27) ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~98\ = CARRY(( deci_hour_s(27) ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(27),
	cin => \Add5~94\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X52_Y20_N23
\deci_hour_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~97_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(27));

-- Location: LABCELL_X52_Y20_N24
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( deci_hour_s(28) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~102\ = CARRY(( deci_hour_s(28) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_deci_hour_s(28),
	cin => \Add5~98\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X52_Y20_N26
\deci_hour_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~101_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(28));

-- Location: LABCELL_X52_Y20_N27
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( deci_hour_s(29) ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~106\ = CARRY(( deci_hour_s(29) ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(29),
	cin => \Add5~102\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X52_Y20_N29
\deci_hour_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~105_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(29));

-- Location: LABCELL_X52_Y20_N30
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( deci_hour_s(30) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(30),
	cin => \Add5~106\,
	sumout => \Add5~57_sumout\);

-- Location: FF_X52_Y20_N32
\deci_hour_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add5~57_sumout\,
	sclr => \deci_hour_s[24]~0_combout\,
	ena => \deci_hour_s[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => deci_hour_s(30));

-- Location: LABCELL_X53_Y19_N45
\counter24h~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~24_combout\ = ( !deci_hour_s(5) & ( (!deci_hour_s(4) & (!deci_hour_s(6) & (!deci_hour_s(25) & !deci_hour_s(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(4),
	datab => ALT_INV_deci_hour_s(6),
	datac => ALT_INV_deci_hour_s(25),
	datad => ALT_INV_deci_hour_s(3),
	dataf => ALT_INV_deci_hour_s(5),
	combout => \counter24h~24_combout\);

-- Location: LABCELL_X53_Y19_N21
\counter24h~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~22_combout\ = ( !deci_hour_s(8) & ( !deci_hour_s(11) & ( (!deci_hour_s(10) & (!deci_hour_s(12) & !deci_hour_s(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(10),
	datac => ALT_INV_deci_hour_s(12),
	datad => ALT_INV_deci_hour_s(9),
	datae => ALT_INV_deci_hour_s(8),
	dataf => ALT_INV_deci_hour_s(11),
	combout => \counter24h~22_combout\);

-- Location: LABCELL_X52_Y20_N54
\counter24h~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~23_combout\ = ( !deci_hour_s(27) & ( !deci_hour_s(26) & ( (!deci_hour_s(29) & (!deci_hour_s(28) & !deci_hour_s(24))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(29),
	datac => ALT_INV_deci_hour_s(28),
	datad => ALT_INV_deci_hour_s(24),
	datae => ALT_INV_deci_hour_s(27),
	dataf => ALT_INV_deci_hour_s(26),
	combout => \counter24h~23_combout\);

-- Location: LABCELL_X53_Y19_N48
\counter24h~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~25_combout\ = ( \counter24h~22_combout\ & ( \counter24h~23_combout\ & ( (!deci_hour_s(30) & (!deci_hour_s(13) & (!deci_hour_s(7) & \counter24h~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(30),
	datab => ALT_INV_deci_hour_s(13),
	datac => ALT_INV_deci_hour_s(7),
	datad => \ALT_INV_counter24h~24_combout\,
	datae => \ALT_INV_counter24h~22_combout\,
	dataf => \ALT_INV_counter24h~23_combout\,
	combout => \counter24h~25_combout\);

-- Location: LABCELL_X53_Y19_N6
\counter24h~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter24h~26_combout\ = ( \counter24h~20_combout\ & ( \counter24h~25_combout\ & ( (!deci_hour_s(19) & (hour_s(1) & (\counter24h~21_combout\ & \display0|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(19),
	datab => ALT_INV_hour_s(1),
	datac => \ALT_INV_counter24h~21_combout\,
	datad => \display0|ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_counter24h~20_combout\,
	dataf => \ALT_INV_counter24h~25_combout\,
	combout => \counter24h~26_combout\);

-- Location: LABCELL_X52_Y19_N48
\hour_s[20]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour_s[20]~0_combout\ = ( \counter24h~13_combout\ & ( (!\clk_state_s.off~q\) # ((\counter24h~18_combout\ & ((\counter24h~26_combout\) # (\counter24h~19_combout\)))) ) ) # ( !\counter24h~13_combout\ & ( !\clk_state_s.off~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110111111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter24h~19_combout\,
	datab => \ALT_INV_clk_state_s.off~q\,
	datac => \ALT_INV_counter24h~26_combout\,
	datad => \ALT_INV_counter24h~18_combout\,
	dataf => \ALT_INV_counter24h~13_combout\,
	combout => \hour_s[20]~0_combout\);

-- Location: FF_X53_Y18_N2
\hour_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~1_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(0));

-- Location: LABCELL_X53_Y18_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( hour_s(1) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( hour_s(1) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X53_Y18_N5
\hour_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~5_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(1));

-- Location: FF_X53_Y18_N8
\hour_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sec_Clock|slow_clk~q\,
	d => \Add4~9_sumout\,
	sclr => \hour_s[20]~0_combout\,
	ena => \hour_s[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_s(2));

-- Location: LABCELL_X53_Y19_N15
\display1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = ( !hour_s(3) & ( (!hour_s(1) & (!hour_s(2) $ (!hour_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(2),
	datac => ALT_INV_hour_s(1),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(3),
	combout => \display1|Mux6~0_combout\);

-- Location: LABCELL_X53_Y19_N42
\display1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = ( hour_s(1) & ( (hour_s(2) & !hour_s(0)) ) ) # ( !hour_s(1) & ( (hour_s(2) & hour_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(2),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(1),
	combout => \display1|Mux5~0_combout\);

-- Location: LABCELL_X53_Y19_N3
\display1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = ( !hour_s(2) & ( (hour_s(1) & !hour_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(1),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(2),
	combout => \display1|Mux4~0_combout\);

-- Location: LABCELL_X53_Y19_N54
\display1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = ( !hour_s(3) & ( (!hour_s(2) & (!hour_s(1) & hour_s(0))) # (hour_s(2) & (!hour_s(1) $ (hour_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(2),
	datab => ALT_INV_hour_s(1),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(3),
	combout => \display1|Mux3~0_combout\);

-- Location: LABCELL_X53_Y19_N24
\display1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = ( hour_s(1) & ( hour_s(0) ) ) # ( !hour_s(1) & ( (hour_s(0)) # (hour_s(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour_s(2),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(1),
	combout => \display1|Mux2~0_combout\);

-- Location: LABCELL_X53_Y19_N30
\display1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = ( hour_s(2) & ( (!hour_s(3) & (hour_s(1) & hour_s(0))) ) ) # ( !hour_s(2) & ( (!hour_s(3) & ((hour_s(0)) # (hour_s(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(3),
	datab => ALT_INV_hour_s(1),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(2),
	combout => \display1|Mux1~0_combout\);

-- Location: LABCELL_X53_Y19_N12
\display1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = ( hour_s(3) ) # ( !hour_s(3) & ( (!hour_s(2) & (hour_s(1))) # (hour_s(2) & ((!hour_s(1)) # (!hour_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101100110011101110110011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour_s(2),
	datab => ALT_INV_hour_s(1),
	datad => ALT_INV_hour_s(0),
	dataf => ALT_INV_hour_s(3),
	combout => \display1|Mux0~0_combout\);

-- Location: LABCELL_X50_Y18_N18
\display0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux6~0_combout\ = ( deci_hour_s(0) & ( !deci_hour_s(3) & ( (!deci_hour_s(1) & !deci_hour_s(2)) ) ) ) # ( !deci_hour_s(0) & ( !deci_hour_s(3) & ( (!deci_hour_s(1) & deci_hour_s(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(1),
	datab => ALT_INV_deci_hour_s(2),
	datae => ALT_INV_deci_hour_s(0),
	dataf => ALT_INV_deci_hour_s(3),
	combout => \display0|Mux6~0_combout\);

-- Location: LABCELL_X53_Y20_N39
\display0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux5~0_combout\ = ( deci_hour_s(2) & ( !deci_hour_s(1) $ (!deci_hour_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(1),
	datac => ALT_INV_deci_hour_s(0),
	dataf => ALT_INV_deci_hour_s(2),
	combout => \display0|Mux5~0_combout\);

-- Location: LABCELL_X50_Y18_N51
\display0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux3~0_combout\ = ( !deci_hour_s(3) & ( (!deci_hour_s(0) & (deci_hour_s(2) & !deci_hour_s(1))) # (deci_hour_s(0) & (!deci_hour_s(2) $ (deci_hour_s(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(0),
	datac => ALT_INV_deci_hour_s(2),
	datad => ALT_INV_deci_hour_s(1),
	dataf => ALT_INV_deci_hour_s(3),
	combout => \display0|Mux3~0_combout\);

-- Location: LABCELL_X52_Y20_N51
\display0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux2~0_combout\ = ( deci_hour_s(1) & ( deci_hour_s(0) ) ) # ( !deci_hour_s(1) & ( (deci_hour_s(0)) # (deci_hour_s(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_deci_hour_s(2),
	datad => ALT_INV_deci_hour_s(0),
	dataf => ALT_INV_deci_hour_s(1),
	combout => \display0|Mux2~0_combout\);

-- Location: LABCELL_X50_Y18_N12
\display0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux1~0_combout\ = ( !deci_hour_s(3) & ( (!deci_hour_s(2) & ((deci_hour_s(1)) # (deci_hour_s(0)))) # (deci_hour_s(2) & (deci_hour_s(0) & deci_hour_s(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_deci_hour_s(2),
	datac => ALT_INV_deci_hour_s(0),
	datad => ALT_INV_deci_hour_s(1),
	dataf => ALT_INV_deci_hour_s(3),
	combout => \display0|Mux1~0_combout\);

-- Location: LABCELL_X50_Y18_N15
\display0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|Mux0~0_combout\ = ( deci_hour_s(3) ) # ( !deci_hour_s(3) & ( (!deci_hour_s(2) & ((deci_hour_s(1)))) # (deci_hour_s(2) & ((!deci_hour_s(0)) # (!deci_hour_s(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_deci_hour_s(0),
	datab => ALT_INV_deci_hour_s(2),
	datad => ALT_INV_deci_hour_s(1),
	dataf => ALT_INV_deci_hour_s(3),
	combout => \display0|Mux0~0_combout\);

-- Location: LABCELL_X1_Y32_N0
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


