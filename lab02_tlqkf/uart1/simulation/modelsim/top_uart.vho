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

-- DATE "06/08/2023 19:21:35"

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
	txd : BUFFER std_logic;
	rxd : IN std_logic;
	fnd_rxd_top : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_rxd_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_rxd_2 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_rxd_3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_idle : BUFFER std_logic;
	led_blink1 : BUFFER std_logic;
	led_blink2 : BUFFER std_logic;
	led_blink3 : BUFFER std_logic;
	led_no : BUFFER std_logic
	);
END top_uart;

-- Design Ports Information
-- txd	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_top[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_1[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_2[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnd_rxd_3[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_idle	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_blink1	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_blink2	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_blink3	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_no	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rxd	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_txd : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_fnd_rxd_top : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_rxd_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_rxd_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_rxd_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_idle : std_logic;
SIGNAL ww_led_blink1 : std_logic;
SIGNAL ww_led_blink2 : std_logic;
SIGNAL ww_led_blink3 : std_logic;
SIGNAL ww_led_no : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_top[6]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_1[6]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_2[6]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[0]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[1]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[2]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[3]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[4]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[5]~output_o\ : std_logic;
SIGNAL \fnd_rxd_3[6]~output_o\ : std_logic;
SIGNAL \led_idle~output_o\ : std_logic;
SIGNAL \led_blink1~output_o\ : std_logic;
SIGNAL \led_blink2~output_o\ : std_logic;
SIGNAL \led_blink3~output_o\ : std_logic;
SIGNAL \led_no~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \TTL_tx|Selector4~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector4~1_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \TTL_tx|tx_state.WAIT~q\ : std_logic;
SIGNAL \TTL_tx|Add2~0_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~12_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~1\ : std_logic;
SIGNAL \TTL_tx|Add2~2_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~3\ : std_logic;
SIGNAL \TTL_tx|Add2~4_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~5\ : std_logic;
SIGNAL \TTL_tx|Add2~6_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~7\ : std_logic;
SIGNAL \TTL_tx|Add2~8_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~9\ : std_logic;
SIGNAL \TTL_tx|Add2~10_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~11\ : std_logic;
SIGNAL \TTL_tx|Add2~12_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~13\ : std_logic;
SIGNAL \TTL_tx|Add2~14_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~11_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~15\ : std_logic;
SIGNAL \TTL_tx|Add2~16_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~17\ : std_logic;
SIGNAL \TTL_tx|Add2~18_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~5_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~19\ : std_logic;
SIGNAL \TTL_tx|Add2~20_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~21\ : std_logic;
SIGNAL \TTL_tx|Add2~22_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~23\ : std_logic;
SIGNAL \TTL_tx|Add2~24_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~10_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~25\ : std_logic;
SIGNAL \TTL_tx|Add2~26_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~9_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~27\ : std_logic;
SIGNAL \TTL_tx|Add2~28_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~8_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~29\ : std_logic;
SIGNAL \TTL_tx|Add2~30_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~7_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~31\ : std_logic;
SIGNAL \TTL_tx|Add2~32_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~33\ : std_logic;
SIGNAL \TTL_tx|Add2~34_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~6_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~35\ : std_logic;
SIGNAL \TTL_tx|Add2~36_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~37\ : std_logic;
SIGNAL \TTL_tx|Add2~38_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~5_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~39\ : std_logic;
SIGNAL \TTL_tx|Add2~40_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~4_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~41\ : std_logic;
SIGNAL \TTL_tx|Add2~42_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~3_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~43\ : std_logic;
SIGNAL \TTL_tx|Add2~44_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~2_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~45\ : std_logic;
SIGNAL \TTL_tx|Add2~46_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~1_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~47\ : std_logic;
SIGNAL \TTL_tx|Add2~48_combout\ : std_logic;
SIGNAL \TTL_tx|Add2~49\ : std_logic;
SIGNAL \TTL_tx|Add2~50_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_cycle~0_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~0_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~3_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~2_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~1_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~4_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~6_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~7_combout\ : std_logic;
SIGNAL \TTL_tx|Equal9~8_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_blink~3_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_blink[1]~1_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_blink~2_combout\ : std_logic;
SIGNAL \TTL_tx|Add3~0_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_blink~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector0~0_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \ps_load|Selector1~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_WAIT0~q\ : std_logic;
SIGNAL \ps_load|Selector0~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_ZERO~q\ : std_logic;
SIGNAL \ps_load|Selector2~0_combout\ : std_logic;
SIGNAL \ps_load|Selector2~1_combout\ : std_logic;
SIGNAL \ps_load|state.S_ONE~q\ : std_logic;
SIGNAL \ps_load|Selector4~0_combout\ : std_logic;
SIGNAL \ps_load|Selector3~0_combout\ : std_logic;
SIGNAL \ps_load|state.S_WAIT1~q\ : std_logic;
SIGNAL \ps_load|db_level~0_combout\ : std_logic;
SIGNAL \edge_load|in_d1~q\ : std_logic;
SIGNAL \edge_load|in_d2~q\ : std_logic;
SIGNAL \TTL_tx|Selector1~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector0~1_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.IDLE~q\ : std_logic;
SIGNAL \gen_enable|Add1~0_combout\ : std_logic;
SIGNAL \gen_enable|Add1~11\ : std_logic;
SIGNAL \gen_enable|Add1~12_combout\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \gen_enable|Add1~13\ : std_logic;
SIGNAL \gen_enable|Add1~14_combout\ : std_logic;
SIGNAL \gen_enable|Add1~15\ : std_logic;
SIGNAL \gen_enable|Add1~16_combout\ : std_logic;
SIGNAL \gen_enable|Add1~17\ : std_logic;
SIGNAL \gen_enable|Add1~18_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~1_combout\ : std_logic;
SIGNAL \gen_enable|Add1~19\ : std_logic;
SIGNAL \gen_enable|Add1~20_combout\ : std_logic;
SIGNAL \gen_enable|Add1~21\ : std_logic;
SIGNAL \gen_enable|Add1~22_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal1~0_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~5_combout\ : std_logic;
SIGNAL \gen_enable|Add1~1\ : std_logic;
SIGNAL \gen_enable|Add1~2_combout\ : std_logic;
SIGNAL \gen_enable|Add1~3\ : std_logic;
SIGNAL \gen_enable|Add1~5\ : std_logic;
SIGNAL \gen_enable|Add1~6_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~3_combout\ : std_logic;
SIGNAL \gen_enable|Add1~7\ : std_logic;
SIGNAL \gen_enable|Add1~8_combout\ : std_logic;
SIGNAL \gen_enable|Add1~9\ : std_logic;
SIGNAL \gen_enable|Add1~10_combout\ : std_logic;
SIGNAL \gen_enable|cnt_1~2_combout\ : std_logic;
SIGNAL \gen_enable|Equal1~1_combout\ : std_logic;
SIGNAL \gen_enable|Add1~4_combout\ : std_logic;
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
SIGNAL \gen_enable|cnt_0~4_combout\ : std_logic;
SIGNAL \gen_enable|Add0~7\ : std_logic;
SIGNAL \gen_enable|Add0~8_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~3_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~2_combout\ : std_logic;
SIGNAL \gen_enable|Add0~9\ : std_logic;
SIGNAL \gen_enable|Add0~10_combout\ : std_logic;
SIGNAL \gen_enable|Add0~11\ : std_logic;
SIGNAL \gen_enable|Add0~12_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~2_combout\ : std_logic;
SIGNAL \gen_enable|Add0~13\ : std_logic;
SIGNAL \gen_enable|Add0~14_combout\ : std_logic;
SIGNAL \gen_enable|Add0~15\ : std_logic;
SIGNAL \gen_enable|Add0~16_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~1_combout\ : std_logic;
SIGNAL \gen_enable|Add0~17\ : std_logic;
SIGNAL \gen_enable|Add0~18_combout\ : std_logic;
SIGNAL \gen_enable|Add0~19\ : std_logic;
SIGNAL \gen_enable|Add0~20_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~1_combout\ : std_logic;
SIGNAL \gen_enable|Add0~21\ : std_logic;
SIGNAL \gen_enable|Add0~22_combout\ : std_logic;
SIGNAL \gen_enable|Add0~23\ : std_logic;
SIGNAL \gen_enable|Add0~24_combout\ : std_logic;
SIGNAL \gen_enable|cnt_0~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~0_combout\ : std_logic;
SIGNAL \gen_enable|Equal0~3_combout\ : std_logic;
SIGNAL \gen_enable|txen~combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[0]~4_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[1]~6_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[2]~2_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[2]~3_combout\ : std_logic;
SIGNAL \TTL_tx|Add0~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[3]~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[3]~5_combout\ : std_logic;
SIGNAL \TTL_tx|Equal8~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_n_cnt[1]~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector2~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~0_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector2~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector2~2_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.DATA~q\ : std_logic;
SIGNAL \TTL_tx|Selector3~2_combout\ : std_logic;
SIGNAL \TTL_tx|Selector3~3_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.STOP~q\ : std_logic;
SIGNAL \TTL_tx|cnt_4[0]~0_combout\ : std_logic;
SIGNAL \TTL_tx|Add1~0_combout\ : std_logic;
SIGNAL \TTL_tx|cnt_4[1]~1_combout\ : std_logic;
SIGNAL \TTL_tx|Add1~1_combout\ : std_logic;
SIGNAL \TTL_tx|tx_next_state~0_combout\ : std_logic;
SIGNAL \TTL_tx|tx_next_state~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~1_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~2_combout\ : std_logic;
SIGNAL \TTL_tx|Selector1~3_combout\ : std_logic;
SIGNAL \TTL_tx|tx_state.START~q\ : std_logic;
SIGNAL \TTL_tx|txd~0_combout\ : std_logic;
SIGNAL \TTL_tx|always3~0_combout\ : std_logic;
SIGNAL \TTL_tx|always3~1_combout\ : std_logic;
SIGNAL \TTL_tx|txd~1_combout\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \TTL_tx|data_8~0_combout\ : std_logic;
SIGNAL \bit8_en|WideOr0~0_combout\ : std_logic;
SIGNAL \bit8_en|bit_out~0_combout\ : std_logic;
SIGNAL \bit8_en|WideOr1~0_combout\ : std_logic;
SIGNAL \bit8_en|bit_out[18]~3_combout\ : std_logic;
SIGNAL \bit8_en|bit_out[17]~2_combout\ : std_logic;
SIGNAL \bit8_en|bit_out~4_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~33_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~32_combout\ : std_logic;
SIGNAL \TTL_tx|data_8[0]~2_combout\ : std_logic;
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
SIGNAL \bit8_en|bit_out~1_combout\ : std_logic;
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
SIGNAL \TTL_tx|data_8~6_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~5_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~4_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~3_combout\ : std_logic;
SIGNAL \TTL_tx|data_8~1_combout\ : std_logic;
SIGNAL \TTL_tx|always3~2_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~8_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~7_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[6]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[0]~1_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~6_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[5]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~5_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[4]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~4_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[3]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~3_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[2]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~2_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[1]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data~0_combout\ : std_logic;
SIGNAL \TTL_tx|shift_data[0]~feeder_combout\ : std_logic;
SIGNAL \TTL_tx|txd~2_combout\ : std_logic;
SIGNAL \TTL_tx|txd~q\ : std_logic;
SIGNAL \TTL_tx|led_idle~0_combout\ : std_logic;
SIGNAL \TTL_tx|led_idle~q\ : std_logic;
SIGNAL \TTL_tx|led_blink1~0_combout\ : std_logic;
SIGNAL \TTL_tx|led_blink1~q\ : std_logic;
SIGNAL \ps_load|cnt\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \gen_enable|cnt_0\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \gen_enable|cnt_1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \TTL_tx|tx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TTL_tx|shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \TTL_tx|data_8\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TTL_tx|cnt_cycle\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \TTL_tx|cnt_blink\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \TTL_tx|cnt_4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \TTL_tx|ALT_INV_tx_state.STOP~q\ : std_logic;
SIGNAL \TTL_tx|ALT_INV_led_idle~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_tx_data <= tx_data;
ww_load <= load;
ww_sw9 <= sw9;
txd <= ww_txd;
ww_rxd <= rxd;
fnd_rxd_top <= ww_fnd_rxd_top;
fnd_rxd_1 <= ww_fnd_rxd_1;
fnd_rxd_2 <= ww_fnd_rxd_2;
fnd_rxd_3 <= ww_fnd_rxd_3;
led_idle <= ww_led_idle;
led_blink1 <= ww_led_blink1;
led_blink2 <= ww_led_blink2;
led_blink3 <= ww_led_blink3;
led_no <= ww_led_no;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\TTL_tx|ALT_INV_tx_state.STOP~q\ <= NOT \TTL_tx|tx_state.STOP~q\;
\TTL_tx|ALT_INV_led_idle~q\ <= NOT \TTL_tx|led_idle~q\;

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

-- Location: IOOBUF_X32_Y29_N23
\fnd_rxd_top[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\fnd_rxd_top[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\fnd_rxd_top[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\fnd_rxd_top[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\fnd_rxd_top[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\fnd_rxd_top[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_top[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOOBUF_X21_Y29_N23
\fnd_rxd_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd_rxd_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd_rxd_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd_rxd_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd_rxd_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd_rxd_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd_rxd_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd_rxd_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd_rxd_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd_rxd_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd_rxd_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd_rxd_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd_rxd_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd_rxd_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\fnd_rxd_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\fnd_rxd_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\fnd_rxd_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\fnd_rxd_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\fnd_rxd_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\fnd_rxd_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\fnd_rxd_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fnd_rxd_3[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led_idle~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|led_idle~q\,
	devoe => ww_devoe,
	o => \led_idle~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led_blink1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|led_blink1~q\,
	devoe => ww_devoe,
	o => \led_blink1~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led_blink2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|led_blink1~q\,
	devoe => ww_devoe,
	o => \led_blink2~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_blink3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|led_blink1~q\,
	devoe => ww_devoe,
	o => \led_blink3~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_no~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TTL_tx|ALT_INV_led_idle~q\,
	devoe => ww_devoe,
	o => \led_no~output_o\);

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

-- Location: LCCOMB_X10_Y12_N14
\TTL_tx|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector4~0_combout\ = (\TTL_tx|cnt_4\(2) & (!\TTL_tx|cnt_4\(1) & (\TTL_tx|tx_state.STOP~q\ & !\TTL_tx|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_4\(2),
	datab => \TTL_tx|cnt_4\(1),
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|cnt_4\(0),
	combout => \TTL_tx|Selector4~0_combout\);

-- Location: LCCOMB_X11_Y9_N18
\TTL_tx|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector4~1_combout\ = (\TTL_tx|Selector4~0_combout\) # ((!\TTL_tx|Selector0~0_combout\ & \TTL_tx|tx_state.WAIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector0~0_combout\,
	datac => \TTL_tx|tx_state.WAIT~q\,
	datad => \TTL_tx|Selector4~0_combout\,
	combout => \TTL_tx|Selector4~1_combout\);

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

-- Location: FF_X11_Y9_N19
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

-- Location: LCCOMB_X21_Y10_N6
\TTL_tx|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~0_combout\ = \TTL_tx|cnt_cycle\(0) $ (VCC)
-- \TTL_tx|Add2~1\ = CARRY(\TTL_tx|cnt_cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(0),
	datad => VCC,
	combout => \TTL_tx|Add2~0_combout\,
	cout => \TTL_tx|Add2~1\);

-- Location: LCCOMB_X21_Y10_N4
\TTL_tx|cnt_cycle~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~12_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~0_combout\,
	combout => \TTL_tx|cnt_cycle~12_combout\);

-- Location: FF_X21_Y10_N5
\TTL_tx|cnt_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(0));

-- Location: LCCOMB_X21_Y10_N8
\TTL_tx|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~2_combout\ = (\TTL_tx|cnt_cycle\(1) & (!\TTL_tx|Add2~1\)) # (!\TTL_tx|cnt_cycle\(1) & ((\TTL_tx|Add2~1\) # (GND)))
-- \TTL_tx|Add2~3\ = CARRY((!\TTL_tx|Add2~1\) # (!\TTL_tx|cnt_cycle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(1),
	datad => VCC,
	cin => \TTL_tx|Add2~1\,
	combout => \TTL_tx|Add2~2_combout\,
	cout => \TTL_tx|Add2~3\);

-- Location: FF_X21_Y10_N9
\TTL_tx|cnt_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(1));

-- Location: LCCOMB_X21_Y10_N10
\TTL_tx|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~4_combout\ = (\TTL_tx|cnt_cycle\(2) & (\TTL_tx|Add2~3\ $ (GND))) # (!\TTL_tx|cnt_cycle\(2) & (!\TTL_tx|Add2~3\ & VCC))
-- \TTL_tx|Add2~5\ = CARRY((\TTL_tx|cnt_cycle\(2) & !\TTL_tx|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(2),
	datad => VCC,
	cin => \TTL_tx|Add2~3\,
	combout => \TTL_tx|Add2~4_combout\,
	cout => \TTL_tx|Add2~5\);

-- Location: FF_X21_Y10_N11
\TTL_tx|cnt_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(2));

-- Location: LCCOMB_X21_Y10_N12
\TTL_tx|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~6_combout\ = (\TTL_tx|cnt_cycle\(3) & (!\TTL_tx|Add2~5\)) # (!\TTL_tx|cnt_cycle\(3) & ((\TTL_tx|Add2~5\) # (GND)))
-- \TTL_tx|Add2~7\ = CARRY((!\TTL_tx|Add2~5\) # (!\TTL_tx|cnt_cycle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(3),
	datad => VCC,
	cin => \TTL_tx|Add2~5\,
	combout => \TTL_tx|Add2~6_combout\,
	cout => \TTL_tx|Add2~7\);

-- Location: FF_X21_Y10_N13
\TTL_tx|cnt_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(3));

-- Location: LCCOMB_X21_Y10_N14
\TTL_tx|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~8_combout\ = (\TTL_tx|cnt_cycle\(4) & (\TTL_tx|Add2~7\ $ (GND))) # (!\TTL_tx|cnt_cycle\(4) & (!\TTL_tx|Add2~7\ & VCC))
-- \TTL_tx|Add2~9\ = CARRY((\TTL_tx|cnt_cycle\(4) & !\TTL_tx|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(4),
	datad => VCC,
	cin => \TTL_tx|Add2~7\,
	combout => \TTL_tx|Add2~8_combout\,
	cout => \TTL_tx|Add2~9\);

-- Location: FF_X21_Y10_N15
\TTL_tx|cnt_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(4));

-- Location: LCCOMB_X21_Y10_N16
\TTL_tx|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~10_combout\ = (\TTL_tx|cnt_cycle\(5) & (!\TTL_tx|Add2~9\)) # (!\TTL_tx|cnt_cycle\(5) & ((\TTL_tx|Add2~9\) # (GND)))
-- \TTL_tx|Add2~11\ = CARRY((!\TTL_tx|Add2~9\) # (!\TTL_tx|cnt_cycle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(5),
	datad => VCC,
	cin => \TTL_tx|Add2~9\,
	combout => \TTL_tx|Add2~10_combout\,
	cout => \TTL_tx|Add2~11\);

-- Location: FF_X21_Y10_N17
\TTL_tx|cnt_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(5));

-- Location: LCCOMB_X21_Y10_N18
\TTL_tx|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~12_combout\ = (\TTL_tx|cnt_cycle\(6) & (\TTL_tx|Add2~11\ $ (GND))) # (!\TTL_tx|cnt_cycle\(6) & (!\TTL_tx|Add2~11\ & VCC))
-- \TTL_tx|Add2~13\ = CARRY((\TTL_tx|cnt_cycle\(6) & !\TTL_tx|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(6),
	datad => VCC,
	cin => \TTL_tx|Add2~11\,
	combout => \TTL_tx|Add2~12_combout\,
	cout => \TTL_tx|Add2~13\);

-- Location: FF_X21_Y10_N19
\TTL_tx|cnt_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(6));

-- Location: LCCOMB_X21_Y10_N20
\TTL_tx|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~14_combout\ = (\TTL_tx|cnt_cycle\(7) & (!\TTL_tx|Add2~13\)) # (!\TTL_tx|cnt_cycle\(7) & ((\TTL_tx|Add2~13\) # (GND)))
-- \TTL_tx|Add2~15\ = CARRY((!\TTL_tx|Add2~13\) # (!\TTL_tx|cnt_cycle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(7),
	datad => VCC,
	cin => \TTL_tx|Add2~13\,
	combout => \TTL_tx|Add2~14_combout\,
	cout => \TTL_tx|Add2~15\);

-- Location: LCCOMB_X20_Y9_N4
\TTL_tx|cnt_cycle~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~11_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~14_combout\,
	combout => \TTL_tx|cnt_cycle~11_combout\);

-- Location: FF_X20_Y9_N5
\TTL_tx|cnt_cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(7));

-- Location: LCCOMB_X21_Y10_N22
\TTL_tx|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~16_combout\ = (\TTL_tx|cnt_cycle\(8) & (\TTL_tx|Add2~15\ $ (GND))) # (!\TTL_tx|cnt_cycle\(8) & (!\TTL_tx|Add2~15\ & VCC))
-- \TTL_tx|Add2~17\ = CARRY((\TTL_tx|cnt_cycle\(8) & !\TTL_tx|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(8),
	datad => VCC,
	cin => \TTL_tx|Add2~15\,
	combout => \TTL_tx|Add2~16_combout\,
	cout => \TTL_tx|Add2~17\);

-- Location: FF_X21_Y10_N23
\TTL_tx|cnt_cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(8));

-- Location: LCCOMB_X21_Y10_N24
\TTL_tx|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~18_combout\ = (\TTL_tx|cnt_cycle\(9) & (!\TTL_tx|Add2~17\)) # (!\TTL_tx|cnt_cycle\(9) & ((\TTL_tx|Add2~17\) # (GND)))
-- \TTL_tx|Add2~19\ = CARRY((!\TTL_tx|Add2~17\) # (!\TTL_tx|cnt_cycle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(9),
	datad => VCC,
	cin => \TTL_tx|Add2~17\,
	combout => \TTL_tx|Add2~18_combout\,
	cout => \TTL_tx|Add2~19\);

-- Location: FF_X21_Y10_N25
\TTL_tx|cnt_cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(9));

-- Location: LCCOMB_X21_Y10_N0
\TTL_tx|Equal9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~5_combout\ = (\TTL_tx|cnt_cycle\(7) & (!\TTL_tx|cnt_cycle\(9) & (!\TTL_tx|cnt_cycle\(8) & !\TTL_tx|cnt_cycle\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(7),
	datab => \TTL_tx|cnt_cycle\(9),
	datac => \TTL_tx|cnt_cycle\(8),
	datad => \TTL_tx|cnt_cycle\(6),
	combout => \TTL_tx|Equal9~5_combout\);

-- Location: LCCOMB_X21_Y10_N26
\TTL_tx|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~20_combout\ = (\TTL_tx|cnt_cycle\(10) & (\TTL_tx|Add2~19\ $ (GND))) # (!\TTL_tx|cnt_cycle\(10) & (!\TTL_tx|Add2~19\ & VCC))
-- \TTL_tx|Add2~21\ = CARRY((\TTL_tx|cnt_cycle\(10) & !\TTL_tx|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(10),
	datad => VCC,
	cin => \TTL_tx|Add2~19\,
	combout => \TTL_tx|Add2~20_combout\,
	cout => \TTL_tx|Add2~21\);

-- Location: FF_X21_Y10_N27
\TTL_tx|cnt_cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(10));

-- Location: LCCOMB_X21_Y10_N28
\TTL_tx|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~22_combout\ = (\TTL_tx|cnt_cycle\(11) & (!\TTL_tx|Add2~21\)) # (!\TTL_tx|cnt_cycle\(11) & ((\TTL_tx|Add2~21\) # (GND)))
-- \TTL_tx|Add2~23\ = CARRY((!\TTL_tx|Add2~21\) # (!\TTL_tx|cnt_cycle\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(11),
	datad => VCC,
	cin => \TTL_tx|Add2~21\,
	combout => \TTL_tx|Add2~22_combout\,
	cout => \TTL_tx|Add2~23\);

-- Location: FF_X21_Y10_N29
\TTL_tx|cnt_cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(11));

-- Location: LCCOMB_X21_Y10_N30
\TTL_tx|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~24_combout\ = (\TTL_tx|cnt_cycle\(12) & (\TTL_tx|Add2~23\ $ (GND))) # (!\TTL_tx|cnt_cycle\(12) & (!\TTL_tx|Add2~23\ & VCC))
-- \TTL_tx|Add2~25\ = CARRY((\TTL_tx|cnt_cycle\(12) & !\TTL_tx|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(12),
	datad => VCC,
	cin => \TTL_tx|Add2~23\,
	combout => \TTL_tx|Add2~24_combout\,
	cout => \TTL_tx|Add2~25\);

-- Location: LCCOMB_X20_Y9_N6
\TTL_tx|cnt_cycle~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~10_combout\ = (\TTL_tx|Add2~24_combout\ & !\TTL_tx|Equal9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Add2~24_combout\,
	datac => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_cycle~10_combout\);

-- Location: FF_X20_Y9_N7
\TTL_tx|cnt_cycle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(12));

-- Location: LCCOMB_X21_Y9_N0
\TTL_tx|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~26_combout\ = (\TTL_tx|cnt_cycle\(13) & (!\TTL_tx|Add2~25\)) # (!\TTL_tx|cnt_cycle\(13) & ((\TTL_tx|Add2~25\) # (GND)))
-- \TTL_tx|Add2~27\ = CARRY((!\TTL_tx|Add2~25\) # (!\TTL_tx|cnt_cycle\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(13),
	datad => VCC,
	cin => \TTL_tx|Add2~25\,
	combout => \TTL_tx|Add2~26_combout\,
	cout => \TTL_tx|Add2~27\);

-- Location: LCCOMB_X20_Y9_N12
\TTL_tx|cnt_cycle~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~9_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~8_combout\,
	datac => \TTL_tx|Add2~26_combout\,
	combout => \TTL_tx|cnt_cycle~9_combout\);

-- Location: FF_X20_Y9_N13
\TTL_tx|cnt_cycle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(13));

-- Location: LCCOMB_X21_Y9_N2
\TTL_tx|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~28_combout\ = (\TTL_tx|cnt_cycle\(14) & (\TTL_tx|Add2~27\ $ (GND))) # (!\TTL_tx|cnt_cycle\(14) & (!\TTL_tx|Add2~27\ & VCC))
-- \TTL_tx|Add2~29\ = CARRY((\TTL_tx|cnt_cycle\(14) & !\TTL_tx|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(14),
	datad => VCC,
	cin => \TTL_tx|Add2~27\,
	combout => \TTL_tx|Add2~28_combout\,
	cout => \TTL_tx|Add2~29\);

-- Location: LCCOMB_X20_Y9_N0
\TTL_tx|cnt_cycle~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~8_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~28_combout\,
	combout => \TTL_tx|cnt_cycle~8_combout\);

-- Location: FF_X20_Y9_N1
\TTL_tx|cnt_cycle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(14));

-- Location: LCCOMB_X21_Y9_N4
\TTL_tx|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~30_combout\ = (\TTL_tx|cnt_cycle\(15) & (!\TTL_tx|Add2~29\)) # (!\TTL_tx|cnt_cycle\(15) & ((\TTL_tx|Add2~29\) # (GND)))
-- \TTL_tx|Add2~31\ = CARRY((!\TTL_tx|Add2~29\) # (!\TTL_tx|cnt_cycle\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(15),
	datad => VCC,
	cin => \TTL_tx|Add2~29\,
	combout => \TTL_tx|Add2~30_combout\,
	cout => \TTL_tx|Add2~31\);

-- Location: LCCOMB_X20_Y9_N22
\TTL_tx|cnt_cycle~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~7_combout\ = (\TTL_tx|Add2~30_combout\ & !\TTL_tx|Equal9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Add2~30_combout\,
	datac => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_cycle~7_combout\);

-- Location: FF_X20_Y9_N23
\TTL_tx|cnt_cycle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(15));

-- Location: LCCOMB_X21_Y9_N6
\TTL_tx|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~32_combout\ = (\TTL_tx|cnt_cycle\(16) & (\TTL_tx|Add2~31\ $ (GND))) # (!\TTL_tx|cnt_cycle\(16) & (!\TTL_tx|Add2~31\ & VCC))
-- \TTL_tx|Add2~33\ = CARRY((\TTL_tx|cnt_cycle\(16) & !\TTL_tx|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(16),
	datad => VCC,
	cin => \TTL_tx|Add2~31\,
	combout => \TTL_tx|Add2~32_combout\,
	cout => \TTL_tx|Add2~33\);

-- Location: FF_X21_Y9_N7
\TTL_tx|cnt_cycle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(16));

-- Location: LCCOMB_X21_Y9_N8
\TTL_tx|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~34_combout\ = (\TTL_tx|cnt_cycle\(17) & (!\TTL_tx|Add2~33\)) # (!\TTL_tx|cnt_cycle\(17) & ((\TTL_tx|Add2~33\) # (GND)))
-- \TTL_tx|Add2~35\ = CARRY((!\TTL_tx|Add2~33\) # (!\TTL_tx|cnt_cycle\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(17),
	datad => VCC,
	cin => \TTL_tx|Add2~33\,
	combout => \TTL_tx|Add2~34_combout\,
	cout => \TTL_tx|Add2~35\);

-- Location: LCCOMB_X20_Y9_N20
\TTL_tx|cnt_cycle~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~6_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~8_combout\,
	datac => \TTL_tx|Add2~34_combout\,
	combout => \TTL_tx|cnt_cycle~6_combout\);

