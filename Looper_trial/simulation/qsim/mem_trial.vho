-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "06/01/2018 16:50:37"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Looper_integrator IS
    PORT (
	resetN : IN std_logic;
	clk : IN std_logic;
	din : IN std_logic_vector(15 DOWNTO 0);
	ActiveCh : IN std_logic_vector(2 DOWNTO 0);
	dout_new : OUT std_logic;
	dout : OUT std_logic_vector(15 DOWNTO 0)
	);
END Looper_integrator;

ARCHITECTURE structure OF Looper_integrator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_din : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ActiveCh : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dout_new : std_logic;
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL \dout_new~output_o\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \dout[8]~output_o\ : std_logic;
SIGNAL \dout[9]~output_o\ : std_logic;
SIGNAL \dout[10]~output_o\ : std_logic;
SIGNAL \dout[11]~output_o\ : std_logic;
SIGNAL \dout[12]~output_o\ : std_logic;
SIGNAL \dout[13]~output_o\ : std_logic;
SIGNAL \dout[14]~output_o\ : std_logic;
SIGNAL \dout[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \counter[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
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
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ActiveCh[2]~input_o\ : std_logic;
SIGNAL \ActiveCh[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~94\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~90\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~70\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~66\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~42\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~46\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~50\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~54\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~62\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~74\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~78\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~82\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~86\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~98\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~102\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~106\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~110\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~114\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~118\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~122\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ : std_logic;
SIGNAL \ActiveCh[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[6]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[6]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[5]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[11]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_27~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_29~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_30~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_31~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_32~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[55]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[55]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_22~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~93_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[5]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[7]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[8]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[9]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[10]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~42\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~45_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[11]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~46\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~49_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[12]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~50\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~53_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[13]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~54\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~57_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[14]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~58\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~61_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[15]~15_combout\ : std_logic;
SIGNAL proc_out : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(1 DOWNTO 0);
SIGNAL sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(1055 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL ALT_INV_sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~61_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~57_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~53_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~49_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~45_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~61_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~57_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~53_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~49_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~45_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_17~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_17~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_17~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_17~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_27~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_30~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_29~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~105_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_29~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_28~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_31~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_30~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~101_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_30~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_29~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_32~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_31~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~97_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_31~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_30~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_32~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~85_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_32~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_31~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~81_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_32~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~77_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~73_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~125_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_24~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~121_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_27~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_24~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~117_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_24~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_28~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_27~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~113_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_27~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_24~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_29~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_28~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~109_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_28~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(33 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[5]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[71]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~36_combout\ : std_logic;
SIGNAL \ALT_INV_din[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ActiveCh[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ActiveCh[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ActiveCh[2]~input_o\ : std_logic;

BEGIN

ww_resetN <= resetN;
ww_clk <= clk;
ww_din <= din;
ww_ActiveCh <= ActiveCh;
dout_new <= ww_dout_new;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_23~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
ALT_INV_sum(30) <= NOT sum(30);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_sum(31) <= NOT sum(31);
\Div0|auto_generated|divider|ALT_INV_op_1~61_sumout\ <= NOT \Div0|auto_generated|divider|op_1~61_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~57_sumout\ <= NOT \Div0|auto_generated|divider|op_1~57_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~53_sumout\ <= NOT \Div0|auto_generated|divider|op_1~53_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~49_sumout\ <= NOT \Div0|auto_generated|divider|op_1~49_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~45_sumout\ <= NOT \Div0|auto_generated|divider|op_1~45_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~41_sumout\ <= NOT \Div0|auto_generated|divider|op_1~41_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~37_sumout\ <= NOT \Div0|auto_generated|divider|op_1~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~33_sumout\ <= NOT \Div0|auto_generated|divider|op_1~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_17~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\ <= NOT \Div0|auto_generated|divider|op_1~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\ <= NOT \Div0|auto_generated|divider|op_1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\ <= NOT \Div0|auto_generated|divider|op_1~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_20~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\ <= NOT \Div0|auto_generated|divider|op_1~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_21~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\ <= NOT \Div0|auto_generated|divider|op_1~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_22~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\ <= NOT \Div0|auto_generated|divider|op_1~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_23~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\ <= NOT \Div0|auto_generated|divider|op_1~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_25~1_sumout\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
\Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\ <= NOT \Div0|auto_generated|divider|op_1~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_26~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
ALT_INV_sum(15) <= NOT sum(15);
ALT_INV_sum(14) <= NOT sum(14);
ALT_INV_sum(13) <= NOT sum(13);
ALT_INV_sum(12) <= NOT sum(12);
ALT_INV_sum(11) <= NOT sum(11);
ALT_INV_sum(10) <= NOT sum(10);
ALT_INV_sum(9) <= NOT sum(9);
ALT_INV_sum(8) <= NOT sum(8);
ALT_INV_sum(7) <= NOT sum(7);
ALT_INV_sum(6) <= NOT sum(6);
ALT_INV_sum(5) <= NOT sum(5);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~69_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
ALT_INV_sum(4) <= NOT sum(4);
\Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_25~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_23~21_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
ALT_INV_sum(28) <= NOT sum(28);
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~65_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_22~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_25~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_23~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
ALT_INV_sum(29) <= NOT sum(29);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~61_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~13_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~57_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~13_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~53_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~49_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~45_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~41_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~37_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_17~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_17~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_17~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_17~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_17~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_17~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_17~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_17~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_20~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_21~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_20~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_20~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_22~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_21~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_21~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_20~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_23~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_22~13_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_22~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_21~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_25~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_27~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_27~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_27~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_30~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_30~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_29~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_29~13_sumout\;
ALT_INV_sum(22) <= NOT sum(22);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~105_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_29~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_29~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_28~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_28~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_28~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_31~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_31~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_30~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_30~13_sumout\;
ALT_INV_sum(21) <= NOT sum(21);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~101_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_30~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_30~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_29~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_29~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_29~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_32~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_32~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_31~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_31~21_sumout\;
ALT_INV_sum(20) <= NOT sum(20);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~97_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_31~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_31~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_30~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_30~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_30~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_32~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_32~21_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~93_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~93_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
ALT_INV_sum(2) <= NOT sum(2);
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
ALT_INV_sum(26) <= NOT sum(26);
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~89_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
ALT_INV_sum(3) <= NOT sum(3);
\Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_25~21_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
ALT_INV_sum(27) <= NOT sum(27);
ALT_INV_sum(19) <= NOT sum(19);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~85_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_32~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_32~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_31~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_31~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_31~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~13_sumout\;
ALT_INV_sum(18) <= NOT sum(18);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~81_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_32~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_32~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_32~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
ALT_INV_sum(17) <= NOT sum(17);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~77_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
ALT_INV_sum(16) <= NOT sum(16);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~73_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~35_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[112]~35_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~34_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[117]~34_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~33_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[111]~33_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~32_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[105]~32_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~31_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[105]~31_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~30_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[117]~30_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~29_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[122]~29_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[116]~28_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~27_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[110]~27_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~26_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[110]~26_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~25_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[122]~25_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~24_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[127]~24_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~23_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[121]~23_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~22_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[115]~22_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~21_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[115]~21_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~20_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[127]~20_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~19_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[132]~19_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~18_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[126]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~17_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[120]~17_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~16_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[120]~16_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~15_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[132]~15_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~14_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[137]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~13_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[131]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[125]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[125]~11_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[137]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[142]~9_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[136]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[142]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[147]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[135]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[135]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[147]~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~125_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_24~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_24~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~121_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_27~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_27~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_24~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_24~13_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~117_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_24~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_24~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_28~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_28~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_27~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_27~21_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~113_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_27~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_27~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_24~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_24~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_24~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_29~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_29~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_28~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_28~21_sumout\;
ALT_INV_sum(0) <= NOT sum(0);
ALT_INV_sum(24) <= NOT sum(24);
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
ALT_INV_sum(1) <= NOT sum(1);
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
ALT_INV_sum(25) <= NOT sum(25);
ALT_INV_sum(23) <= NOT sum(23);
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~109_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_28~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_28~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \Div0|auto_generated|divider|divider|selnose\(0);
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(33) <= NOT \Div0|auto_generated|divider|divider|selnose\(33);
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~143_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[12]~143_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~142_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[6]~142_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~141_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[0]~141_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~140_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[6]~140_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~139_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[12]~139_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~138_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~138_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~137_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[11]~137_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[5]~136_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[5]~136_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~135_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~135_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~134_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~134_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~133_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~133_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~132_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[10]~132_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~131_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[10]~131_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~130_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~130_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~129_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~129_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~128_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~128_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~127_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~127_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~126_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~126_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~125_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~125_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~124_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[32]~124_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~123_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[26]~123_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~122_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[20]~122_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~121_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[20]~121_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~120_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[32]~120_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~119_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[37]~119_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~118_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[31]~118_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~117_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~117_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~116_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~116_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~115_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[37]~115_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~114_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[42]~114_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~113_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[36]~113_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~112_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[30]~112_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~111_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[30]~111_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~110_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[42]~110_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~109_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[47]~109_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~108_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~108_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~107_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[35]~107_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~106_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[35]~106_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~105_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[47]~105_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~104_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[52]~104_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~103_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~102_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[40]~102_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~101_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[40]~101_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~100_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[52]~100_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~99_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[57]~99_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~98_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[51]~98_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~97_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~97_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~96_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~96_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~95_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[57]~95_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~94_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[62]~94_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~93_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[56]~93_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~92_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[50]~92_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~91_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[50]~91_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~90_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[62]~90_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~89_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[67]~89_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~88_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~87_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[55]~87_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~86_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[55]~86_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~85_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[67]~85_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~84_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[145]~84_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~83_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[145]~83_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~82_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[146]~82_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~81_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[140]~81_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~80_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~79_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[72]~79_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~78_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[66]~78_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~77_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[60]~77_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~76_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[60]~76_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~75_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[72]~75_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~74_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[77]~74_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[71]~73_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[71]~73_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~72_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~71_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[65]~71_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~70_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[77]~70_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~69_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[82]~69_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~68_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[76]~68_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~67_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~66_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[70]~66_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~65_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[82]~65_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~64_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[87]~64_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~63_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[81]~63_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~62_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[75]~62_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~61_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[75]~61_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~60_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[87]~60_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~58_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[86]~58_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~57_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[80]~57_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~56_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[80]~56_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~55_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[92]~55_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~54_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[97]~54_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~53_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[91]~53_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~52_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[85]~52_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~51_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[85]~51_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~50_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[97]~50_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~49_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[102]~49_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[96]~48_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~47_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[90]~47_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~46_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[90]~46_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~45_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[102]~45_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~44_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[107]~44_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~43_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[101]~43_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~42_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[95]~42_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~41_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[95]~41_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~40_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[107]~40_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~39_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[112]~39_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[106]~38_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~37_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[100]~37_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~36_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[100]~36_combout\;
\ALT_INV_din[0]~input_o\ <= NOT \din[0]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_din[2]~input_o\ <= NOT \din[2]~input_o\;
\ALT_INV_din[3]~input_o\ <= NOT \din[3]~input_o\;
\ALT_INV_din[15]~input_o\ <= NOT \din[15]~input_o\;
\ALT_INV_din[14]~input_o\ <= NOT \din[14]~input_o\;
\ALT_INV_din[13]~input_o\ <= NOT \din[13]~input_o\;
\ALT_INV_din[12]~input_o\ <= NOT \din[12]~input_o\;
\ALT_INV_din[11]~input_o\ <= NOT \din[11]~input_o\;
\ALT_INV_din[10]~input_o\ <= NOT \din[10]~input_o\;
\ALT_INV_din[9]~input_o\ <= NOT \din[9]~input_o\;
\ALT_INV_din[8]~input_o\ <= NOT \din[8]~input_o\;
\ALT_INV_din[7]~input_o\ <= NOT \din[7]~input_o\;
\ALT_INV_din[6]~input_o\ <= NOT \din[6]~input_o\;
\ALT_INV_din[5]~input_o\ <= NOT \din[5]~input_o\;
\ALT_INV_din[4]~input_o\ <= NOT \din[4]~input_o\;
\ALT_INV_ActiveCh[1]~input_o\ <= NOT \ActiveCh[1]~input_o\;
\ALT_INV_ActiveCh[0]~input_o\ <= NOT \ActiveCh[0]~input_o\;
\ALT_INV_ActiveCh[2]~input_o\ <= NOT \ActiveCh[2]~input_o\;

\dout_new~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dout_new~output_o\);

\dout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

\dout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

\dout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

\dout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

\dout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

\dout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

\dout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

\dout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

\dout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(8),
	devoe => ww_devoe,
	o => \dout[8]~output_o\);

\dout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(9),
	devoe => ww_devoe,
	o => \dout[9]~output_o\);

\dout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(10),
	devoe => ww_devoe,
	o => \dout[10]~output_o\);

\dout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(11),
	devoe => ww_devoe,
	o => \dout[11]~output_o\);

\dout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(12),
	devoe => ww_devoe,
	o => \dout[12]~output_o\);

\dout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(13),
	devoe => ww_devoe,
	o => \dout[13]~output_o\);

\dout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(14),
	devoe => ww_devoe,
	o => \dout[14]~output_o\);

\dout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => proc_out(15),
	devoe => ww_devoe,
	o => \dout[15]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\resetN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetN,
	o => \resetN~input_o\);

