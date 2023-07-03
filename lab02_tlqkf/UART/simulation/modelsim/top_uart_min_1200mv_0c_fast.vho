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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/07/2023 23:52:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	top_uart IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	tx_data : IN std_logic_vector(3 DOWNTO 0);
	load : IN std_logic;
	sw9 : IN std_logic;
	sw10 : IN std_logic;
	txd : OUT std_logic;
	rxd : IN std_logic;
	fnd_rxd_top : OUT std_logic_vector(13 DOWNTO 0);
	fnd_rxd_top1 : OUT std_logic_vector(13 DOWNTO 0)
	);
END top_uart;

-- Design Ports Information
-- sw10	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[11]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_rxd_top1[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_uart IS
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
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_tx_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_sw10 : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_fnd_rxd_top : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_fnd_rxd_top1 : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw10~input_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[6]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[7]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[8]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[9]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[10]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[11]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[12]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[13]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[6]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[7]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[8]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[9]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[10]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[11]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[12]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top1[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen_enable|Add1~11\ : std_logic;
SIGNAL \gen_enable|Add1~12_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \gen_enable|Add1~13\ : std_logic;
SIGNAL \gen_enable|Add1~14_combout\ : std_logic;
SIGNAL \gen_enable|Add1~15\ : std_logic;
SIGNAL \gen_enable|Add1~16_combout\ : std_logic;
SIGNAL \gen_enable|Add1~0_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~1_combout\ : std_logic;
SIGNAL \gen_enable|Equal1~0_combout\ : std_logic;
SIGNAL \gen_enable|Add1~17\ : std_logic;
SIGNAL \gen_enable|Add1~18_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~3_combout\ : std_logic;
SIGNAL \gen_enable|Add1~19\ : std_logic;
SIGNAL \gen_enable|Add1~20_combout\ : std_logic;
SIGNAL \gen_enable|Add1~21\ : std_logic;
SIGNAL \gen_enable|Add1~22_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~2_combout\ : std_logic;
SIGNAL \gen_enable|Equal1~1_combout\ : std_logic;
SIGNAL \gen_enable|Add1~1\ : std_logic;
SIGNAL \gen_enable|Add1~2_combout\ : std_logic;
SIGNAL \gen_enable|Add1~3\ : std_logic;
SIGNAL \gen_enable|Add1~4_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~0_combout\ : std_logic;
SIGNAL \gen_enable|Add1~5\ : std_logic;
SIGNAL \gen_enable|Add1~6_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~5_combout\ : std_logic;
SIGNAL \gen_enable|Add1~7\ : std_logic;
SIGNAL \gen_enable|Add1~8_combout\ : std_logic;
SIGNAL \gen_enable|Add1~9\ : std_logic;
SIGNAL \gen_enable|Add1~10_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~4_combout\ : std_logic;
SIGNAL \gen_enable|Equal1~2_combout\ : std_logic;
SIGNAL \gen_enable|Add0~0_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~5_combout\ : std_logic;
SIGNAL \gen_enable|Add0~1\ : std_logic;
SIGNAL \gen_enable|Add0~2_combout\ : std_logic;
SIGNAL \gen_enable|Add0~3\ : std_logic;
SIGNAL \gen_enable|Add0~4_combout\ : std_logic;
SIGNAL \gen_enable|Add0~5\ : std_logic;
SIGNAL \gen_enable|Add0~6_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~0_combout\ : std_logic;
SIGNAL \gen_enable|Add0~7\ : std_logic;
SIGNAL \gen_enable|Add0~8_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~4_combout\ : std_logic;
SIGNAL \gen_enable|Add0~9\ : std_logic;
SIGNAL \gen_enable|Add0~10_combout\ : std_logic;
SIGNAL \gen_enable|Add0~11\ : std_logic;
SIGNAL \gen_enable|Add0~12_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~3_combout\ : std_logic;
SIGNAL \gen_enable|Add0~13\ : std_logic;
SIGNAL \gen_enable|Add0~14_combout\ : std_logic;
SIGNAL \gen_enable|Add0~15\ : std_logic;
SIGNAL \gen_enable|Add0~16_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~0_combout\ : std_logic;
SIGNAL \gen_enable|Add0~17\ : std_logic;
SIGNAL \gen_enable|Add0~18_combout\ : std_logic;
SIGNAL \gen_enable|Add0~19\ : std_logic;
SIGNAL \gen_enable|Add0~20_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~2_combout\ : std_logic;
SIGNAL \gen_enable|Add0~21\ : std_logic;
SIGNAL \gen_enable|Add0~22_combout\ : std_logic;
SIGNAL \gen_enable|Add0~23\ : std_logic;
SIGNAL \gen_enable|Add0~24_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~1_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~1_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~2_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~3_combout\ : std_logic;
SIGNAL \gen_enable|txen~combout\ : std_logic;
SIGNAL \TTL_tx|Add1~0_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_4[0]~1_combout\ : std_logic;
SIGNAL \TTL_tx|Add1~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector4~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector4~1_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.WAIT~q\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \ps_load|Selector3~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_WAIT1~q\ : std_logic;
SIGNAL \ps_load|Selector1~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_WAIT0~q\ : std_logic;
SIGNAL \ps_load|Selector2~0_combout\ : std_logic;
SIGNAL \ps_load|Selector2~1_combout\ : std_logic;
SIGNAL \ps_load|state.S_ONE~q\ : std_logic;
SIGNAL \ps_load|Selector4~0_combout\ : std_logic;
SIGNAL \ps_load|Selector0~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_ZERO~q\ : std_logic;
SIGNAL \ps_load|db_level~0_combout\ : std_logic;
SIGNAL \edge_load|in_d1~q\ : std_logic;
SIGNAL \edge_load|in_d2~q\ : std_logic;
SIGNAL \TTL_tx|Selector1~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector0~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.IDLE~q\ : std_logic;
SIGNAL \TTL_tx|cnt_4[0]~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~2_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[0]~4_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[1]~6_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[2]~2_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[2]~3_combout\ : std_logic;
SIGNAL \TTL_tx|Equal7~0_combout\ : std_logic;
SIGNAL \TTL_tx|Add0~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[3]~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[3]~5_combout\ : std_logic;
SIGNAL \TTL_tx|tx_next_state~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_next_state~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~2_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~3_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.START~q\ : std_logic;
SIGNAL \TTL_tx|Selector2~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector2~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector2~2_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.DATA~q\ : std_logic;
SIGNAL \TTL_tx|Selector3~3_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.STOP~q\ : std_logic;
SIGNAL \TTL_tx|txd~0_combout\ : std_logic;
SIGNAL \TTL_tx|always3~0_combout\ : std_logic;
SIGNAL \TTL_tx|always3~1_combout\ : std_logic;
SIGNAL \TTL_tx|txd~1_combout\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \bit8_en|WideOr1~0_combout\ : std_logic;
SIGNAL \bit8_en|WideOr0~0_combout\ : std_logic;
SIGNAL \bit8_en|bit_out~1_combout\ : std_logic;
SIGNAL \bit8_en|bit_out[17]~2_combout\ : std_logic;
SIGNAL \bit8_en|bit_out[18]~3_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~0_combout\ : std_logic;
SIGNAL \bit8_en|bit_out~4_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~33_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~32_combout\ : std_logic;
SIGNAL \TTL_tx|data_8[19]~2_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~31_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~30_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~29_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~28_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~27_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~26_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~25_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~24_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~23_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~22_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~21_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~20_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~19_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~18_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~17_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~16_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~15_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~14_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~13_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~12_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~11_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~10_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~9_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~8_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~7_combout\ : std_logic;
SIGNAL \bit8_en|bit_out~0_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~6_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~5_combout\ : std_logic;
SIGNAL \TTL_tx|always3~2_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~8_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~7_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[6]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[5]~1_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~6_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[5]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~5_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[4]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~4_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[3]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~4_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~3_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[2]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~3_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~2_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[1]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~1_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~0_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[0]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|txd~2_combout\ : std_logic;
SIGNAL \TTL_tx|txd~q\ : std_logic;
SIGNAL \u_rx_price|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \TTL_rx|fnd_rxd[7]~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal3~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal3~1_combout\ : std_logic;
SIGNAL \gen_enable|Equal2~1_combout\ : std_logic;
SIGNAL \gen_enable|Equal2~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal2~2_combout\ : std_logic;
SIGNAL \gen_enable|rxen~combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[0]~4_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[2]~7_combout\ : std_logic;
SIGNAL \TTL_rx|Equal2~0_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[1]~6_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[2]~2_combout\ : std_logic;
SIGNAL \TTL_rx|Selector2~0_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[0]~0_combout\ : std_logic;
SIGNAL \TTL_rx|Selector2~1_combout\ : std_logic;
SIGNAL \TTL_rx|rx_state.STOP~q\ : std_logic;
SIGNAL \TTL_rx|Selector0~0_combout\ : std_logic;
SIGNAL \TTL_rx|Selector0~1_combout\ : std_logic;
SIGNAL \TTL_rx|rx_state.IDLE~q\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[3]~5_combout\ : std_logic;
SIGNAL \TTL_rx|Add0~0_combout\ : std_logic;
SIGNAL \TTL_rx|rx_n_cnt[3]~3_combout\ : std_logic;
SIGNAL \TTL_rx|Selector1~0_combout\ : std_logic;
SIGNAL \TTL_rx|Selector1~1_combout\ : std_logic;
SIGNAL \TTL_rx|Selector1~2_combout\ : std_logic;
SIGNAL \TTL_rx|rx_state.DATA~q\ : std_logic;
SIGNAL \TTL_rx|always3~0_combout\ : std_logic;
SIGNAL \TTL_rx|fnd_rxd[6]~feeder_combout\ : std_logic;
SIGNAL \TTL_rx|fnd_rxd[5]~feeder_combout\ : std_logic;
SIGNAL \TTL_rx|fnd_rxd[3]~feeder_combout\ : std_logic;
SIGNAL \TTL_rx|fnd_rxd[2]~feeder_combout\ : std_logic;
SIGNAL \u_rx_price|Equal4~1_combout\ : std_logic;
SIGNAL \u_rx_price|Equal4~0_combout\ : std_logic;
SIGNAL \u_rx_price|data_out[16]~0_combout\ : std_logic;
SIGNAL \u_rx_price|always0~0_combout\ : std_logic;
SIGNAL \u_rx_price|data_out~1_combout\ : std_logic;
SIGNAL \u_rx_price|data_out[16]~2_combout\ : std_logic;
SIGNAL \u_rx_price|always0~1_combout\ : std_logic;
SIGNAL \u_rx_price|data_out[19]~5_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr6~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|WideOr0~0_combout\ : std_logic;
SIGNAL \u_rx_price|data_out~3_combout\ : std_logic;
SIGNAL \u_rx_price|data_out[25]~6_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|WideOr6~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|Decoder0~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|WideOr0~0_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \TTL_tx|data_8\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TTL_tx|cnt_4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \TTL_rx|rx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TTL_rx|fnd_rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_rx_price|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TTL_tx|tx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_enable|cnt_1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \gen_enable|cnt_0\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ps_load|cnt\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \TTL_tx|ALT_INV_tx_state.STOP~q\ : std_logic;
SIGNAL \fnd_of_rxd4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd4|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_of_rxd3|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \u_rx_price|ALT_INV_data_out\ : std_logic_vector(12 DOWNTO 12);

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_tx_data <= tx_data;
ww_load <= load;
ww_sw9 <= sw9;
ww_sw10 <= sw10;
txd <= ww_txd;
ww_rxd <= rxd;
fnd_rxd_top <= ww_fnd_rxd_top;
fnd_rxd_top1 <= ww_fnd_rxd_top1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\TTL_tx|ALT_INV_tx_state.STOP~q\ <= NOT \TTL_tx|tx_state.STOP~q\;
\fnd_of_rxd4|ALT_INV_WideOr0~0_combout\ <= NOT \fnd_of_rxd4|WideOr0~0_combout\;
\fnd_of_rxd4|ALT_INV_Decoder0~0_combout\ <= NOT \fnd_of_rxd4|Decoder0~0_combout\;
\fnd_of_rxd4|ALT_INV_WideOr2~0_combout\ <= NOT \fnd_of_rxd4|WideOr2~0_combout\;
\fnd_of_rxd3|ALT_INV_WideOr1~0_combout\ <= NOT \fnd_of_rxd3|WideOr1~0_combout\;
\fnd_of_rxd3|ALT_INV_WideOr2~0_combout\ <= NOT \fnd_of_rxd3|WideOr2~0_combout\;
\fnd_of_rxd3|ALT_INV_WideOr3~0_combout\ <= NOT \fnd_of_rxd3|WideOr3~0_combout\;
\fnd_of_rxd3|ALT_INV_WideOr5~0_combout\ <= NOT \fnd_of_rxd3|WideOr5~0_combout\;
\fnd_of_rxd3|ALT_INV_WideOr6~0_combout\ <= NOT \fnd_of_rxd3|WideOr6~0_combout\;
\u_rx_price|ALT_INV_data_out\(12) <= NOT \u_rx_price|data_out\(12);

-- Location: IOOBUF_X41_Y8_N2
\txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|txd~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\fnd_rxd_top[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd_rxd_top[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd_rxd_top[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd_rxd_top[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd_rxd_top[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd_rxd_top[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd_rxd_top[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd_rxd_top[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd_rxd_top[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd_rxd_top[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[9]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd_rxd_top[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[10]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd_rxd_top[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[11]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd_rxd_top[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top[12]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd_rxd_top[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[13]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\fnd_rxd_top1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\fnd_rxd_top1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\fnd_rxd_top1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\fnd_rxd_top1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\fnd_rxd_top1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\fnd_rxd_top1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\fnd_rxd_top1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd3|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\fnd_rxd_top1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\fnd_rxd_top1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rx_price|ALT_INV_data_out\(12),
	devoe => ww_devoe,
	o => \fnd_rxd_top1[8]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\fnd_rxd_top1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[9]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\fnd_rxd_top1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[10]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\fnd_rxd_top1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[11]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\fnd_rxd_top1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[12]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\fnd_rxd_top1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_of_rxd4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_rxd_top1[13]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X24_Y28_N18
\gen_enable|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~10_combout\ = (\gen_enable|cnt_1\(5) & (!\gen_enable|Add1~9\)) # (!\gen_enable|cnt_1\(5) & ((\gen_enable|Add1~9\) # (GND)))
-- \gen_enable|Add1~11\ = CARRY((!\gen_enable|Add1~9\) # (!\gen_enable|cnt_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(5),
	datad => VCC,
	cin => \gen_enable|Add1~9\,
	combout => \gen_enable|Add1~10_combout\,
	cout => \gen_enable|Add1~11\);

-- Location: LCCOMB_X24_Y28_N20
\gen_enable|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~12_combout\ = (\gen_enable|cnt_1\(6) & (\gen_enable|Add1~11\ $ (GND))) # (!\gen_enable|cnt_1\(6) & (!\gen_enable|Add1~11\ & VCC))
-- \gen_enable|Add1~13\ = CARRY((\gen_enable|cnt_1\(6) & !\gen_enable|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(6),
	datad => VCC,
	cin => \gen_enable|Add1~11\,
	combout => \gen_enable|Add1~12_combout\,
	cout => \gen_enable|Add1~13\);

-- Location: IOIBUF_X0_Y21_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: FF_X24_Y28_N21
\gen_enable|cnt_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(6));

-- Location: LCCOMB_X24_Y28_N22
\gen_enable|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~14_combout\ = (\gen_enable|cnt_1\(7) & (!\gen_enable|Add1~13\)) # (!\gen_enable|cnt_1\(7) & ((\gen_enable|Add1~13\) # (GND)))
-- \gen_enable|Add1~15\ = CARRY((!\gen_enable|Add1~13\) # (!\gen_enable|cnt_1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(7),
	datad => VCC,
	cin => \gen_enable|Add1~13\,
	combout => \gen_enable|Add1~14_combout\,
	cout => \gen_enable|Add1~15\);

-- Location: FF_X24_Y28_N23
\gen_enable|cnt_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(7));

-- Location: LCCOMB_X24_Y28_N24
\gen_enable|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~16_combout\ = (\gen_enable|cnt_1\(8) & (\gen_enable|Add1~15\ $ (GND))) # (!\gen_enable|cnt_1\(8) & (!\gen_enable|Add1~15\ & VCC))
-- \gen_enable|Add1~17\ = CARRY((\gen_enable|cnt_1\(8) & !\gen_enable|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(8),
	datad => VCC,
	cin => \gen_enable|Add1~15\,
	combout => \gen_enable|Add1~16_combout\,
	cout => \gen_enable|Add1~17\);

-- Location: FF_X24_Y28_N25
\gen_enable|cnt_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(8));

-- Location: LCCOMB_X24_Y28_N8
\gen_enable|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~0_combout\ = \gen_enable|cnt_1\(0) $ (VCC)
-- \gen_enable|Add1~1\ = CARRY(\gen_enable|cnt_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(0),
	datad => VCC,
	combout => \gen_enable|Add1~0_combout\,
	cout => \gen_enable|Add1~1\);

-- Location: LCCOMB_X26_Y28_N18
\gen_enable|cnt_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~1_combout\ = (\gen_enable|Add1~0_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Add1~0_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|cnt_1~1_combout\);

-- Location: FF_X26_Y28_N19
\gen_enable|cnt_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(0));

-- Location: LCCOMB_X26_Y28_N20
\gen_enable|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~0_combout\ = (!\gen_enable|cnt_1\(6) & (!\gen_enable|cnt_1\(0) & (!\gen_enable|cnt_1\(7) & \gen_enable|cnt_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(6),
	datab => \gen_enable|cnt_1\(0),
	datac => \gen_enable|cnt_1\(7),
	datad => \gen_enable|cnt_1\(2),
	combout => \gen_enable|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y28_N26
\gen_enable|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~18_combout\ = (\gen_enable|cnt_1\(9) & (!\gen_enable|Add1~17\)) # (!\gen_enable|cnt_1\(9) & ((\gen_enable|Add1~17\) # (GND)))
-- \gen_enable|Add1~19\ = CARRY((!\gen_enable|Add1~17\) # (!\gen_enable|cnt_1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(9),
	datad => VCC,
	cin => \gen_enable|Add1~17\,
	combout => \gen_enable|Add1~18_combout\,
	cout => \gen_enable|Add1~19\);

-- Location: LCCOMB_X24_Y28_N2
\gen_enable|cnt_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~3_combout\ = (\gen_enable|Add1~18_combout\ & (((!\gen_enable|Equal1~2_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~0_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Add1~18_combout\,
	datad => \gen_enable|Equal1~2_combout\,
	combout => \gen_enable|cnt_1~3_combout\);

-- Location: FF_X24_Y28_N3
\gen_enable|cnt_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(9));

-- Location: LCCOMB_X24_Y28_N28
\gen_enable|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~20_combout\ = (\gen_enable|cnt_1\(10) & (\gen_enable|Add1~19\ $ (GND))) # (!\gen_enable|cnt_1\(10) & (!\gen_enable|Add1~19\ & VCC))
-- \gen_enable|Add1~21\ = CARRY((\gen_enable|cnt_1\(10) & !\gen_enable|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(10),
	datad => VCC,
	cin => \gen_enable|Add1~19\,
	combout => \gen_enable|Add1~20_combout\,
	cout => \gen_enable|Add1~21\);

-- Location: FF_X24_Y28_N29
\gen_enable|cnt_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(10));

-- Location: LCCOMB_X24_Y28_N30
\gen_enable|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~22_combout\ = \gen_enable|Add1~21\ $ (\gen_enable|cnt_1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_enable|cnt_1\(11),
	cin => \gen_enable|Add1~21\,
	combout => \gen_enable|Add1~22_combout\);

-- Location: LCCOMB_X24_Y28_N0
\gen_enable|cnt_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~2_combout\ = (\gen_enable|Add1~22_combout\ & (((!\gen_enable|Equal1~2_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~0_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Add1~22_combout\,
	datad => \gen_enable|Equal1~2_combout\,
	combout => \gen_enable|cnt_1~2_combout\);

-- Location: FF_X24_Y28_N1
\gen_enable|cnt_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(11));

-- Location: LCCOMB_X24_Y28_N4
\gen_enable|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~1_combout\ = (!\gen_enable|cnt_1\(8) & (\gen_enable|cnt_1\(11) & (\gen_enable|cnt_1\(9) & !\gen_enable|cnt_1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(8),
	datab => \gen_enable|cnt_1\(11),
	datac => \gen_enable|cnt_1\(9),
	datad => \gen_enable|cnt_1\(10),
	combout => \gen_enable|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y28_N10
\gen_enable|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~2_combout\ = (\gen_enable|cnt_1\(1) & (!\gen_enable|Add1~1\)) # (!\gen_enable|cnt_1\(1) & ((\gen_enable|Add1~1\) # (GND)))
-- \gen_enable|Add1~3\ = CARRY((!\gen_enable|Add1~1\) # (!\gen_enable|cnt_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(1),
	datad => VCC,
	cin => \gen_enable|Add1~1\,
	combout => \gen_enable|Add1~2_combout\,
	cout => \gen_enable|Add1~3\);

-- Location: FF_X24_Y28_N11
\gen_enable|cnt_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(1));

-- Location: LCCOMB_X24_Y28_N12
\gen_enable|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~4_combout\ = (\gen_enable|cnt_1\(2) & (\gen_enable|Add1~3\ $ (GND))) # (!\gen_enable|cnt_1\(2) & (!\gen_enable|Add1~3\ & VCC))
-- \gen_enable|Add1~5\ = CARRY((\gen_enable|cnt_1\(2) & !\gen_enable|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(2),
	datad => VCC,
	cin => \gen_enable|Add1~3\,
	combout => \gen_enable|Add1~4_combout\,
	cout => \gen_enable|Add1~5\);

-- Location: LCCOMB_X26_Y28_N24
\gen_enable|cnt_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~0_combout\ = (\gen_enable|Add1~4_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Add1~4_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|cnt_1~0_combout\);

-- Location: FF_X26_Y28_N25
\gen_enable|cnt_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(2));

-- Location: LCCOMB_X24_Y28_N14
\gen_enable|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~6_combout\ = (\gen_enable|cnt_1\(3) & (!\gen_enable|Add1~5\)) # (!\gen_enable|cnt_1\(3) & ((\gen_enable|Add1~5\) # (GND)))
-- \gen_enable|Add1~7\ = CARRY((!\gen_enable|Add1~5\) # (!\gen_enable|cnt_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(3),
	datad => VCC,
	cin => \gen_enable|Add1~5\,
	combout => \gen_enable|Add1~6_combout\,
	cout => \gen_enable|Add1~7\);

-- Location: LCCOMB_X26_Y28_N0
\gen_enable|cnt_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~5_combout\ = (\gen_enable|Add1~6_combout\ & (((!\gen_enable|Equal1~2_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Add1~6_combout\,
	datab => \gen_enable|Equal1~0_combout\,
	datac => \gen_enable|Equal1~1_combout\,
	datad => \gen_enable|Equal1~2_combout\,
	combout => \gen_enable|cnt_1~5_combout\);

-- Location: FF_X26_Y28_N1
\gen_enable|cnt_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(3));

-- Location: LCCOMB_X24_Y28_N16
\gen_enable|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~8_combout\ = (\gen_enable|cnt_1\(4) & (\gen_enable|Add1~7\ $ (GND))) # (!\gen_enable|cnt_1\(4) & (!\gen_enable|Add1~7\ & VCC))
-- \gen_enable|Add1~9\ = CARRY((\gen_enable|cnt_1\(4) & !\gen_enable|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_1\(4),
	datad => VCC,
	cin => \gen_enable|Add1~7\,
	combout => \gen_enable|Add1~8_combout\,
	cout => \gen_enable|Add1~9\);

-- Location: FF_X24_Y28_N17
\gen_enable|cnt_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add1~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(4));

-- Location: LCCOMB_X26_Y28_N6
\gen_enable|cnt_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~4_combout\ = (\gen_enable|Add1~10_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Add1~10_combout\,
	datac => \gen_enable|Equal1~1_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|cnt_1~4_combout\);

-- Location: FF_X26_Y28_N7
\gen_enable|cnt_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_1~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_1\(5));

-- Location: LCCOMB_X26_Y28_N10
\gen_enable|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~2_combout\ = (\gen_enable|cnt_1\(5) & (!\gen_enable|cnt_1\(1) & (!\gen_enable|cnt_1\(4) & \gen_enable|cnt_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(5),
	datab => \gen_enable|cnt_1\(1),
	datac => \gen_enable|cnt_1\(4),
	datad => \gen_enable|cnt_1\(3),
	combout => \gen_enable|Equal1~2_combout\);

-- Location: LCCOMB_X17_Y14_N4
\gen_enable|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~0_combout\ = \gen_enable|cnt_0\(0) $ (VCC)
-- \gen_enable|Add0~1\ = CARRY(\gen_enable|cnt_0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(0),
	datad => VCC,
	combout => \gen_enable|Add0~0_combout\,
	cout => \gen_enable|Add0~1\);

-- Location: LCCOMB_X17_Y14_N30
\gen_enable|cnt_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~5_combout\ = (!\gen_enable|Equal0~3_combout\ & \gen_enable|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Equal0~3_combout\,
	datac => \gen_enable|Add0~0_combout\,
	combout => \gen_enable|cnt_0~5_combout\);

-- Location: FF_X17_Y14_N31
\gen_enable|cnt_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(0));

-- Location: LCCOMB_X17_Y14_N6
\gen_enable|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~2_combout\ = (\gen_enable|cnt_0\(1) & (!\gen_enable|Add0~1\)) # (!\gen_enable|cnt_0\(1) & ((\gen_enable|Add0~1\) # (GND)))
-- \gen_enable|Add0~3\ = CARRY((!\gen_enable|Add0~1\) # (!\gen_enable|cnt_0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(1),
	datad => VCC,
	cin => \gen_enable|Add0~1\,
	combout => \gen_enable|Add0~2_combout\,
	cout => \gen_enable|Add0~3\);

-- Location: FF_X17_Y14_N7
\gen_enable|cnt_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(1));

-- Location: LCCOMB_X17_Y14_N8
\gen_enable|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~4_combout\ = (\gen_enable|cnt_0\(2) & (\gen_enable|Add0~3\ $ (GND))) # (!\gen_enable|cnt_0\(2) & (!\gen_enable|Add0~3\ & VCC))
-- \gen_enable|Add0~5\ = CARRY((\gen_enable|cnt_0\(2) & !\gen_enable|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(2),
	datad => VCC,
	cin => \gen_enable|Add0~3\,
	combout => \gen_enable|Add0~4_combout\,
	cout => \gen_enable|Add0~5\);

-- Location: FF_X17_Y14_N9
\gen_enable|cnt_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(2));

-- Location: LCCOMB_X17_Y14_N10
\gen_enable|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~6_combout\ = (\gen_enable|cnt_0\(3) & (!\gen_enable|Add0~5\)) # (!\gen_enable|cnt_0\(3) & ((\gen_enable|Add0~5\) # (GND)))
-- \gen_enable|Add0~7\ = CARRY((!\gen_enable|Add0~5\) # (!\gen_enable|cnt_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(3),
	datad => VCC,
	cin => \gen_enable|Add0~5\,
	combout => \gen_enable|Add0~6_combout\,
	cout => \gen_enable|Add0~7\);

-- Location: LCCOMB_X17_Y14_N0
\gen_enable|cnt_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~0_combout\ = (\gen_enable|Add0~6_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Add0~6_combout\,
	datac => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~0_combout\);

-- Location: FF_X17_Y14_N1
\gen_enable|cnt_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(3));

-- Location: LCCOMB_X17_Y14_N12
\gen_enable|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~8_combout\ = (\gen_enable|cnt_0\(4) & (\gen_enable|Add0~7\ $ (GND))) # (!\gen_enable|cnt_0\(4) & (!\gen_enable|Add0~7\ & VCC))
-- \gen_enable|Add0~9\ = CARRY((\gen_enable|cnt_0\(4) & !\gen_enable|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(4),
	datad => VCC,
	cin => \gen_enable|Add0~7\,
	combout => \gen_enable|Add0~8_combout\,
	cout => \gen_enable|Add0~9\);

-- Location: LCCOMB_X23_Y16_N16
\gen_enable|cnt_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~4_combout\ = (\gen_enable|Add0~8_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Add0~8_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~4_combout\);

-- Location: FF_X23_Y16_N17
\gen_enable|cnt_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(4));

-- Location: LCCOMB_X17_Y14_N14
\gen_enable|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~10_combout\ = (\gen_enable|cnt_0\(5) & (!\gen_enable|Add0~9\)) # (!\gen_enable|cnt_0\(5) & ((\gen_enable|Add0~9\) # (GND)))
-- \gen_enable|Add0~11\ = CARRY((!\gen_enable|Add0~9\) # (!\gen_enable|cnt_0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(5),
	datad => VCC,
	cin => \gen_enable|Add0~9\,
	combout => \gen_enable|Add0~10_combout\,
	cout => \gen_enable|Add0~11\);

-- Location: FF_X17_Y14_N15
\gen_enable|cnt_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(5));

-- Location: LCCOMB_X17_Y14_N16
\gen_enable|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~12_combout\ = (\gen_enable|cnt_0\(6) & (\gen_enable|Add0~11\ $ (GND))) # (!\gen_enable|cnt_0\(6) & (!\gen_enable|Add0~11\ & VCC))
-- \gen_enable|Add0~13\ = CARRY((\gen_enable|cnt_0\(6) & !\gen_enable|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(6),
	datad => VCC,
	cin => \gen_enable|Add0~11\,
	combout => \gen_enable|Add0~12_combout\,
	cout => \gen_enable|Add0~13\);

-- Location: LCCOMB_X23_Y16_N6
\gen_enable|cnt_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~3_combout\ = (\gen_enable|Add0~12_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Add0~12_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~3_combout\);

-- Location: FF_X23_Y16_N7
\gen_enable|cnt_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(6));

-- Location: LCCOMB_X17_Y14_N18
\gen_enable|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~14_combout\ = (\gen_enable|cnt_0\(7) & (!\gen_enable|Add0~13\)) # (!\gen_enable|cnt_0\(7) & ((\gen_enable|Add0~13\) # (GND)))
-- \gen_enable|Add0~15\ = CARRY((!\gen_enable|Add0~13\) # (!\gen_enable|cnt_0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(7),
	datad => VCC,
	cin => \gen_enable|Add0~13\,
	combout => \gen_enable|Add0~14_combout\,
	cout => \gen_enable|Add0~15\);

-- Location: FF_X17_Y14_N19
\gen_enable|cnt_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(7));

-- Location: LCCOMB_X17_Y14_N20
\gen_enable|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~16_combout\ = (\gen_enable|cnt_0\(8) & (\gen_enable|Add0~15\ $ (GND))) # (!\gen_enable|cnt_0\(8) & (!\gen_enable|Add0~15\ & VCC))
-- \gen_enable|Add0~17\ = CARRY((\gen_enable|cnt_0\(8) & !\gen_enable|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(8),
	datad => VCC,
	cin => \gen_enable|Add0~15\,
	combout => \gen_enable|Add0~16_combout\,
	cout => \gen_enable|Add0~17\);

-- Location: FF_X17_Y14_N21
\gen_enable|cnt_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(8));

-- Location: LCCOMB_X17_Y14_N2
\gen_enable|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~0_combout\ = (!\gen_enable|cnt_0\(1) & (\gen_enable|cnt_0\(3) & (!\gen_enable|cnt_0\(7) & !\gen_enable|cnt_0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(1),
	datab => \gen_enable|cnt_0\(3),
	datac => \gen_enable|cnt_0\(7),
	datad => \gen_enable|cnt_0\(8),
	combout => \gen_enable|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y14_N22
\gen_enable|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~18_combout\ = (\gen_enable|cnt_0\(9) & (!\gen_enable|Add0~17\)) # (!\gen_enable|cnt_0\(9) & ((\gen_enable|Add0~17\) # (GND)))
-- \gen_enable|Add0~19\ = CARRY((!\gen_enable|Add0~17\) # (!\gen_enable|cnt_0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(9),
	datad => VCC,
	cin => \gen_enable|Add0~17\,
	combout => \gen_enable|Add0~18_combout\,
	cout => \gen_enable|Add0~19\);

-- Location: FF_X17_Y14_N23
\gen_enable|cnt_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(9));

-- Location: LCCOMB_X17_Y14_N24
\gen_enable|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~20_combout\ = (\gen_enable|cnt_0\(10) & (\gen_enable|Add0~19\ $ (GND))) # (!\gen_enable|cnt_0\(10) & (!\gen_enable|Add0~19\ & VCC))
-- \gen_enable|Add0~21\ = CARRY((\gen_enable|cnt_0\(10) & !\gen_enable|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|cnt_0\(10),
	datad => VCC,
	cin => \gen_enable|Add0~19\,
	combout => \gen_enable|Add0~20_combout\,
	cout => \gen_enable|Add0~21\);

-- Location: LCCOMB_X23_Y16_N26
\gen_enable|cnt_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~2_combout\ = (\gen_enable|Add0~20_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|Add0~20_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~2_combout\);

-- Location: FF_X23_Y16_N27
\gen_enable|cnt_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(10));

-- Location: LCCOMB_X17_Y14_N26
\gen_enable|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~22_combout\ = (\gen_enable|cnt_0\(11) & (!\gen_enable|Add0~21\)) # (!\gen_enable|cnt_0\(11) & ((\gen_enable|Add0~21\) # (GND)))
-- \gen_enable|Add0~23\ = CARRY((!\gen_enable|Add0~21\) # (!\gen_enable|cnt_0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(11),
	datad => VCC,
	cin => \gen_enable|Add0~21\,
	combout => \gen_enable|Add0~22_combout\,
	cout => \gen_enable|Add0~23\);

-- Location: FF_X17_Y14_N27
\gen_enable|cnt_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|Add0~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(11));

-- Location: LCCOMB_X17_Y14_N28
\gen_enable|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~24_combout\ = \gen_enable|Add0~23\ $ (!\gen_enable|cnt_0\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_enable|cnt_0\(12),
	cin => \gen_enable|Add0~23\,
	combout => \gen_enable|Add0~24_combout\);

-- Location: LCCOMB_X23_Y16_N0
\gen_enable|cnt_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~1_combout\ = (\gen_enable|Add0~24_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|Add0~24_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~1_combout\);

-- Location: FF_X23_Y16_N1
\gen_enable|cnt_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_enable|cnt_0~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_enable|cnt_0\(12));

-- Location: LCCOMB_X23_Y16_N28
\gen_enable|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~1_combout\ = (!\gen_enable|cnt_0\(11) & (!\gen_enable|cnt_0\(9) & (\gen_enable|cnt_0\(10) & \gen_enable|cnt_0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(11),
	datab => \gen_enable|cnt_0\(9),
	datac => \gen_enable|cnt_0\(10),
	datad => \gen_enable|cnt_0\(12),
	combout => \gen_enable|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y16_N2
\gen_enable|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~2_combout\ = (!\gen_enable|cnt_0\(5) & (\gen_enable|cnt_0\(4) & (!\gen_enable|cnt_0\(2) & \gen_enable|cnt_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(5),
	datab => \gen_enable|cnt_0\(4),
	datac => \gen_enable|cnt_0\(2),
	datad => \gen_enable|cnt_0\(6),
	combout => \gen_enable|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y16_N12
\gen_enable|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~3_combout\ = (\gen_enable|Equal0~0_combout\ & (\gen_enable|Equal0~1_combout\ & (!\gen_enable|cnt_0\(0) & \gen_enable|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal0~0_combout\,
	datab => \gen_enable|Equal0~1_combout\,
	datac => \gen_enable|cnt_0\(0),
	datad => \gen_enable|Equal0~2_combout\,
	combout => \gen_enable|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y28_N4
\gen_enable|txen\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|txen~combout\ = (\gen_enable|Equal0~3_combout\) # ((\gen_enable|Equal1~2_combout\ & (\gen_enable|Equal1~1_combout\ & \gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Equal0~3_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|txen~combout\);

-- Location: LCCOMB_X22_Y16_N0
\TTL_tx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add1~0_combout\ = \TTL_tx|cnt_4\(1) $ (\TTL_tx|cnt_4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|cnt_4\(1),
	datad => \TTL_tx|cnt_4\(0),
	combout => \TTL_tx|Add1~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\TTL_tx|cnt_4[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_4[0]~1_combout\ = (\TTL_tx|tx_state.STOP~q\) # (!\TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|tx_state.STOP~q\,
	combout => \TTL_tx|cnt_4[0]~1_combout\);

-- Location: FF_X22_Y16_N1
\TTL_tx|cnt_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add1~0_combout\,
	clrn => \n_rst~input_o\,
	sclr => \TTL_tx|ALT_INV_tx_state.STOP~q\,
	ena => \TTL_tx|cnt_4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_4\(1));

-- Location: LCCOMB_X22_Y16_N18
\TTL_tx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add1~1_combout\ = \TTL_tx|cnt_4\(2) $ (((\TTL_tx|cnt_4\(0) & \TTL_tx|cnt_4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_4\(0),
	datac => \TTL_tx|cnt_4\(2),
	datad => \TTL_tx|cnt_4\(1),
	combout => \TTL_tx|Add1~1_combout\);

-- Location: FF_X22_Y16_N19
\TTL_tx|cnt_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add1~1_combout\,
	clrn => \n_rst~input_o\,
	sclr => \TTL_tx|ALT_INV_tx_state.STOP~q\,
	ena => \TTL_tx|cnt_4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_4\(2));

-- Location: LCCOMB_X22_Y16_N12
\TTL_tx|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector4~0_combout\ = (\TTL_tx|tx_state.STOP~q\ & (!\TTL_tx|cnt_4\(0) & (\TTL_tx|cnt_4\(2) & !\TTL_tx|cnt_4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.STOP~q\,
	datab => \TTL_tx|cnt_4\(0),
	datac => \TTL_tx|cnt_4\(2),
	datad => \TTL_tx|cnt_4\(1),
	combout => \TTL_tx|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\TTL_tx|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector4~1_combout\ = (\TTL_tx|Selector4~0_combout\) # ((!\gen_enable|txen~combout\ & \TTL_tx|tx_state.WAIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|txen~combout\,
	datac => \TTL_tx|tx_state.WAIT~q\,
	datad => \TTL_tx|Selector4~0_combout\,
	combout => \TTL_tx|Selector4~1_combout\);

-- Location: FF_X22_Y16_N9
\TTL_tx|tx_state.WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector4~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.WAIT~q\);

-- Location: IOIBUF_X0_Y23_N15
\load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X27_Y28_N19
\ps_load|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|Selector4~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps_load|cnt\(0));

-- Location: LCCOMB_X27_Y28_N22
\ps_load|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector3~0_combout\ = (\load~input_o\ & ((\ps_load|state.S_ZERO~q\) # ((\ps_load|state.S_WAIT1~q\ & !\ps_load|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|state.S_ZERO~q\,
	datab => \load~input_o\,
	datac => \ps_load|state.S_WAIT1~q\,
	datad => \ps_load|cnt\(0),
	combout => \ps_load|Selector3~0_combout\);

-- Location: FF_X27_Y28_N23
\ps_load|state.S_WAIT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|Selector3~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps_load|state.S_WAIT1~q\);

-- Location: LCCOMB_X27_Y28_N16
\ps_load|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector1~0_combout\ = (!\load~input_o\ & (((\ps_load|state.S_WAIT0~q\ & !\ps_load|cnt\(0))) # (!\ps_load|state.S_ONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \ps_load|state.S_ONE~q\,
	datac => \ps_load|state.S_WAIT0~q\,
	datad => \ps_load|cnt\(0),
	combout => \ps_load|Selector1~0_combout\);

-- Location: FF_X27_Y28_N17
\ps_load|state.S_WAIT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps_load|state.S_WAIT0~q\);

-- Location: LCCOMB_X27_Y28_N14
\ps_load|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector2~0_combout\ = (\ps_load|state.S_WAIT0~q\) # (!\ps_load|state.S_ONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps_load|state.S_ONE~q\,
	datad => \ps_load|state.S_WAIT0~q\,
	combout => \ps_load|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\ps_load|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector2~1_combout\ = ((!\ps_load|Selector2~0_combout\ & ((\ps_load|Selector4~0_combout\) # (!\ps_load|state.S_WAIT1~q\)))) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|Selector4~0_combout\,
	datab => \load~input_o\,
	datac => \ps_load|state.S_WAIT1~q\,
	datad => \ps_load|Selector2~0_combout\,
	combout => \ps_load|Selector2~1_combout\);

-- Location: FF_X27_Y28_N29
\ps_load|state.S_ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|Selector2~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps_load|state.S_ONE~q\);

-- Location: LCCOMB_X27_Y28_N18
\ps_load|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector4~0_combout\ = ((\ps_load|state.S_ZERO~q\) # (!\ps_load|cnt\(0))) # (!\ps_load|state.S_ONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps_load|state.S_ONE~q\,
	datac => \ps_load|cnt\(0),
	datad => \ps_load|state.S_ZERO~q\,
	combout => \ps_load|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\ps_load|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector0~0_combout\ = (!\load~input_o\ & (((!\ps_load|Selector4~0_combout\ & \ps_load|state.S_WAIT0~q\)) # (!\ps_load|db_level~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|Selector4~0_combout\,
	datab => \ps_load|state.S_WAIT0~q\,
	datac => \ps_load|db_level~0_combout\,
	datad => \load~input_o\,
	combout => \ps_load|Selector0~0_combout\);

-- Location: FF_X27_Y28_N13
\ps_load|state.S_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps_load|state.S_ZERO~q\);

-- Location: LCCOMB_X27_Y28_N26
\ps_load|db_level~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|db_level~0_combout\ = (!\ps_load|state.S_ZERO~q\ & !\ps_load|state.S_WAIT1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|state.S_ZERO~q\,
	datac => \ps_load|state.S_WAIT1~q\,
	combout => \ps_load|db_level~0_combout\);

-- Location: FF_X27_Y28_N27
\edge_load|in_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ps_load|db_level~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edge_load|in_d1~q\);

-- Location: FF_X27_Y28_N25
\edge_load|in_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \edge_load|in_d1~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edge_load|in_d2~q\);

-- Location: LCCOMB_X27_Y28_N24
\TTL_tx|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~0_combout\ = (!\edge_load|in_d1~q\ & \edge_load|in_d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_load|in_d1~q\,
	datac => \edge_load|in_d2~q\,
	combout => \TTL_tx|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\TTL_tx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector0~0_combout\ = (\gen_enable|txen~combout\ & (!\TTL_tx|tx_state.WAIT~q\ & ((\TTL_tx|tx_state.IDLE~q\) # (\TTL_tx|Selector1~0_combout\)))) # (!\gen_enable|txen~combout\ & (((\TTL_tx|tx_state.IDLE~q\) # (\TTL_tx|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|txen~combout\,
	datab => \TTL_tx|tx_state.WAIT~q\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|Selector1~0_combout\,
	combout => \TTL_tx|Selector0~0_combout\);

-- Location: FF_X22_Y16_N11
\TTL_tx|tx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.IDLE~q\);

-- Location: LCCOMB_X22_Y16_N28
\TTL_tx|cnt_4[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_4[0]~0_combout\ = (\TTL_tx|cnt_4\(0) & (\TTL_tx|tx_state.IDLE~q\ & !\TTL_tx|tx_state.STOP~q\)) # (!\TTL_tx|cnt_4\(0) & ((\TTL_tx|tx_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.IDLE~q\,
	datac => \TTL_tx|cnt_4\(0),
	datad => \TTL_tx|tx_state.STOP~q\,
	combout => \TTL_tx|cnt_4[0]~0_combout\);

-- Location: FF_X22_Y16_N29
\TTL_tx|cnt_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_4[0]~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_4\(0));

-- Location: LCCOMB_X22_Y16_N22
\TTL_tx|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~2_combout\ = (\TTL_tx|tx_state.STOP~q\ & ((\TTL_tx|cnt_4\(0)) # ((\TTL_tx|cnt_4\(1)) # (!\TTL_tx|cnt_4\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.STOP~q\,
	datab => \TTL_tx|cnt_4\(0),
	datac => \TTL_tx|cnt_4\(2),
	datad => \TTL_tx|cnt_4\(1),
	combout => \TTL_tx|Selector3~2_combout\);

-- Location: LCCOMB_X33_Y16_N16
\TTL_tx|tx_n_cnt[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[0]~4_combout\ = (\TTL_tx|tx_state.IDLE~q\ & (\gen_enable|txen~combout\ $ (\TTL_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.IDLE~q\,
	datab => \gen_enable|txen~combout\,
	datac => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|tx_n_cnt[0]~4_combout\);

-- Location: FF_X33_Y16_N17
\TTL_tx|tx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|tx_n_cnt[0]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_cnt\(0));

-- Location: LCCOMB_X33_Y16_N26
\TTL_tx|tx_n_cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[1]~1_combout\ = (\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(1) $ (((\TTL_tx|tx_cnt\(0)))))) # (!\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(1) & (!\TTL_tx|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(1),
	datab => \TTL_tx|Equal7~0_combout\,
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|tx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X33_Y16_N6
\TTL_tx|tx_n_cnt[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[1]~6_combout\ = (\TTL_tx|tx_n_cnt[1]~1_combout\ & \TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|tx_n_cnt[1]~6_combout\);

-- Location: FF_X33_Y16_N7
\TTL_tx|tx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|tx_n_cnt[1]~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_cnt\(1));

-- Location: LCCOMB_X33_Y16_N10
\TTL_tx|tx_n_cnt[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[2]~2_combout\ = \TTL_tx|tx_cnt\(2) $ (((\TTL_tx|tx_cnt\(0) & (\gen_enable|txen~combout\ & \TTL_tx|tx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \gen_enable|txen~combout\,
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(2),
	combout => \TTL_tx|tx_n_cnt[2]~2_combout\);

-- Location: LCCOMB_X33_Y16_N28
\TTL_tx|tx_n_cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[2]~3_combout\ = (\TTL_tx|tx_state.IDLE~q\ & \TTL_tx|tx_n_cnt[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|tx_n_cnt[2]~2_combout\,
	combout => \TTL_tx|tx_n_cnt[2]~3_combout\);

-- Location: FF_X33_Y16_N29
\TTL_tx|tx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|tx_n_cnt[2]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_cnt\(2));

-- Location: LCCOMB_X33_Y16_N14
\TTL_tx|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal7~0_combout\ = (\TTL_tx|tx_cnt\(3) & (!\TTL_tx|tx_cnt\(2) & (\TTL_tx|tx_cnt\(1) & \TTL_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(3),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|Equal7~0_combout\);

-- Location: LCCOMB_X33_Y16_N2
\TTL_tx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add0~0_combout\ = \TTL_tx|tx_cnt\(3) $ (((\TTL_tx|tx_cnt\(2) & (\TTL_tx|tx_cnt\(1) & \TTL_tx|tx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(3),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|Add0~0_combout\);

-- Location: LCCOMB_X33_Y16_N24
\TTL_tx|tx_n_cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[3]~0_combout\ = (\gen_enable|txen~combout\ & (((\TTL_tx|Add0~0_combout\)))) # (!\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(3) & (!\TTL_tx|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(3),
	datab => \TTL_tx|Equal7~0_combout\,
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|Add0~0_combout\,
	combout => \TTL_tx|tx_n_cnt[3]~0_combout\);

-- Location: LCCOMB_X33_Y16_N18
\TTL_tx|tx_n_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[3]~5_combout\ = (\TTL_tx|tx_state.IDLE~q\ & \TTL_tx|tx_n_cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|tx_n_cnt[3]~5_combout\);

-- Location: FF_X33_Y16_N19
\TTL_tx|tx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|tx_n_cnt[3]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_cnt\(3));

-- Location: LCCOMB_X33_Y16_N0
\TTL_tx|tx_next_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_next_state~0_combout\ = (\TTL_tx|tx_cnt\(3) & (!\TTL_tx|tx_cnt\(2) & (\TTL_tx|tx_cnt\(1) & !\TTL_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(3),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|tx_next_state~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\TTL_tx|tx_next_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_next_state~1_combout\ = (!\TTL_tx|cnt_4\(2) & (\TTL_tx|tx_next_state~0_combout\ & ((!\TTL_tx|cnt_4\(1)) # (!\TTL_tx|cnt_4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_4\(2),
	datab => \TTL_tx|cnt_4\(0),
	datac => \TTL_tx|tx_next_state~0_combout\,
	datad => \TTL_tx|cnt_4\(1),
	combout => \TTL_tx|tx_next_state~1_combout\);

-- Location: LCCOMB_X22_Y16_N4
\TTL_tx|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~1_combout\ = (\TTL_tx|tx_state.STOP~q\ & ((\TTL_tx|tx_next_state~1_combout\) # ((!\TTL_tx|tx_state.IDLE~q\ & \TTL_tx|Selector1~0_combout\)))) # (!\TTL_tx|tx_state.STOP~q\ & (((!\TTL_tx|tx_state.IDLE~q\ & \TTL_tx|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.STOP~q\,
	datab => \TTL_tx|tx_next_state~1_combout\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|Selector1~0_combout\,
	combout => \TTL_tx|Selector1~1_combout\);

-- Location: LCCOMB_X33_Y16_N12
\TTL_tx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~2_combout\ = (\TTL_tx|Selector1~1_combout\) # ((\TTL_tx|tx_state.START~q\ & ((\TTL_tx|tx_n_cnt[2]~3_combout\) # (!\TTL_tx|tx_n_cnt[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.START~q\,
	datab => \TTL_tx|tx_n_cnt[0]~4_combout\,
	datac => \TTL_tx|Selector1~1_combout\,
	datad => \TTL_tx|tx_n_cnt[2]~3_combout\,
	combout => \TTL_tx|Selector1~2_combout\);

-- Location: LCCOMB_X33_Y16_N8
\TTL_tx|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~3_combout\ = (\TTL_tx|Selector1~2_combout\) # ((\TTL_tx|tx_state.START~q\ & ((\TTL_tx|tx_n_cnt[1]~6_combout\) # (\TTL_tx|tx_n_cnt[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_n_cnt[1]~6_combout\,
	datab => \TTL_tx|tx_n_cnt[3]~5_combout\,
	datac => \TTL_tx|tx_state.START~q\,
	datad => \TTL_tx|Selector1~2_combout\,
	combout => \TTL_tx|Selector1~3_combout\);

-- Location: FF_X33_Y16_N9
\TTL_tx|tx_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector1~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.START~q\);

-- Location: LCCOMB_X22_Y16_N30
\TTL_tx|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector2~1_combout\ = (\TTL_tx|tx_state.START~q\ & (\TTL_tx|tx_cnt\(0) $ (\gen_enable|txen~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_state.START~q\,
	combout => \TTL_tx|Selector2~1_combout\);

-- Location: LCCOMB_X33_Y16_N20
\TTL_tx|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~0_combout\ = (\TTL_tx|tx_cnt\(0) & (\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(1) $ (!\TTL_tx|tx_cnt\(2))))) # (!\TTL_tx|tx_cnt\(0) & (!\gen_enable|txen~combout\ & ((!\TTL_tx|tx_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \gen_enable|txen~combout\,
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(2),
	combout => \TTL_tx|Selector3~0_combout\);

-- Location: LCCOMB_X33_Y16_N22
\TTL_tx|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~1_combout\ = (\TTL_tx|Selector3~0_combout\ & (\TTL_tx|tx_n_cnt[1]~1_combout\ & \TTL_tx|tx_n_cnt[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Selector3~0_combout\,
	datac => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|Selector3~1_combout\);

-- Location: LCCOMB_X33_Y16_N30
\TTL_tx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector2~0_combout\ = (!\TTL_tx|tx_n_cnt[2]~2_combout\ & (!\TTL_tx|tx_n_cnt[1]~1_combout\ & !\TTL_tx|tx_n_cnt[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_n_cnt[2]~2_combout\,
	datac => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|Selector2~0_combout\);

-- Location: LCCOMB_X38_Y15_N0
\TTL_tx|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector2~2_combout\ = (\TTL_tx|Selector2~1_combout\ & ((\TTL_tx|Selector2~0_combout\) # ((!\TTL_tx|Selector3~1_combout\ & \TTL_tx|tx_state.DATA~q\)))) # (!\TTL_tx|Selector2~1_combout\ & (!\TTL_tx|Selector3~1_combout\ & 
-- (\TTL_tx|tx_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector2~1_combout\,
	datab => \TTL_tx|Selector3~1_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|Selector2~0_combout\,
	combout => \TTL_tx|Selector2~2_combout\);

-- Location: FF_X38_Y15_N1
\TTL_tx|tx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector2~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.DATA~q\);

-- Location: LCCOMB_X22_Y16_N6
\TTL_tx|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~3_combout\ = (\TTL_tx|Selector3~2_combout\ & (((\TTL_tx|tx_state.DATA~q\ & \TTL_tx|Selector3~1_combout\)) # (!\TTL_tx|tx_next_state~1_combout\))) # (!\TTL_tx|Selector3~2_combout\ & (((\TTL_tx|tx_state.DATA~q\ & 
-- \TTL_tx|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector3~2_combout\,
	datab => \TTL_tx|tx_next_state~1_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|Selector3~1_combout\,
	combout => \TTL_tx|Selector3~3_combout\);

-- Location: FF_X22_Y16_N7
\TTL_tx|tx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector3~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.STOP~q\);

-- Location: LCCOMB_X22_Y16_N24
\TTL_tx|txd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~0_combout\ = (!\TTL_tx|txd~q\ & ((!\TTL_tx|tx_state.START~q\) # (!\gen_enable|txen~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|txen~combout\,
	datab => \TTL_tx|txd~q\,
	datad => \TTL_tx|tx_state.START~q\,
	combout => \TTL_tx|txd~0_combout\);

-- Location: LCCOMB_X33_Y16_N4
\TTL_tx|always3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~0_combout\ = (\TTL_tx|tx_cnt\(2) & ((!\TTL_tx|tx_cnt\(0)) # (!\TTL_tx|tx_cnt\(1)))) # (!\TTL_tx|tx_cnt\(2) & ((\TTL_tx|tx_cnt\(1)) # (\TTL_tx|tx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(0),
	combout => \TTL_tx|always3~0_combout\);

-- Location: LCCOMB_X27_Y15_N24
\TTL_tx|always3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~1_combout\ = ((\TTL_tx|always3~0_combout\ $ (!\TTL_tx|Add0~0_combout\)) # (!\gen_enable|txen~combout\)) # (!\TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~0_combout\,
	datab => \TTL_tx|tx_state.IDLE~q\,
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|Add0~0_combout\,
	combout => \TTL_tx|always3~1_combout\);

-- Location: LCCOMB_X27_Y15_N10
\TTL_tx|txd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~1_combout\ = (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|txd~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\tx_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\tx_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\tx_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\tx_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: LCCOMB_X36_Y16_N0
\bit8_en|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|WideOr1~0_combout\ = (!\tx_data[3]~input_o\ & ((\tx_data[2]~input_o\ & (!\tx_data[0]~input_o\ & !\tx_data[1]~input_o\)) # (!\tx_data[2]~input_o\ & (\tx_data[0]~input_o\ $ (\tx_data[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y16_N12
\bit8_en|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|WideOr0~0_combout\ = (\tx_data[3]~input_o\ & (!\tx_data[2]~input_o\ & (!\tx_data[0]~input_o\ & !\tx_data[1]~input_o\))) # (!\tx_data[3]~input_o\ & ((\tx_data[2]~input_o\ & (!\tx_data[0]~input_o\ & !\tx_data[1]~input_o\)) # (!\tx_data[2]~input_o\ 
-- & (\tx_data[0]~input_o\ $ (\tx_data[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|WideOr0~0_combout\);

-- Location: LCCOMB_X36_Y16_N10
\bit8_en|bit_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~1_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[0]~input_o\ & (\tx_data[2]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~1_combout\);

-- Location: LCCOMB_X36_Y16_N4
\bit8_en|bit_out[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out[17]~2_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[1]~input_o\ & (\tx_data[2]~input_o\ $ (\tx_data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out[17]~2_combout\);

-- Location: LCCOMB_X36_Y16_N30
\bit8_en|bit_out[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out[18]~3_combout\ = (!\tx_data[2]~input_o\ & (!\tx_data[0]~input_o\ & (\tx_data[3]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out[18]~3_combout\);

-- Location: LCCOMB_X36_Y16_N2
\TTL_tx|data_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~0_combout\ = (\tx_data[3]~input_o\ & (!\tx_data[2]~input_o\ & (!\tx_data[0]~input_o\ & !\tx_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \TTL_tx|data_8~0_combout\);

-- Location: LCCOMB_X36_Y16_N6
\bit8_en|bit_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~4_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[2]~input_o\ & (\tx_data[0]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~4_combout\);

-- Location: LCCOMB_X36_Y16_N18
\TTL_tx|data_8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~33_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|tx_state.IDLE~q\ & (\TTL_tx|data_8\(31)))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\) # ((\TTL_tx|tx_state.IDLE~q\ & \TTL_tx|data_8\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|tx_state.IDLE~q\,
	datac => \TTL_tx|data_8\(31),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~33_combout\);

-- Location: FF_X36_Y16_N19
\TTL_tx|data_8[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~33_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(31));

-- Location: LCCOMB_X36_Y16_N16
\TTL_tx|data_8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~32_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(31)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|data_8\(31),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~32_combout\);

-- Location: LCCOMB_X30_Y15_N20
\TTL_tx|data_8[19]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8[19]~2_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((!\TTL_tx|always3~1_combout\))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|tx_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.IDLE~q\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8[19]~2_combout\);

-- Location: FF_X36_Y16_N17
\TTL_tx|data_8[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(30));

-- Location: LCCOMB_X36_Y16_N28
\TTL_tx|data_8~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~31_combout\ = (\TTL_tx|data_8\(30) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|data_8\(30),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~31_combout\);

-- Location: FF_X36_Y16_N29
\TTL_tx|data_8[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(29));

-- Location: LCCOMB_X36_Y16_N26
\TTL_tx|data_8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~30_combout\ = (\TTL_tx|always3~1_combout\ & (!\bit8_en|bit_out~4_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(29)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|bit_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out~4_combout\,
	datab => \TTL_tx|data_8\(29),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~30_combout\);

-- Location: FF_X36_Y16_N27
\TTL_tx|data_8[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(28));

-- Location: LCCOMB_X36_Y16_N24
\TTL_tx|data_8~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~29_combout\ = (\TTL_tx|data_8\(28) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(28),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~29_combout\);

-- Location: FF_X36_Y16_N25
\TTL_tx|data_8[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(27));

-- Location: LCCOMB_X38_Y15_N20
\TTL_tx|data_8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~28_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[17]~2_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(27)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out[17]~2_combout\,
	datab => \TTL_tx|data_8\(27),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~28_combout\);

-- Location: FF_X38_Y15_N21
\TTL_tx|data_8[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(26));

-- Location: LCCOMB_X38_Y15_N26
\TTL_tx|data_8~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~27_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(26)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8~0_combout\,
	datab => \TTL_tx|data_8\(26),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~27_combout\);

-- Location: FF_X38_Y15_N27
\TTL_tx|data_8[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~27_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(25));

-- Location: LCCOMB_X38_Y15_N24
\TTL_tx|data_8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~26_combout\ = (\TTL_tx|always3~1_combout\ & (!\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(25)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|data_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8~0_combout\,
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|data_8\(25),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~26_combout\);

-- Location: FF_X38_Y15_N25
\TTL_tx|data_8[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(24));

-- Location: LCCOMB_X38_Y15_N14
\TTL_tx|data_8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~25_combout\ = (\TTL_tx|data_8\(24) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|data_8\(24),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~25_combout\);

-- Location: FF_X38_Y15_N15
\TTL_tx|data_8[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~25_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(23));

-- Location: LCCOMB_X38_Y15_N28
\TTL_tx|data_8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~24_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(23)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|data_8\(23),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~24_combout\);

-- Location: FF_X38_Y15_N29
\TTL_tx|data_8[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(22));

-- Location: LCCOMB_X38_Y15_N2
\TTL_tx|data_8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~23_combout\ = (\TTL_tx|data_8\(22) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|data_8\(22),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~23_combout\);

-- Location: FF_X38_Y15_N3
\TTL_tx|data_8[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~23_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(21));

-- Location: LCCOMB_X38_Y15_N16
\TTL_tx|data_8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~22_combout\ = (\TTL_tx|always3~1_combout\ & (!\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(21)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|data_8\(21),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~22_combout\);

-- Location: FF_X38_Y15_N17
\TTL_tx|data_8[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(20));

-- Location: LCCOMB_X38_Y15_N22
\TTL_tx|data_8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~21_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[17]~2_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(20)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out[17]~2_combout\,
	datab => \TTL_tx|data_8\(20),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~21_combout\);

-- Location: FF_X38_Y15_N23
\TTL_tx|data_8[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~21_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(19));

-- Location: LCCOMB_X38_Y15_N4
\TTL_tx|data_8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~20_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[18]~3_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(19)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[18]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \bit8_en|bit_out[18]~3_combout\,
	datac => \TTL_tx|data_8\(19),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~20_combout\);

-- Location: FF_X38_Y15_N5
\TTL_tx|data_8[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(18));

-- Location: LCCOMB_X38_Y15_N18
\TTL_tx|data_8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~19_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[17]~2_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(18)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out[17]~2_combout\,
	datab => \TTL_tx|data_8\(18),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~19_combout\);

-- Location: FF_X38_Y15_N19
\TTL_tx|data_8[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~19_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(17));

-- Location: LCCOMB_X38_Y15_N8
\TTL_tx|data_8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~18_combout\ = (\TTL_tx|always3~1_combout\ & (!\bit8_en|bit_out~1_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(17)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|bit_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out~1_combout\,
	datab => \TTL_tx|data_8\(17),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~18_combout\);

-- Location: FF_X38_Y15_N9
\TTL_tx|data_8[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(16));

-- Location: LCCOMB_X38_Y15_N6
\TTL_tx|data_8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~17_combout\ = (\TTL_tx|data_8\(16) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|data_8\(16),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~17_combout\);

-- Location: FF_X38_Y15_N7
\TTL_tx|data_8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~17_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(15));

-- Location: LCCOMB_X38_Y15_N12
\TTL_tx|data_8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~16_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(15)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(15),
	combout => \TTL_tx|data_8~16_combout\);

-- Location: FF_X38_Y15_N13
\TTL_tx|data_8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(14));

-- Location: LCCOMB_X38_Y15_N10
\TTL_tx|data_8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~15_combout\ = (\TTL_tx|data_8\(14) & (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(14),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~15_combout\);

-- Location: FF_X38_Y15_N11
\TTL_tx|data_8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(13));

-- Location: LCCOMB_X30_Y15_N28
\TTL_tx|data_8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~14_combout\ = (\TTL_tx|always3~1_combout\ & (!\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(13)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \bit8_en|WideOr0~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|data_8\(13),
	combout => \TTL_tx|data_8~14_combout\);

-- Location: FF_X30_Y15_N29
\TTL_tx|data_8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(12));

-- Location: LCCOMB_X30_Y15_N10
\TTL_tx|data_8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~13_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr1~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(12)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr1~0_combout\,
	datab => \TTL_tx|data_8\(12),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~13_combout\);

-- Location: FF_X30_Y15_N11
\TTL_tx|data_8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(11));

-- Location: LCCOMB_X30_Y15_N24
\TTL_tx|data_8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~12_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(11))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(11),
	datab => \bit8_en|WideOr0~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~12_combout\);

-- Location: FF_X30_Y15_N25
\TTL_tx|data_8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(10));

-- Location: LCCOMB_X30_Y15_N14
\TTL_tx|data_8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~11_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr1~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(10)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr1~0_combout\,
	datab => \TTL_tx|data_8\(10),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~11_combout\);

-- Location: FF_X30_Y15_N15
\TTL_tx|data_8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(9));

-- Location: LCCOMB_X30_Y15_N4
\TTL_tx|data_8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~10_combout\ = (\TTL_tx|data_8\(9)) # ((\TTL_tx|always3~1_combout\) # (!\TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|data_8\(9),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~10_combout\);

-- Location: FF_X30_Y15_N5
\TTL_tx|data_8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(8));

-- Location: LCCOMB_X30_Y15_N18
\TTL_tx|data_8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~9_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(8) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|data_8\(8),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~9_combout\);

-- Location: FF_X30_Y15_N19
\TTL_tx|data_8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(7));

-- Location: LCCOMB_X30_Y15_N8
\TTL_tx|data_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~8_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(7))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(7),
	datab => \bit8_en|WideOr0~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~8_combout\);

-- Location: FF_X30_Y15_N9
\TTL_tx|data_8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(6));

-- Location: LCCOMB_X30_Y15_N30
\TTL_tx|data_8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~7_combout\ = (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(6) & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|data_8\(6),
	datac => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~7_combout\);

-- Location: FF_X30_Y15_N31
\TTL_tx|data_8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(5));

-- Location: LCCOMB_X36_Y16_N22
\bit8_en|bit_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~0_combout\ = (!\tx_data[2]~input_o\ & (!\tx_data[1]~input_o\ & (\tx_data[3]~input_o\ $ (\tx_data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data[0]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~0_combout\);

-- Location: LCCOMB_X30_Y15_N26
\TTL_tx|data_8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~6_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((!\bit8_en|bit_out~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(5))))) # (!\TTL_tx|tx_state.DATA~q\ & (((!\bit8_en|bit_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(5),
	datab => \bit8_en|bit_out~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~6_combout\);

-- Location: FF_X30_Y15_N27
\TTL_tx|data_8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(4));

-- Location: LCCOMB_X30_Y15_N16
\TTL_tx|data_8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~5_combout\ = (\TTL_tx|data_8\(4) & (\TTL_tx|tx_state.DATA~q\ & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(4),
	datab => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~5_combout\);

-- Location: FF_X30_Y15_N17
\TTL_tx|data_8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(3));

-- Location: LCCOMB_X22_Y16_N2
\TTL_tx|always3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~2_combout\ = (!\TTL_tx|tx_state.START~q\) # (!\gen_enable|txen~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_state.START~q\,
	combout => \TTL_tx|always3~2_combout\);

-- Location: LCCOMB_X27_Y15_N14
\TTL_tx|shift_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~8_combout\ = (\TTL_tx|txd~1_combout\) # ((\TTL_tx|always3~2_combout\ & (\TTL_tx|shift_data\(7))) # (!\TTL_tx|always3~2_combout\ & ((\TTL_tx|data_8\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|txd~1_combout\,
	datab => \TTL_tx|always3~2_combout\,
	datac => \TTL_tx|shift_data\(7),
	datad => \TTL_tx|data_8\(7),
	combout => \TTL_tx|shift_data~8_combout\);

-- Location: FF_X27_Y15_N15
\TTL_tx|shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data~8_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(7));

-- Location: LCCOMB_X27_Y15_N30
\TTL_tx|shift_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~7_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(6))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|shift_data\(7)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(6),
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|shift_data\(7),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~7_combout\);

-- Location: LCCOMB_X27_Y15_N20
\TTL_tx|shift_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[6]~feeder_combout\ = \TTL_tx|shift_data~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data~7_combout\,
	combout => \TTL_tx|shift_data[6]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N4
\TTL_tx|shift_data[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[5]~1_combout\ = (\TTL_tx|tx_state.STOP~q\) # ((\TTL_tx|tx_state.DATA~q\ & ((!\TTL_tx|always3~1_combout\))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|tx_state.STOP~q\,
	datac => \TTL_tx|always3~2_combout\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|shift_data[5]~1_combout\);

-- Location: FF_X27_Y15_N21
\TTL_tx|shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[6]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(6));

-- Location: LCCOMB_X27_Y15_N28
\TTL_tx|shift_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~6_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(5))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|shift_data\(6)))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\TTL_tx|data_8\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|data_8\(5),
	datad => \TTL_tx|shift_data\(6),
	combout => \TTL_tx|shift_data~6_combout\);

-- Location: LCCOMB_X27_Y15_N26
\TTL_tx|shift_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[5]~feeder_combout\ = \TTL_tx|shift_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_tx|shift_data~6_combout\,
	combout => \TTL_tx|shift_data[5]~feeder_combout\);

-- Location: FF_X27_Y15_N27
\TTL_tx|shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[5]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(5));

-- Location: LCCOMB_X30_Y15_N12
\TTL_tx|shift_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~5_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(4))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|shift_data\(5)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(4),
	datab => \TTL_tx|shift_data\(5),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|shift_data~5_combout\);

-- Location: LCCOMB_X27_Y15_N8
\TTL_tx|shift_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[4]~feeder_combout\ = \TTL_tx|shift_data~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_tx|shift_data~5_combout\,
	combout => \TTL_tx|shift_data[4]~feeder_combout\);

-- Location: FF_X27_Y15_N9
\TTL_tx|shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[4]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(4));

-- Location: LCCOMB_X27_Y15_N18
\TTL_tx|shift_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~4_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(3))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|shift_data\(4)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(3),
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|shift_data\(4),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~4_combout\);

-- Location: LCCOMB_X27_Y15_N6
\TTL_tx|shift_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[3]~feeder_combout\ = \TTL_tx|shift_data~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_tx|shift_data~4_combout\,
	combout => \TTL_tx|shift_data[3]~feeder_combout\);

-- Location: FF_X27_Y15_N7
\TTL_tx|shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[3]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(3));

-- Location: LCCOMB_X30_Y15_N22
\TTL_tx|data_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~4_combout\ = (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(3) & \TTL_tx|tx_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|data_8\(3),
	datac => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~4_combout\);

-- Location: FF_X30_Y15_N23
\TTL_tx|data_8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(2));

-- Location: LCCOMB_X27_Y15_N16
\TTL_tx|shift_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~3_combout\ = (\TTL_tx|always3~1_combout\ & (((\TTL_tx|data_8\(2))))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|shift_data\(3))) # (!\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data\(3),
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|data_8\(2),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~3_combout\);

-- Location: LCCOMB_X27_Y15_N12
\TTL_tx|shift_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[2]~feeder_combout\ = \TTL_tx|shift_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_tx|shift_data~3_combout\,
	combout => \TTL_tx|shift_data[2]~feeder_combout\);

-- Location: FF_X27_Y15_N13
\TTL_tx|shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[2]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(2));

-- Location: LCCOMB_X30_Y15_N2
\TTL_tx|data_8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~3_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(2))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(2),
	datab => \bit8_en|WideOr0~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~3_combout\);

-- Location: FF_X30_Y15_N3
\TTL_tx|data_8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(1));

-- Location: LCCOMB_X27_Y15_N22
\TTL_tx|shift_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~2_combout\ = (\TTL_tx|always3~1_combout\ & (((\TTL_tx|data_8\(1))))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|shift_data\(2))) # (!\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data\(2),
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|data_8\(1),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~2_combout\);

-- Location: LCCOMB_X27_Y15_N2
\TTL_tx|shift_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[1]~feeder_combout\ = \TTL_tx|shift_data~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data~2_combout\,
	combout => \TTL_tx|shift_data[1]~feeder_combout\);

-- Location: FF_X27_Y15_N3
\TTL_tx|shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[1]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(1));

-- Location: LCCOMB_X30_Y15_N0
\TTL_tx|data_8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~1_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (!\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(1)))))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|data_8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8~0_combout\,
	datab => \TTL_tx|data_8\(1),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~1_combout\);

-- Location: FF_X30_Y15_N1
\TTL_tx|data_8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|data_8~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|data_8[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(0));

-- Location: LCCOMB_X36_Y16_N8
\TTL_tx|shift_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~0_combout\ = (\TTL_tx|always3~1_combout\ & (((\TTL_tx|data_8\(0))))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|shift_data\(1))) # (!\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data\(1),
	datab => \TTL_tx|data_8\(0),
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~0_combout\);