-- Location: FF_X20_Y9_N21
\TTL_tx|cnt_cycle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(17));

-- Location: LCCOMB_X21_Y9_N10
\TTL_tx|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~36_combout\ = (\TTL_tx|cnt_cycle\(18) & (\TTL_tx|Add2~35\ $ (GND))) # (!\TTL_tx|cnt_cycle\(18) & (!\TTL_tx|Add2~35\ & VCC))
-- \TTL_tx|Add2~37\ = CARRY((\TTL_tx|cnt_cycle\(18) & !\TTL_tx|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(18),
	datad => VCC,
	cin => \TTL_tx|Add2~35\,
	combout => \TTL_tx|Add2~36_combout\,
	cout => \TTL_tx|Add2~37\);

-- Location: FF_X21_Y9_N11
\TTL_tx|cnt_cycle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~36_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(18));

-- Location: LCCOMB_X21_Y9_N12
\TTL_tx|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~38_combout\ = (\TTL_tx|cnt_cycle\(19) & (!\TTL_tx|Add2~37\)) # (!\TTL_tx|cnt_cycle\(19) & ((\TTL_tx|Add2~37\) # (GND)))
-- \TTL_tx|Add2~39\ = CARRY((!\TTL_tx|Add2~37\) # (!\TTL_tx|cnt_cycle\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(19),
	datad => VCC,
	cin => \TTL_tx|Add2~37\,
	combout => \TTL_tx|Add2~38_combout\,
	cout => \TTL_tx|Add2~39\);