\counter[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~_wirecell_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	combout => \counter[0]~_wirecell_combout\);

\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \counter[0]~_wirecell_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = !counter(1) $ (!counter(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => ALT_INV_counter(0),
	combout => \Add1~0_combout\);

\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~0_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(1) & counter(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	datab => ALT_INV_counter(0),
	combout => \Equal0~0_combout\);

\sum[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(31));

\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( sum(0) ) + ( \din[0]~input_o\ ) + ( !VCC ))
-- \Add0~126\ = CARRY(( sum(0) ) + ( \din[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(0),
	dataf => \ALT_INV_din[0]~input_o\,
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~125_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( sum(1) ) + ( \din[1]~input_o\ ) + ( \Add0~126\ ))
-- \Add0~118\ = CARRY(( sum(1) ) + ( \din[1]~input_o\ ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(1),
	dataf => \ALT_INV_din[1]~input_o\,
	cin => \Add0~126\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~117_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( sum(2) ) + ( \din[2]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~94\ = CARRY(( sum(2) ) + ( \din[2]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(2),
	dataf => \ALT_INV_din[2]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~93_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( sum(3) ) + ( \din[3]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~86\ = CARRY(( sum(3) ) + ( \din[3]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(3),
	dataf => \ALT_INV_din[3]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~85_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( sum(4) ) + ( \din[4]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~18\ = CARRY(( sum(4) ) + ( \din[4]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(4),
	dataf => \ALT_INV_din[4]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(4));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( sum(5) ) + ( \din[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( sum(5) ) + ( \din[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(5),
	dataf => \ALT_INV_din[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(5));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( sum(6) ) + ( \din[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( sum(6) ) + ( \din[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(6),
	dataf => \ALT_INV_din[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(6));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( sum(7) ) + ( \din[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( sum(7) ) + ( \din[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(7),
	dataf => \ALT_INV_din[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(7));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( sum(8) ) + ( \din[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( sum(8) ) + ( \din[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(8),
	dataf => \ALT_INV_din[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(8));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( sum(9) ) + ( \din[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( sum(9) ) + ( \din[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(9),
	dataf => \ALT_INV_din[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~37_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(9));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( sum(10) ) + ( \din[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( sum(10) ) + ( \din[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(10),
	dataf => \ALT_INV_din[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~41_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(10));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( sum(11) ) + ( \din[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( sum(11) ) + ( \din[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(11),
	dataf => \ALT_INV_din[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(11));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( sum(12) ) + ( \din[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( sum(12) ) + ( \din[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(12),
	dataf => \ALT_INV_din[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~49_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(12));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( sum(13) ) + ( \din[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( sum(13) ) + ( \din[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(13),
	dataf => \ALT_INV_din[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~53_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(13));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( sum(14) ) + ( \din[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( sum(14) ) + ( \din[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(14),
	dataf => \ALT_INV_din[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(14));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( sum(15) ) + ( \din[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( sum(15) ) + ( \din[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(15),
	dataf => \ALT_INV_din[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~61_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(15));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( sum(16) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( sum(16) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(16),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\sum[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~65_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(16));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( sum(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( sum(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\sum[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~69_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(17));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( sum(18) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( sum(18) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(18),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\sum[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~73_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(18));

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( sum(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( sum(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\sum[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~77_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(19));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( sum(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~98\ = CARRY(( sum(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(20),
	cin => \Add0~78\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\sum[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~97_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(20));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( sum(21) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( sum(21) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(21),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\sum[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~101_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(21));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( sum(22) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( sum(22) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(22),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\sum[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~105_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(22));

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( sum(23) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( sum(23) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(23),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\sum[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~109_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(23));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( sum(24) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~122\ = CARRY(( sum(24) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(24),
	cin => \Add0~110\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\sum[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~121_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(24));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( sum(25) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~114\ = CARRY(( sum(25) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(25),
	cin => \Add0~122\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\sum[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~113_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(25));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( sum(26) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~90\ = CARRY(( sum(26) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(26),
	cin => \Add0~114\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\sum[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~89_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(26));

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( sum(27) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~82\ = CARRY(( sum(27) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(27),
	cin => \Add0~90\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\sum[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~81_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(27));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( sum(28) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~14\ = CARRY(( sum(28) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(28),
	cin => \Add0~82\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\sum[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(28));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( sum(29) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( sum(29) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(29),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\sum[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(29));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( sum(30) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( sum(30) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(30),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\sum[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	clrn => \resetN~input_o\,
	sclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(30));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( sum(31) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(31),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

\ActiveCh[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ActiveCh(2),
	o => \ActiveCh[2]~input_o\);

\ActiveCh[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ActiveCh(0),
	o => \ActiveCh[0]~input_o\);

\Div0|auto_generated|divider|my_abs_num|op_1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~93_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~125_sumout\) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~94\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~125_sumout\) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~125_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~93_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~94\);

\Div0|auto_generated|divider|my_abs_num|op_1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~117_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~94\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~90\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~117_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~117_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~94\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~90\);

\Div0|auto_generated|divider|my_abs_num|op_1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~93_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~90\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~70\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~93_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~93_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~90\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~70\);

\Div0|auto_generated|divider|my_abs_num|op_1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~85_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~70\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~66\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~85_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~85_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~70\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~66\);

\Div0|auto_generated|divider|my_abs_num|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~17_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~66\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~2\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~17_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~66\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~2\);

\Div0|auto_generated|divider|my_abs_num|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~21_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~2\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~6\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~21_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~2\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~6\);

\Div0|auto_generated|divider|my_abs_num|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~25_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~6\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~10\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~25_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~6\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~10\);

\Div0|auto_generated|divider|my_abs_num|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~29_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~14\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~29_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~29_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~10\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~14\);

\Div0|auto_generated|divider|my_abs_num|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~33_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~18\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~33_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~14\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~18\);

\Div0|auto_generated|divider|my_abs_num|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~37_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~22\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~37_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~18\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~22\);

\Div0|auto_generated|divider|my_abs_num|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~41_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~26\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~41_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~41_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~22\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~26\);

\Div0|auto_generated|divider|my_abs_num|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~45_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~30\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~45_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~26\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~30\);

\Div0|auto_generated|divider|my_abs_num|op_1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~49_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~34\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~49_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~49_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~30\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~34\);

\Div0|auto_generated|divider|my_abs_num|op_1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~53_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~34\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~38\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~53_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~53_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~34\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~38\);

\Div0|auto_generated|divider|my_abs_num|op_1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~57_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~38\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~42\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~57_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~57_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~38\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~42\);

\Div0|auto_generated|divider|my_abs_num|op_1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~61_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~42\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~46\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~61_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~61_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~42\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~46\);

\Div0|auto_generated|divider|my_abs_num|op_1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~65_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~46\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~50\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~65_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~65_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~46\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~50\);

\Div0|auto_generated|divider|my_abs_num|op_1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~69_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~50\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~54\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~69_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~69_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~50\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~54\);

\Div0|auto_generated|divider|my_abs_num|op_1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~73_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~54\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~58\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~73_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~73_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~54\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~58\);

\Div0|auto_generated|divider|my_abs_num|op_1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~77_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~58\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~62\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~77_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~77_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~58\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~62\);

\Div0|auto_generated|divider|my_abs_num|op_1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~97_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~62\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~74\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~97_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~97_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~62\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~74\);

\Div0|auto_generated|divider|my_abs_num|op_1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~101_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~74\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~78\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~101_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~101_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~74\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~78\);

\Div0|auto_generated|divider|my_abs_num|op_1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~105_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~78\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~82\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~105_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~105_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~78\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~82\);

\Div0|auto_generated|divider|my_abs_num|op_1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~109_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~82\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~86\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~109_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~109_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~82\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~86\);

\Div0|auto_generated|divider|my_abs_num|op_1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~121_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~86\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~98\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~121_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~121_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~86\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~98\);

\Div0|auto_generated|divider|my_abs_num|op_1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~113_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~98\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~102\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~113_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~113_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~98\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~102\);

\Div0|auto_generated|divider|my_abs_num|op_1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~89_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~102\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~106\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~89_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~89_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~102\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~106\);

\Div0|auto_generated|divider|my_abs_num|op_1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~81_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~106\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~110\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~81_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~81_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~106\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~110\);

\Div0|auto_generated|divider|my_abs_num|op_1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~13_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~110\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~114\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~13_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~110\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~114\);

\Div0|auto_generated|divider|my_abs_num|op_1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~9_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~114\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~118\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~9_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~114\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~118\);

\Div0|auto_generated|divider|my_abs_num|op_1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~5_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~118\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~122\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~5_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~5_sumout\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~118\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~122\);

\Div0|auto_generated|divider|my_abs_num|op_1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\ = SUM(( GND ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~122\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\);

\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\ = SUM(( !\ActiveCh[0]~input_o\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ = CARRY(( !\ActiveCh[0]~input_o\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ = SHARE((!\ActiveCh[0]~input_o\) # (\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActiveCh[0]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~125_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\);

\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\ ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~2\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~3\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\);

\ActiveCh[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ActiveCh(1),
	o => \ActiveCh[1]~input_o\);

\Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = ((\ActiveCh[1]~input_o\) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\)) # (\ActiveCh[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\,
	datac => \ALT_INV_ActiveCh[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\ $ (!\ActiveCh[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\ $ (!\ActiveCh[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ = SHARE((!\ActiveCh[0]~input_o\) # (\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~121_sumout\,
	datad => \ALT_INV_ActiveCh[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\ = SUM(( !\ActiveCh[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ 
-- ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ = CARRY(( !\ActiveCh[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\ 
-- ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ = SHARE((!\ActiveCh[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100001000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~125_sumout\,
	datad => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[6]~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[6]~140_combout\ = (!\ActiveCh[2]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[6]~140_combout\);

\Div0|auto_generated|divider|divider|StageOut[0]~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~141_combout\ = ( \ActiveCh[1]~input_o\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\ ) ) # ( !\ActiveCh[1]~input_o\ & ( (!\ActiveCh[2]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~1_sumout\))) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~5_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\)))) # (\ActiveCh[2]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|op_1~125_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011001100110011001100011011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~125_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~5_sumout\,
	datae => \ALT_INV_ActiveCh[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~141_combout\);

\Div0|auto_generated|divider|divider|selnose[33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(33) = (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\ActiveCh[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(33));

\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\ $ (!\ActiveCh[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\ $ (!\ActiveCh[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ = SHARE((!\ActiveCh[0]~input_o\) # (\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~117_sumout\,
	datad => \ALT_INV_ActiveCh[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ = SUM(( !\ActiveCh[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(33) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(33) & ((\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ = CARRY(( !\ActiveCh[1]~input_o\ $ (((!\Div0|auto_generated|divider|divider|selnose\(33) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(33) & ((\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\))))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\ ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\ActiveCh[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|selnose\(33) & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|selnose\(33) & ((\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100001000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(33),
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~121_sumout\,
	datad => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\ = SUM(( (!\ActiveCh[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\))))) # (\ActiveCh[2]~input_o\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\)))) ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ = CARRY(( (!\ActiveCh[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\))))) # (\ActiveCh[2]~input_o\ & (((\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ = SHARE((!\ActiveCh[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000001011100000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~141_combout\,
	datad => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[6]~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[6]~142_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~141_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\ActiveCh[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~141_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[6]~142_combout\);

\Div0|auto_generated|divider|divider|StageOut[5]~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[5]~136_combout\ = (!\ActiveCh[2]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\)))) # (\ActiveCh[2]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|op_1~121_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100111011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~121_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[5]~136_combout\);

\Div0|auto_generated|divider|divider|op_24~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_24~22_cout\);

\Div0|auto_generated|divider|divider|op_24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_24~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~113_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_24~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_24~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_24~6\);

\Div0|auto_generated|divider|divider|op_24~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~6\ ))
-- \Div0|auto_generated|divider|divider|op_24~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~117_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_24~6\,
	sumout => \Div0|auto_generated|divider|divider|op_24~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_24~10\);

\Div0|auto_generated|divider|divider|op_24~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[5]~136_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~10\ ))
-- \Div0|auto_generated|divider|divider|op_24~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[5]~136_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_24~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[5]~136_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_24~10\,
	sumout => \Div0|auto_generated|divider|divider|op_24~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_24~14\);

\Div0|auto_generated|divider|divider|op_24~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[6]~142_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[6]~140_combout\))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_24~14\ ))
-- \Div0|auto_generated|divider|divider|op_24~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[6]~142_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[6]~140_combout\))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_24~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~140_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~142_combout\,
	cin => \Div0|auto_generated|divider|divider|op_24~14\,
	sumout => \Div0|auto_generated|divider|divider|op_24~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_24~18\);

\Div0|auto_generated|divider|divider|op_24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_24~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_24~18\,
	sumout => \Div0|auto_generated|divider|divider|op_24~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[12]~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~139_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~139_combout\);

\Div0|auto_generated|divider|divider|StageOut[12]~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~143_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[6]~142_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[6]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~140_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[6]~142_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~143_combout\);

\Div0|auto_generated|divider|divider|StageOut[11]~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[11]~137_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[5]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[5]~136_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[11]~137_combout\);

\Div0|auto_generated|divider|divider|StageOut[10]~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~131_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~131_combout\);

\Div0|auto_generated|divider|divider|StageOut[10]~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~132_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~117_sumout\ & \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~117_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~132_combout\);

\Div0|auto_generated|divider|divider|op_27~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_27~14_cout\);

\Div0|auto_generated|divider|divider|op_27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~14_cout\ ))
-- \Div0|auto_generated|divider|divider|op_27~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~109_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_27~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_27~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_27~6\);

\Div0|auto_generated|divider|divider|op_27~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_24~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~6\ ))
-- \Div0|auto_generated|divider|divider|op_27~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_24~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~113_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_24~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_27~6\,
	sumout => \Div0|auto_generated|divider|divider|op_27~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_27~18\);

\Div0|auto_generated|divider|divider|op_27~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_24~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[10]~132_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[10]~131_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~18\ ))
-- \Div0|auto_generated|divider|divider|op_27~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_24~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[10]~132_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[10]~131_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_27~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~131_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_24~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~132_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_27~18\,
	sumout => \Div0|auto_generated|divider|divider|op_27~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_27~22\);

\Div0|auto_generated|divider|divider|op_27~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_24~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[11]~137_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_27~22\ ))
-- \Div0|auto_generated|divider|divider|op_27~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_24~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[11]~137_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_27~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~137_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_24~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_27~22\,
	sumout => \Div0|auto_generated|divider|divider|op_27~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_27~26\);

\Div0|auto_generated|divider|divider|op_27~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_24~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[12]~143_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[12]~139_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_27~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~139_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_24~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[12]~143_combout\,
	cin => \Div0|auto_generated|divider|divider|op_27~26\,
	cout => \Div0|auto_generated|divider|divider|op_27~10_cout\);

\Div0|auto_generated|divider|divider|op_27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_27~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_27~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_27~10_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_27~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[17]~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~135_combout\ = (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & \Div0|auto_generated|divider|divider|op_24~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_24~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~135_combout\);

\Div0|auto_generated|divider|divider|StageOut[17]~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~138_combout\ = (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[11]~137_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[11]~137_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~138_combout\);

\Div0|auto_generated|divider|divider|StageOut[16]~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~133_combout\ = (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_24~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_24~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[10]~132_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[10]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~131_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_24~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[10]~132_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~133_combout\);

\Div0|auto_generated|divider|divider|StageOut[15]~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~126_combout\ = (!\Div0|auto_generated|divider|divider|op_24~1_sumout\ & \Div0|auto_generated|divider|divider|op_24~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_24~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~126_combout\);

\Div0|auto_generated|divider|divider|StageOut[15]~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~127_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~113_sumout\ & \Div0|auto_generated|divider|divider|op_24~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~113_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_24~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~127_combout\);

\Div0|auto_generated|divider|divider|op_28~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_28~18_cout\);

\Div0|auto_generated|divider|divider|op_28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~18_cout\ ))
-- \Div0|auto_generated|divider|divider|op_28~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~105_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_28~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_28~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_28~6\);

\Div0|auto_generated|divider|divider|op_28~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_27~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~6\ ))
-- \Div0|auto_generated|divider|divider|op_28~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_27~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~109_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_27~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_28~6\,
	sumout => \Div0|auto_generated|divider|divider|op_28~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_28~10\);

\Div0|auto_generated|divider|divider|op_28~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_27~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[15]~127_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[15]~126_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~10\ ))
-- \Div0|auto_generated|divider|divider|op_28~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_27~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[15]~127_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[15]~126_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_28~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~126_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_27~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~127_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_28~10\,
	sumout => \Div0|auto_generated|divider|divider|op_28~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_28~22\);

\Div0|auto_generated|divider|divider|op_28~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_27~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~133_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_28~22\ ))
-- \Div0|auto_generated|divider|divider|op_28~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_27~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~133_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_28~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~133_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_27~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_28~22\,
	sumout => \Div0|auto_generated|divider|divider|op_28~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_28~26\);

\Div0|auto_generated|divider|divider|op_28~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_27~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~138_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[17]~135_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_28~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~135_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_27~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~138_combout\,
	cin => \Div0|auto_generated|divider|divider|op_28~26\,
	cout => \Div0|auto_generated|divider|divider|op_28~14_cout\);

\Div0|auto_generated|divider|divider|op_28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_28~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_28~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_28~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[22]~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~130_combout\ = (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & \Div0|auto_generated|divider|divider|op_27~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_27~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~130_combout\);

\Div0|auto_generated|divider|divider|StageOut[22]~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~134_combout\ = (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[16]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~133_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~134_combout\);

\Div0|auto_generated|divider|divider|StageOut[21]~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~128_combout\ = (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_27~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_27~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[15]~127_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[15]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~126_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_27~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~127_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~128_combout\);

\Div0|auto_generated|divider|divider|StageOut[20]~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~121_combout\ = (!\Div0|auto_generated|divider|divider|op_27~1_sumout\ & \Div0|auto_generated|divider|divider|op_27~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_27~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~121_combout\);

\Div0|auto_generated|divider|divider|StageOut[20]~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~122_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~109_sumout\ & \Div0|auto_generated|divider|divider|op_27~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~109_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_27~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~122_combout\);

\Div0|auto_generated|divider|divider|op_29~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_29~22_cout\);

\Div0|auto_generated|divider|divider|op_29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_29~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~101_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_29~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_29~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_29~6\);

\Div0|auto_generated|divider|divider|op_29~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_28~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~6\ ))
-- \Div0|auto_generated|divider|divider|op_29~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_28~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~105_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_28~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_29~6\,
	sumout => \Div0|auto_generated|divider|divider|op_29~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_29~10\);

\Div0|auto_generated|divider|divider|op_29~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_28~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[20]~122_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[20]~121_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~10\ ))
-- \Div0|auto_generated|divider|divider|op_29~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_28~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[20]~122_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[20]~121_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_29~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~121_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_28~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~122_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_29~10\,
	sumout => \Div0|auto_generated|divider|divider|op_29~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_29~14\);

\Div0|auto_generated|divider|divider|op_29~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_28~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~128_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_29~14\ ))
-- \Div0|auto_generated|divider|divider|op_29~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_28~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~128_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_29~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~128_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_28~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_29~14\,
	sumout => \Div0|auto_generated|divider|divider|op_29~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_29~26\);

\Div0|auto_generated|divider|divider|op_29~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_28~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[22]~134_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[22]~130_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_29~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~130_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_28~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~134_combout\,
	cin => \Div0|auto_generated|divider|divider|op_29~26\,
	cout => \Div0|auto_generated|divider|divider|op_29~18_cout\);

\Div0|auto_generated|divider|divider|op_29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_29~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_29~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_29~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_29~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[27]~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~125_combout\ = (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & \Div0|auto_generated|divider|divider|op_28~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_28~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~125_combout\);

\Div0|auto_generated|divider|divider|StageOut[27]~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~129_combout\ = (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[21]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~128_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~129_combout\);

\Div0|auto_generated|divider|divider|StageOut[26]~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~123_combout\ = (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_28~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_28~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[20]~122_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[20]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~121_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_28~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~122_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~123_combout\);

\Div0|auto_generated|divider|divider|StageOut[25]~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~116_combout\ = (!\Div0|auto_generated|divider|divider|op_28~1_sumout\ & \Div0|auto_generated|divider|divider|op_28~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_28~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~116_combout\);

\Div0|auto_generated|divider|divider|StageOut[25]~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~117_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~105_sumout\ & \Div0|auto_generated|divider|divider|op_28~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~105_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_28~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~117_combout\);

\Div0|auto_generated|divider|divider|op_30~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_30~26_cout\);

\Div0|auto_generated|divider|divider|op_30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_30~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~97_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_30~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_30~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_30~6\);

\Div0|auto_generated|divider|divider|op_30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_29~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~6\ ))
-- \Div0|auto_generated|divider|divider|op_30~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_29~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~101_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_29~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_30~6\,
	sumout => \Div0|auto_generated|divider|divider|op_30~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_30~10\);

\Div0|auto_generated|divider|divider|op_30~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_29~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~117_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[25]~116_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~10\ ))
-- \Div0|auto_generated|divider|divider|op_30~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_29~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~117_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[25]~116_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_30~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_29~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~117_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_30~10\,
	sumout => \Div0|auto_generated|divider|divider|op_30~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_30~14\);

\Div0|auto_generated|divider|divider|op_30~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_29~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~123_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_30~14\ ))
-- \Div0|auto_generated|divider|divider|op_30~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_29~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~123_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_30~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~123_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_29~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_30~14\,
	sumout => \Div0|auto_generated|divider|divider|op_30~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_30~18\);

\Div0|auto_generated|divider|divider|op_30~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~22_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_29~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~129_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~125_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_30~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~125_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_29~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~129_combout\,
	cin => \Div0|auto_generated|divider|divider|op_30~18\,
	cout => \Div0|auto_generated|divider|divider|op_30~22_cout\);

\Div0|auto_generated|divider|divider|op_30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_30~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_30~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_30~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_30~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[32]~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~120_combout\ = (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & \Div0|auto_generated|divider|divider|op_29~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_29~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~120_combout\);

\Div0|auto_generated|divider|divider|StageOut[32]~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~124_combout\ = (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[26]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~123_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~124_combout\);

\Div0|auto_generated|divider|divider|StageOut[31]~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~118_combout\ = (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_29~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_29~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~117_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[25]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_29~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~117_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~118_combout\);

\Div0|auto_generated|divider|divider|StageOut[30]~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~111_combout\ = (!\Div0|auto_generated|divider|divider|op_29~1_sumout\ & \Div0|auto_generated|divider|divider|op_29~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_29~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~111_combout\);

\Div0|auto_generated|divider|divider|StageOut[30]~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~112_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~101_sumout\ & \Div0|auto_generated|divider|divider|op_29~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~101_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_29~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~112_combout\);

\Div0|auto_generated|divider|divider|op_31~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_31~14_cout\);

\Div0|auto_generated|divider|divider|op_31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~14_cout\ ))
-- \Div0|auto_generated|divider|divider|op_31~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~85_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_31~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_31~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_31~6\);

\Div0|auto_generated|divider|divider|op_31~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_30~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~6\ ))
-- \Div0|auto_generated|divider|divider|op_31~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_30~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~97_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_30~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_31~6\,
	sumout => \Div0|auto_generated|divider|divider|op_31~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_31~18\);

\Div0|auto_generated|divider|divider|op_31~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_30~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[30]~112_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[30]~111_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~18\ ))
-- \Div0|auto_generated|divider|divider|op_31~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_30~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[30]~112_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[30]~111_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_31~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~111_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_30~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~112_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_31~18\,
	sumout => \Div0|auto_generated|divider|divider|op_31~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_31~22\);

\Div0|auto_generated|divider|divider|op_31~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_30~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~118_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_31~22\ ))
-- \Div0|auto_generated|divider|divider|op_31~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_30~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~118_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_31~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~118_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_30~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_31~22\,
	sumout => \Div0|auto_generated|divider|divider|op_31~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_31~26\);

\Div0|auto_generated|divider|divider|op_31~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_30~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[32]~124_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[32]~120_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_31~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~120_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_30~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~124_combout\,
	cin => \Div0|auto_generated|divider|divider|op_31~26\,
	cout => \Div0|auto_generated|divider|divider|op_31~10_cout\);

\Div0|auto_generated|divider|divider|op_31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_31~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_31~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_31~10_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_31~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[37]~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~115_combout\ = (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & \Div0|auto_generated|divider|divider|op_30~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_30~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~115_combout\);

\Div0|auto_generated|divider|divider|StageOut[37]~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~119_combout\ = (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[31]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~118_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~119_combout\);

\Div0|auto_generated|divider|divider|StageOut[36]~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~113_combout\ = (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_30~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_30~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[30]~112_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[30]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~111_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_30~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~112_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~113_combout\);

\Div0|auto_generated|divider|divider|StageOut[35]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~106_combout\ = (!\Div0|auto_generated|divider|divider|op_30~1_sumout\ & \Div0|auto_generated|divider|divider|op_30~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_30~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~106_combout\);

\Div0|auto_generated|divider|divider|StageOut[35]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~107_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~97_sumout\ & \Div0|auto_generated|divider|divider|op_30~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~97_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_30~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~107_combout\);

\Div0|auto_generated|divider|divider|op_32~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_32~18_cout\);

\Div0|auto_generated|divider|divider|op_32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~18_cout\ ))
-- \Div0|auto_generated|divider|divider|op_32~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~81_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_32~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_32~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_32~6\);

\Div0|auto_generated|divider|divider|op_32~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_31~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~6\ ))
-- \Div0|auto_generated|divider|divider|op_32~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_31~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~85_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_31~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_32~6\,
	sumout => \Div0|auto_generated|divider|divider|op_32~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_32~10\);

\Div0|auto_generated|divider|divider|op_32~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_31~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[35]~107_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[35]~106_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~10\ ))
-- \Div0|auto_generated|divider|divider|op_32~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_31~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[35]~107_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[35]~106_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_32~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~106_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_31~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~107_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_32~10\,
	sumout => \Div0|auto_generated|divider|divider|op_32~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_32~22\);