-- Location: LCCOMB_X27_Y15_N0
\TTL_tx|shift_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[0]~feeder_combout\ = \TTL_tx|shift_data~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_tx|shift_data~0_combout\,
	combout => \TTL_tx|shift_data[0]~feeder_combout\);

-- Location: FF_X27_Y15_N1
\TTL_tx|shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|shift_data[0]~feeder_combout\,
	asdata => VCC,
	clrn => \n_rst~input_o\,
	sload => \TTL_tx|tx_state.STOP~q\,
	ena => \TTL_tx|shift_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(0));

-- Location: LCCOMB_X22_Y16_N20
\TTL_tx|txd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~2_combout\ = (!\TTL_tx|tx_state.STOP~q\ & ((\TTL_tx|txd~1_combout\ & ((!\TTL_tx|shift_data\(0)))) # (!\TTL_tx|txd~1_combout\ & (!\TTL_tx|txd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.STOP~q\,
	datab => \TTL_tx|txd~0_combout\,
	datac => \TTL_tx|txd~1_combout\,
	datad => \TTL_tx|shift_data\(0),
	combout => \TTL_tx|txd~2_combout\);

-- Location: FF_X22_Y16_N21
\TTL_tx|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|txd~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|txd~q\);

-- Location: LCCOMB_X33_Y24_N24
\u_rx_price|data_out[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_rx_price|data_out[12]~feeder_combout\);