-- Location: LCCOMB_X20_Y9_N24
\TTL_tx|cnt_cycle~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~5_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~8_combout\,
	datac => \TTL_tx|Add2~38_combout\,
	combout => \TTL_tx|cnt_cycle~5_combout\);

-- Location: FF_X20_Y9_N25
\TTL_tx|cnt_cycle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(19));

-- Location: LCCOMB_X21_Y9_N14
\TTL_tx|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~40_combout\ = (\TTL_tx|cnt_cycle\(20) & (\TTL_tx|Add2~39\ $ (GND))) # (!\TTL_tx|cnt_cycle\(20) & (!\TTL_tx|Add2~39\ & VCC))
-- \TTL_tx|Add2~41\ = CARRY((\TTL_tx|cnt_cycle\(20) & !\TTL_tx|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(20),
	datad => VCC,
	cin => \TTL_tx|Add2~39\,
	combout => \TTL_tx|Add2~40_combout\,
	cout => \TTL_tx|Add2~41\);

-- Location: LCCOMB_X20_Y9_N14
\TTL_tx|cnt_cycle~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~4_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~8_combout\,
	datac => \TTL_tx|Add2~40_combout\,
	combout => \TTL_tx|cnt_cycle~4_combout\);

-- Location: FF_X20_Y9_N15
\TTL_tx|cnt_cycle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(20));

-- Location: LCCOMB_X21_Y9_N16
\TTL_tx|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~42_combout\ = (\TTL_tx|cnt_cycle\(21) & (!\TTL_tx|Add2~41\)) # (!\TTL_tx|cnt_cycle\(21) & ((\TTL_tx|Add2~41\) # (GND)))
-- \TTL_tx|Add2~43\ = CARRY((!\TTL_tx|Add2~41\) # (!\TTL_tx|cnt_cycle\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(21),
	datad => VCC,
	cin => \TTL_tx|Add2~41\,
	combout => \TTL_tx|Add2~42_combout\,
	cout => \TTL_tx|Add2~43\);

-- Location: LCCOMB_X20_Y9_N28
\TTL_tx|cnt_cycle~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~3_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~42_combout\,
	combout => \TTL_tx|cnt_cycle~3_combout\);

-- Location: FF_X20_Y9_N29
\TTL_tx|cnt_cycle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(21));

-- Location: LCCOMB_X21_Y9_N18
\TTL_tx|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~44_combout\ = (\TTL_tx|cnt_cycle\(22) & (\TTL_tx|Add2~43\ $ (GND))) # (!\TTL_tx|cnt_cycle\(22) & (!\TTL_tx|Add2~43\ & VCC))
-- \TTL_tx|Add2~45\ = CARRY((\TTL_tx|cnt_cycle\(22) & !\TTL_tx|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(22),
	datad => VCC,
	cin => \TTL_tx|Add2~43\,
	combout => \TTL_tx|Add2~44_combout\,
	cout => \TTL_tx|Add2~45\);

-- Location: LCCOMB_X20_Y9_N10
\TTL_tx|cnt_cycle~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~2_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~44_combout\,
	combout => \TTL_tx|cnt_cycle~2_combout\);

-- Location: FF_X20_Y9_N11
\TTL_tx|cnt_cycle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(22));

-- Location: LCCOMB_X21_Y9_N20
\TTL_tx|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~46_combout\ = (\TTL_tx|cnt_cycle\(23) & (!\TTL_tx|Add2~45\)) # (!\TTL_tx|cnt_cycle\(23) & ((\TTL_tx|Add2~45\) # (GND)))
-- \TTL_tx|Add2~47\ = CARRY((!\TTL_tx|Add2~45\) # (!\TTL_tx|cnt_cycle\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_cycle\(23),
	datad => VCC,
	cin => \TTL_tx|Add2~45\,
	combout => \TTL_tx|Add2~46_combout\,
	cout => \TTL_tx|Add2~47\);