\Div0|auto_generated|divider|divider|op_32~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_31~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~113_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_32~22\ ))
-- \Div0|auto_generated|divider|divider|op_32~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_31~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~113_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_32~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~113_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_31~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_32~22\,
	sumout => \Div0|auto_generated|divider|divider|op_32~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_32~26\);

\Div0|auto_generated|divider|divider|op_32~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_31~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[37]~119_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[37]~115_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_32~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~115_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_31~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~119_combout\,
	cin => \Div0|auto_generated|divider|divider|op_32~26\,
	cout => \Div0|auto_generated|divider|divider|op_32~14_cout\);

\Div0|auto_generated|divider|divider|op_32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_32~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_32~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_32~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_32~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[42]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~110_combout\ = (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & \Div0|auto_generated|divider|divider|op_31~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_31~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~110_combout\);

\Div0|auto_generated|divider|divider|StageOut[42]~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~114_combout\ = (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[36]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~113_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~114_combout\);

\Div0|auto_generated|divider|divider|StageOut[41]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~108_combout\ = (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_31~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_31~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[35]~107_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[35]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~106_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_31~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~107_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~108_combout\);

\Div0|auto_generated|divider|divider|StageOut[40]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~101_combout\ = (!\Div0|auto_generated|divider|divider|op_31~1_sumout\ & \Div0|auto_generated|divider|divider|op_31~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_31~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~101_combout\);