-- Location: IOIBUF_X41_Y8_N8
\rxd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: LCCOMB_X33_Y22_N12
\TTL_rx|fnd_rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|fnd_rxd[7]~0_combout\ = !\rxd~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rxd~input_o\,
	combout => \TTL_rx|fnd_rxd[7]~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\gen_enable|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal3~0_combout\ = (\gen_enable|cnt_1\(8) & (!\gen_enable|cnt_1\(9) & (!\gen_enable|cnt_1\(11) & \gen_enable|cnt_1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(8),
	datab => \gen_enable|cnt_1\(9),
	datac => \gen_enable|cnt_1\(11),
	datad => \gen_enable|cnt_1\(10),
	combout => \gen_enable|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y28_N14
\gen_enable|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal3~1_combout\ = (!\gen_enable|cnt_1\(5) & (\gen_enable|cnt_1\(1) & (\gen_enable|cnt_1\(4) & !\gen_enable|cnt_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(5),
	datab => \gen_enable|cnt_1\(1),
	datac => \gen_enable|cnt_1\(4),
	datad => \gen_enable|cnt_1\(3),
	combout => \gen_enable|Equal3~1_combout\);

-- Location: LCCOMB_X23_Y16_N24
\gen_enable|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal2~1_combout\ = (\gen_enable|cnt_0\(5) & (!\gen_enable|cnt_0\(4) & (\gen_enable|cnt_0\(2) & !\gen_enable|cnt_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(5),
	datab => \gen_enable|cnt_0\(4),
	datac => \gen_enable|cnt_0\(2),
	datad => \gen_enable|cnt_0\(6),
	combout => \gen_enable|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y16_N22
\gen_enable|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal2~0_combout\ = (\gen_enable|cnt_0\(11) & (\gen_enable|cnt_0\(9) & (!\gen_enable|cnt_0\(10) & !\gen_enable|cnt_0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(11),
	datab => \gen_enable|cnt_0\(9),
	datac => \gen_enable|cnt_0\(10),
	datad => \gen_enable|cnt_0\(12),
	combout => \gen_enable|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\gen_enable|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal2~2_combout\ = (!\gen_enable|cnt_0\(0) & (\gen_enable|Equal2~1_combout\ & (\gen_enable|Equal2~0_combout\ & \gen_enable|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(0),
	datab => \gen_enable|Equal2~1_combout\,
	datac => \gen_enable|Equal2~0_combout\,
	datad => \gen_enable|Equal0~0_combout\,
	combout => \gen_enable|Equal2~2_combout\);

-- Location: LCCOMB_X26_Y28_N8
\gen_enable|rxen\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|rxen~combout\ = (\gen_enable|Equal2~2_combout\) # ((\gen_enable|Equal3~0_combout\ & (\gen_enable|Equal3~1_combout\ & \gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal3~0_combout\,
	datab => \gen_enable|Equal3~1_combout\,
	datac => \gen_enable|Equal2~2_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|rxen~combout\);

-- Location: LCCOMB_X33_Y21_N30
\TTL_rx|rx_n_cnt[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[0]~4_combout\ = (\TTL_rx|rx_state.IDLE~q\ & (\gen_enable|rxen~combout\ $ (\TTL_rx|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|rxen~combout\,
	datac => \TTL_rx|rx_cnt\(0),
	datad => \TTL_rx|rx_state.IDLE~q\,
	combout => \TTL_rx|rx_n_cnt[0]~4_combout\);

-- Location: FF_X33_Y21_N31
\TTL_rx|rx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|rx_n_cnt[0]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_cnt\(0));

-- Location: LCCOMB_X33_Y21_N22
\TTL_rx|rx_n_cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[2]~7_combout\ = (\TTL_rx|rx_n_cnt[2]~2_combout\ & \TTL_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_rx|rx_n_cnt[2]~2_combout\,
	datad => \TTL_rx|rx_state.IDLE~q\,
	combout => \TTL_rx|rx_n_cnt[2]~7_combout\);

-- Location: FF_X33_Y21_N23
\TTL_rx|rx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|rx_n_cnt[2]~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_cnt\(2));

-- Location: LCCOMB_X33_Y21_N16
\TTL_rx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Equal2~0_combout\ = (!\TTL_rx|rx_cnt\(2) & (\TTL_rx|rx_cnt\(1) & (!\TTL_rx|rx_cnt\(0) & \TTL_rx|rx_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(2),
	datab => \TTL_rx|rx_cnt\(1),
	datac => \TTL_rx|rx_cnt\(0),
	datad => \TTL_rx|rx_cnt\(3),
	combout => \TTL_rx|Equal2~0_combout\);

-- Location: LCCOMB_X33_Y21_N18
\TTL_rx|rx_n_cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[1]~1_combout\ = (\gen_enable|rxen~combout\ & (\TTL_rx|rx_cnt\(0) $ ((\TTL_rx|rx_cnt\(1))))) # (!\gen_enable|rxen~combout\ & (((\TTL_rx|rx_cnt\(1) & !\TTL_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(0),
	datab => \TTL_rx|rx_cnt\(1),
	datac => \gen_enable|rxen~combout\,
	datad => \TTL_rx|Equal2~0_combout\,
	combout => \TTL_rx|rx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X33_Y21_N20
\TTL_rx|rx_n_cnt[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[1]~6_combout\ = (\TTL_rx|rx_n_cnt[1]~1_combout\ & \TTL_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_rx|rx_n_cnt[1]~1_combout\,
	datad => \TTL_rx|rx_state.IDLE~q\,
	combout => \TTL_rx|rx_n_cnt[1]~6_combout\);

-- Location: FF_X33_Y21_N21
\TTL_rx|rx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|rx_n_cnt[1]~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_cnt\(1));

-- Location: LCCOMB_X33_Y21_N14
\TTL_rx|rx_n_cnt[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[2]~2_combout\ = \TTL_rx|rx_cnt\(2) $ (((\TTL_rx|rx_cnt\(0) & (\gen_enable|rxen~combout\ & \TTL_rx|rx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(0),
	datab => \gen_enable|rxen~combout\,
	datac => \TTL_rx|rx_cnt\(2),
	datad => \TTL_rx|rx_cnt\(1),
	combout => \TTL_rx|rx_n_cnt[2]~2_combout\);

-- Location: LCCOMB_X33_Y21_N6
\TTL_rx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector2~0_combout\ = (!\TTL_rx|rx_n_cnt[2]~2_combout\ & (\TTL_rx|rx_n_cnt[3]~3_combout\ & !\TTL_rx|rx_n_cnt[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_rx|rx_n_cnt[2]~2_combout\,
	datac => \TTL_rx|rx_n_cnt[3]~3_combout\,
	datad => \TTL_rx|rx_n_cnt[1]~1_combout\,
	combout => \TTL_rx|Selector2~0_combout\);

-- Location: LCCOMB_X33_Y21_N8
\TTL_rx|rx_n_cnt[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[0]~0_combout\ = \TTL_rx|rx_cnt\(0) $ (\gen_enable|rxen~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(0),
	datac => \gen_enable|rxen~combout\,
	combout => \TTL_rx|rx_n_cnt[0]~0_combout\);

-- Location: LCCOMB_X33_Y21_N28
\TTL_rx|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector2~1_combout\ = (\TTL_rx|Selector2~0_combout\ & (!\TTL_rx|rx_n_cnt[0]~0_combout\ & ((\TTL_rx|rx_state.STOP~q\) # (\TTL_rx|rx_state.DATA~q\)))) # (!\TTL_rx|Selector2~0_combout\ & (((\TTL_rx|rx_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|Selector2~0_combout\,
	datab => \TTL_rx|rx_n_cnt[0]~0_combout\,
	datac => \TTL_rx|rx_state.STOP~q\,
	datad => \TTL_rx|rx_state.DATA~q\,
	combout => \TTL_rx|Selector2~1_combout\);

-- Location: FF_X33_Y21_N29
\TTL_rx|rx_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|Selector2~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_state.STOP~q\);

-- Location: LCCOMB_X33_Y22_N18
\TTL_rx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector0~0_combout\ = (!\TTL_rx|rx_state.IDLE~q\ & ((!\rxd~input_o\) # (!\gen_enable|rxen~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|rxen~combout\,
	datac => \rxd~input_o\,
	datad => \TTL_rx|rx_state.IDLE~q\,
	combout => \TTL_rx|Selector0~0_combout\);

-- Location: LCCOMB_X33_Y21_N2
\TTL_rx|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector0~1_combout\ = (!\TTL_rx|Selector0~0_combout\ & (((!\TTL_rx|rx_n_cnt[0]~0_combout\) # (!\TTL_rx|rx_state.STOP~q\)) # (!\TTL_rx|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|Selector2~0_combout\,
	datab => \TTL_rx|rx_state.STOP~q\,
	datac => \TTL_rx|rx_n_cnt[0]~0_combout\,
	datad => \TTL_rx|Selector0~0_combout\,
	combout => \TTL_rx|Selector0~1_combout\);

-- Location: FF_X33_Y21_N3
\TTL_rx|rx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|Selector0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_state.IDLE~q\);

-- Location: LCCOMB_X33_Y21_N10
\TTL_rx|rx_n_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[3]~5_combout\ = (\TTL_rx|rx_n_cnt[3]~3_combout\ & \TTL_rx|rx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_rx|rx_n_cnt[3]~3_combout\,
	datad => \TTL_rx|rx_state.IDLE~q\,
	combout => \TTL_rx|rx_n_cnt[3]~5_combout\);

-- Location: FF_X33_Y21_N11
\TTL_rx|rx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|rx_n_cnt[3]~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_cnt\(3));

-- Location: LCCOMB_X33_Y21_N24
\TTL_rx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Add0~0_combout\ = \TTL_rx|rx_cnt\(3) $ (((\TTL_rx|rx_cnt\(2) & (\TTL_rx|rx_cnt\(1) & \TTL_rx|rx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(2),
	datab => \TTL_rx|rx_cnt\(1),
	datac => \TTL_rx|rx_cnt\(0),
	datad => \TTL_rx|rx_cnt\(3),
	combout => \TTL_rx|Add0~0_combout\);

-- Location: LCCOMB_X33_Y21_N26
\TTL_rx|rx_n_cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|rx_n_cnt[3]~3_combout\ = (\gen_enable|rxen~combout\ & (((\TTL_rx|Add0~0_combout\)))) # (!\gen_enable|rxen~combout\ & (\TTL_rx|rx_cnt\(3) & ((!\TTL_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_cnt\(3),
	datab => \TTL_rx|Add0~0_combout\,
	datac => \gen_enable|rxen~combout\,
	datad => \TTL_rx|Equal2~0_combout\,
	combout => \TTL_rx|rx_n_cnt[3]~3_combout\);

-- Location: LCCOMB_X33_Y21_N12
\TTL_rx|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector1~0_combout\ = (!\TTL_rx|rx_state.IDLE~q\ & (\gen_enable|rxen~combout\ & \rxd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_rx|rx_state.IDLE~q\,
	datac => \gen_enable|rxen~combout\,
	datad => \rxd~input_o\,
	combout => \TTL_rx|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y21_N4
\TTL_rx|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector1~1_combout\ = (\TTL_rx|Selector1~0_combout\) # ((\TTL_rx|rx_state.DATA~q\ & ((\TTL_rx|rx_n_cnt[1]~1_combout\) # (\TTL_rx|rx_n_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|Selector1~0_combout\,
	datab => \TTL_rx|rx_n_cnt[1]~1_combout\,
	datac => \TTL_rx|rx_n_cnt[0]~0_combout\,
	datad => \TTL_rx|rx_state.DATA~q\,
	combout => \TTL_rx|Selector1~1_combout\);

-- Location: LCCOMB_X33_Y21_N0
\TTL_rx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|Selector1~2_combout\ = (\TTL_rx|Selector1~1_combout\) # ((\TTL_rx|rx_state.DATA~q\ & ((\TTL_rx|rx_n_cnt[2]~2_combout\) # (!\TTL_rx|rx_n_cnt[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|rx_n_cnt[3]~3_combout\,
	datab => \TTL_rx|rx_n_cnt[2]~2_combout\,
	datac => \TTL_rx|rx_state.DATA~q\,
	datad => \TTL_rx|Selector1~1_combout\,
	combout => \TTL_rx|Selector1~2_combout\);

-- Location: FF_X33_Y21_N1
\TTL_rx|rx_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|Selector1~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|rx_state.DATA~q\);

-- Location: LCCOMB_X33_Y22_N0
\TTL_rx|always3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|always3~0_combout\ = (\gen_enable|rxen~combout\ & \TTL_rx|rx_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|rxen~combout\,
	datad => \TTL_rx|rx_state.DATA~q\,
	combout => \TTL_rx|always3~0_combout\);

-- Location: FF_X33_Y22_N13
\TTL_rx|fnd_rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|fnd_rxd[7]~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(7));

-- Location: LCCOMB_X33_Y22_N16
\TTL_rx|fnd_rxd[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|fnd_rxd[6]~feeder_combout\ = \TTL_rx|fnd_rxd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_rx|fnd_rxd\(7),
	combout => \TTL_rx|fnd_rxd[6]~feeder_combout\);

-- Location: FF_X33_Y22_N17
\TTL_rx|fnd_rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|fnd_rxd[6]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(6));

-- Location: LCCOMB_X33_Y22_N22
\TTL_rx|fnd_rxd[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|fnd_rxd[5]~feeder_combout\ = \TTL_rx|fnd_rxd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_rx|fnd_rxd\(6),
	combout => \TTL_rx|fnd_rxd[5]~feeder_combout\);

-- Location: FF_X33_Y22_N23
\TTL_rx|fnd_rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|fnd_rxd[5]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(5));

-- Location: FF_X33_Y22_N25
\TTL_rx|fnd_rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \TTL_rx|fnd_rxd\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(4));

-- Location: LCCOMB_X33_Y22_N10
\TTL_rx|fnd_rxd[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|fnd_rxd[3]~feeder_combout\ = \TTL_rx|fnd_rxd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_rx|fnd_rxd\(4),
	combout => \TTL_rx|fnd_rxd[3]~feeder_combout\);

-- Location: FF_X33_Y22_N11
\TTL_rx|fnd_rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|fnd_rxd[3]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(3));

-- Location: LCCOMB_X33_Y22_N4
\TTL_rx|fnd_rxd[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_rx|fnd_rxd[2]~feeder_combout\ = \TTL_rx|fnd_rxd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TTL_rx|fnd_rxd\(3),
	combout => \TTL_rx|fnd_rxd[2]~feeder_combout\);

-- Location: FF_X33_Y22_N5
\TTL_rx|fnd_rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_rx|fnd_rxd[2]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(2));

-- Location: FF_X33_Y22_N31
\TTL_rx|fnd_rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \TTL_rx|fnd_rxd\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(1));

-- Location: LCCOMB_X33_Y22_N30
\u_rx_price|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|Equal4~1_combout\ = (!\TTL_rx|fnd_rxd\(3) & (!\TTL_rx|fnd_rxd\(2) & (!\TTL_rx|fnd_rxd\(1) & !\TTL_rx|fnd_rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|fnd_rxd\(3),
	datab => \TTL_rx|fnd_rxd\(2),
	datac => \TTL_rx|fnd_rxd\(1),
	datad => \TTL_rx|fnd_rxd\(4),
	combout => \u_rx_price|Equal4~1_combout\);

-- Location: FF_X33_Y22_N3
\TTL_rx|fnd_rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \TTL_rx|fnd_rxd\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \TTL_rx|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_rx|fnd_rxd\(0));

-- Location: LCCOMB_X33_Y22_N2
\u_rx_price|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|Equal4~0_combout\ = (!\TTL_rx|fnd_rxd\(5) & (\TTL_rx|fnd_rxd\(6) & (!\TTL_rx|fnd_rxd\(0) & !\TTL_rx|fnd_rxd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_rx|fnd_rxd\(5),
	datab => \TTL_rx|fnd_rxd\(6),
	datac => \TTL_rx|fnd_rxd\(0),
	datad => \TTL_rx|fnd_rxd\(7),
	combout => \u_rx_price|Equal4~0_combout\);

-- Location: LCCOMB_X33_Y24_N18
\u_rx_price|data_out[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out[16]~0_combout\ = (!\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & (\u_rx_price|Equal4~1_combout\ & \u_rx_price|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[0]~input_o\,
	datab => \tx_data[2]~input_o\,
	datac => \u_rx_price|Equal4~1_combout\,
	datad => \u_rx_price|Equal4~0_combout\,
	combout => \u_rx_price|data_out[16]~0_combout\);

-- Location: LCCOMB_X33_Y24_N20
\u_rx_price|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|always0~0_combout\ = (!\tx_data[3]~input_o\ & (\u_rx_price|Equal4~1_combout\ & (!\tx_data[1]~input_o\ & \u_rx_price|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \u_rx_price|Equal4~1_combout\,
	datac => \tx_data[1]~input_o\,
	datad => \u_rx_price|Equal4~0_combout\,
	combout => \u_rx_price|always0~0_combout\);

-- Location: LCCOMB_X33_Y24_N4
\u_rx_price|data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out~1_combout\ = (\tx_data[0]~input_o\ $ (!\tx_data[2]~input_o\)) # (!\u_rx_price|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[0]~input_o\,
	datab => \tx_data[2]~input_o\,
	datad => \u_rx_price|always0~0_combout\,
	combout => \u_rx_price|data_out~1_combout\);

-- Location: LCCOMB_X33_Y24_N6
\u_rx_price|data_out[16]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out[16]~2_combout\ = ((\u_rx_price|data_out[16]~0_combout\ & (\tx_data[3]~input_o\ $ (\tx_data[1]~input_o\)))) # (!\u_rx_price|data_out~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \u_rx_price|data_out[16]~0_combout\,
	datac => \tx_data[1]~input_o\,
	datad => \u_rx_price|data_out~1_combout\,
	combout => \u_rx_price|data_out[16]~2_combout\);

-- Location: FF_X33_Y24_N25
\u_rx_price|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|data_out[12]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(12));

-- Location: LCCOMB_X33_Y24_N10
\u_rx_price|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|always0~1_combout\ = ((\tx_data[2]~input_o\) # (!\u_rx_price|always0~0_combout\)) # (!\tx_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[0]~input_o\,
	datab => \tx_data[2]~input_o\,
	datad => \u_rx_price|always0~0_combout\,
	combout => \u_rx_price|always0~1_combout\);

-- Location: FF_X33_Y24_N11
\u_rx_price|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|always0~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(16));

-- Location: FF_X33_Y24_N5
\u_rx_price|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|data_out~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(18));

-- Location: LCCOMB_X33_Y24_N30
\u_rx_price|data_out[19]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out[19]~5_combout\ = !\u_rx_price|data_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx_price|data_out~1_combout\,
	combout => \u_rx_price|data_out[19]~5_combout\);

-- Location: FF_X33_Y24_N31
\u_rx_price|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|data_out[19]~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(19));

-- Location: LCCOMB_X33_Y24_N16
\fnd_of_rxd3|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr6~0_combout\ = (\u_rx_price|data_out\(12) & (\u_rx_price|data_out\(18) $ (((\u_rx_price|data_out\(19)) # (!\u_rx_price|data_out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx_price|data_out\(16),
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr6~0_combout\);

-- Location: LCCOMB_X33_Y24_N26
\fnd_of_rxd3|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr5~0_combout\ = (\u_rx_price|data_out\(12) & (((!\u_rx_price|data_out\(16) & !\u_rx_price|data_out\(19))) # (!\u_rx_price|data_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx_price|data_out\(16),
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr5~0_combout\);

-- Location: LCCOMB_X33_Y24_N12
\fnd_of_rxd3|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr4~0_combout\ = ((\u_rx_price|data_out\(18) & \u_rx_price|data_out\(19))) # (!\u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr4~0_combout\);

-- Location: LCCOMB_X33_Y24_N22
\fnd_of_rxd3|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr3~0_combout\ = (\u_rx_price|data_out\(12) & ((\u_rx_price|data_out\(16) & (\u_rx_price|data_out\(18) & !\u_rx_price|data_out\(19))) # (!\u_rx_price|data_out\(16) & (!\u_rx_price|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx_price|data_out\(16),
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr3~0_combout\);

-- Location: LCCOMB_X33_Y24_N8
\fnd_of_rxd3|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr2~0_combout\ = (!\u_rx_price|data_out\(16) & (!\u_rx_price|data_out\(18) & \u_rx_price|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx_price|data_out\(16),
	datac => \u_rx_price|data_out\(18),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y24_N2
\fnd_of_rxd3|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr1~0_combout\ = (\u_rx_price|data_out\(12) & ((\u_rx_price|data_out\(18) & ((!\u_rx_price|data_out\(19)))) # (!\u_rx_price|data_out\(18) & ((\u_rx_price|data_out\(19)) # (!\u_rx_price|data_out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx_price|data_out\(16),
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y24_N28
\fnd_of_rxd3|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd3|WideOr0~0_combout\ = (\u_rx_price|data_out\(18) $ (!\u_rx_price|data_out\(19))) # (!\u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx_price|data_out\(18),
	datac => \u_rx_price|data_out\(19),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd3|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y24_N14
\u_rx_price|data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out~3_combout\ = ((!\tx_data[3]~input_o\ & (\u_rx_price|data_out[16]~0_combout\ & \tx_data[1]~input_o\))) # (!\u_rx_price|data_out~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \u_rx_price|data_out[16]~0_combout\,
	datac => \tx_data[1]~input_o\,
	datad => \u_rx_price|data_out~1_combout\,
	combout => \u_rx_price|data_out~3_combout\);

-- Location: LCCOMB_X33_Y24_N0
\u_rx_price|data_out[25]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx_price|data_out[25]~6_combout\ = !\u_rx_price|data_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx_price|data_out~3_combout\,
	combout => \u_rx_price|data_out[25]~6_combout\);

-- Location: FF_X33_Y24_N1
\u_rx_price|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|data_out[25]~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(25));

-- Location: FF_X33_Y24_N15
\u_rx_price|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx_price|data_out~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_rx_price|data_out[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx_price|data_out\(24));

-- Location: LCCOMB_X33_Y27_N24
\fnd_of_rxd4|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd4|WideOr6~0_combout\ = ((!\u_rx_price|data_out\(25) & \u_rx_price|data_out\(24))) # (!\u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx_price|data_out\(25),
	datac => \u_rx_price|data_out\(24),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd4|WideOr6~0_combout\);

-- Location: LCCOMB_X33_Y27_N2
\fnd_of_rxd4|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd4|WideOr4~0_combout\ = ((\u_rx_price|data_out\(25) & !\u_rx_price|data_out\(24))) # (!\u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx_price|data_out\(25),
	datac => \u_rx_price|data_out\(24),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd4|WideOr4~0_combout\);

-- Location: LCCOMB_X33_Y27_N12
\fnd_of_rxd4|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd4|WideOr2~0_combout\ = (!\u_rx_price|data_out\(24) & \u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx_price|data_out\(24),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd4|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y27_N30
\fnd_of_rxd4|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd4|Decoder0~0_combout\ = (!\u_rx_price|data_out\(25) & (!\u_rx_price|data_out\(24) & \u_rx_price|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx_price|data_out\(25),
	datac => \u_rx_price|data_out\(24),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd4|Decoder0~0_combout\);

-- Location: LCCOMB_X33_Y27_N0
\fnd_of_rxd4|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_of_rxd4|WideOr0~0_combout\ = (\u_rx_price|data_out\(25) & \u_rx_price|data_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx_price|data_out\(25),
	datad => \u_rx_price|data_out\(12),
	combout => \fnd_of_rxd4|WideOr0~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\sw10~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw10,
	o => \sw10~input_o\);

ww_txd <= \txd~output_o\;

ww_fnd_rxd_top(0) <= \fnd_rxd_top[0]~output_o\;

ww_fnd_rxd_top(1) <= \fnd_rxd_top[1]~output_o\;

ww_fnd_rxd_top(2) <= \fnd_rxd_top[2]~output_o\;

ww_fnd_rxd_top(3) <= \fnd_rxd_top[3]~output_o\;

ww_fnd_rxd_top(4) <= \fnd_rxd_top[4]~output_o\;

ww_fnd_rxd_top(5) <= \fnd_rxd_top[5]~output_o\;

ww_fnd_rxd_top(6) <= \fnd_rxd_top[6]~output_o\;

ww_fnd_rxd_top(7) <= \fnd_rxd_top[7]~output_o\;

ww_fnd_rxd_top(8) <= \fnd_rxd_top[8]~output_o\;

ww_fnd_rxd_top(9) <= \fnd_rxd_top[9]~output_o\;

ww_fnd_rxd_top(10) <= \fnd_rxd_top[10]~output_o\;

ww_fnd_rxd_top(11) <= \fnd_rxd_top[11]~output_o\;

ww_fnd_rxd_top(12) <= \fnd_rxd_top[12]~output_o\;

ww_fnd_rxd_top(13) <= \fnd_rxd_top[13]~output_o\;

ww_fnd_rxd_top1(0) <= \fnd_rxd_top1[0]~output_o\;

ww_fnd_rxd_top1(1) <= \fnd_rxd_top1[1]~output_o\;

ww_fnd_rxd_top1(2) <= \fnd_rxd_top1[2]~output_o\;

ww_fnd_rxd_top1(3) <= \fnd_rxd_top1[3]~output_o\;

ww_fnd_rxd_top1(4) <= \fnd_rxd_top1[4]~output_o\;

ww_fnd_rxd_top1(5) <= \fnd_rxd_top1[5]~output_o\;

ww_fnd_rxd_top1(6) <= \fnd_rxd_top1[6]~output_o\;

ww_fnd_rxd_top1(7) <= \fnd_rxd_top1[7]~output_o\;

ww_fnd_rxd_top1(8) <= \fnd_rxd_top1[8]~output_o\;

ww_fnd_rxd_top1(9) <= \fnd_rxd_top1[9]~output_o\;

ww_fnd_rxd_top1(10) <= \fnd_rxd_top1[10]~output_o\;

ww_fnd_rxd_top1(11) <= \fnd_rxd_top1[11]~output_o\;

ww_fnd_rxd_top1(12) <= \fnd_rxd_top1[12]~output_o\;

ww_fnd_rxd_top1(13) <= \fnd_rxd_top1[13]~output_o\;
END structure;