-- Location: LCCOMB_X21_Y9_N28
\TTL_tx|cnt_cycle~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~1_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~46_combout\,
	combout => \TTL_tx|cnt_cycle~1_combout\);

-- Location: FF_X21_Y9_N29
\TTL_tx|cnt_cycle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(23));

-- Location: LCCOMB_X21_Y9_N22
\TTL_tx|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~48_combout\ = (\TTL_tx|cnt_cycle\(24) & (\TTL_tx|Add2~47\ $ (GND))) # (!\TTL_tx|cnt_cycle\(24) & (!\TTL_tx|Add2~47\ & VCC))
-- \TTL_tx|Add2~49\ = CARRY((\TTL_tx|cnt_cycle\(24) & !\TTL_tx|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(24),
	datad => VCC,
	cin => \TTL_tx|Add2~47\,
	combout => \TTL_tx|Add2~48_combout\,
	cout => \TTL_tx|Add2~49\);

-- Location: FF_X21_Y9_N23
\TTL_tx|cnt_cycle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Add2~48_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(24));

-- Location: LCCOMB_X21_Y9_N24
\TTL_tx|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add2~50_combout\ = \TTL_tx|cnt_cycle\(25) $ (\TTL_tx|Add2~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(25),
	cin => \TTL_tx|Add2~49\,
	combout => \TTL_tx|Add2~50_combout\);

-- Location: LCCOMB_X21_Y9_N26
\TTL_tx|cnt_cycle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_cycle~0_combout\ = (!\TTL_tx|Equal9~8_combout\ & \TTL_tx|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Equal9~8_combout\,
	datad => \TTL_tx|Add2~50_combout\,
	combout => \TTL_tx|cnt_cycle~0_combout\);

-- Location: FF_X21_Y9_N27
\TTL_tx|cnt_cycle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_cycle~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|tx_state.WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_cycle\(25));