\Div0|auto_generated|divider|divider|StageOut[40]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~85_sumout\ & \Div0|auto_generated|divider|divider|op_31~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~85_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_31~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~102_combout\);

\Div0|auto_generated|divider|divider|op_3~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_3~22_cout\);

\Div0|auto_generated|divider|divider|op_3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_3~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~77_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_3~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~6\);

\Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_32~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~6\ ))
-- \Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_32~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~81_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_32~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_3~6\,
	sumout => \Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~10\);

\Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_32~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[40]~102_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[40]~101_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))
-- \Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_32~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[40]~102_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[40]~101_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~101_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_32~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~102_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~14\);

\Div0|auto_generated|divider|divider|op_3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_32~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~108_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))
-- \Div0|auto_generated|divider|divider|op_3~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_32~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~108_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~108_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_32~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \Div0|auto_generated|divider|divider|op_3~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~26\);

\Div0|auto_generated|divider|divider|op_3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_32~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[42]~114_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[42]~110_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~110_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_32~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~114_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~26\,
	cout => \Div0|auto_generated|divider|divider|op_3~18_cout\);

\Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[47]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~105_combout\ = (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & \Div0|auto_generated|divider|divider|op_32~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_32~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~105_combout\);

\Div0|auto_generated|divider|divider|StageOut[47]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~109_combout\ = (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[41]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~108_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~109_combout\);

\Div0|auto_generated|divider|divider|StageOut[46]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ = (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_32~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_32~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[40]~102_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[40]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~101_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_32~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~102_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\);

\Div0|auto_generated|divider|divider|StageOut[45]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~96_combout\ = (!\Div0|auto_generated|divider|divider|op_32~1_sumout\ & \Div0|auto_generated|divider|divider|op_32~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_32~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~96_combout\);

\Div0|auto_generated|divider|divider|StageOut[45]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~97_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~81_sumout\ & \Div0|auto_generated|divider|divider|op_32~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~81_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_32~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~97_combout\);

\Div0|auto_generated|divider|divider|op_4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~26_cout\);

\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~73_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_4~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~6\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~77_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~97_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~96_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~97_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~96_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~96_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~97_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~103_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

\Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[47]~109_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[47]~105_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~105_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~109_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	cout => \Div0|auto_generated|divider|divider|op_4~22_cout\);

\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[52]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~100_combout\ = (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|op_3~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~100_combout\);

\Div0|auto_generated|divider|divider|StageOut[52]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~104_combout\ = (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~103_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~104_combout\);

\Div0|auto_generated|divider|divider|StageOut[51]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~98_combout\ = (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~97_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~96_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~97_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~98_combout\);

\Div0|auto_generated|divider|divider|StageOut[50]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~91_combout\ = (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|op_3~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~91_combout\);

\Div0|auto_generated|divider|divider|StageOut[50]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~92_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~77_sumout\ & \Div0|auto_generated|divider|divider|op_3~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~77_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~92_combout\);

\Div0|auto_generated|divider|divider|op_5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~14_cout\);

\Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~14_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~61_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~6\);

\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~6\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~73_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[50]~92_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[50]~91_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[50]~92_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[50]~91_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~91_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~92_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

\Div0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~98_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~98_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~98_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~26\);

\Div0|auto_generated|divider|divider|op_5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[52]~104_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[52]~100_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~100_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~104_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26\,
	cout => \Div0|auto_generated|divider|divider|op_5~10_cout\);

\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~10_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[57]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~95_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~95_combout\);

\Div0|auto_generated|divider|divider|StageOut[57]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~99_combout\ = (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[51]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~98_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~99_combout\);

\Div0|auto_generated|divider|divider|StageOut[56]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~93_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[50]~92_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[50]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~91_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~92_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~93_combout\);

\Div0|auto_generated|divider|divider|StageOut[55]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[55]~86_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[55]~86_combout\);

\Div0|auto_generated|divider|divider|StageOut[55]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[55]~87_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~73_sumout\ & \Div0|auto_generated|divider|divider|op_4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~73_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[55]~87_combout\);

\Div0|auto_generated|divider|divider|op_6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~18_cout\);

\Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~18_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~57_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~6\);

\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~6\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~61_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[55]~87_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[55]~86_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[55]~87_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[55]~86_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~86_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~87_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

\Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[56]~93_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[56]~93_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~93_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~26\);

\Div0|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[57]~99_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[57]~95_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~95_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~99_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26\,
	cout => \Div0|auto_generated|divider|divider|op_6~14_cout\);

\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[62]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~90_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_5~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~90_combout\);

\Div0|auto_generated|divider|divider|StageOut[62]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~94_combout\ = (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[56]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~93_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~94_combout\);

\Div0|auto_generated|divider|divider|StageOut[61]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[55]~87_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[55]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~86_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~87_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\);

\Div0|auto_generated|divider|divider|StageOut[60]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~76_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_5~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~76_combout\);

\Div0|auto_generated|divider|divider|StageOut[60]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~77_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~61_sumout\ & \Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~61_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~77_combout\);

\Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~22_cout\);

\Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~53_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6\);

\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~57_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

\Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[60]~77_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[60]~76_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))
-- \Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[60]~77_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[60]~76_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~76_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~77_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14\);

\Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[61]~88_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))
-- \Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[61]~88_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~88_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~26\);

\Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[62]~94_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[62]~90_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~90_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[62]~94_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26\,
	cout => \Div0|auto_generated|divider|divider|op_7~18_cout\);

\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[67]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~85_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~85_combout\);

\Div0|auto_generated|divider|divider|StageOut[67]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~89_combout\ = (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~88_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~89_combout\);

\Div0|auto_generated|divider|divider|StageOut[66]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~78_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[60]~77_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[60]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~76_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~77_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~78_combout\);

\Div0|auto_generated|divider|divider|StageOut[65]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~71_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~71_combout\);

\Div0|auto_generated|divider|divider|StageOut[65]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~57_sumout\ & \Div0|auto_generated|divider|divider|op_6~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~57_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~72_combout\);

\Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_8~26_cout\);

\Div0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_8~6\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~49_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6\);

\Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~6\ ))
-- \Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~53_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~6\,
	sumout => \Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~10\);

\Div0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[65]~71_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~10\ ))
-- \Div0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[65]~71_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~71_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~72_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_8~10\,
	sumout => \Div0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~14\);

\Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~78_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~14\ ))
-- \Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~78_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~78_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~14\,
	sumout => \Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~18\);

\Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[67]~89_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[67]~85_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~85_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~89_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18\,
	cout => \Div0|auto_generated|divider|divider|op_8~22_cout\);

\Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[72]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~75_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|op_7~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~75_combout\);

\Div0|auto_generated|divider|divider|StageOut[72]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~79_combout\ = (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[66]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~78_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~79_combout\);

\Div0|auto_generated|divider|divider|StageOut[71]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~73_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[65]~72_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[65]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~71_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~72_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~73_combout\);

\Div0|auto_generated|divider|divider|StageOut[70]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~66_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|op_7~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~66_combout\);

\Div0|auto_generated|divider|divider|StageOut[70]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~53_sumout\ & \Div0|auto_generated|divider|divider|op_7~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~53_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~67_combout\);

\Div0|auto_generated|divider|divider|op_9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_9~26_cout\);

\Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~45_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_9~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~10\);

\Div0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~10\ ))
-- \Div0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~49_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_9~10\,
	sumout => \Div0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~14\);

\Div0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[70]~67_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[70]~66_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~14\ ))
-- \Div0|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[70]~67_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[70]~66_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~66_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~67_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_9~14\,
	sumout => \Div0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~18\);

\Div0|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[71]~73_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~18\ ))
-- \Div0|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[71]~73_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[71]~73_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~18\,
	sumout => \Div0|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~22\);

\Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[72]~79_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[72]~75_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~75_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~79_combout\,
	cin => \Div0|auto_generated|divider|divider|op_9~22\,
	cout => \Div0|auto_generated|divider|divider|op_9~6_cout\);

\Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_9~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[77]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~70_combout\ = (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|op_8~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~70_combout\);

\Div0|auto_generated|divider|divider|StageOut[77]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~74_combout\ = (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[71]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[71]~73_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~74_combout\);

\Div0|auto_generated|divider|divider|StageOut[76]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~68_combout\ = (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[70]~67_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[70]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~66_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~67_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~68_combout\);

\Div0|auto_generated|divider|divider|StageOut[75]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~61_combout\ = (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|op_8~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~61_combout\);

\Div0|auto_generated|divider|divider|StageOut[75]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~62_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~49_sumout\ & \Div0|auto_generated|divider|divider|op_8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~49_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~62_combout\);

\Div0|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_10~26_cout\);

\Div0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_10~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~41_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_10~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~10\);

\Div0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~10\ ))
-- \Div0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~45_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_10~10\,
	sumout => \Div0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~14\);

\Div0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[75]~62_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[75]~61_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~14\ ))
-- \Div0|auto_generated|divider|divider|op_10~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[75]~62_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[75]~61_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~61_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~62_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_10~14\,
	sumout => \Div0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~18\);

\Div0|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~68_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~18\ ))
-- \Div0|auto_generated|divider|divider|op_10~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~68_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~68_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~18\,
	sumout => \Div0|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~22\);

\Div0|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[77]~74_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[77]~70_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~70_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~74_combout\,
	cin => \Div0|auto_generated|divider|divider|op_10~22\,
	cout => \Div0|auto_generated|divider|divider|op_10~6_cout\);

\Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_10~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[82]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~65_combout\ = (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|op_9~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~65_combout\);

\Div0|auto_generated|divider|divider|StageOut[82]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~69_combout\ = (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[76]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~68_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~69_combout\);

\Div0|auto_generated|divider|divider|StageOut[81]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~63_combout\ = (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[75]~62_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[75]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~61_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~62_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~63_combout\);

\Div0|auto_generated|divider|divider|StageOut[80]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~56_combout\ = (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|op_9~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~56_combout\);

\Div0|auto_generated|divider|divider|StageOut[80]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~57_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~45_sumout\ & \Div0|auto_generated|divider|divider|op_9~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~45_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~57_combout\);

\Div0|auto_generated|divider|divider|op_11~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_11~26_cout\);

\Div0|auto_generated|divider|divider|op_11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_11~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~37_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_11~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_11~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~10\);

\Div0|auto_generated|divider|divider|op_11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~10\ ))
-- \Div0|auto_generated|divider|divider|op_11~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~41_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_11~10\,
	sumout => \Div0|auto_generated|divider|divider|op_11~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~14\);

\Div0|auto_generated|divider|divider|op_11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[80]~57_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[80]~56_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~14\ ))
-- \Div0|auto_generated|divider|divider|op_11~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[80]~57_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[80]~56_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~56_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~57_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_11~14\,
	sumout => \Div0|auto_generated|divider|divider|op_11~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~18\);

\Div0|auto_generated|divider|divider|op_11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~63_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~18\ ))
-- \Div0|auto_generated|divider|divider|op_11~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~63_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~63_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~18\,
	sumout => \Div0|auto_generated|divider|divider|op_11~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~22\);

\Div0|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[82]~69_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[82]~65_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~65_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~69_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~22\,
	cout => \Div0|auto_generated|divider|divider|op_11~6_cout\);

\Div0|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_11~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[87]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~60_combout\ = (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & \Div0|auto_generated|divider|divider|op_10~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~60_combout\);

\Div0|auto_generated|divider|divider|StageOut[87]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~64_combout\ = (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[81]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~63_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~64_combout\);

\Div0|auto_generated|divider|divider|StageOut[86]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~58_combout\ = (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[80]~57_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[80]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~56_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~57_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~58_combout\);

\Div0|auto_generated|divider|divider|StageOut[85]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~51_combout\ = (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & \Div0|auto_generated|divider|divider|op_10~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~51_combout\);

\Div0|auto_generated|divider|divider|StageOut[85]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~52_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~41_sumout\ & \Div0|auto_generated|divider|divider|op_10~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~41_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~52_combout\);

\Div0|auto_generated|divider|divider|op_12~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_12~26_cout\);

\Div0|auto_generated|divider|divider|op_12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_12~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_12~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_12~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~10\);

\Div0|auto_generated|divider|divider|op_12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~10\ ))
-- \Div0|auto_generated|divider|divider|op_12~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~37_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_12~10\,
	sumout => \Div0|auto_generated|divider|divider|op_12~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~14\);

\Div0|auto_generated|divider|divider|op_12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_11~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[85]~52_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[85]~51_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~14\ ))
-- \Div0|auto_generated|divider|divider|op_12~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_11~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[85]~52_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[85]~51_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~51_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~52_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_12~14\,
	sumout => \Div0|auto_generated|divider|divider|op_12~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~18\);

\Div0|auto_generated|divider|divider|op_12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~58_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_12~18\ ))
-- \Div0|auto_generated|divider|divider|op_12~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~58_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~58_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_12~18\,
	sumout => \Div0|auto_generated|divider|divider|op_12~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~22\);

\Div0|auto_generated|divider|divider|op_12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_11~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[87]~64_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[87]~60_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~60_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~64_combout\,
	cin => \Div0|auto_generated|divider|divider|op_12~22\,
	cout => \Div0|auto_generated|divider|divider|op_12~6_cout\);

\Div0|auto_generated|divider|divider|op_12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_12~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_12~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[92]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~55_combout\ = (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & \Div0|auto_generated|divider|divider|op_11~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~55_combout\);

\Div0|auto_generated|divider|divider|StageOut[92]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\ = (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[86]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~58_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\);

\Div0|auto_generated|divider|divider|StageOut[91]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~53_combout\ = (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_11~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[85]~52_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[85]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~51_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~52_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~53_combout\);

\Div0|auto_generated|divider|divider|StageOut[90]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~46_combout\ = (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & \Div0|auto_generated|divider|divider|op_11~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~46_combout\);

\Div0|auto_generated|divider|divider|StageOut[90]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~47_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~37_sumout\ & \Div0|auto_generated|divider|divider|op_11~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~37_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~47_combout\);

\Div0|auto_generated|divider|divider|op_14~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_14~26_cout\);

\Div0|auto_generated|divider|divider|op_14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_14~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_14~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_14~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~10\);