-- Location: LCCOMB_X21_Y9_N30
\TTL_tx|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~0_combout\ = (\TTL_tx|cnt_cycle\(25) & (\TTL_tx|cnt_cycle\(23) & (!\TTL_tx|cnt_cycle\(24) & \TTL_tx|cnt_cycle\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(25),
	datab => \TTL_tx|cnt_cycle\(23),
	datac => \TTL_tx|cnt_cycle\(24),
	datad => \TTL_tx|cnt_cycle\(22),
	combout => \TTL_tx|Equal9~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\TTL_tx|Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~3_combout\ = (\TTL_tx|cnt_cycle\(12) & (!\TTL_tx|cnt_cycle\(10) & (!\TTL_tx|cnt_cycle\(11) & \TTL_tx|cnt_cycle\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(12),
	datab => \TTL_tx|cnt_cycle\(10),
	datac => \TTL_tx|cnt_cycle\(11),
	datad => \TTL_tx|cnt_cycle\(13),
	combout => \TTL_tx|Equal9~3_combout\);

-- Location: LCCOMB_X20_Y9_N26
\TTL_tx|Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~2_combout\ = (!\TTL_tx|cnt_cycle\(16) & (\TTL_tx|cnt_cycle\(17) & (\TTL_tx|cnt_cycle\(15) & \TTL_tx|cnt_cycle\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(16),
	datab => \TTL_tx|cnt_cycle\(17),
	datac => \TTL_tx|cnt_cycle\(15),
	datad => \TTL_tx|cnt_cycle\(14),
	combout => \TTL_tx|Equal9~2_combout\);

-- Location: LCCOMB_X20_Y9_N18
\TTL_tx|Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~1_combout\ = (\TTL_tx|cnt_cycle\(19) & (\TTL_tx|cnt_cycle\(20) & (!\TTL_tx|cnt_cycle\(18) & \TTL_tx|cnt_cycle\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(19),
	datab => \TTL_tx|cnt_cycle\(20),
	datac => \TTL_tx|cnt_cycle\(18),
	datad => \TTL_tx|cnt_cycle\(21),
	combout => \TTL_tx|Equal9~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\TTL_tx|Equal9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~4_combout\ = (\TTL_tx|Equal9~0_combout\ & (\TTL_tx|Equal9~3_combout\ & (\TTL_tx|Equal9~2_combout\ & \TTL_tx|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~0_combout\,
	datab => \TTL_tx|Equal9~3_combout\,
	datac => \TTL_tx|Equal9~2_combout\,
	datad => \TTL_tx|Equal9~1_combout\,
	combout => \TTL_tx|Equal9~4_combout\);

-- Location: LCCOMB_X21_Y10_N2
\TTL_tx|Equal9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~6_combout\ = (!\TTL_tx|cnt_cycle\(3) & (!\TTL_tx|cnt_cycle\(5) & (!\TTL_tx|cnt_cycle\(4) & !\TTL_tx|cnt_cycle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_cycle\(3),
	datab => \TTL_tx|cnt_cycle\(5),
	datac => \TTL_tx|cnt_cycle\(4),
	datad => \TTL_tx|cnt_cycle\(2),
	combout => \TTL_tx|Equal9~6_combout\);

-- Location: LCCOMB_X12_Y10_N0
\TTL_tx|Equal9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~7_combout\ = (!\TTL_tx|cnt_cycle\(1) & !\TTL_tx|cnt_cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|cnt_cycle\(1),
	datad => \TTL_tx|cnt_cycle\(0),
	combout => \TTL_tx|Equal9~7_combout\);

-- Location: LCCOMB_X20_Y9_N30
\TTL_tx|Equal9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal9~8_combout\ = (\TTL_tx|Equal9~5_combout\ & (\TTL_tx|Equal9~4_combout\ & (\TTL_tx|Equal9~6_combout\ & \TTL_tx|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Equal9~5_combout\,
	datab => \TTL_tx|Equal9~4_combout\,
	datac => \TTL_tx|Equal9~6_combout\,
	datad => \TTL_tx|Equal9~7_combout\,
	combout => \TTL_tx|Equal9~8_combout\);

-- Location: LCCOMB_X11_Y9_N16
\TTL_tx|cnt_blink~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_blink~3_combout\ = (\TTL_tx|tx_state.WAIT~q\ & (!\TTL_tx|cnt_blink\(0) & \TTL_tx|Equal9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.WAIT~q\,
	datac => \TTL_tx|cnt_blink\(0),
	datad => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_blink~3_combout\);

-- Location: LCCOMB_X11_Y9_N22
\TTL_tx|cnt_blink[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_blink[1]~1_combout\ = ((\TTL_tx|tx_state.WAIT~q\ & \TTL_tx|Equal9~8_combout\)) # (!\TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.WAIT~q\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_blink[1]~1_combout\);

-- Location: FF_X11_Y9_N17
\TTL_tx|cnt_blink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_blink~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|cnt_blink[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_blink\(0));

-- Location: LCCOMB_X11_Y9_N14
\TTL_tx|cnt_blink~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_blink~2_combout\ = (\TTL_tx|tx_state.WAIT~q\ & (\TTL_tx|Equal9~8_combout\ & (\TTL_tx|cnt_blink\(0) $ (\TTL_tx|cnt_blink\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_blink\(0),
	datab => \TTL_tx|tx_state.WAIT~q\,
	datac => \TTL_tx|cnt_blink\(1),
	datad => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_blink~2_combout\);

-- Location: FF_X11_Y9_N15
\TTL_tx|cnt_blink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_blink~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|cnt_blink[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_blink\(1));

-- Location: LCCOMB_X11_Y9_N28
\TTL_tx|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add3~0_combout\ = \TTL_tx|cnt_blink\(2) $ (((\TTL_tx|cnt_blink\(0) & \TTL_tx|cnt_blink\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_blink\(0),
	datac => \TTL_tx|cnt_blink\(1),
	datad => \TTL_tx|cnt_blink\(2),
	combout => \TTL_tx|Add3~0_combout\);

-- Location: LCCOMB_X11_Y9_N20
\TTL_tx|cnt_blink~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_blink~0_combout\ = (\TTL_tx|Add3~0_combout\ & (\TTL_tx|tx_state.WAIT~q\ & \TTL_tx|Equal9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|Add3~0_combout\,
	datac => \TTL_tx|tx_state.WAIT~q\,
	datad => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|cnt_blink~0_combout\);

-- Location: FF_X11_Y9_N21
\TTL_tx|cnt_blink[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|cnt_blink~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \TTL_tx|cnt_blink[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_blink\(2));

-- Location: LCCOMB_X11_Y9_N26
\TTL_tx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector0~0_combout\ = (!\TTL_tx|cnt_blink\(0) & (\TTL_tx|cnt_blink\(1) & \TTL_tx|cnt_blink\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_blink\(0),
	datac => \TTL_tx|cnt_blink\(1),
	datad => \TTL_tx|cnt_blink\(2),
	combout => \TTL_tx|Selector0~0_combout\);

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

-- Location: LCCOMB_X2_Y20_N0
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

-- Location: FF_X2_Y20_N1
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

-- Location: LCCOMB_X2_Y20_N20
\ps_load|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector0~0_combout\ = (!\load~input_o\ & (((!\ps_load|Selector4~0_combout\ & \ps_load|state.S_WAIT0~q\)) # (!\ps_load|db_level~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|Selector4~0_combout\,
	datab => \load~input_o\,
	datac => \ps_load|db_level~0_combout\,
	datad => \ps_load|state.S_WAIT0~q\,
	combout => \ps_load|Selector0~0_combout\);

-- Location: FF_X2_Y20_N21
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

-- Location: LCCOMB_X2_Y20_N30
\ps_load|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector2~0_combout\ = (\ps_load|state.S_ONE~q\ & (\ps_load|cnt\(0) & (\ps_load|state.S_WAIT1~q\ & !\ps_load|state.S_ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|state.S_ONE~q\,
	datab => \ps_load|cnt\(0),
	datac => \ps_load|state.S_WAIT1~q\,
	datad => \ps_load|state.S_ZERO~q\,
	combout => \ps_load|Selector2~0_combout\);

-- Location: LCCOMB_X2_Y20_N28
\ps_load|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector2~1_combout\ = ((!\ps_load|Selector2~0_combout\ & (\ps_load|state.S_ONE~q\ & !\ps_load|state.S_WAIT0~q\))) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|Selector2~0_combout\,
	datab => \load~input_o\,
	datac => \ps_load|state.S_ONE~q\,
	datad => \ps_load|state.S_WAIT0~q\,
	combout => \ps_load|Selector2~1_combout\);

-- Location: FF_X2_Y20_N29
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

-- Location: LCCOMB_X2_Y20_N10
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

-- Location: FF_X2_Y20_N11
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

-- Location: LCCOMB_X2_Y20_N22
\ps_load|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|Selector3~0_combout\ = (\load~input_o\ & ((\ps_load|state.S_ZERO~q\) # ((!\ps_load|cnt\(0) & \ps_load|state.S_WAIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps_load|cnt\(0),
	datab => \load~input_o\,
	datac => \ps_load|state.S_WAIT1~q\,
	datad => \ps_load|state.S_ZERO~q\,
	combout => \ps_load|Selector3~0_combout\);

-- Location: FF_X2_Y20_N23
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

-- Location: LCCOMB_X2_Y20_N26
\ps_load|db_level~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps_load|db_level~0_combout\ = (!\ps_load|state.S_WAIT1~q\ & !\ps_load|state.S_ZERO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps_load|state.S_WAIT1~q\,
	datad => \ps_load|state.S_ZERO~q\,
	combout => \ps_load|db_level~0_combout\);

-- Location: FF_X2_Y20_N27
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

-- Location: FF_X2_Y20_N25
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

-- Location: LCCOMB_X2_Y20_N24
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

-- Location: LCCOMB_X11_Y9_N4
\TTL_tx|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector0~1_combout\ = (\TTL_tx|Selector0~0_combout\ & (!\TTL_tx|tx_state.WAIT~q\ & ((\TTL_tx|Selector1~0_combout\) # (\TTL_tx|tx_state.IDLE~q\)))) # (!\TTL_tx|Selector0~0_combout\ & ((\TTL_tx|Selector1~0_combout\) # ((\TTL_tx|tx_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector0~0_combout\,
	datab => \TTL_tx|Selector1~0_combout\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|tx_state.WAIT~q\,
	combout => \TTL_tx|Selector0~1_combout\);

-- Location: FF_X11_Y9_N5
\TTL_tx|tx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|Selector0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|tx_state.IDLE~q\);

-- Location: LCCOMB_X30_Y27_N8
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

-- Location: LCCOMB_X30_Y27_N18
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

-- Location: LCCOMB_X30_Y27_N20
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

-- Location: FF_X30_Y27_N21
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

-- Location: LCCOMB_X30_Y27_N22
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

-- Location: FF_X30_Y27_N23
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

-- Location: LCCOMB_X30_Y27_N24
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

-- Location: FF_X30_Y27_N25
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

-- Location: LCCOMB_X30_Y27_N26
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

-- Location: LCCOMB_X30_Y27_N2
\gen_enable|cnt_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~1_combout\ = (\gen_enable|Add1~18_combout\ & (((!\gen_enable|Equal1~1_combout\) # (!\gen_enable|Equal1~0_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~0_combout\,
	datac => \gen_enable|Add1~18_combout\,
	datad => \gen_enable|Equal1~1_combout\,
	combout => \gen_enable|cnt_1~1_combout\);

-- Location: FF_X30_Y27_N3
\gen_enable|cnt_1[9]\ : dffeas
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
	q => \gen_enable|cnt_1\(9));

-- Location: LCCOMB_X30_Y27_N28
\gen_enable|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~20_combout\ = (\gen_enable|cnt_1\(10) & (\gen_enable|Add1~19\ $ (GND))) # (!\gen_enable|cnt_1\(10) & (!\gen_enable|Add1~19\ & VCC))
-- \gen_enable|Add1~21\ = CARRY((\gen_enable|cnt_1\(10) & !\gen_enable|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(10),
	datad => VCC,
	cin => \gen_enable|Add1~19\,
	combout => \gen_enable|Add1~20_combout\,
	cout => \gen_enable|Add1~21\);

-- Location: FF_X30_Y27_N29
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

-- Location: LCCOMB_X30_Y27_N30
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

-- Location: LCCOMB_X30_Y27_N0
\gen_enable|cnt_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~0_combout\ = (\gen_enable|Add1~22_combout\ & (((!\gen_enable|Equal1~1_combout\) # (!\gen_enable|Equal1~0_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~0_combout\,
	datac => \gen_enable|Add1~22_combout\,
	datad => \gen_enable|Equal1~1_combout\,
	combout => \gen_enable|cnt_1~0_combout\);

-- Location: FF_X30_Y27_N1
\gen_enable|cnt_1[11]\ : dffeas
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
	q => \gen_enable|cnt_1\(11));

-- Location: LCCOMB_X30_Y27_N4
\gen_enable|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~0_combout\ = (!\gen_enable|cnt_1\(8) & (\gen_enable|cnt_1\(9) & (!\gen_enable|cnt_1\(10) & \gen_enable|cnt_1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(8),
	datab => \gen_enable|cnt_1\(9),
	datac => \gen_enable|cnt_1\(10),
	datad => \gen_enable|cnt_1\(11),
	combout => \gen_enable|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y27_N28
\gen_enable|cnt_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~5_combout\ = (\gen_enable|Add1~0_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

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
	combout => \gen_enable|cnt_1~5_combout\);

-- Location: FF_X28_Y27_N29
\gen_enable|cnt_1[0]\ : dffeas
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
	q => \gen_enable|cnt_1\(0));

-- Location: LCCOMB_X30_Y27_N10
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

-- Location: FF_X30_Y27_N11
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

-- Location: LCCOMB_X30_Y27_N12
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

-- Location: LCCOMB_X30_Y27_N14
\gen_enable|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add1~6_combout\ = (\gen_enable|cnt_1\(3) & (!\gen_enable|Add1~5\)) # (!\gen_enable|cnt_1\(3) & ((\gen_enable|Add1~5\) # (GND)))
-- \gen_enable|Add1~7\ = CARRY((!\gen_enable|Add1~5\) # (!\gen_enable|cnt_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(3),
	datad => VCC,
	cin => \gen_enable|Add1~5\,
	combout => \gen_enable|Add1~6_combout\,
	cout => \gen_enable|Add1~7\);

-- Location: LCCOMB_X28_Y27_N0
\gen_enable|cnt_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~3_combout\ = (\gen_enable|Add1~6_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal1~1_combout\,
	datac => \gen_enable|Add1~6_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|cnt_1~3_combout\);

-- Location: FF_X28_Y27_N1
\gen_enable|cnt_1[3]\ : dffeas
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
	q => \gen_enable|cnt_1\(3));

-- Location: LCCOMB_X30_Y27_N16
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

-- Location: FF_X30_Y27_N17
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

-- Location: LCCOMB_X28_Y27_N14
\gen_enable|cnt_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~2_combout\ = (\gen_enable|Add1~10_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

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
	combout => \gen_enable|cnt_1~2_combout\);

-- Location: FF_X28_Y27_N15
\gen_enable|cnt_1[5]\ : dffeas
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
	q => \gen_enable|cnt_1\(5));

-- Location: LCCOMB_X30_Y27_N6
\gen_enable|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~1_combout\ = (\gen_enable|cnt_1\(5) & (!\gen_enable|cnt_1\(6) & (!\gen_enable|cnt_1\(7) & !\gen_enable|cnt_1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(5),
	datab => \gen_enable|cnt_1\(6),
	datac => \gen_enable|cnt_1\(7),
	datad => \gen_enable|cnt_1\(4),
	combout => \gen_enable|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y27_N10
\gen_enable|cnt_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_1~4_combout\ = (\gen_enable|Add1~4_combout\ & (((!\gen_enable|Equal1~0_combout\) # (!\gen_enable|Equal1~1_combout\)) # (!\gen_enable|Equal1~2_combout\)))

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
	combout => \gen_enable|cnt_1~4_combout\);

-- Location: FF_X28_Y27_N11
\gen_enable|cnt_1[2]\ : dffeas
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
	q => \gen_enable|cnt_1\(2));

-- Location: LCCOMB_X28_Y27_N6
\gen_enable|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal1~2_combout\ = (\gen_enable|cnt_1\(2) & (\gen_enable|cnt_1\(3) & (!\gen_enable|cnt_1\(1) & !\gen_enable|cnt_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_1\(2),
	datab => \gen_enable|cnt_1\(3),
	datac => \gen_enable|cnt_1\(1),
	datad => \gen_enable|cnt_1\(0),
	combout => \gen_enable|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y28_N4
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

-- Location: LCCOMB_X31_Y28_N30
\gen_enable|cnt_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~5_combout\ = (\gen_enable|Add0~0_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|Add0~0_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~5_combout\);

-- Location: FF_X31_Y28_N31
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

-- Location: LCCOMB_X31_Y28_N6
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

-- Location: FF_X31_Y28_N7
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

-- Location: LCCOMB_X31_Y28_N8
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

-- Location: FF_X31_Y28_N9
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

-- Location: LCCOMB_X31_Y28_N10
\gen_enable|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Add0~6_combout\ = (\gen_enable|cnt_0\(3) & (!\gen_enable|Add0~5\)) # (!\gen_enable|cnt_0\(3) & ((\gen_enable|Add0~5\) # (GND)))
-- \gen_enable|Add0~7\ = CARRY((!\gen_enable|Add0~5\) # (!\gen_enable|cnt_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(3),
	datad => VCC,
	cin => \gen_enable|Add0~5\,
	combout => \gen_enable|Add0~6_combout\,
	cout => \gen_enable|Add0~7\);

-- Location: LCCOMB_X28_Y27_N24
\gen_enable|cnt_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~4_combout\ = (\gen_enable|Add0~6_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Add0~6_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~4_combout\);

-- Location: FF_X28_Y27_N25
\gen_enable|cnt_0[3]\ : dffeas
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
	q => \gen_enable|cnt_0\(3));

-- Location: LCCOMB_X31_Y28_N12
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

-- Location: LCCOMB_X28_Y27_N22
\gen_enable|cnt_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~3_combout\ = (\gen_enable|Add0~8_combout\ & !\gen_enable|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|Add0~8_combout\,
	datad => \gen_enable|Equal0~3_combout\,
	combout => \gen_enable|cnt_0~3_combout\);

-- Location: FF_X28_Y27_N23
\gen_enable|cnt_0[4]\ : dffeas
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
	q => \gen_enable|cnt_0\(4));

-- Location: LCCOMB_X28_Y27_N26
\gen_enable|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~2_combout\ = (!\gen_enable|cnt_0\(2) & (\gen_enable|cnt_0\(3) & (\gen_enable|cnt_0\(4) & !\gen_enable|cnt_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(2),
	datab => \gen_enable|cnt_0\(3),
	datac => \gen_enable|cnt_0\(4),
	datad => \gen_enable|cnt_0\(1),
	combout => \gen_enable|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y28_N14
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

-- Location: FF_X31_Y28_N15
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

-- Location: LCCOMB_X31_Y28_N16
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

-- Location: LCCOMB_X31_Y28_N0
\gen_enable|cnt_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~2_combout\ = (!\gen_enable|Equal0~3_combout\ & \gen_enable|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Equal0~3_combout\,
	datad => \gen_enable|Add0~12_combout\,
	combout => \gen_enable|cnt_0~2_combout\);

-- Location: FF_X31_Y28_N1
\gen_enable|cnt_0[6]\ : dffeas
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
	q => \gen_enable|cnt_0\(6));

-- Location: LCCOMB_X31_Y28_N18
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

-- Location: FF_X31_Y28_N19
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

-- Location: LCCOMB_X31_Y28_N20
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

-- Location: FF_X31_Y28_N21
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

-- Location: LCCOMB_X31_Y28_N2
\gen_enable|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~1_combout\ = (!\gen_enable|cnt_0\(7) & (!\gen_enable|cnt_0\(8) & (!\gen_enable|cnt_0\(5) & \gen_enable|cnt_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(7),
	datab => \gen_enable|cnt_0\(8),
	datac => \gen_enable|cnt_0\(5),
	datad => \gen_enable|cnt_0\(6),
	combout => \gen_enable|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y28_N22
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

-- Location: FF_X31_Y28_N23
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

-- Location: LCCOMB_X31_Y28_N24
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

-- Location: LCCOMB_X28_Y27_N2
\gen_enable|cnt_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~1_combout\ = (!\gen_enable|Equal0~3_combout\ & \gen_enable|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Equal0~3_combout\,
	datad => \gen_enable|Add0~20_combout\,
	combout => \gen_enable|cnt_0~1_combout\);

-- Location: FF_X28_Y27_N3
\gen_enable|cnt_0[10]\ : dffeas
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
	q => \gen_enable|cnt_0\(10));

-- Location: LCCOMB_X31_Y28_N26
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

-- Location: FF_X31_Y28_N27
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

-- Location: LCCOMB_X31_Y28_N28
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

-- Location: LCCOMB_X28_Y27_N16
\gen_enable|cnt_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|cnt_0~0_combout\ = (!\gen_enable|Equal0~3_combout\ & \gen_enable|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_enable|Equal0~3_combout\,
	datad => \gen_enable|Add0~24_combout\,
	combout => \gen_enable|cnt_0~0_combout\);

-- Location: FF_X28_Y27_N17
\gen_enable|cnt_0[12]\ : dffeas
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
	q => \gen_enable|cnt_0\(12));

-- Location: LCCOMB_X28_Y27_N12
\gen_enable|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~0_combout\ = (!\gen_enable|cnt_0\(9) & (\gen_enable|cnt_0\(10) & (!\gen_enable|cnt_0\(11) & \gen_enable|cnt_0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|cnt_0\(9),
	datab => \gen_enable|cnt_0\(10),
	datac => \gen_enable|cnt_0\(11),
	datad => \gen_enable|cnt_0\(12),
	combout => \gen_enable|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y27_N20
\gen_enable|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|Equal0~3_combout\ = (\gen_enable|Equal0~2_combout\ & (\gen_enable|Equal0~1_combout\ & (!\gen_enable|cnt_0\(0) & \gen_enable|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal0~2_combout\,
	datab => \gen_enable|Equal0~1_combout\,
	datac => \gen_enable|cnt_0\(0),
	datad => \gen_enable|Equal0~0_combout\,
	combout => \gen_enable|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y27_N8
\gen_enable|txen\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_enable|txen~combout\ = (\gen_enable|Equal0~3_combout\) # ((\gen_enable|Equal1~2_combout\ & (\gen_enable|Equal1~1_combout\ & \gen_enable|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|Equal1~2_combout\,
	datab => \gen_enable|Equal0~3_combout\,
	datac => \gen_enable|Equal1~1_combout\,
	datad => \gen_enable|Equal1~0_combout\,
	combout => \gen_enable|txen~combout\);

-- Location: LCCOMB_X10_Y9_N28
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

-- Location: FF_X10_Y9_N29
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

-- Location: LCCOMB_X11_Y9_N0
\TTL_tx|tx_n_cnt[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[1]~6_combout\ = (\TTL_tx|tx_n_cnt[1]~1_combout\ & \TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|tx_n_cnt[1]~6_combout\);

-- Location: FF_X11_Y9_N1
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

-- Location: LCCOMB_X10_Y9_N14
\TTL_tx|tx_n_cnt[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[2]~2_combout\ = \TTL_tx|tx_cnt\(2) $ (((\TTL_tx|tx_cnt\(0) & (\TTL_tx|tx_cnt\(1) & \gen_enable|txen~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(1),
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_cnt\(2),
	combout => \TTL_tx|tx_n_cnt[2]~2_combout\);

-- Location: LCCOMB_X10_Y9_N18
\TTL_tx|tx_n_cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[2]~3_combout\ = (\TTL_tx|tx_n_cnt[2]~2_combout\ & \TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|tx_n_cnt[2]~2_combout\,
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|tx_n_cnt[2]~3_combout\);

-- Location: FF_X10_Y9_N19
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

-- Location: LCCOMB_X10_Y9_N6
\TTL_tx|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add0~0_combout\ = \TTL_tx|tx_cnt\(3) $ (((\TTL_tx|tx_cnt\(0) & (\TTL_tx|tx_cnt\(2) & \TTL_tx|tx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(3),
	combout => \TTL_tx|Add0~0_combout\);

-- Location: LCCOMB_X10_Y9_N2
\TTL_tx|tx_n_cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[3]~0_combout\ = (\gen_enable|txen~combout\ & (\TTL_tx|Add0~0_combout\)) # (!\gen_enable|txen~combout\ & (((!\TTL_tx|Equal8~0_combout\ & \TTL_tx|tx_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Add0~0_combout\,
	datab => \TTL_tx|Equal8~0_combout\,
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_cnt\(3),
	combout => \TTL_tx|tx_n_cnt[3]~0_combout\);

-- Location: LCCOMB_X11_Y9_N6
\TTL_tx|tx_n_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[3]~5_combout\ = (\TTL_tx|tx_n_cnt[3]~0_combout\ & \TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_n_cnt[3]~0_combout\,
	datac => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|tx_n_cnt[3]~5_combout\);

-- Location: FF_X11_Y9_N7
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

-- Location: LCCOMB_X10_Y9_N0
\TTL_tx|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Equal8~0_combout\ = (\TTL_tx|tx_cnt\(0) & (!\TTL_tx|tx_cnt\(2) & (\TTL_tx|tx_cnt\(1) & \TTL_tx|tx_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(3),
	combout => \TTL_tx|Equal8~0_combout\);

-- Location: LCCOMB_X10_Y9_N20
\TTL_tx|tx_n_cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_n_cnt[1]~1_combout\ = (\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(0) $ ((\TTL_tx|tx_cnt\(1))))) # (!\gen_enable|txen~combout\ & (((\TTL_tx|tx_cnt\(1) & !\TTL_tx|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(1),
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|Equal8~0_combout\,
	combout => \TTL_tx|tx_n_cnt[1]~1_combout\);

-- Location: LCCOMB_X10_Y9_N12
\TTL_tx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector2~0_combout\ = (!\TTL_tx|tx_n_cnt[1]~1_combout\ & (!\TTL_tx|tx_n_cnt[2]~2_combout\ & !\TTL_tx|tx_n_cnt[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datac => \TTL_tx|tx_n_cnt[2]~2_combout\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y9_N26
\TTL_tx|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~0_combout\ = (\TTL_tx|tx_cnt\(0) & (\gen_enable|txen~combout\ & (\TTL_tx|tx_cnt\(1) $ (!\TTL_tx|tx_cnt\(2))))) # (!\TTL_tx|tx_cnt\(0) & (((!\gen_enable|txen~combout\ & !\TTL_tx|tx_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(1),
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_cnt\(2),
	combout => \TTL_tx|Selector3~0_combout\);

-- Location: LCCOMB_X10_Y9_N4
\TTL_tx|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~1_combout\ = (\TTL_tx|tx_n_cnt[1]~1_combout\ & (\TTL_tx|Selector3~0_combout\ & \TTL_tx|tx_n_cnt[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datac => \TTL_tx|Selector3~0_combout\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|Selector3~1_combout\);

-- Location: LCCOMB_X10_Y9_N22
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

-- Location: LCCOMB_X10_Y12_N6
\TTL_tx|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector2~2_combout\ = (\TTL_tx|Selector2~0_combout\ & ((\TTL_tx|Selector2~1_combout\) # ((!\TTL_tx|Selector3~1_combout\ & \TTL_tx|tx_state.DATA~q\)))) # (!\TTL_tx|Selector2~0_combout\ & (!\TTL_tx|Selector3~1_combout\ & 
-- (\TTL_tx|tx_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector2~0_combout\,
	datab => \TTL_tx|Selector3~1_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|Selector2~1_combout\,
	combout => \TTL_tx|Selector2~2_combout\);

-- Location: FF_X10_Y12_N7
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

-- Location: LCCOMB_X10_Y12_N2
\TTL_tx|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~2_combout\ = (\TTL_tx|tx_state.STOP~q\ & (((\TTL_tx|cnt_4\(1)) # (\TTL_tx|cnt_4\(0))) # (!\TTL_tx|cnt_4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_4\(2),
	datab => \TTL_tx|cnt_4\(1),
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|cnt_4\(0),
	combout => \TTL_tx|Selector3~2_combout\);

-- Location: LCCOMB_X10_Y12_N4
\TTL_tx|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector3~3_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|Selector3~1_combout\) # ((\TTL_tx|Selector3~2_combout\ & !\TTL_tx|tx_next_state~1_combout\)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|Selector3~2_combout\ & 
-- ((!\TTL_tx|tx_next_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|Selector3~2_combout\,
	datac => \TTL_tx|Selector3~1_combout\,
	datad => \TTL_tx|tx_next_state~1_combout\,
	combout => \TTL_tx|Selector3~3_combout\);

-- Location: FF_X10_Y12_N5
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

-- Location: LCCOMB_X10_Y12_N0
\TTL_tx|cnt_4[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_4[0]~0_combout\ = (\TTL_tx|tx_state.STOP~q\ & (!\TTL_tx|cnt_4\(0))) # (!\TTL_tx|tx_state.STOP~q\ & (\TTL_tx|cnt_4\(0) & \TTL_tx|tx_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.STOP~q\,
	datac => \TTL_tx|cnt_4\(0),
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|cnt_4[0]~0_combout\);

-- Location: FF_X10_Y12_N1
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

-- Location: LCCOMB_X10_Y12_N24
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

-- Location: LCCOMB_X10_Y12_N8
\TTL_tx|cnt_4[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|cnt_4[1]~1_combout\ = (\TTL_tx|tx_state.STOP~q\) # (!\TTL_tx|tx_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|cnt_4[1]~1_combout\);

-- Location: FF_X10_Y12_N25
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
	ena => \TTL_tx|cnt_4[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_4\(1));

-- Location: LCCOMB_X10_Y12_N26
\TTL_tx|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Add1~1_combout\ = \TTL_tx|cnt_4\(2) $ (((\TTL_tx|cnt_4\(1) & \TTL_tx|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|cnt_4\(1),
	datac => \TTL_tx|cnt_4\(2),
	datad => \TTL_tx|cnt_4\(0),
	combout => \TTL_tx|Add1~1_combout\);

-- Location: FF_X10_Y12_N27
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
	ena => \TTL_tx|cnt_4[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|cnt_4\(2));

-- Location: LCCOMB_X10_Y9_N30
\TTL_tx|tx_next_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_next_state~0_combout\ = (!\TTL_tx|tx_cnt\(0) & (!\TTL_tx|tx_cnt\(2) & (\TTL_tx|tx_cnt\(1) & \TTL_tx|tx_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_cnt\(0),
	datab => \TTL_tx|tx_cnt\(2),
	datac => \TTL_tx|tx_cnt\(1),
	datad => \TTL_tx|tx_cnt\(3),
	combout => \TTL_tx|tx_next_state~0_combout\);

-- Location: LCCOMB_X10_Y12_N28
\TTL_tx|tx_next_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|tx_next_state~1_combout\ = (!\TTL_tx|cnt_4\(2) & (\TTL_tx|tx_next_state~0_combout\ & ((!\TTL_tx|cnt_4\(0)) # (!\TTL_tx|cnt_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|cnt_4\(2),
	datab => \TTL_tx|cnt_4\(1),
	datac => \TTL_tx|tx_next_state~0_combout\,
	datad => \TTL_tx|cnt_4\(0),
	combout => \TTL_tx|tx_next_state~1_combout\);

-- Location: LCCOMB_X10_Y9_N8
\TTL_tx|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~1_combout\ = (\TTL_tx|tx_next_state~1_combout\ & ((\TTL_tx|tx_state.STOP~q\) # ((\TTL_tx|Selector1~0_combout\ & !\TTL_tx|tx_state.IDLE~q\)))) # (!\TTL_tx|tx_next_state~1_combout\ & (\TTL_tx|Selector1~0_combout\ & 
-- ((!\TTL_tx|tx_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_next_state~1_combout\,
	datab => \TTL_tx|Selector1~0_combout\,
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|Selector1~1_combout\);

-- Location: LCCOMB_X10_Y9_N10
\TTL_tx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~2_combout\ = (\TTL_tx|Selector1~1_combout\) # ((\TTL_tx|tx_state.START~q\ & ((\TTL_tx|tx_n_cnt[2]~3_combout\) # (!\TTL_tx|tx_n_cnt[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.START~q\,
	datab => \TTL_tx|Selector1~1_combout\,
	datac => \TTL_tx|tx_n_cnt[2]~3_combout\,
	datad => \TTL_tx|tx_n_cnt[0]~4_combout\,
	combout => \TTL_tx|Selector1~2_combout\);

-- Location: LCCOMB_X11_Y9_N2
\TTL_tx|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|Selector1~3_combout\ = (\TTL_tx|Selector1~2_combout\) # ((\TTL_tx|tx_state.START~q\ & ((\TTL_tx|tx_n_cnt[1]~6_combout\) # (\TTL_tx|tx_n_cnt[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|Selector1~2_combout\,
	datab => \TTL_tx|tx_n_cnt[1]~6_combout\,
	datac => \TTL_tx|tx_state.START~q\,
	datad => \TTL_tx|tx_n_cnt[3]~5_combout\,
	combout => \TTL_tx|Selector1~3_combout\);

-- Location: FF_X11_Y9_N3
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

-- Location: LCCOMB_X17_Y16_N16
\TTL_tx|txd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~0_combout\ = (!\TTL_tx|txd~q\ & ((!\gen_enable|txen~combout\) # (!\TTL_tx|tx_state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|txd~q\,
	datac => \TTL_tx|tx_state.START~q\,
	datad => \gen_enable|txen~combout\,
	combout => \TTL_tx|txd~0_combout\);

-- Location: LCCOMB_X10_Y9_N16
\TTL_tx|always3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~0_combout\ = (!\TTL_tx|tx_state.IDLE~q\) # (!\gen_enable|txen~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|always3~0_combout\);

-- Location: LCCOMB_X10_Y9_N24
\TTL_tx|always3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~1_combout\ = (\TTL_tx|always3~0_combout\) # (\TTL_tx|tx_n_cnt[3]~0_combout\ $ (((!\TTL_tx|tx_n_cnt[1]~1_combout\ & !\TTL_tx|tx_n_cnt[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~0_combout\,
	datab => \TTL_tx|tx_n_cnt[1]~1_combout\,
	datac => \TTL_tx|tx_n_cnt[2]~2_combout\,
	datad => \TTL_tx|tx_n_cnt[3]~0_combout\,
	combout => \TTL_tx|always3~1_combout\);

-- Location: LCCOMB_X17_Y16_N2
\TTL_tx|txd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~1_combout\ = (!\TTL_tx|always3~1_combout\ & \TTL_tx|tx_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|always3~1_combout\,
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

-- Location: LCCOMB_X12_Y17_N0
\TTL_tx|data_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~0_combout\ = (\tx_data[3]~input_o\ & (!\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & !\tx_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \TTL_tx|data_8~0_combout\);

-- Location: LCCOMB_X12_Y17_N2
\bit8_en|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|WideOr0~0_combout\ = (\tx_data[3]~input_o\ & (!\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & !\tx_data[1]~input_o\))) # (!\tx_data[3]~input_o\ & ((\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & !\tx_data[1]~input_o\)) # (!\tx_data[0]~input_o\ 
-- & (\tx_data[2]~input_o\ $ (\tx_data[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|WideOr0~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\bit8_en|bit_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~0_combout\ = (!\tx_data[2]~input_o\ & (!\tx_data[1]~input_o\ & (\tx_data[3]~input_o\ $ (\tx_data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~0_combout\);

-- Location: LCCOMB_X12_Y17_N14
\bit8_en|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|WideOr1~0_combout\ = (!\tx_data[3]~input_o\ & ((\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & !\tx_data[1]~input_o\)) # (!\tx_data[0]~input_o\ & (\tx_data[2]~input_o\ $ (\tx_data[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\bit8_en|bit_out[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out[18]~3_combout\ = (!\tx_data[0]~input_o\ & (!\tx_data[2]~input_o\ & (\tx_data[3]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out[18]~3_combout\);

-- Location: LCCOMB_X12_Y17_N30
\bit8_en|bit_out[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out[17]~2_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[1]~input_o\ & (\tx_data[0]~input_o\ $ (\tx_data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out[17]~2_combout\);

-- Location: LCCOMB_X12_Y17_N10
\bit8_en|bit_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~4_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[2]~input_o\ & (\tx_data[0]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~4_combout\);

-- Location: LCCOMB_X10_Y12_N10
\TTL_tx|data_8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~33_combout\ = (\TTL_tx|tx_state.DATA~q\ & (((\TTL_tx|data_8\(31) & \TTL_tx|tx_state.IDLE~q\)) # (!\TTL_tx|always3~1_combout\))) # (!\TTL_tx|tx_state.DATA~q\ & (((\TTL_tx|data_8\(31) & \TTL_tx|tx_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|data_8\(31),
	datad => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|data_8~33_combout\);

-- Location: FF_X10_Y12_N11
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

-- Location: LCCOMB_X14_Y16_N28
\TTL_tx|data_8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~32_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(31))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(31),
	datac => \bit8_en|WideOr0~0_combout\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~32_combout\);

-- Location: LCCOMB_X14_Y16_N4
\TTL_tx|data_8[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8[0]~2_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((!\TTL_tx|always3~1_combout\))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|tx_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|tx_state.IDLE~q\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8[0]~2_combout\);

-- Location: FF_X14_Y16_N29
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(30));

-- Location: LCCOMB_X14_Y16_N18
\TTL_tx|data_8~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~31_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(30) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(30),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~31_combout\);

-- Location: FF_X14_Y16_N19
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(29));

-- Location: LCCOMB_X14_Y16_N16
\TTL_tx|data_8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~30_combout\ = (\TTL_tx|always3~1_combout\ & (!\bit8_en|bit_out~4_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(29)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|bit_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \bit8_en|bit_out~4_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|data_8\(29),
	combout => \TTL_tx|data_8~30_combout\);

-- Location: FF_X14_Y16_N17
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(28));

-- Location: LCCOMB_X14_Y16_N22
\TTL_tx|data_8~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~29_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(28) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(28),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~29_combout\);

-- Location: FF_X14_Y16_N23
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(27));

-- Location: LCCOMB_X14_Y16_N12
\TTL_tx|data_8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~28_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[17]~2_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(27)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[17]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \bit8_en|bit_out[17]~2_combout\,
	datac => \TTL_tx|data_8\(27),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~28_combout\);

-- Location: FF_X14_Y16_N13
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(26));

-- Location: LCCOMB_X14_Y16_N2
\TTL_tx|data_8~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~27_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(26)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|data_8~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|data_8\(26),
	combout => \TTL_tx|data_8~27_combout\);

-- Location: FF_X14_Y16_N3
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(25));

-- Location: LCCOMB_X14_Y16_N8
\TTL_tx|data_8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~26_combout\ = (\TTL_tx|always3~1_combout\ & (!\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(25)))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|data_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|data_8~0_combout\,
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|data_8\(25),
	combout => \TTL_tx|data_8~26_combout\);

-- Location: FF_X14_Y16_N9
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(24));

-- Location: LCCOMB_X14_Y16_N14
\TTL_tx|data_8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~25_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(24) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|data_8\(24),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~25_combout\);

-- Location: FF_X14_Y16_N15
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(23));

-- Location: LCCOMB_X14_Y16_N20
\TTL_tx|data_8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~24_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(23))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(23),
	datac => \bit8_en|WideOr0~0_combout\,
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~24_combout\);

-- Location: FF_X14_Y16_N21
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(22));

-- Location: LCCOMB_X12_Y17_N24
\TTL_tx|data_8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~23_combout\ = (\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~1_combout\ & \TTL_tx|data_8\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(22),
	combout => \TTL_tx|data_8~23_combout\);

-- Location: FF_X12_Y17_N25
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(21));

-- Location: LCCOMB_X12_Y17_N22
\TTL_tx|data_8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~22_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((!\bit8_en|WideOr0~0_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(21))))) # (!\TTL_tx|tx_state.DATA~q\ & (((!\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(21),
	datac => \TTL_tx|always3~1_combout\,
	datad => \bit8_en|WideOr0~0_combout\,
	combout => \TTL_tx|data_8~22_combout\);

-- Location: FF_X12_Y17_N23
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(20));

-- Location: LCCOMB_X12_Y17_N12
\TTL_tx|data_8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~21_combout\ = (\TTL_tx|always3~1_combout\ & (\bit8_en|bit_out[17]~2_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(20)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \bit8_en|bit_out[17]~2_combout\,
	datac => \TTL_tx|data_8\(20),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|data_8~21_combout\);

-- Location: FF_X12_Y17_N13
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(19));

-- Location: LCCOMB_X12_Y17_N16
\TTL_tx|data_8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~20_combout\ = (\TTL_tx|always3~1_combout\ & (((\bit8_en|bit_out[18]~3_combout\)))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(19)))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|bit_out[18]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \bit8_en|bit_out[18]~3_combout\,
	datad => \TTL_tx|data_8\(19),
	combout => \TTL_tx|data_8~20_combout\);

-- Location: FF_X12_Y17_N17
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(18));

-- Location: LCCOMB_X12_Y17_N18
\TTL_tx|data_8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~19_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\bit8_en|bit_out[17]~2_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(18))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|bit_out[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(18),
	datac => \TTL_tx|always3~1_combout\,
	datad => \bit8_en|bit_out[17]~2_combout\,
	combout => \TTL_tx|data_8~19_combout\);

-- Location: FF_X12_Y17_N19
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(17));

-- Location: LCCOMB_X12_Y17_N20
\bit8_en|bit_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit8_en|bit_out~1_combout\ = (!\tx_data[3]~input_o\ & (!\tx_data[0]~input_o\ & (\tx_data[2]~input_o\ $ (\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[1]~input_o\,
	combout => \bit8_en|bit_out~1_combout\);

-- Location: LCCOMB_X12_Y17_N8
\TTL_tx|data_8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~18_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((!\bit8_en|bit_out~1_combout\))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(17))))) # (!\TTL_tx|tx_state.DATA~q\ & (((!\bit8_en|bit_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(17),
	datac => \TTL_tx|always3~1_combout\,
	datad => \bit8_en|bit_out~1_combout\,
	combout => \TTL_tx|data_8~18_combout\);

-- Location: FF_X12_Y17_N9
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(16));

-- Location: LCCOMB_X17_Y17_N20
\TTL_tx|data_8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~17_combout\ = (\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~1_combout\ & \TTL_tx|data_8\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(16),
	combout => \TTL_tx|data_8~17_combout\);

-- Location: FF_X17_Y17_N21
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(15));

-- Location: LCCOMB_X17_Y17_N18
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

-- Location: FF_X17_Y17_N19
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(14));

-- Location: LCCOMB_X17_Y17_N0
\TTL_tx|data_8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~15_combout\ = (\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~1_combout\ & \TTL_tx|data_8\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(14),
	combout => \TTL_tx|data_8~15_combout\);

-- Location: FF_X17_Y17_N1
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(13));

-- Location: LCCOMB_X17_Y17_N22
\TTL_tx|data_8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~14_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (!\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(13)))))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(13),
	combout => \TTL_tx|data_8~14_combout\);

-- Location: FF_X17_Y17_N23
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(12));

-- Location: LCCOMB_X17_Y17_N4
\TTL_tx|data_8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~13_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr1~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(12)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr1~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|data_8\(12),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~13_combout\);

-- Location: FF_X17_Y17_N5
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(11));

-- Location: LCCOMB_X17_Y17_N26
\TTL_tx|data_8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~12_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(11)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|data_8\(11),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~12_combout\);

-- Location: FF_X17_Y17_N27
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(10));

-- Location: LCCOMB_X17_Y17_N16
\TTL_tx|data_8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~11_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr1~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(10)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr1~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|data_8\(10),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~11_combout\);

-- Location: FF_X17_Y17_N17
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(9));

-- Location: LCCOMB_X17_Y17_N30
\TTL_tx|data_8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~10_combout\ = ((\TTL_tx|always3~1_combout\) # (\TTL_tx|data_8\(9))) # (!\TTL_tx|tx_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(9),
	combout => \TTL_tx|data_8~10_combout\);

-- Location: FF_X17_Y17_N31
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(8));

-- Location: LCCOMB_X17_Y17_N12
\TTL_tx|data_8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~9_combout\ = (\TTL_tx|data_8\(8) & (\TTL_tx|tx_state.DATA~q\ & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(8),
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~9_combout\);

-- Location: FF_X17_Y17_N13
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(7));

-- Location: LCCOMB_X17_Y17_N10
\TTL_tx|data_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~8_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(7)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\bit8_en|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|WideOr0~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(7),
	combout => \TTL_tx|data_8~8_combout\);

-- Location: FF_X17_Y17_N11
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(6));

-- Location: LCCOMB_X17_Y17_N6
\TTL_tx|data_8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~7_combout\ = (\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~1_combout\ & \TTL_tx|data_8\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(6),
	combout => \TTL_tx|data_8~7_combout\);

-- Location: FF_X17_Y17_N7
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(5));

-- Location: LCCOMB_X17_Y17_N2
\TTL_tx|data_8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~6_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (!\bit8_en|bit_out~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(5)))))) # (!\TTL_tx|tx_state.DATA~q\ & (!\bit8_en|bit_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_en|bit_out~0_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(5),
	combout => \TTL_tx|data_8~6_combout\);

-- Location: FF_X17_Y17_N3
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(4));

-- Location: LCCOMB_X14_Y16_N0
\TTL_tx|data_8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~5_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(4) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(4),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~5_combout\);

-- Location: FF_X14_Y16_N1
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(3));

-- Location: LCCOMB_X14_Y16_N6
\TTL_tx|data_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~4_combout\ = (\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(3) & !\TTL_tx|always3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8\(3),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~4_combout\);

-- Location: FF_X14_Y16_N7
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(2));

-- Location: LCCOMB_X14_Y16_N26
\TTL_tx|data_8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~3_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\bit8_en|WideOr0~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(2)))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\bit8_en|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|always3~1_combout\,
	datac => \bit8_en|WideOr0~0_combout\,
	datad => \TTL_tx|data_8\(2),
	combout => \TTL_tx|data_8~3_combout\);

-- Location: FF_X14_Y16_N27
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(1));

-- Location: LCCOMB_X14_Y16_N24
\TTL_tx|data_8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|data_8~1_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (!\TTL_tx|data_8~0_combout\)) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(1)))))) # (!\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|data_8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.DATA~q\,
	datab => \TTL_tx|data_8~0_combout\,
	datac => \TTL_tx|data_8\(1),
	datad => \TTL_tx|always3~1_combout\,
	combout => \TTL_tx|data_8~1_combout\);

-- Location: FF_X14_Y16_N25
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
	ena => \TTL_tx|data_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|data_8\(0));

-- Location: LCCOMB_X17_Y16_N14
\TTL_tx|always3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|always3~2_combout\ = (!\TTL_tx|tx_state.START~q\) # (!\gen_enable|txen~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_enable|txen~combout\,
	datad => \TTL_tx|tx_state.START~q\,
	combout => \TTL_tx|always3~2_combout\);

-- Location: LCCOMB_X17_Y16_N4
\TTL_tx|shift_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~8_combout\ = (\TTL_tx|txd~1_combout\) # ((\TTL_tx|always3~2_combout\ & ((\TTL_tx|shift_data\(7)))) # (!\TTL_tx|always3~2_combout\ & (\TTL_tx|data_8\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(7),
	datab => \TTL_tx|always3~2_combout\,
	datac => \TTL_tx|shift_data\(7),
	datad => \TTL_tx|txd~1_combout\,
	combout => \TTL_tx|shift_data~8_combout\);

-- Location: FF_X17_Y16_N5
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

-- Location: LCCOMB_X17_Y16_N30
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

-- Location: LCCOMB_X17_Y16_N18
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

-- Location: LCCOMB_X17_Y16_N0
\TTL_tx|shift_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[0]~1_combout\ = (\TTL_tx|tx_state.STOP~q\) # ((\TTL_tx|tx_state.DATA~q\ & (!\TTL_tx|always3~1_combout\)) # (!\TTL_tx|tx_state.DATA~q\ & ((!\TTL_tx|always3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|always3~2_combout\,
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data[0]~1_combout\);

-- Location: FF_X17_Y16_N19
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(6));

-- Location: LCCOMB_X17_Y17_N24
\TTL_tx|shift_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~6_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & ((\TTL_tx|data_8\(5)))) # (!\TTL_tx|always3~1_combout\ & (\TTL_tx|shift_data\(6))))) # (!\TTL_tx|tx_state.DATA~q\ & (((\TTL_tx|data_8\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|shift_data\(6),
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|data_8\(5),
	combout => \TTL_tx|shift_data~6_combout\);

-- Location: LCCOMB_X17_Y17_N8
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

-- Location: FF_X17_Y17_N9
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(5));

-- Location: LCCOMB_X17_Y17_N28
\TTL_tx|shift_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~5_combout\ = (\TTL_tx|always3~1_combout\ & (((\TTL_tx|data_8\(4))))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|shift_data\(5))) # (!\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|data_8\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|shift_data\(5),
	datad => \TTL_tx|data_8\(4),
	combout => \TTL_tx|shift_data~5_combout\);

-- Location: LCCOMB_X17_Y16_N8
\TTL_tx|shift_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data[4]~feeder_combout\ = \TTL_tx|shift_data~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TTL_tx|shift_data~5_combout\,
	combout => \TTL_tx|shift_data[4]~feeder_combout\);