\Div0|auto_generated|divider|divider|op_14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~10\ ))
-- \Div0|auto_generated|divider|divider|op_14~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_14~10\,
	sumout => \Div0|auto_generated|divider|divider|op_14~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~14\);

\Div0|auto_generated|divider|divider|op_14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_12~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[90]~47_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[90]~46_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~14\ ))
-- \Div0|auto_generated|divider|divider|op_14~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_12~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[90]~47_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[90]~46_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~46_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~47_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_14~14\,
	sumout => \Div0|auto_generated|divider|divider|op_14~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~18\);

\Div0|auto_generated|divider|divider|op_14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[91]~53_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_14~18\ ))
-- \Div0|auto_generated|divider|divider|op_14~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[91]~53_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~53_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_14~18\,
	sumout => \Div0|auto_generated|divider|divider|op_14~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~22\);

\Div0|auto_generated|divider|divider|op_14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_12~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[92]~59_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[92]~55_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~55_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\,
	cin => \Div0|auto_generated|divider|divider|op_14~22\,
	cout => \Div0|auto_generated|divider|divider|op_14~6_cout\);

\Div0|auto_generated|divider|divider|op_14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_14~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_14~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_14~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[97]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~50_combout\ = (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & \Div0|auto_generated|divider|divider|op_12~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~50_combout\);

\Div0|auto_generated|divider|divider|StageOut[97]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~54_combout\ = (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[91]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~53_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~54_combout\);

\Div0|auto_generated|divider|divider|StageOut[96]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~48_combout\ = (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_12~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[90]~47_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[90]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~46_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~47_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~48_combout\);

\Div0|auto_generated|divider|divider|StageOut[95]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~41_combout\ = (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & \Div0|auto_generated|divider|divider|op_12~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~41_combout\);

\Div0|auto_generated|divider|divider|StageOut[95]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~42_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~33_sumout\ & \Div0|auto_generated|divider|divider|op_12~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~33_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~42_combout\);

\Div0|auto_generated|divider|divider|op_15~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_15~26_cout\);

\Div0|auto_generated|divider|divider|op_15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_15~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_15~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_15~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~10\);

\Div0|auto_generated|divider|divider|op_15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~10\ ))
-- \Div0|auto_generated|divider|divider|op_15~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_15~10\,
	sumout => \Div0|auto_generated|divider|divider|op_15~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~14\);

\Div0|auto_generated|divider|divider|op_15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_14~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[95]~42_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[95]~41_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~14\ ))
-- \Div0|auto_generated|divider|divider|op_15~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_14~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[95]~42_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[95]~41_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~41_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~42_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_15~14\,
	sumout => \Div0|auto_generated|divider|divider|op_15~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~18\);

\Div0|auto_generated|divider|divider|op_15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[96]~48_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_15~18\ ))
-- \Div0|auto_generated|divider|divider|op_15~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[96]~48_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_15~18\,
	sumout => \Div0|auto_generated|divider|divider|op_15~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~22\);

\Div0|auto_generated|divider|divider|op_15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_14~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[97]~54_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[97]~50_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~50_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~54_combout\,
	cin => \Div0|auto_generated|divider|divider|op_15~22\,
	cout => \Div0|auto_generated|divider|divider|op_15~6_cout\);

\Div0|auto_generated|divider|divider|op_15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_15~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_15~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_15~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[102]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~45_combout\ = (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & \Div0|auto_generated|divider|divider|op_14~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~45_combout\);

\Div0|auto_generated|divider|divider|StageOut[102]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~49_combout\ = (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[96]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~49_combout\);

\Div0|auto_generated|divider|divider|StageOut[101]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~43_combout\ = (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_14~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[95]~42_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[95]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~41_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~42_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~43_combout\);

\Div0|auto_generated|divider|divider|StageOut[100]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~36_combout\ = (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & \Div0|auto_generated|divider|divider|op_14~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~36_combout\);

\Div0|auto_generated|divider|divider|StageOut[100]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~37_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ & \Div0|auto_generated|divider|divider|op_14~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~37_combout\);

\Div0|auto_generated|divider|divider|op_16~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_16~26_cout\);

\Div0|auto_generated|divider|divider|op_16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_16~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_16~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_16~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~10\);

\Div0|auto_generated|divider|divider|op_16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~10\ ))
-- \Div0|auto_generated|divider|divider|op_16~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_16~10\,
	sumout => \Div0|auto_generated|divider|divider|op_16~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~14\);

\Div0|auto_generated|divider|divider|op_16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_15~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[100]~37_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[100]~36_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~14\ ))
-- \Div0|auto_generated|divider|divider|op_16~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_15~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[100]~37_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[100]~36_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~36_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~37_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_16~14\,
	sumout => \Div0|auto_generated|divider|divider|op_16~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~18\);

\Div0|auto_generated|divider|divider|op_16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[101]~43_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_16~18\ ))
-- \Div0|auto_generated|divider|divider|op_16~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[101]~43_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~43_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_16~18\,
	sumout => \Div0|auto_generated|divider|divider|op_16~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~22\);

\Div0|auto_generated|divider|divider|op_16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_15~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[102]~49_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[102]~45_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~45_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~49_combout\,
	cin => \Div0|auto_generated|divider|divider|op_16~22\,
	cout => \Div0|auto_generated|divider|divider|op_16~6_cout\);

\Div0|auto_generated|divider|divider|op_16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_16~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_16~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[107]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~40_combout\ = (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & \Div0|auto_generated|divider|divider|op_15~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~40_combout\);

\Div0|auto_generated|divider|divider|StageOut[107]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~44_combout\ = (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[101]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~43_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~44_combout\);

\Div0|auto_generated|divider|divider|StageOut[106]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~38_combout\ = (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_15~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[100]~37_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[100]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~36_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~37_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~38_combout\);

\Div0|auto_generated|divider|divider|StageOut[105]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~31_combout\ = (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & \Div0|auto_generated|divider|divider|op_15~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~31_combout\);

\Div0|auto_generated|divider|divider|StageOut[105]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~32_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ & \Div0|auto_generated|divider|divider|op_15~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~32_combout\);

\Div0|auto_generated|divider|divider|op_17~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_17~26_cout\);

\Div0|auto_generated|divider|divider|op_17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_17~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_17~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_17~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_17~10\);

\Div0|auto_generated|divider|divider|op_17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~10\ ))
-- \Div0|auto_generated|divider|divider|op_17~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_17~10\,
	sumout => \Div0|auto_generated|divider|divider|op_17~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_17~14\);

\Div0|auto_generated|divider|divider|op_17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_16~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[105]~32_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[105]~31_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~14\ ))
-- \Div0|auto_generated|divider|divider|op_17~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_16~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[105]~32_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[105]~31_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_17~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~31_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~32_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_17~14\,
	sumout => \Div0|auto_generated|divider|divider|op_17~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_17~18\);

\Div0|auto_generated|divider|divider|op_17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[106]~38_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_17~18\ ))
-- \Div0|auto_generated|divider|divider|op_17~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[106]~38_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_17~18\,
	sumout => \Div0|auto_generated|divider|divider|op_17~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_17~22\);

\Div0|auto_generated|divider|divider|op_17~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_16~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[107]~44_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[107]~40_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~40_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~44_combout\,
	cin => \Div0|auto_generated|divider|divider|op_17~22\,
	cout => \Div0|auto_generated|divider|divider|op_17~6_cout\);

\Div0|auto_generated|divider|divider|op_17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_17~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_17~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_17~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[112]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~35_combout\ = (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & \Div0|auto_generated|divider|divider|op_16~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~35_combout\);

\Div0|auto_generated|divider|divider|StageOut[112]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~39_combout\ = (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[106]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~39_combout\);

\Div0|auto_generated|divider|divider|StageOut[111]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~33_combout\ = (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_16~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[105]~32_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[105]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~31_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~33_combout\);

\Div0|auto_generated|divider|divider|StageOut[110]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~26_combout\ = (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & \Div0|auto_generated|divider|divider|op_16~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~26_combout\);

\Div0|auto_generated|divider|divider|StageOut[110]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~27_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ & \Div0|auto_generated|divider|divider|op_16~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~27_combout\);

\Div0|auto_generated|divider|divider|op_18~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_18~26_cout\);

\Div0|auto_generated|divider|divider|op_18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_18~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_18~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_18~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~10\);

\Div0|auto_generated|divider|divider|op_18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_17~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~10\ ))
-- \Div0|auto_generated|divider|divider|op_18~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_17~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_17~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_18~10\,
	sumout => \Div0|auto_generated|divider|divider|op_18~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~14\);

\Div0|auto_generated|divider|divider|op_18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_17~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[110]~27_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[110]~26_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~14\ ))
-- \Div0|auto_generated|divider|divider|op_18~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_17~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[110]~27_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[110]~26_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_18~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_17~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~27_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_18~14\,
	sumout => \Div0|auto_generated|divider|divider|op_18~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~18\);

\Div0|auto_generated|divider|divider|op_18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_17~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[111]~33_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~18\ ))
-- \Div0|auto_generated|divider|divider|op_18~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_17~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[111]~33_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~33_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_17~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_18~18\,
	sumout => \Div0|auto_generated|divider|divider|op_18~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~22\);

\Div0|auto_generated|divider|divider|op_18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_17~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[112]~39_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[112]~35_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~35_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_17~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~39_combout\,
	cin => \Div0|auto_generated|divider|divider|op_18~22\,
	cout => \Div0|auto_generated|divider|divider|op_18~6_cout\);

\Div0|auto_generated|divider|divider|op_18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_18~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_18~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[117]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~30_combout\ = (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & \Div0|auto_generated|divider|divider|op_17~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_17~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~30_combout\);

\Div0|auto_generated|divider|divider|StageOut[117]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~34_combout\ = (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[111]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~33_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~34_combout\);

\Div0|auto_generated|divider|divider|StageOut[116]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~28_combout\ = (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_17~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_17~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[110]~27_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[110]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_17~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~27_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~28_combout\);

\Div0|auto_generated|divider|divider|StageOut[115]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~21_combout\ = (!\Div0|auto_generated|divider|divider|op_17~1_sumout\ & \Div0|auto_generated|divider|divider|op_17~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_17~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~21_combout\);

\Div0|auto_generated|divider|divider|StageOut[115]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~22_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ & \Div0|auto_generated|divider|divider|op_17~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~22_combout\);

\Div0|auto_generated|divider|divider|op_19~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_19~26_cout\);

\Div0|auto_generated|divider|divider|op_19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_19~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_19~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_19~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~10\);

\Div0|auto_generated|divider|divider|op_19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~10\ ))
-- \Div0|auto_generated|divider|divider|op_19~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_19~10\,
	sumout => \Div0|auto_generated|divider|divider|op_19~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~14\);

\Div0|auto_generated|divider|divider|op_19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[115]~22_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[115]~21_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~14\ ))
-- \Div0|auto_generated|divider|divider|op_19~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[115]~22_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[115]~21_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_19~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~21_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~22_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_19~14\,
	sumout => \Div0|auto_generated|divider|divider|op_19~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~18\);

\Div0|auto_generated|divider|divider|op_19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~28_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_19~18\ ))
-- \Div0|auto_generated|divider|divider|op_19~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~28_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_19~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~18\,
	sumout => \Div0|auto_generated|divider|divider|op_19~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~22\);

\Div0|auto_generated|divider|divider|op_19~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[117]~34_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[117]~30_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_19~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~34_combout\,
	cin => \Div0|auto_generated|divider|divider|op_19~22\,
	cout => \Div0|auto_generated|divider|divider|op_19~6_cout\);

\Div0|auto_generated|divider|divider|op_19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_19~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_19~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_19~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[122]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~25_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & \Div0|auto_generated|divider|divider|op_18~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~25_combout\);

\Div0|auto_generated|divider|divider|StageOut[122]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~29_combout\ = (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[116]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~29_combout\);

\Div0|auto_generated|divider|divider|StageOut[121]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~23_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[115]~22_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[115]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~21_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~23_combout\);

\Div0|auto_generated|divider|divider|StageOut[120]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~16_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & \Div0|auto_generated|divider|divider|op_18~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~16_combout\);

\Div0|auto_generated|divider|divider|StageOut[120]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~17_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ & \Div0|auto_generated|divider|divider|op_18~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~17_combout\);

\Div0|auto_generated|divider|divider|op_20~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_20~26_cout\);

\Div0|auto_generated|divider|divider|op_20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_20~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_20~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_20~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_20~10\);

\Div0|auto_generated|divider|divider|op_20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~10\ ))
-- \Div0|auto_generated|divider|divider|op_20~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_20~10\,
	sumout => \Div0|auto_generated|divider|divider|op_20~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_20~14\);

\Div0|auto_generated|divider|divider|op_20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[120]~17_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[120]~16_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~14\ ))
-- \Div0|auto_generated|divider|divider|op_20~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[120]~17_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[120]~16_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~17_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_20~14\,
	sumout => \Div0|auto_generated|divider|divider|op_20~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_20~18\);

\Div0|auto_generated|divider|divider|op_20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~23_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_20~18\ ))
-- \Div0|auto_generated|divider|divider|op_20~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~23_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~23_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_20~18\,
	sumout => \Div0|auto_generated|divider|divider|op_20~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_20~22\);

\Div0|auto_generated|divider|divider|op_20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[122]~29_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[122]~25_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~25_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~29_combout\,
	cin => \Div0|auto_generated|divider|divider|op_20~22\,
	cout => \Div0|auto_generated|divider|divider|op_20~6_cout\);

\Div0|auto_generated|divider|divider|op_20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_20~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_20~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_20~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[127]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~20_combout\ = (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|op_19~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~20_combout\);

\Div0|auto_generated|divider|divider|StageOut[127]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~24_combout\ = (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[121]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~23_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~24_combout\);

\Div0|auto_generated|divider|divider|StageOut[126]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~18_combout\ = (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[120]~17_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[120]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~17_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~18_combout\);

\Div0|auto_generated|divider|divider|StageOut[125]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~11_combout\ = (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|op_19~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~11_combout\);

\Div0|auto_generated|divider|divider|StageOut[125]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~12_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ & \Div0|auto_generated|divider|divider|op_19~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~12_combout\);

\Div0|auto_generated|divider|divider|op_21~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_21~26_cout\);

\Div0|auto_generated|divider|divider|op_21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~9_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_21~10\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_21~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_21~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_21~10\);

\Div0|auto_generated|divider|divider|op_21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_20~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~10\ ))
-- \Div0|auto_generated|divider|divider|op_21~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_20~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_21~10\,
	sumout => \Div0|auto_generated|divider|divider|op_21~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_21~14\);

\Div0|auto_generated|divider|divider|op_21~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_20~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[125]~12_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[125]~11_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~14\ ))
-- \Div0|auto_generated|divider|divider|op_21~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_20~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[125]~12_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[125]~11_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_21~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~12_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_21~14\,
	sumout => \Div0|auto_generated|divider|divider|op_21~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_21~18\);

\Div0|auto_generated|divider|divider|op_21~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_20~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~18_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_21~18\ ))
-- \Div0|auto_generated|divider|divider|op_21~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_20~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~18_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_21~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_21~18\,
	sumout => \Div0|auto_generated|divider|divider|op_21~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_21~22\);

\Div0|auto_generated|divider|divider|op_21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_20~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[127]~24_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[127]~20_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_21~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~24_combout\,
	cin => \Div0|auto_generated|divider|divider|op_21~22\,
	cout => \Div0|auto_generated|divider|divider|op_21~6_cout\);

\Div0|auto_generated|divider|divider|op_21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_21~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_21~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_21~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[132]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~15_combout\ = (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & \Div0|auto_generated|divider|divider|op_20~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~15_combout\);

\Div0|auto_generated|divider|divider|StageOut[132]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~19_combout\ = (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[126]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~19_combout\);

\Div0|auto_generated|divider|divider|StageOut[131]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~13_combout\ = (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_20~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[125]~12_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[125]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~13_combout\);

\Div0|auto_generated|divider|divider|StageOut[130]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\ = (!\Div0|auto_generated|divider|divider|op_20~1_sumout\ & \Div0|auto_generated|divider|divider|op_20~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~6_combout\);

\Div0|auto_generated|divider|divider|StageOut[130]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ & \Div0|auto_generated|divider|divider|op_20~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\);

\Div0|auto_generated|divider|divider|op_22~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_22~26_cout\);

\Div0|auto_generated|divider|divider|op_22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~21_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_22~22\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~65_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_22~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_22~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_22~22\);

\Div0|auto_generated|divider|divider|op_22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_21~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~22\ ))
-- \Div0|auto_generated|divider|divider|op_22~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_21~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_22~22\,
	sumout => \Div0|auto_generated|divider|divider|op_22~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_22~10\);

\Div0|auto_generated|divider|divider|op_22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_21~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[130]~6_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~10\ ))
-- \Div0|auto_generated|divider|divider|op_22~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_21~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[130]~6_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_22~10\,
	sumout => \Div0|auto_generated|divider|divider|op_22~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_22~14\);

\Div0|auto_generated|divider|divider|op_22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_21~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[131]~13_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_22~14\ ))
-- \Div0|auto_generated|divider|divider|op_22~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_21~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[131]~13_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_22~14\,
	sumout => \Div0|auto_generated|divider|divider|op_22~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_22~18\);

\Div0|auto_generated|divider|divider|op_22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_21~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[132]~19_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[132]~15_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~19_combout\,
	cin => \Div0|auto_generated|divider|divider|op_22~18\,
	cout => \Div0|auto_generated|divider|divider|op_22~6_cout\);

\Div0|auto_generated|divider|divider|op_22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_22~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_22~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_22~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_22~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[137]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~10_combout\ = (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & \Div0|auto_generated|divider|divider|op_21~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[137]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~14_combout\ = (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[131]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~14_combout\);

\Div0|auto_generated|divider|divider|StageOut[136]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~8_combout\ = (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_21~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[130]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[135]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~1_combout\ = (!\Div0|auto_generated|divider|divider|op_21~1_sumout\ & \Div0|auto_generated|divider|divider|op_21~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~1_combout\);

\Div0|auto_generated|divider|divider|StageOut[135]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ & \Div0|auto_generated|divider|divider|op_21~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~2_combout\);

\Div0|auto_generated|divider|divider|op_23~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_23~26_cout\);

\Div0|auto_generated|divider|divider|op_23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~21_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_23~22\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~69_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_23~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_23~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_23~22\);

\Div0|auto_generated|divider|divider|op_23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_22~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~22\ ))
-- \Div0|auto_generated|divider|divider|op_23~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_22~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~65_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_23~22\,
	sumout => \Div0|auto_generated|divider|divider|op_23~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_23~18\);

\Div0|auto_generated|divider|divider|op_23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_22~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[135]~2_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[135]~1_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~18\ ))
-- \Div0|auto_generated|divider|divider|op_23~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_22~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[135]~2_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[135]~1_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~2_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_23~18\,
	sumout => \Div0|auto_generated|divider|divider|op_23~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_23~10\);

\Div0|auto_generated|divider|divider|op_23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_22~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~8_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_23~10\ ))
-- \Div0|auto_generated|divider|divider|op_23~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_22~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~8_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_23~10\,
	sumout => \Div0|auto_generated|divider|divider|op_23~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_23~14\);

\Div0|auto_generated|divider|divider|op_23~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_22~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[137]~14_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[137]~10_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_23~14\,
	cout => \Div0|auto_generated|divider|divider|op_23~6_cout\);

\Div0|auto_generated|divider|divider|op_23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_23~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_23~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_23~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[142]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~5_combout\ = (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & \Div0|auto_generated|divider|divider|op_22~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~5_combout\);

\Div0|auto_generated|divider|divider|StageOut[142]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~9_combout\ = (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[136]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~9_combout\);

\Div0|auto_generated|divider|divider|StageOut[141]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\ = (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_22~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[135]~2_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[135]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\);

\Div0|auto_generated|divider|divider|StageOut[140]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ = (!\Div0|auto_generated|divider|divider|op_22~1_sumout\ & \Div0|auto_generated|divider|divider|op_22~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\);

\Div0|auto_generated|divider|divider|StageOut[140]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~81_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~65_sumout\ & \Div0|auto_generated|divider|divider|op_22~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~65_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~81_combout\);

\Div0|auto_generated|divider|divider|op_25~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_25~26_cout\);

\Div0|auto_generated|divider|divider|op_25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~21_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_25~22\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~89_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_25~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_25~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_25~22\);

\Div0|auto_generated|divider|divider|op_25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_23~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~22\ ))
-- \Div0|auto_generated|divider|divider|op_25~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_23~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~69_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_25~22\,
	sumout => \Div0|auto_generated|divider|divider|op_25~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_25~18\);

\Div0|auto_generated|divider|divider|op_25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_23~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[140]~81_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[140]~80_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~18\ ))
-- \Div0|auto_generated|divider|divider|op_25~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_23~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[140]~81_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[140]~80_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_25~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~80_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~81_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_25~18\,
	sumout => \Div0|auto_generated|divider|divider|op_25~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_25~14\);

\Div0|auto_generated|divider|divider|op_25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_23~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[141]~3_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_25~14\ ))
-- \Div0|auto_generated|divider|divider|op_25~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_23~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[141]~3_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_25~14\,
	sumout => \Div0|auto_generated|divider|divider|op_25~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_25~10\);

\Div0|auto_generated|divider|divider|op_25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_23~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[142]~9_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[142]~5_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[142]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_25~10\,
	cout => \Div0|auto_generated|divider|divider|op_25~6_cout\);