-- Location: FF_X17_Y16_N9
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(4));

-- Location: LCCOMB_X14_Y16_N10
\TTL_tx|shift_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~4_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(3))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|shift_data\(4)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|always3~1_combout\,
	datab => \TTL_tx|data_8\(3),
	datac => \TTL_tx|tx_state.DATA~q\,
	datad => \TTL_tx|shift_data\(4),
	combout => \TTL_tx|shift_data~4_combout\);

-- Location: LCCOMB_X17_Y16_N22
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

-- Location: FF_X17_Y16_N23
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(3));

-- Location: LCCOMB_X17_Y16_N28
\TTL_tx|shift_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~3_combout\ = (\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(2))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|shift_data\(3)))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(2),
	datab => \TTL_tx|always3~1_combout\,
	datac => \TTL_tx|shift_data\(3),
	datad => \TTL_tx|tx_state.DATA~q\,
	combout => \TTL_tx|shift_data~3_combout\);

-- Location: LCCOMB_X17_Y16_N12
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

-- Location: FF_X17_Y16_N13
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(2));

-- Location: LCCOMB_X17_Y16_N26
\TTL_tx|shift_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~2_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(1))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|shift_data\(2)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(1),
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|shift_data\(2),
	combout => \TTL_tx|shift_data~2_combout\);