\Div0|auto_generated|divider|divider|op_25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_25~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_25~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_25~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[147]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~0_combout\ = (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & \Div0|auto_generated|divider|divider|op_23~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[147]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~4_combout\ = (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[141]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[146]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~82_combout\ = (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_23~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[140]~81_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[140]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~80_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~81_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~82_combout\);

\Div0|auto_generated|divider|divider|StageOut[145]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~83_combout\ = (!\Div0|auto_generated|divider|divider|op_23~1_sumout\ & \Div0|auto_generated|divider|divider|op_23~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~83_combout\);

\Div0|auto_generated|divider|divider|StageOut[145]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~84_combout\ = (\Div0|auto_generated|divider|my_abs_num|op_1~69_sumout\ & \Div0|auto_generated|divider|divider|op_23~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~69_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~84_combout\);

\Div0|auto_generated|divider|divider|op_26~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_26~26_cout\);

\Div0|auto_generated|divider|divider|op_26~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~22_cout\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~93_sumout\ ) + ( !\ActiveCh[0]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_26~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~93_sumout\,
	dataf => \ALT_INV_ActiveCh[0]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_26~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_26~22_cout\);

\Div0|auto_generated|divider|divider|op_26~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_25~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~89_sumout\)) ) + ( !\ActiveCh[1]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_26~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~89_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\,
	dataf => \ALT_INV_ActiveCh[1]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_26~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_26~18_cout\);

\Div0|auto_generated|divider|divider|op_26~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_25~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[145]~84_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[145]~83_combout\))) ) + ( !\ActiveCh[2]~input_o\ ) + ( \Div0|auto_generated|divider|divider|op_26~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~83_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~84_combout\,
	dataf => \ALT_INV_ActiveCh[2]~input_o\,
	cin => \Div0|auto_generated|divider|divider|op_26~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_26~14_cout\);

\Div0|auto_generated|divider|divider|op_26~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_25~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[146]~82_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_26~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~82_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_26~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_26~10_cout\);

\Div0|auto_generated|divider|divider|op_26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_25~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[147]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[147]~0_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_26~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_26~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_26~6_cout\);

\Div0|auto_generated|divider|divider|op_26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_26~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_26~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_26~1_sumout\);

\Div0|auto_generated|divider|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~1_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_26~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|op_1~2\ = CARRY(( \Div0|auto_generated|divider|divider|op_26~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|op_1~1_sumout\,
	cout => \Div0|auto_generated|divider|op_1~2\);

\Div0|auto_generated|divider|quotient[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~0_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_26~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	combout => \Div0|auto_generated|divider|quotient[0]~0_combout\);

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\ActiveCh[2]~input_o\ & (!\ActiveCh[0]~input_o\ & !\ActiveCh[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActiveCh[2]~input_o\,
	datab => \ALT_INV_ActiveCh[0]~input_o\,
	datac => \ALT_INV_ActiveCh[1]~input_o\,
	combout => \Equal1~0_combout\);

\proc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[0]~0_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(0));

\Div0|auto_generated|divider|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~5_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_25~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))
-- \Div0|auto_generated|divider|op_1~6\ = CARRY(( \Div0|auto_generated|divider|divider|op_25~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~2\,
	sumout => \Div0|auto_generated|divider|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|op_1~6\);

\Div0|auto_generated|divider|quotient[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~1_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_25~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	combout => \Div0|auto_generated|divider|quotient[1]~1_combout\);

\proc_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[1]~1_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(1));

\Div0|auto_generated|divider|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~9_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_23~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~6\ ))
-- \Div0|auto_generated|divider|op_1~10\ = CARRY(( \Div0|auto_generated|divider|divider|op_23~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~6\,
	sumout => \Div0|auto_generated|divider|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|op_1~10\);

\Div0|auto_generated|divider|quotient[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~2_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_23~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\,
	combout => \Div0|auto_generated|divider|quotient[2]~2_combout\);

\proc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[2]~2_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(2));

\Div0|auto_generated|divider|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~13_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_22~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~10\ ))
-- \Div0|auto_generated|divider|op_1~14\ = CARRY(( \Div0|auto_generated|divider|divider|op_22~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~10\,
	sumout => \Div0|auto_generated|divider|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|op_1~14\);

\Div0|auto_generated|divider|quotient[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~3_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_22~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\,
	combout => \Div0|auto_generated|divider|quotient[3]~3_combout\);

\proc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[3]~3_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(3));

\Div0|auto_generated|divider|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_21~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~14\ ))
-- \Div0|auto_generated|divider|op_1~18\ = CARRY(( \Div0|auto_generated|divider|divider|op_21~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~14\,
	sumout => \Div0|auto_generated|divider|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|op_1~18\);

\Div0|auto_generated|divider|quotient[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[4]~4_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_21~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\,
	combout => \Div0|auto_generated|divider|quotient[4]~4_combout\);

\proc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[4]~4_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(4));

\Div0|auto_generated|divider|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~21_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_20~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~18\ ))
-- \Div0|auto_generated|divider|op_1~22\ = CARRY(( \Div0|auto_generated|divider|divider|op_20~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~18\,
	sumout => \Div0|auto_generated|divider|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|op_1~22\);

\Div0|auto_generated|divider|quotient[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[5]~5_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_20~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\,
	combout => \Div0|auto_generated|divider|quotient[5]~5_combout\);

\proc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[5]~5_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(5));

\Div0|auto_generated|divider|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~25_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_19~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~22\ ))
-- \Div0|auto_generated|divider|op_1~26\ = CARRY(( \Div0|auto_generated|divider|divider|op_19~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~22\,
	sumout => \Div0|auto_generated|divider|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|op_1~26\);

\Div0|auto_generated|divider|quotient[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[6]~6_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_19~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\,
	combout => \Div0|auto_generated|divider|quotient[6]~6_combout\);

\proc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[6]~6_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(6));

\Div0|auto_generated|divider|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~29_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_18~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~26\ ))
-- \Div0|auto_generated|divider|op_1~30\ = CARRY(( \Div0|auto_generated|divider|divider|op_18~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~26\,
	sumout => \Div0|auto_generated|divider|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|op_1~30\);

\Div0|auto_generated|divider|quotient[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[7]~7_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_18~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\,
	combout => \Div0|auto_generated|divider|quotient[7]~7_combout\);

\proc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[7]~7_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(7));

\Div0|auto_generated|divider|op_1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~33_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_17~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~30\ ))
-- \Div0|auto_generated|divider|op_1~34\ = CARRY(( \Div0|auto_generated|divider|divider|op_17~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~30\,
	sumout => \Div0|auto_generated|divider|op_1~33_sumout\,
	cout => \Div0|auto_generated|divider|op_1~34\);

\Div0|auto_generated|divider|quotient[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[8]~8_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_17~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~33_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_17~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~33_sumout\,
	combout => \Div0|auto_generated|divider|quotient[8]~8_combout\);

\proc_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[8]~8_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(8));

\Div0|auto_generated|divider|op_1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~37_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_16~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~34\ ))
-- \Div0|auto_generated|divider|op_1~38\ = CARRY(( \Div0|auto_generated|divider|divider|op_16~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~34\,
	sumout => \Div0|auto_generated|divider|op_1~37_sumout\,
	cout => \Div0|auto_generated|divider|op_1~38\);

\Div0|auto_generated|divider|quotient[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[9]~9_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_16~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~37_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~37_sumout\,
	combout => \Div0|auto_generated|divider|quotient[9]~9_combout\);

\proc_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[9]~9_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(9));

\Div0|auto_generated|divider|op_1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~41_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_15~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~38\ ))
-- \Div0|auto_generated|divider|op_1~42\ = CARRY(( \Div0|auto_generated|divider|divider|op_15~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~38\,
	sumout => \Div0|auto_generated|divider|op_1~41_sumout\,
	cout => \Div0|auto_generated|divider|op_1~42\);

\Div0|auto_generated|divider|quotient[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[10]~10_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_15~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~41_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~41_sumout\,
	combout => \Div0|auto_generated|divider|quotient[10]~10_combout\);

\proc_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[10]~10_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(10));

\Div0|auto_generated|divider|op_1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~45_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_14~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~42\ ))
-- \Div0|auto_generated|divider|op_1~46\ = CARRY(( \Div0|auto_generated|divider|divider|op_14~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~42\,
	sumout => \Div0|auto_generated|divider|op_1~45_sumout\,
	cout => \Div0|auto_generated|divider|op_1~46\);

\Div0|auto_generated|divider|quotient[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[11]~11_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_14~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~45_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~45_sumout\,
	combout => \Div0|auto_generated|divider|quotient[11]~11_combout\);

\proc_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[11]~11_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(11));

\Div0|auto_generated|divider|op_1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~49_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_12~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~46\ ))
-- \Div0|auto_generated|divider|op_1~50\ = CARRY(( \Div0|auto_generated|divider|divider|op_12~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~46\,
	sumout => \Div0|auto_generated|divider|op_1~49_sumout\,
	cout => \Div0|auto_generated|divider|op_1~50\);

\Div0|auto_generated|divider|quotient[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[12]~12_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_12~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~49_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~49_sumout\,
	combout => \Div0|auto_generated|divider|quotient[12]~12_combout\);

\proc_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[12]~12_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(12));

\Div0|auto_generated|divider|op_1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~53_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_11~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~50\ ))
-- \Div0|auto_generated|divider|op_1~54\ = CARRY(( \Div0|auto_generated|divider|divider|op_11~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~50\,
	sumout => \Div0|auto_generated|divider|op_1~53_sumout\,
	cout => \Div0|auto_generated|divider|op_1~54\);

\Div0|auto_generated|divider|quotient[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[13]~13_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_11~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~53_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~53_sumout\,
	combout => \Div0|auto_generated|divider|quotient[13]~13_combout\);

\proc_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[13]~13_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(13));

\Div0|auto_generated|divider|op_1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~57_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_10~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~54\ ))
-- \Div0|auto_generated|divider|op_1~58\ = CARRY(( \Div0|auto_generated|divider|divider|op_10~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~54\,
	sumout => \Div0|auto_generated|divider|op_1~57_sumout\,
	cout => \Div0|auto_generated|divider|op_1~58\);

\Div0|auto_generated|divider|quotient[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[14]~14_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_10~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~57_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~57_sumout\,
	combout => \Div0|auto_generated|divider|quotient[14]~14_combout\);

\proc_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[14]~14_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(14));

\Div0|auto_generated|divider|op_1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~61_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_9~1_sumout\ ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~58\,
	sumout => \Div0|auto_generated|divider|op_1~61_sumout\);

\Div0|auto_generated|divider|quotient[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[15]~15_combout\ = (!\Add0~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_9~1_sumout\)) # (\Add0~1_sumout\ & ((\Div0|auto_generated|divider|op_1~61_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~61_sumout\,
	combout => \Div0|auto_generated|divider|quotient[15]~15_combout\);

\proc_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Div0|auto_generated|divider|quotient[15]~15_combout\,
	clrn => \resetN~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => proc_out(15));

ww_dout_new <= \dout_new~output_o\;

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_dout(8) <= \dout[8]~output_o\;

ww_dout(9) <= \dout[9]~output_o\;

ww_dout(10) <= \dout[10]~output_o\;

ww_dout(11) <= \dout[11]~output_o\;

ww_dout(12) <= \dout[12]~output_o\;

ww_dout(13) <= \dout[13]~output_o\;

ww_dout(14) <= \dout[14]~output_o\;

ww_dout(15) <= \dout[15]~output_o\;
END structure;