-- Location: LCCOMB_X17_Y16_N10
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

-- Location: FF_X17_Y16_N11
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(1));

-- Location: LCCOMB_X17_Y16_N20
\TTL_tx|shift_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|shift_data~0_combout\ = (\TTL_tx|tx_state.DATA~q\ & ((\TTL_tx|always3~1_combout\ & (\TTL_tx|data_8\(0))) # (!\TTL_tx|always3~1_combout\ & ((\TTL_tx|shift_data\(1)))))) # (!\TTL_tx|tx_state.DATA~q\ & (\TTL_tx|data_8\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|data_8\(0),
	datab => \TTL_tx|tx_state.DATA~q\,
	datac => \TTL_tx|always3~1_combout\,
	datad => \TTL_tx|shift_data\(1),
	combout => \TTL_tx|shift_data~0_combout\);

-- Location: LCCOMB_X17_Y16_N24
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

-- Location: FF_X17_Y16_N25
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
	ena => \TTL_tx|shift_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|shift_data\(0));

-- Location: LCCOMB_X17_Y16_N6
\TTL_tx|txd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|txd~2_combout\ = (!\TTL_tx|tx_state.STOP~q\ & ((\TTL_tx|txd~1_combout\ & ((!\TTL_tx|shift_data\(0)))) # (!\TTL_tx|txd~1_combout\ & (!\TTL_tx|txd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|txd~0_combout\,
	datab => \TTL_tx|txd~1_combout\,
	datac => \TTL_tx|tx_state.STOP~q\,
	datad => \TTL_tx|shift_data\(0),
	combout => \TTL_tx|txd~2_combout\);

-- Location: FF_X17_Y16_N7
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

-- Location: LCCOMB_X11_Y9_N24
\TTL_tx|led_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|led_idle~0_combout\ = !\TTL_tx|tx_state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TTL_tx|tx_state.IDLE~q\,
	combout => \TTL_tx|led_idle~0_combout\);

-- Location: FF_X11_Y9_N25
\TTL_tx|led_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|led_idle~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|led_idle~q\);

-- Location: LCCOMB_X20_Y9_N8
\TTL_tx|led_blink1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TTL_tx|led_blink1~0_combout\ = \TTL_tx|led_blink1~q\ $ (((\TTL_tx|tx_state.WAIT~q\ & \TTL_tx|Equal9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TTL_tx|tx_state.WAIT~q\,
	datac => \TTL_tx|led_blink1~q\,
	datad => \TTL_tx|Equal9~8_combout\,
	combout => \TTL_tx|led_blink1~0_combout\);

-- Location: FF_X20_Y9_N9
\TTL_tx|led_blink1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TTL_tx|led_blink1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TTL_tx|led_blink1~q\);

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

ww_txd <= \txd~output_o\;

ww_fnd_rxd_top(0) <= \fnd_rxd_top[0]~output_o\;

ww_fnd_rxd_top(1) <= \fnd_rxd_top[1]~output_o\;

ww_fnd_rxd_top(2) <= \fnd_rxd_top[2]~output_o\;

ww_fnd_rxd_top(3) <= \fnd_rxd_top[3]~output_o\;

ww_fnd_rxd_top(4) <= \fnd_rxd_top[4]~output_o\;

ww_fnd_rxd_top(5) <= \fnd_rxd_top[5]~output_o\;

ww_fnd_rxd_top(6) <= \fnd_rxd_top[6]~output_o\;

ww_fnd_rxd_1(0) <= \fnd_rxd_1[0]~output_o\;

ww_fnd_rxd_1(1) <= \fnd_rxd_1[1]~output_o\;

ww_fnd_rxd_1(2) <= \fnd_rxd_1[2]~output_o\;

ww_fnd_rxd_1(3) <= \fnd_rxd_1[3]~output_o\;

ww_fnd_rxd_1(4) <= \fnd_rxd_1[4]~output_o\;

ww_fnd_rxd_1(5) <= \fnd_rxd_1[5]~output_o\;

ww_fnd_rxd_1(6) <= \fnd_rxd_1[6]~output_o\;

ww_fnd_rxd_2(0) <= \fnd_rxd_2[0]~output_o\;

ww_fnd_rxd_2(1) <= \fnd_rxd_2[1]~output_o\;

ww_fnd_rxd_2(2) <= \fnd_rxd_2[2]~output_o\;

ww_fnd_rxd_2(3) <= \fnd_rxd_2[3]~output_o\;

ww_fnd_rxd_2(4) <= \fnd_rxd_2[4]~output_o\;

ww_fnd_rxd_2(5) <= \fnd_rxd_2[5]~output_o\;

ww_fnd_rxd_2(6) <= \fnd_rxd_2[6]~output_o\;

ww_fnd_rxd_3(0) <= \fnd_rxd_3[0]~output_o\;

ww_fnd_rxd_3(1) <= \fnd_rxd_3[1]~output_o\;

ww_fnd_rxd_3(2) <= \fnd_rxd_3[2]~output_o\;

ww_fnd_rxd_3(3) <= \fnd_rxd_3[3]~output_o\;

ww_fnd_rxd_3(4) <= \fnd_rxd_3[4]~output_o\;

ww_fnd_rxd_3(5) <= \fnd_rxd_3[5]~output_o\;

ww_fnd_rxd_3(6) <= \fnd_rxd_3[6]~output_o\;

ww_led_idle <= \led_idle~output_o\;

ww_led_blink1 <= \led_blink1~output_o\;

ww_led_blink2 <= \led_blink2~output_o\;

ww_led_blink3 <= \led_blink3~output_o\;

ww_led_no <= \led_no~output_o\;
END structure;


