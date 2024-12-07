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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/30/2022 23:22:48"

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

ENTITY 	FlappyBird_Mini_Project IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	display_pb1 : IN std_logic;
	display_pb2 : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	control_pb1 : IN std_logic;
	control_pb2 : IN std_logic;
	control_pb3 : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	left_led_out : OUT std_logic;
	right_led_out : OUT std_logic
	);
END FlappyBird_Mini_Project;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_pb1	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_pb2	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left_led_out	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_led_out	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_pb2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_pb3	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_pb1	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FlappyBird_Mini_Project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_display_pb1 : std_logic;
SIGNAL ww_display_pb2 : std_logic;
SIGNAL ww_control_pb1 : std_logic;
SIGNAL ww_control_pb2 : std_logic;
SIGNAL ww_control_pb3 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_left_led_out : std_logic;
SIGNAL ww_right_led_out : std_logic;
SIGNAL \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|pipes|Add9~0_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~6_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~12_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~10_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~1\ : std_logic;
SIGNAL \inst6|pipes|Add6~0_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~3\ : std_logic;
SIGNAL \inst6|pipes|Add6~2_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~5\ : std_logic;
SIGNAL \inst6|pipes|Add6~4_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~7\ : std_logic;
SIGNAL \inst6|pipes|Add6~6_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~9\ : std_logic;
SIGNAL \inst6|pipes|Add6~8_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~11\ : std_logic;
SIGNAL \inst6|pipes|Add6~10_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~13\ : std_logic;
SIGNAL \inst6|pipes|Add6~12_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~15\ : std_logic;
SIGNAL \inst6|pipes|Add6~14_combout\ : std_logic;
SIGNAL \inst6|pipes|Add6~16_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan1~18_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~4_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add9~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~12_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~1_combout\ : std_logic;
SIGNAL \inst6|gameover|text_on2|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|gameover|text_on2|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|gameover|text_on2|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|gameover|text_on2|Mux0~3_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|red~0_combout\ : std_logic;
SIGNAL \inst3|red_out~2_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_on~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|text_display|text_on|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|text_display|text_on|Mux0~3_combout\ : std_logic;
SIGNAL \inst18|comb~0_combout\ : std_logic;
SIGNAL \inst18|s_state[1]~0_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~5_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~6_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~7_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~8_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~9_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~10_combout\ : std_logic;
SIGNAL \inst6|gameover|LessThan30~0_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~11_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~12_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~13_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~14_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~15_combout\ : std_logic;
SIGNAL \inst6|gameover|LessThan30~1_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~16_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~17_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~18_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~19_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~21_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~22_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~23_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[5]~2_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[5]~3_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~26_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~28_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~29_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~30_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[5]~4_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~31_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~32_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~33_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~34_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~35_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~36_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[5]~5_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[0]~6_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[0]~7_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~9_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~37_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[4]~8_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[0]~9_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[1]~10_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[1]~11_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[1]~12_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[2]~13_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[2]~14_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address~15_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[4]~16_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan33~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~22_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address~19_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[0]~20_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[1]~26_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~31_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address~31_combout\ : std_logic;
SIGNAL \inst3|process_0~9_combout\ : std_logic;
SIGNAL \inst3|process_0~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan10~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan12~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan10~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan8~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan12~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~7_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~9_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst|INCNT~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst|iready_set~q\ : std_logic;
SIGNAL \inst|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst|iready_set~0_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~39_combout\ : std_logic;
SIGNAL \inst6|gameover|character_address[5]~17_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[0]~34_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[4]~39_combout\ : std_logic;
SIGNAL \display_pb1~input_o\ : std_logic;
SIGNAL \display_pb2~input_o\ : std_logic;
SIGNAL \control_pb3~input_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|send_data~q\ : std_logic;
SIGNAL \inst|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst|output_ready~0_combout\ : std_logic;
SIGNAL \inst|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst|output_ready~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst|send_char~0_combout\ : std_logic;
SIGNAL \inst|send_char~q\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|h_count~2_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|h_count~0_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|h_count~1_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|process_0~6_combout\ : std_logic;
SIGNAL \inst3|process_0~7_combout\ : std_logic;
SIGNAL \inst3|process_0~8_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst3|v_count[9]~3_combout\ : std_logic;
SIGNAL \inst3|process_0~11_combout\ : std_logic;
SIGNAL \inst3|v_count[3]~1_combout\ : std_logic;
SIGNAL \inst3|v_count[3]~9_combout\ : std_logic;
SIGNAL \inst3|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|v_count[5]~4_combout\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|v_count[6]~5_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|v_count[7]~2_combout\ : std_logic;
SIGNAL \inst3|LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|LessThan7~1_combout\ : std_logic;
SIGNAL \inst3|v_count~8_combout\ : std_logic;
SIGNAL \inst3|v_count~10_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~2_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|v_count[2]~7_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~0_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~3_combout\ : std_logic;
SIGNAL \inst3|LessThan6~0_combout\ : std_logic;
SIGNAL \inst3|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~1\ : std_logic;
SIGNAL \inst6|pipes|Add5~3\ : std_logic;
SIGNAL \inst6|pipes|Add5~5\ : std_logic;
SIGNAL \inst6|pipes|Add5~7\ : std_logic;
SIGNAL \inst6|pipes|Add5~9\ : std_logic;
SIGNAL \inst6|pipes|Add5~11\ : std_logic;
SIGNAL \inst6|pipes|Add5~13\ : std_logic;
SIGNAL \inst6|pipes|Add5~15\ : std_logic;
SIGNAL \inst6|pipes|Add5~17\ : std_logic;
SIGNAL \inst6|pipes|Add5~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~3\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_pos[3]~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~5\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_pos[4]~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~7\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~9\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~11\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~13\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~15\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~17\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_pos[10]~0_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~16_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add12~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_pos[5]~1_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~6_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~0_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~19_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan6~20_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos[1]~0_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~1\ : std_logic;
SIGNAL \inst6|pipes|Add9~3\ : std_logic;
SIGNAL \inst6|pipes|Add9~5\ : std_logic;
SIGNAL \inst6|pipes|Add9~7\ : std_logic;
SIGNAL \inst6|pipes|Add9~9\ : std_logic;
SIGNAL \inst6|pipes|Add9~11\ : std_logic;
SIGNAL \inst6|pipes|Add9~13\ : std_logic;
SIGNAL \inst6|pipes|Add9~15\ : std_logic;
SIGNAL \inst6|pipes|Add9~16_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~14_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~14_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~10_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~8_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~8_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~4_combout\ : std_logic;
SIGNAL \inst6|pipes|Add9~2_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~2_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan7~18_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~3\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~5\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos[4]~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos[7]~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos[9]~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos[6]~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|LessThan9~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~7\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~9\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~11\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~13\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~15\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~17\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~14_combout\ : std_logic;
SIGNAL \inst6|pipes|Add5~4_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~19_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan4~20_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~1\ : std_logic;
SIGNAL \inst6|pipes|Add8~3\ : std_logic;
SIGNAL \inst6|pipes|Add8~5\ : std_logic;
SIGNAL \inst6|pipes|Add8~7\ : std_logic;
SIGNAL \inst6|pipes|Add8~9\ : std_logic;
SIGNAL \inst6|pipes|Add8~11\ : std_logic;
SIGNAL \inst6|pipes|Add8~13\ : std_logic;
SIGNAL \inst6|pipes|Add8~15\ : std_logic;
SIGNAL \inst6|pipes|Add8~16_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~14_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~12_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~8_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~6_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~4_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~2_combout\ : std_logic;
SIGNAL \inst6|pipes|Add8~0_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan5~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~3\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos[3]~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~5\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~7\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos[5]~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~9\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos[6]~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~11\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~13\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos[8]~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~15\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~17\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add10~18_combout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~1_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~3_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~5_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~7_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~9_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~11_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~13_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~15_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~17_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~19_cout\ : std_logic;
SIGNAL \inst6|pipes|LessThan0~20_combout\ : std_logic;
SIGNAL \inst6|pipes|pipe_on~5_combout\ : std_logic;
SIGNAL \inst3|red_out~1_combout\ : std_logic;
SIGNAL \inst3|video_on_v~q\ : std_logic;
SIGNAL \control_pb2~input_o\ : std_logic;
SIGNAL \control_pb1~input_o\ : std_logic;
SIGNAL \inst6|red~1_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|v_count[4]~11_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan41~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~5_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~26_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~15_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~14_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~16_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~4_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~27_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan53~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~24_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~23_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~25_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[0]~21_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan55~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~6_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~7_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan41~2_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~24_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan41~1_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~20_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~13_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~29_combout\ : std_logic;
SIGNAL \inst6|gameover|LessThan17~0_combout\ : std_logic;
SIGNAL \inst3|pixel_column[9]~feeder_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan25~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~18_combout\ : std_logic;
SIGNAL \inst6|gameover|LessThan28~0_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~40_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~19_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~20_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[5]~23_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan33~1_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan32~2_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan32~3_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~17_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~30_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~25_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan53~1_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan52~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~8_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan25~1_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~27_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~10_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~32_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[0]~18_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[5]~22_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[5]~24_combout\ : std_logic;
SIGNAL \inst6|gameover|text_display~38_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[0]~25_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[1]~36_combout\ : std_logic;
SIGNAL \inst6|text_display|LessThan29~2_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~11_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~12_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[1]~27_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~21_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[1]~28_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address~37_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address~29_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[2]~30_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[3]~35_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[3]~32_combout\ : std_logic;
SIGNAL \inst6|text_display|text_display~28_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[4]~33_combout\ : std_logic;
SIGNAL \inst6|text_display|character_address[5]~38_combout\ : std_logic;
SIGNAL \inst6|text_display|text_on|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|text_display|text_on|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|red~2_combout\ : std_logic;
SIGNAL \inst3|red_out~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~10_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst|READ_CHAR~q\ : std_logic;
SIGNAL \inst|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|INCNT~3_combout\ : std_logic;
SIGNAL \inst|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst|INCNT~2_combout\ : std_logic;
SIGNAL \inst|INCNT~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst|left_button~feeder_combout\ : std_logic;
SIGNAL \inst|left_button~0_combout\ : std_logic;
SIGNAL \inst|left_button~1_combout\ : std_logic;
SIGNAL \inst|left_button~q\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|Add11~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add7~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~11_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~5_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan6~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan6~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add6~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~13_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[3]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[0]~11\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~1\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~1\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~6_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add11~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~4_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Move_Ball~5_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~15_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|collision_flag~q\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_motion[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[1]~13\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_motion~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_motion~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[2]~15\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[3]~17\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[4]~19\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[5]~21\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[6]~23\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[7]~25\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[8]~27\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~1\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~3\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~5\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~7\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~9\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~10_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~8_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add2~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~3_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~5_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~7_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~9_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~11_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~13_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~15_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~17_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan2~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_on~2_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~11\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~13\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~15\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~12_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_on~3_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~17\ : std_logic;
SIGNAL \inst6|flappy_bird|Add0~18_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|Add3~14_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~1_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~3_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~5_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~7_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~9_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~11_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~13_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~15_cout\ : std_logic;
SIGNAL \inst6|flappy_bird|LessThan3~16_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_on~1_combout\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_on~4_combout\ : std_logic;
SIGNAL \inst3|red_out~4_combout\ : std_logic;
SIGNAL \inst3|red_out~5_combout\ : std_logic;
SIGNAL \inst3|red_out~q\ : std_logic;
SIGNAL \inst3|red_out~0_combout\ : std_logic;
SIGNAL \inst3|red_out~6_combout\ : std_logic;
SIGNAL \inst3|green_out~0_combout\ : std_logic;
SIGNAL \inst3|green_out~q\ : std_logic;
SIGNAL \inst3|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst3|video_on_h~q\ : std_logic;
SIGNAL \inst3|blue_out~0_combout\ : std_logic;
SIGNAL \inst3|blue_out~q\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst3|vert_sync~q\ : std_logic;
SIGNAL \inst3|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst3|vert_sync_out~q\ : std_logic;
SIGNAL \inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst3|process_0~4_combout\ : std_logic;
SIGNAL \inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst3|process_0~5_combout\ : std_logic;
SIGNAL \inst3|horiz_sync~q\ : std_logic;
SIGNAL \inst3|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst3|horiz_sync_out~q\ : std_logic;
SIGNAL \inst3|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Q_left_led~q\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst|right_button~feeder_combout\ : std_logic;
SIGNAL \inst|right_button~q\ : std_logic;
SIGNAL \inst4|Q_right_led~0_combout\ : std_logic;
SIGNAL \inst4|Q_right_led~q\ : std_logic;
SIGNAL \inst6|flappy_bird|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|flappy_bird|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe3_x_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst18|s_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe2_x_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|flappy_bird|pipes|pipe_x_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
ww_display_pb1 <= display_pb1;
ww_display_pb2 <= display_pb2;
ww_control_pb1 <= control_pb1;
ww_control_pb2 <= control_pb2;
ww_control_pb3 <= control_pb3;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
vert_sync_out <= ww_vert_sync_out;
horiz_sync_out <= ww_horiz_sync_out;
left_led_out <= ww_left_led_out;
right_led_out <= ww_right_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|gameover|character_address[5]~17_combout\ & \inst6|gameover|character_address[4]~16_combout\ & \inst6|gameover|character_address~15_combout\ & 
\inst6|gameover|character_address[2]~14_combout\ & \inst6|gameover|character_address[1]~12_combout\ & \inst6|gameover|character_address[0]~9_combout\ & \inst3|pixel_row\(4) & \inst3|pixel_row\(3) & \inst3|pixel_row\(2));

\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(0) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(1) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(2) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(3) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(4) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(5) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(6) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(7) <= \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|text_display|character_address[5]~38_combout\ & \inst6|text_display|character_address[4]~33_combout\ & 
\inst6|text_display|character_address[3]~32_combout\ & \inst6|text_display|character_address[2]~30_combout\ & \inst6|text_display|character_address[1]~28_combout\ & \inst6|text_display|character_address[0]~25_combout\ & \inst3|pixel_row\(4) & 
\inst3|pixel_row\(3) & \inst3|pixel_row\(2));

\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(0) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(1) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(2) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(3) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(4) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(5) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(6) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(7) <= \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|MOUSE_CLK_FILTER~q\);

\inst3|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|vert_sync_out~q\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst|ALT_INV_send_data~q\ <= NOT \inst|send_data~q\;
\inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst|mouse_state.INHIBIT_TRANS~q\;
\inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X21_Y21_N12
\inst6|pipes|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~0_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) $ (VCC))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) & VCC))
-- \inst6|pipes|Add9~1\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & \inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(2),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	combout => \inst6|pipes|Add9~0_combout\,
	cout => \inst6|pipes|Add9~1\);

-- Location: LCCOMB_X21_Y21_N18
\inst6|pipes|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~6_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & (!\inst6|pipes|Add9~5\)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & (\inst6|pipes|Add9~5\ & VCC))
-- \inst6|pipes|Add9~7\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & !\inst6|pipes|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|pipes|Add9~5\,
	combout => \inst6|pipes|Add9~6_combout\,
	cout => \inst6|pipes|Add9~7\);

-- Location: LCCOMB_X21_Y21_N24
\inst6|pipes|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~12_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (\inst6|pipes|Add9~11\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (!\inst6|pipes|Add9~11\ & VCC))
-- \inst6|pipes|Add9~13\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & !\inst6|pipes|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|pipes|Add9~11\,
	combout => \inst6|pipes|Add9~12_combout\,
	cout => \inst6|pipes|Add9~13\);

-- Location: LCCOMB_X26_Y21_N16
\inst6|pipes|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~10_combout\ = (\inst3|pixel_column\(6) & (!\inst6|pipes|Add5~9\)) # (!\inst3|pixel_column\(6) & ((\inst6|pipes|Add5~9\) # (GND)))
-- \inst6|pipes|Add5~11\ = CARRY((!\inst6|pipes|Add5~9\) # (!\inst3|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(6),
	datad => VCC,
	cin => \inst6|pipes|Add5~9\,
	combout => \inst6|pipes|Add5~10_combout\,
	cout => \inst6|pipes|Add5~11\);

-- Location: LCCOMB_X23_Y22_N8
\inst6|pipes|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~0_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) $ (VCC))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) & VCC))
-- \inst6|pipes|Add6~1\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(2) & \inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(2),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	combout => \inst6|pipes|Add6~0_combout\,
	cout => \inst6|pipes|Add6~1\);

-- Location: LCCOMB_X23_Y22_N10
\inst6|pipes|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~2_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(3) & ((\inst6|pipes|Add6~1\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3) & (!\inst6|pipes|Add6~1\))
-- \inst6|pipes|Add6~3\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(3)) # (!\inst6|pipes|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(3),
	datad => VCC,
	cin => \inst6|pipes|Add6~1\,
	combout => \inst6|pipes|Add6~2_combout\,
	cout => \inst6|pipes|Add6~3\);

-- Location: LCCOMB_X23_Y22_N12
\inst6|pipes|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~4_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(4) & ((GND) # (!\inst6|pipes|Add6~3\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & (\inst6|pipes|Add6~3\ $ (GND)))
-- \inst6|pipes|Add6~5\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(4)) # (!\inst6|pipes|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(4),
	datad => VCC,
	cin => \inst6|pipes|Add6~3\,
	combout => \inst6|pipes|Add6~4_combout\,
	cout => \inst6|pipes|Add6~5\);

-- Location: LCCOMB_X23_Y22_N14
\inst6|pipes|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~6_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (!\inst6|pipes|Add6~5\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (\inst6|pipes|Add6~5\ & VCC))
-- \inst6|pipes|Add6~7\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(5) & !\inst6|pipes|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	datad => VCC,
	cin => \inst6|pipes|Add6~5\,
	combout => \inst6|pipes|Add6~6_combout\,
	cout => \inst6|pipes|Add6~7\);

-- Location: LCCOMB_X23_Y22_N16
\inst6|pipes|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~8_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (!\inst6|pipes|Add6~7\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (\inst6|pipes|Add6~7\ $ (GND)))
-- \inst6|pipes|Add6~9\ = CARRY((!\inst6|flappy_bird|pipes|pipe_x_pos\(6) & !\inst6|pipes|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|Add6~7\,
	combout => \inst6|pipes|Add6~8_combout\,
	cout => \inst6|pipes|Add6~9\);

-- Location: LCCOMB_X23_Y22_N18
\inst6|pipes|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~10_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(7) & (!\inst6|pipes|Add6~9\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & ((\inst6|pipes|Add6~9\) # (GND)))
-- \inst6|pipes|Add6~11\ = CARRY((!\inst6|pipes|Add6~9\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datad => VCC,
	cin => \inst6|pipes|Add6~9\,
	combout => \inst6|pipes|Add6~10_combout\,
	cout => \inst6|pipes|Add6~11\);

-- Location: LCCOMB_X23_Y22_N20
\inst6|pipes|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~12_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (!\inst6|pipes|Add6~11\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (\inst6|pipes|Add6~11\ $ (GND)))
-- \inst6|pipes|Add6~13\ = CARRY((!\inst6|flappy_bird|pipes|pipe_x_pos\(8) & !\inst6|pipes|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datad => VCC,
	cin => \inst6|pipes|Add6~11\,
	combout => \inst6|pipes|Add6~12_combout\,
	cout => \inst6|pipes|Add6~13\);

-- Location: LCCOMB_X23_Y22_N22
\inst6|pipes|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~14_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(9) & (!\inst6|pipes|Add6~13\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(9) & ((\inst6|pipes|Add6~13\) # (GND)))
-- \inst6|pipes|Add6~15\ = CARRY((!\inst6|pipes|Add6~13\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datad => VCC,
	cin => \inst6|pipes|Add6~13\,
	combout => \inst6|pipes|Add6~14_combout\,
	cout => \inst6|pipes|Add6~15\);

-- Location: LCCOMB_X23_Y22_N24
\inst6|pipes|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add6~16_combout\ = \inst6|pipes|Add6~15\ $ (!\inst6|flappy_bird|pipes|pipe_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	cin => \inst6|pipes|Add6~15\,
	combout => \inst6|pipes|Add6~16_combout\);

-- Location: LCCOMB_X22_Y22_N12
\inst6|pipes|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~1_cout\ = CARRY((!\inst6|pipes|Add5~0_combout\ & !\inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~0_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|pipes|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y22_N14
\inst6|pipes|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~3_cout\ = CARRY((\inst6|pipes|Add5~2_combout\ & ((!\inst6|pipes|LessThan1~1_cout\) # (!\inst6|pipes|Add6~0_combout\))) # (!\inst6|pipes|Add5~2_combout\ & (!\inst6|pipes|Add6~0_combout\ & !\inst6|pipes|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~2_combout\,
	datab => \inst6|pipes|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~1_cout\,
	cout => \inst6|pipes|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y22_N16
\inst6|pipes|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~5_cout\ = CARRY((\inst6|pipes|Add5~4_combout\ & (\inst6|pipes|Add6~2_combout\ & !\inst6|pipes|LessThan1~3_cout\)) # (!\inst6|pipes|Add5~4_combout\ & ((\inst6|pipes|Add6~2_combout\) # (!\inst6|pipes|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~4_combout\,
	datab => \inst6|pipes|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~3_cout\,
	cout => \inst6|pipes|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y22_N18
\inst6|pipes|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~7_cout\ = CARRY((\inst6|pipes|Add5~6_combout\ & ((!\inst6|pipes|LessThan1~5_cout\) # (!\inst6|pipes|Add6~4_combout\))) # (!\inst6|pipes|Add5~6_combout\ & (!\inst6|pipes|Add6~4_combout\ & !\inst6|pipes|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~6_combout\,
	datab => \inst6|pipes|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~5_cout\,
	cout => \inst6|pipes|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y22_N20
\inst6|pipes|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~9_cout\ = CARRY((\inst6|pipes|Add5~8_combout\ & (\inst6|pipes|Add6~6_combout\ & !\inst6|pipes|LessThan1~7_cout\)) # (!\inst6|pipes|Add5~8_combout\ & ((\inst6|pipes|Add6~6_combout\) # (!\inst6|pipes|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~8_combout\,
	datab => \inst6|pipes|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~7_cout\,
	cout => \inst6|pipes|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y22_N22
\inst6|pipes|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~11_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((!\inst6|pipes|LessThan1~9_cout\) # (!\inst6|pipes|Add6~8_combout\))) # (!\inst6|pipes|Add5~10_combout\ & (!\inst6|pipes|Add6~8_combout\ & !\inst6|pipes|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|pipes|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~9_cout\,
	cout => \inst6|pipes|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y22_N24
\inst6|pipes|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~13_cout\ = CARRY((\inst6|pipes|Add5~12_combout\ & (\inst6|pipes|Add6~10_combout\ & !\inst6|pipes|LessThan1~11_cout\)) # (!\inst6|pipes|Add5~12_combout\ & ((\inst6|pipes|Add6~10_combout\) # (!\inst6|pipes|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~12_combout\,
	datab => \inst6|pipes|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~11_cout\,
	cout => \inst6|pipes|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y22_N26
\inst6|pipes|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~15_cout\ = CARRY((\inst6|pipes|Add6~12_combout\ & (\inst6|pipes|Add5~14_combout\ & !\inst6|pipes|LessThan1~13_cout\)) # (!\inst6|pipes|Add6~12_combout\ & ((\inst6|pipes|Add5~14_combout\) # (!\inst6|pipes|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add6~12_combout\,
	datab => \inst6|pipes|Add5~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~13_cout\,
	cout => \inst6|pipes|LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y22_N28
\inst6|pipes|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~17_cout\ = CARRY((\inst6|pipes|Add5~16_combout\ & (\inst6|pipes|Add6~14_combout\ & !\inst6|pipes|LessThan1~15_cout\)) # (!\inst6|pipes|Add5~16_combout\ & ((\inst6|pipes|Add6~14_combout\) # (!\inst6|pipes|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~16_combout\,
	datab => \inst6|pipes|Add6~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan1~15_cout\,
	cout => \inst6|pipes|LessThan1~17_cout\);

-- Location: LCCOMB_X22_Y22_N30
\inst6|pipes|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan1~18_combout\ = (\inst6|pipes|Add5~18_combout\ & ((\inst6|pipes|LessThan1~17_cout\) # (!\inst6|pipes|Add6~16_combout\))) # (!\inst6|pipes|Add5~18_combout\ & (\inst6|pipes|LessThan1~17_cout\ & !\inst6|pipes|Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|pipes|Add6~16_combout\,
	cin => \inst6|pipes|LessThan1~17_cout\,
	combout => \inst6|pipes|LessThan1~18_combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst6|pipes|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~10_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & ((\inst6|pipes|Add8~9\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & (!\inst6|pipes|Add8~9\))
-- \inst6|pipes|Add8~11\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(7)) # (!\inst6|pipes|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|pipes|Add8~9\,
	combout => \inst6|pipes|Add8~10_combout\,
	cout => \inst6|pipes|Add8~11\);

-- Location: M9K_X25_Y20_N0
\inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_all:inst6|gameover_display:gameover|char_rom:text_on2|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|gameover|text_on2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N2
\inst6|flappy_bird|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~2_combout\ = (\inst3|pixel_column\(2) & (\inst6|flappy_bird|Add0~1_cout\ & VCC)) # (!\inst3|pixel_column\(2) & (!\inst6|flappy_bird|Add0~1_cout\))
-- \inst6|flappy_bird|Add0~3\ = CARRY((!\inst3|pixel_column\(2) & !\inst6|flappy_bird|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~1_cout\,
	combout => \inst6|flappy_bird|Add0~2_combout\,
	cout => \inst6|flappy_bird|Add0~3\);

-- Location: LCCOMB_X26_Y19_N4
\inst6|flappy_bird|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~4_combout\ = (\inst3|pixel_column\(3) & (\inst6|flappy_bird|Add0~3\ $ (GND))) # (!\inst3|pixel_column\(3) & (!\inst6|flappy_bird|Add0~3\ & VCC))
-- \inst6|flappy_bird|Add0~5\ = CARRY((\inst3|pixel_column\(3) & !\inst6|flappy_bird|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~3\,
	combout => \inst6|flappy_bird|Add0~4_combout\,
	cout => \inst6|flappy_bird|Add0~5\);

-- Location: LCCOMB_X26_Y19_N6
\inst6|flappy_bird|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~6_combout\ = (\inst3|pixel_column\(4) & (!\inst6|flappy_bird|Add0~5\)) # (!\inst3|pixel_column\(4) & ((\inst6|flappy_bird|Add0~5\) # (GND)))
-- \inst6|flappy_bird|Add0~7\ = CARRY((!\inst6|flappy_bird|Add0~5\) # (!\inst3|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~5\,
	combout => \inst6|flappy_bird|Add0~6_combout\,
	cout => \inst6|flappy_bird|Add0~7\);

-- Location: LCCOMB_X26_Y19_N8
\inst6|flappy_bird|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~8_combout\ = (\inst3|pixel_column\(5) & (\inst6|flappy_bird|Add0~7\ $ (GND))) # (!\inst3|pixel_column\(5) & (!\inst6|flappy_bird|Add0~7\ & VCC))
-- \inst6|flappy_bird|Add0~9\ = CARRY((\inst3|pixel_column\(5) & !\inst6|flappy_bird|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~7\,
	combout => \inst6|flappy_bird|Add0~8_combout\,
	cout => \inst6|flappy_bird|Add0~9\);

-- Location: LCCOMB_X23_Y19_N4
\inst6|flappy_bird|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~0_combout\ = \inst6|flappy_bird|ball_y_pos\(0) $ (VCC)
-- \inst6|flappy_bird|Add3~1\ = CARRY(\inst6|flappy_bird|ball_y_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(0),
	datad => VCC,
	combout => \inst6|flappy_bird|Add3~0_combout\,
	cout => \inst6|flappy_bird|Add3~1\);

-- Location: LCCOMB_X23_Y19_N6
\inst6|flappy_bird|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~2_combout\ = (\inst6|flappy_bird|ball_y_pos\(1) & (!\inst6|flappy_bird|Add3~1\)) # (!\inst6|flappy_bird|ball_y_pos\(1) & ((\inst6|flappy_bird|Add3~1\) # (GND)))
-- \inst6|flappy_bird|Add3~3\ = CARRY((!\inst6|flappy_bird|Add3~1\) # (!\inst6|flappy_bird|ball_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(1),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~1\,
	combout => \inst6|flappy_bird|Add3~2_combout\,
	cout => \inst6|flappy_bird|Add3~3\);

-- Location: LCCOMB_X23_Y19_N20
\inst6|flappy_bird|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~16_combout\ = (\inst6|flappy_bird|ball_y_pos\(8) & (\inst6|flappy_bird|Add3~15\ $ (GND))) # (!\inst6|flappy_bird|ball_y_pos\(8) & (!\inst6|flappy_bird|Add3~15\ & VCC))
-- \inst6|flappy_bird|Add3~17\ = CARRY((\inst6|flappy_bird|ball_y_pos\(8) & !\inst6|flappy_bird|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~15\,
	combout => \inst6|flappy_bird|Add3~16_combout\,
	cout => \inst6|flappy_bird|Add3~17\);

-- Location: LCCOMB_X22_Y17_N16
\inst6|flappy_bird|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~4_combout\ = (\inst3|pixel_row\(3) & (\inst6|flappy_bird|Add2~3\ $ (GND))) # (!\inst3|pixel_row\(3) & (!\inst6|flappy_bird|Add2~3\ & VCC))
-- \inst6|flappy_bird|Add2~5\ = CARRY((\inst3|pixel_row\(3) & !\inst6|flappy_bird|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~3\,
	combout => \inst6|flappy_bird|Add2~4_combout\,
	cout => \inst6|flappy_bird|Add2~5\);

-- Location: LCCOMB_X22_Y17_N18
\inst6|flappy_bird|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~6_combout\ = (\inst3|pixel_row\(4) & (!\inst6|flappy_bird|Add2~5\)) # (!\inst3|pixel_row\(4) & ((\inst6|flappy_bird|Add2~5\) # (GND)))
-- \inst6|flappy_bird|Add2~7\ = CARRY((!\inst6|flappy_bird|Add2~5\) # (!\inst3|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~5\,
	combout => \inst6|flappy_bird|Add2~6_combout\,
	cout => \inst6|flappy_bird|Add2~7\);

-- Location: LCCOMB_X22_Y17_N26
\inst6|flappy_bird|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~14_combout\ = (\inst3|pixel_row\(8) & (!\inst6|flappy_bird|Add2~13\)) # (!\inst3|pixel_row\(8) & ((\inst6|flappy_bird|Add2~13\) # (GND)))
-- \inst6|flappy_bird|Add2~15\ = CARRY((!\inst6|flappy_bird|Add2~13\) # (!\inst3|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~13\,
	combout => \inst6|flappy_bird|Add2~14_combout\,
	cout => \inst6|flappy_bird|Add2~15\);

-- Location: LCCOMB_X22_Y17_N28
\inst6|flappy_bird|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~16_combout\ = !\inst6|flappy_bird|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|flappy_bird|Add2~15\,
	combout => \inst6|flappy_bird|Add2~16_combout\);

-- Location: M9K_X25_Y18_N0
\inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_all:inst6|mode_display:text_display|char_rom:text_on|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|text_display|text_on|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y20_N16
\inst6|flappy_bird|pipes|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~4_combout\ = ((\inst6|flappy_bird|pipes|pipe2_x_pos\(3) $ (\inst6|flappy_bird|pipes|pipe2_x_motion\(4) $ (!\inst6|flappy_bird|pipes|Add11~3\)))) # (GND)
-- \inst6|flappy_bird|pipes|Add11~5\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & ((\inst6|flappy_bird|pipes|pipe2_x_motion\(4)) # (!\inst6|flappy_bird|pipes|Add11~3\))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & 
-- (\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & !\inst6|flappy_bird|pipes|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(3),
	datab => \inst6|flappy_bird|pipes|pipe2_x_motion\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~3\,
	combout => \inst6|flappy_bird|pipes|Add11~4_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~5\);

-- Location: LCCOMB_X22_Y18_N4
\inst3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|v_count\(0) $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X22_Y18_N6
\inst3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|v_count\(1) & (!\inst3|Add1~1\)) # (!\inst3|v_count\(1) & ((\inst3|Add1~1\) # (GND)))
-- \inst3|Add1~3\ = CARRY((!\inst3|Add1~1\) # (!\inst3|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X22_Y18_N20
\inst3|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|v_count\(8) & (\inst3|Add1~15\ $ (GND))) # (!\inst3|v_count\(8) & (!\inst3|Add1~15\ & VCC))
-- \inst3|Add1~17\ = CARRY((\inst3|v_count\(8) & !\inst3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X22_Y18_N22
\inst3|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = \inst3|Add1~17\ $ (\inst3|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(9),
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|h_count\(5) & (!\inst3|Add0~9\)) # (!\inst3|h_count\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X24_Y21_N0
\inst6|flappy_bird|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~0_combout\ = \inst6|flappy_bird|ball_y_pos\(0) $ (VCC)
-- \inst6|flappy_bird|Add11~1\ = CARRY(\inst6|flappy_bird|ball_y_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(0),
	datad => VCC,
	combout => \inst6|flappy_bird|Add11~0_combout\,
	cout => \inst6|flappy_bird|Add11~1\);

-- Location: LCCOMB_X24_Y21_N10
\inst6|flappy_bird|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~10_combout\ = (\inst6|flappy_bird|ball_y_pos\(5) & (\inst6|flappy_bird|Add11~9\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(5) & (!\inst6|flappy_bird|Add11~9\))
-- \inst6|flappy_bird|Add11~11\ = CARRY((!\inst6|flappy_bird|ball_y_pos\(5) & !\inst6|flappy_bird|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~9\,
	combout => \inst6|flappy_bird|Add11~10_combout\,
	cout => \inst6|flappy_bird|Add11~11\);

-- Location: LCCOMB_X24_Y21_N12
\inst6|flappy_bird|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~12_combout\ = (\inst6|flappy_bird|ball_y_pos\(6) & ((GND) # (!\inst6|flappy_bird|Add11~11\))) # (!\inst6|flappy_bird|ball_y_pos\(6) & (\inst6|flappy_bird|Add11~11\ $ (GND)))
-- \inst6|flappy_bird|Add11~13\ = CARRY((\inst6|flappy_bird|ball_y_pos\(6)) # (!\inst6|flappy_bird|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~11\,
	combout => \inst6|flappy_bird|Add11~12_combout\,
	cout => \inst6|flappy_bird|Add11~13\);

-- Location: LCCOMB_X23_Y21_N6
\inst6|flappy_bird|Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|Add9~1_cout\);

-- Location: LCCOMB_X23_Y21_N8
\inst6|flappy_bird|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~2_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (\inst6|flappy_bird|Add9~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (!\inst6|flappy_bird|Add9~1_cout\))
-- \inst6|flappy_bird|Add9~3\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & !\inst6|flappy_bird|Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~1_cout\,
	combout => \inst6|flappy_bird|Add9~2_combout\,
	cout => \inst6|flappy_bird|Add9~3\);

-- Location: LCCOMB_X23_Y21_N10
\inst6|flappy_bird|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~4_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & (\inst6|flappy_bird|Add9~3\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & ((GND) # (!\inst6|flappy_bird|Add9~3\)))
-- \inst6|flappy_bird|Add9~5\ = CARRY((!\inst6|flappy_bird|Add9~3\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~3\,
	combout => \inst6|flappy_bird|Add9~4_combout\,
	cout => \inst6|flappy_bird|Add9~5\);

-- Location: LCCOMB_X23_Y21_N12
\inst6|flappy_bird|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~6_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & ((\inst6|flappy_bird|Add9~5\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (!\inst6|flappy_bird|Add9~5\))
-- \inst6|flappy_bird|Add9~7\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(4)) # (!\inst6|flappy_bird|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~5\,
	combout => \inst6|flappy_bird|Add9~6_combout\,
	cout => \inst6|flappy_bird|Add9~7\);

-- Location: LCCOMB_X23_Y21_N14
\inst6|flappy_bird|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~8_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & (!\inst6|flappy_bird|Add9~7\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & (\inst6|flappy_bird|Add9~7\ $ (GND)))
-- \inst6|flappy_bird|Add9~9\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & !\inst6|flappy_bird|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~7\,
	combout => \inst6|flappy_bird|Add9~8_combout\,
	cout => \inst6|flappy_bird|Add9~9\);

-- Location: LCCOMB_X23_Y21_N16
\inst6|flappy_bird|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~10_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (\inst6|flappy_bird|Add9~9\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (!\inst6|flappy_bird|Add9~9\))
-- \inst6|flappy_bird|Add9~11\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & !\inst6|flappy_bird|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~9\,
	combout => \inst6|flappy_bird|Add9~10_combout\,
	cout => \inst6|flappy_bird|Add9~11\);

-- Location: LCCOMB_X23_Y21_N18
\inst6|flappy_bird|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~12_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|Add9~11\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & (\inst6|flappy_bird|Add9~11\ $ (GND)))
-- \inst6|flappy_bird|Add9~13\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(7)) # (!\inst6|flappy_bird|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~11\,
	combout => \inst6|flappy_bird|Add9~12_combout\,
	cout => \inst6|flappy_bird|Add9~13\);

-- Location: LCCOMB_X23_Y21_N20
\inst6|flappy_bird|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~14_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (\inst6|flappy_bird|Add9~13\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (!\inst6|flappy_bird|Add9~13\))
-- \inst6|flappy_bird|Add9~15\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & !\inst6|flappy_bird|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~13\,
	combout => \inst6|flappy_bird|Add9~14_combout\,
	cout => \inst6|flappy_bird|Add9~15\);

-- Location: LCCOMB_X23_Y21_N22
\inst6|flappy_bird|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~16_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|Add9~15\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & (\inst6|flappy_bird|Add9~15\ $ (GND)))
-- \inst6|flappy_bird|Add9~17\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(9)) # (!\inst6|flappy_bird|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|Add9~15\,
	combout => \inst6|flappy_bird|Add9~16_combout\,
	cout => \inst6|flappy_bird|Add9~17\);

-- Location: LCCOMB_X23_Y21_N24
\inst6|flappy_bird|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add9~18_combout\ = \inst6|flappy_bird|Add9~17\ $ (\inst6|flappy_bird|pipes|pipe3_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	cin => \inst6|flappy_bird|Add9~17\,
	combout => \inst6|flappy_bird|Add9~18_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst6|flappy_bird|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~10_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (!\inst6|flappy_bird|Add6~9\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (\inst6|flappy_bird|Add6~9\ & VCC))
-- \inst6|flappy_bird|Add6~11\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(6) & !\inst6|flappy_bird|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~9\,
	combout => \inst6|flappy_bird|Add6~10_combout\,
	cout => \inst6|flappy_bird|Add6~11\);

-- Location: LCCOMB_X24_Y20_N12
\inst6|flappy_bird|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~12_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|Add6~11\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & (\inst6|flappy_bird|Add6~11\ $ (GND)))
-- \inst6|flappy_bird|Add6~13\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(7)) # (!\inst6|flappy_bird|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~11\,
	combout => \inst6|flappy_bird|Add6~12_combout\,
	cout => \inst6|flappy_bird|Add6~13\);

-- Location: LCCOMB_X22_Y20_N2
\inst6|flappy_bird|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~2_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (\inst6|flappy_bird|Add7~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (!\inst6|flappy_bird|Add7~1_cout\))
-- \inst6|flappy_bird|Add7~3\ = CARRY((!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & !\inst6|flappy_bird|Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~1_cout\,
	combout => \inst6|flappy_bird|Add7~2_combout\,
	cout => \inst6|flappy_bird|Add7~3\);

-- Location: LCCOMB_X22_Y20_N4
\inst6|flappy_bird|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~4_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & ((GND) # (!\inst6|flappy_bird|Add7~3\))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & (\inst6|flappy_bird|Add7~3\ $ (GND)))
-- \inst6|flappy_bird|Add7~5\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(3)) # (!\inst6|flappy_bird|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~3\,
	combout => \inst6|flappy_bird|Add7~4_combout\,
	cout => \inst6|flappy_bird|Add7~5\);

-- Location: LCCOMB_X22_Y20_N6
\inst6|flappy_bird|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~6_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & ((\inst6|flappy_bird|Add7~5\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & (!\inst6|flappy_bird|Add7~5\))
-- \inst6|flappy_bird|Add7~7\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(4)) # (!\inst6|flappy_bird|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~5\,
	combout => \inst6|flappy_bird|Add7~6_combout\,
	cout => \inst6|flappy_bird|Add7~7\);

-- Location: LCCOMB_X22_Y20_N8
\inst6|flappy_bird|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~8_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & (\inst6|flappy_bird|Add7~7\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & (!\inst6|flappy_bird|Add7~7\ & VCC))
-- \inst6|flappy_bird|Add7~9\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & !\inst6|flappy_bird|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~7\,
	combout => \inst6|flappy_bird|Add7~8_combout\,
	cout => \inst6|flappy_bird|Add7~9\);

-- Location: LCCOMB_X22_Y20_N10
\inst6|flappy_bird|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~10_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (!\inst6|flappy_bird|Add7~9\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (\inst6|flappy_bird|Add7~9\ & VCC))
-- \inst6|flappy_bird|Add7~11\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & !\inst6|flappy_bird|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~9\,
	combout => \inst6|flappy_bird|Add7~10_combout\,
	cout => \inst6|flappy_bird|Add7~11\);

-- Location: LCCOMB_X22_Y20_N12
\inst6|flappy_bird|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~12_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & (\inst6|flappy_bird|Add7~11\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|Add7~11\)))
-- \inst6|flappy_bird|Add7~13\ = CARRY((!\inst6|flappy_bird|Add7~11\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~11\,
	combout => \inst6|flappy_bird|Add7~12_combout\,
	cout => \inst6|flappy_bird|Add7~13\);

-- Location: FF_X33_Y24_N23
\inst|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[8]~25_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(8));

-- Location: FF_X33_Y24_N13
\inst|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[3]~15_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(3));

-- Location: FF_X33_Y24_N11
\inst|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[2]~13_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(2));

-- Location: FF_X33_Y24_N9
\inst|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[1]~11_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(1));

-- Location: LCCOMB_X33_Y24_N8
\inst|inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[1]~11_combout\ = (\inst|inhibit_wait_count\(1) & (\inst|inhibit_wait_count\(0) $ (VCC))) # (!\inst|inhibit_wait_count\(1) & (\inst|inhibit_wait_count\(0) & VCC))
-- \inst|inhibit_wait_count[1]~12\ = CARRY((\inst|inhibit_wait_count\(1) & \inst|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(1),
	datab => \inst|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst|inhibit_wait_count[1]~11_combout\,
	cout => \inst|inhibit_wait_count[1]~12\);

-- Location: LCCOMB_X33_Y24_N10
\inst|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[2]~13_combout\ = (\inst|inhibit_wait_count\(2) & (!\inst|inhibit_wait_count[1]~12\)) # (!\inst|inhibit_wait_count\(2) & ((\inst|inhibit_wait_count[1]~12\) # (GND)))
-- \inst|inhibit_wait_count[2]~14\ = CARRY((!\inst|inhibit_wait_count[1]~12\) # (!\inst|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst|inhibit_wait_count[1]~12\,
	combout => \inst|inhibit_wait_count[2]~13_combout\,
	cout => \inst|inhibit_wait_count[2]~14\);

-- Location: LCCOMB_X33_Y24_N12
\inst|inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[3]~15_combout\ = (\inst|inhibit_wait_count\(3) & (\inst|inhibit_wait_count[2]~14\ $ (GND))) # (!\inst|inhibit_wait_count\(3) & (!\inst|inhibit_wait_count[2]~14\ & VCC))
-- \inst|inhibit_wait_count[3]~16\ = CARRY((\inst|inhibit_wait_count\(3) & !\inst|inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst|inhibit_wait_count[2]~14\,
	combout => \inst|inhibit_wait_count[3]~15_combout\,
	cout => \inst|inhibit_wait_count[3]~16\);

-- Location: LCCOMB_X33_Y24_N22
\inst|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[8]~25_combout\ = (\inst|inhibit_wait_count\(8) & (!\inst|inhibit_wait_count[7]~24\)) # (!\inst|inhibit_wait_count\(8) & ((\inst|inhibit_wait_count[7]~24\) # (GND)))
-- \inst|inhibit_wait_count[8]~26\ = CARRY((!\inst|inhibit_wait_count[7]~24\) # (!\inst|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst|inhibit_wait_count[7]~24\,
	combout => \inst|inhibit_wait_count[8]~25_combout\,
	cout => \inst|inhibit_wait_count[8]~26\);

-- Location: LCCOMB_X23_Y17_N30
\inst6|pipes|pipe_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~1_combout\ = (\inst3|pixel_row\(5) & ((\inst3|pixel_row\(4)) # (\inst3|pixel_row\(8)))) # (!\inst3|pixel_row\(5) & (\inst3|pixel_row\(4) & \inst3|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst3|pixel_row\(4),
	datac => \inst3|pixel_row\(8),
	combout => \inst6|pipes|pipe_on~1_combout\);

-- Location: FF_X19_Y20_N17
\inst6|flappy_bird|pipes|pipe2_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(3));

-- Location: LCCOMB_X23_Y17_N16
\inst6|gameover|text_on2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_on2|Mux0~0_combout\ = (\inst3|pixel_column\(3) & (((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(5)) # (\inst3|pixel_column\(2))))) # (!\inst3|pixel_column\(3) & 
-- (\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(7) & ((!\inst3|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst3|pixel_column\(3),
	datad => \inst3|pixel_column\(2),
	combout => \inst6|gameover|text_on2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst6|gameover|text_on2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_on2|Mux0~1_combout\ = (\inst6|gameover|text_on2|Mux0~0_combout\ & ((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(4)) # ((!\inst3|pixel_column\(2))))) # (!\inst6|gameover|text_on2|Mux0~0_combout\ & 
-- (((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(6) & \inst3|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst6|gameover|text_on2|Mux0~0_combout\,
	datac => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|pixel_column\(2),
	combout => \inst6|gameover|text_on2|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst6|gameover|text_on2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_on2|Mux0~2_combout\ = (\inst3|pixel_column\(3) & ((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(1)) # ((\inst3|pixel_column\(2))))) # (!\inst3|pixel_column\(3) & 
-- (((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(3) & !\inst3|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst3|pixel_column\(3),
	datad => \inst3|pixel_column\(2),
	combout => \inst6|gameover|text_on2|Mux0~2_combout\);

-- Location: LCCOMB_X21_Y20_N8
\inst6|gameover|text_on2|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_on2|Mux0~3_combout\ = (\inst3|pixel_column\(2) & ((\inst6|gameover|text_on2|Mux0~2_combout\ & ((\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst6|gameover|text_on2|Mux0~2_combout\ & 
-- (\inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst3|pixel_column\(2) & (((\inst6|gameover|text_on2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(2),
	datab => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst6|gameover|text_on2|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst6|gameover|text_on2|Mux0~2_combout\,
	combout => \inst6|gameover|text_on2|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y22_N8
\inst6|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = (\inst18|s_state\(0) & \inst18|s_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|s_state\(0),
	datac => \inst18|s_state\(1),
	combout => \inst6|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y22_N26
\inst6|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|red~0_combout\ = (!\inst6|Equal1~0_combout\ & ((\inst3|pixel_column\(4) & ((!\inst6|gameover|text_on2|Mux0~3_combout\))) # (!\inst3|pixel_column\(4) & (!\inst6|gameover|text_on2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_on2|Mux0~1_combout\,
	datab => \inst6|Equal1~0_combout\,
	datac => \inst3|pixel_column\(4),
	datad => \inst6|gameover|text_on2|Mux0~3_combout\,
	combout => \inst6|red~0_combout\);

-- Location: LCCOMB_X21_Y22_N22
\inst3|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~2_combout\ = (\inst3|video_on_h~q\ & (!\inst6|red~1_combout\ & (\inst3|video_on_v~q\ & \inst6|red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|video_on_h~q\,
	datab => \inst6|red~1_combout\,
	datac => \inst3|video_on_v~q\,
	datad => \inst6|red~0_combout\,
	combout => \inst3|red_out~2_combout\);

-- Location: LCCOMB_X27_Y21_N28
\inst6|gameover|text_display~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~4_combout\ = (!\inst3|pixel_column\(4) & (((!\inst3|pixel_column\(1) & !\inst3|pixel_column\(2))) # (!\inst3|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(1),
	datab => \inst3|pixel_column\(3),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(4),
	combout => \inst6|gameover|text_display~4_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst6|flappy_bird|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan1~0_combout\ = (\inst3|pixel_column\(5) & !\inst6|gameover|text_display~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datac => \inst6|gameover|text_display~4_combout\,
	combout => \inst6|flappy_bird|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst6|flappy_bird|ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_on~0_combout\ = (\inst6|flappy_bird|LessThan1~0_combout\ & (!\inst3|pixel_column\(6) & ((\inst6|flappy_bird|Add0~8_combout\) # (!\inst6|flappy_bird|LessThan0~0_combout\)))) # (!\inst6|flappy_bird|LessThan1~0_combout\ & 
-- (((\inst6|flappy_bird|Add0~8_combout\)) # (!\inst6|flappy_bird|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|LessThan1~0_combout\,
	datab => \inst6|flappy_bird|LessThan0~0_combout\,
	datac => \inst6|flappy_bird|Add0~8_combout\,
	datad => \inst3|pixel_column\(6),
	combout => \inst6|flappy_bird|ball_on~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst6|flappy_bird|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan0~1_combout\ = (!\inst6|flappy_bird|Add0~6_combout\ & (\inst6|flappy_bird|LessThan0~0_combout\ & (!\inst6|flappy_bird|Add0~4_combout\ & !\inst6|flappy_bird|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add0~6_combout\,
	datab => \inst6|flappy_bird|LessThan0~0_combout\,
	datac => \inst6|flappy_bird|Add0~4_combout\,
	datad => \inst6|flappy_bird|Add0~2_combout\,
	combout => \inst6|flappy_bird|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst6|text_display|text_on|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_on|Mux0~2_combout\ = (\inst3|pixel_column\(2) & (((\inst3|pixel_column\(3))))) # (!\inst3|pixel_column\(2) & ((\inst3|pixel_column\(3) & (\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(1))) # 
-- (!\inst3|pixel_column\(3) & ((\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst3|pixel_column\(2),
	datac => \inst3|pixel_column\(3),
	datad => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst6|text_display|text_on|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst6|text_display|text_on|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_on|Mux0~3_combout\ = (\inst3|pixel_column\(2) & ((\inst6|text_display|text_on|Mux0~2_combout\ & ((\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst6|text_display|text_on|Mux0~2_combout\ & 
-- (\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst3|pixel_column\(2) & (((\inst6|text_display|text_on|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst3|pixel_column\(2),
	datac => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst6|text_display|text_on|Mux0~2_combout\,
	combout => \inst6|text_display|text_on|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst18|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|comb~0_combout\ = ((\control_pb2~input_o\ & !\control_pb3~input_o\)) # (!\control_pb1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_pb1~input_o\,
	datac => \control_pb2~input_o\,
	datad => \control_pb3~input_o\,
	combout => \inst18|comb~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst18|s_state[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|s_state[1]~0_combout\ = (!\control_pb3~input_o\) # (!\control_pb2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_pb2~input_o\,
	datac => \control_pb3~input_o\,
	combout => \inst18|s_state[1]~0_combout\);

-- Location: FF_X22_Y21_N31
\inst6|flappy_bird|pipes|pipe3_x_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|LessThan10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_motion\(4));

-- Location: FF_X24_Y22_N31
\inst6|flappy_bird|pipes|pipe_x_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_motion\(4));

-- Location: LCCOMB_X27_Y20_N8
\inst6|gameover|text_display~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~5_combout\ = (\inst3|pixel_column\(5) & (\inst3|pixel_column\(4) & !\inst3|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst3|pixel_column\(4),
	datac => \inst3|pixel_column\(6),
	combout => \inst6|gameover|text_display~5_combout\);

-- Location: LCCOMB_X27_Y20_N10
\inst6|gameover|text_display~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~6_combout\ = (!\inst3|pixel_column\(5) & \inst3|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datac => \inst3|pixel_column\(6),
	combout => \inst6|gameover|text_display~6_combout\);

-- Location: LCCOMB_X27_Y21_N30
\inst6|gameover|text_display~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~7_combout\ = (!\inst3|pixel_column\(2) & !\inst3|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(2),
	datac => \inst3|pixel_column\(1),
	combout => \inst6|gameover|text_display~7_combout\);

-- Location: LCCOMB_X27_Y20_N0
\inst6|gameover|text_display~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~8_combout\ = (\inst6|gameover|text_display~6_combout\ & (((!\inst3|pixel_column\(3) & \inst6|gameover|text_display~7_combout\)) # (!\inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst6|gameover|text_display~7_combout\,
	datad => \inst6|gameover|text_display~6_combout\,
	combout => \inst6|gameover|text_display~8_combout\);

-- Location: LCCOMB_X27_Y20_N14
\inst6|gameover|text_display~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~9_combout\ = (\inst3|pixel_column\(3) & (!\inst3|pixel_column\(6) & (\inst3|pixel_column\(5) & \inst6|gameover|LessThan28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(6),
	datac => \inst3|pixel_column\(5),
	datad => \inst6|gameover|LessThan28~0_combout\,
	combout => \inst6|gameover|text_display~9_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst6|gameover|text_display~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~10_combout\ = (\inst3|pixel_row\(5) & (\inst3|pixel_row\(7) & (!\inst3|pixel_row\(8) & \inst3|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst3|pixel_row\(7),
	datac => \inst3|pixel_row\(8),
	datad => \inst3|pixel_row\(6),
	combout => \inst6|gameover|text_display~10_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst6|gameover|LessThan30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|LessThan30~0_combout\ = (!\inst3|pixel_row\(3) & (!\inst3|pixel_row\(2) & (!\inst3|pixel_row\(1) & !\inst3|pixel_row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(3),
	datab => \inst3|pixel_row\(2),
	datac => \inst3|pixel_row\(1),
	datad => \inst3|pixel_row\(0),
	combout => \inst6|gameover|LessThan30~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst6|gameover|text_display~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~11_combout\ = (\inst6|gameover|text_display~10_combout\ & (((\inst3|pixel_row\(4)) # (\inst3|pixel_row\(8))) # (!\inst6|gameover|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|LessThan30~0_combout\,
	datab => \inst3|pixel_row\(4),
	datac => \inst3|pixel_row\(8),
	datad => \inst6|gameover|text_display~10_combout\,
	combout => \inst6|gameover|text_display~11_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst6|gameover|text_display~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~12_combout\ = ((!\inst6|gameover|text_display~9_combout\ & (!\inst6|gameover|text_display~5_combout\ & !\inst6|gameover|text_display~8_combout\))) # (!\inst6|gameover|text_display~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~39_combout\,
	datab => \inst6|gameover|text_display~9_combout\,
	datac => \inst6|gameover|text_display~5_combout\,
	datad => \inst6|gameover|text_display~8_combout\,
	combout => \inst6|gameover|text_display~12_combout\);

-- Location: LCCOMB_X27_Y21_N18
\inst6|gameover|text_display~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~13_combout\ = (\inst3|pixel_column\(5) & (\inst6|text_display|text_display~4_combout\ & ((\inst6|gameover|LessThan28~0_combout\) # (!\inst6|text_display|text_display~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst6|text_display|text_display~5_combout\,
	datac => \inst6|gameover|LessThan28~0_combout\,
	datad => \inst6|text_display|text_display~4_combout\,
	combout => \inst6|gameover|text_display~13_combout\);

-- Location: LCCOMB_X27_Y21_N12
\inst6|gameover|text_display~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~14_combout\ = (\inst6|text_display|LessThan32~2_combout\ & (\inst3|pixel_column\(8) & \inst6|gameover|text_display~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan32~2_combout\,
	datab => \inst3|pixel_column\(8),
	datad => \inst6|gameover|text_display~4_combout\,
	combout => \inst6|gameover|text_display~14_combout\);

-- Location: LCCOMB_X27_Y21_N14
\inst6|gameover|text_display~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~15_combout\ = (!\inst3|pixel_column\(9) & (\inst6|gameover|text_display~11_combout\ & ((\inst6|gameover|text_display~13_combout\) # (\inst6|gameover|text_display~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datab => \inst6|gameover|text_display~13_combout\,
	datac => \inst6|gameover|text_display~11_combout\,
	datad => \inst6|gameover|text_display~14_combout\,
	combout => \inst6|gameover|text_display~15_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst6|gameover|LessThan30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|LessThan30~1_combout\ = (!\inst3|pixel_row\(4) & !\inst3|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(4),
	datac => \inst3|pixel_row\(8),
	combout => \inst6|gameover|LessThan30~1_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst6|gameover|text_display~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~16_combout\ = (\inst6|gameover|text_display~10_combout\ & (\inst6|text_display|LessThan25~0_combout\ & ((!\inst6|gameover|LessThan30~0_combout\) # (!\inst6|gameover|LessThan30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|LessThan30~1_combout\,
	datab => \inst6|gameover|text_display~10_combout\,
	datac => \inst6|gameover|LessThan30~0_combout\,
	datad => \inst6|text_display|LessThan25~0_combout\,
	combout => \inst6|gameover|text_display~16_combout\);

-- Location: LCCOMB_X27_Y20_N26
\inst6|gameover|text_display~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~17_combout\ = (\inst6|gameover|text_display~5_combout\ & ((\inst3|pixel_column\(3)) # (\inst6|gameover|LessThan28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datac => \inst6|gameover|text_display~5_combout\,
	datad => \inst6|gameover|LessThan28~0_combout\,
	combout => \inst6|gameover|text_display~17_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst6|gameover|text_display~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~18_combout\ = (\inst6|gameover|text_display~6_combout\ & (((\inst6|gameover|text_display~7_combout\) # (!\inst3|pixel_column\(4))) # (!\inst3|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst6|gameover|text_display~7_combout\,
	datad => \inst6|gameover|text_display~6_combout\,
	combout => \inst6|gameover|text_display~18_combout\);

-- Location: LCCOMB_X27_Y20_N6
\inst6|gameover|text_display~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~19_combout\ = (\inst6|gameover|text_display~16_combout\ & (!\inst3|pixel_column\(7) & ((\inst6|gameover|text_display~18_combout\) # (\inst6|gameover|text_display~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~16_combout\,
	datab => \inst6|gameover|text_display~18_combout\,
	datac => \inst6|gameover|text_display~17_combout\,
	datad => \inst3|pixel_column\(7),
	combout => \inst6|gameover|text_display~19_combout\);

-- Location: LCCOMB_X27_Y20_N28
\inst6|gameover|text_display~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~21_combout\ = (\inst3|pixel_column\(3) & (!\inst3|pixel_column\(5) & \inst6|gameover|LessThan28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datac => \inst3|pixel_column\(5),
	datad => \inst6|gameover|LessThan28~0_combout\,
	combout => \inst6|gameover|text_display~21_combout\);

-- Location: LCCOMB_X27_Y20_N22
\inst6|gameover|text_display~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~22_combout\ = (\inst3|pixel_column\(5) & (((\inst6|gameover|text_display~7_combout\ & !\inst3|pixel_column\(3))) # (!\inst3|pixel_column\(4)))) # (!\inst3|pixel_column\(5) & (\inst3|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst3|pixel_column\(4),
	datac => \inst6|gameover|text_display~7_combout\,
	datad => \inst3|pixel_column\(3),
	combout => \inst6|gameover|text_display~22_combout\);

-- Location: LCCOMB_X27_Y20_N16
\inst6|gameover|text_display~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~23_combout\ = (\inst6|gameover|text_display~20_combout\ & (\inst6|gameover|text_display~16_combout\ & ((\inst6|gameover|text_display~22_combout\) # (\inst6|gameover|text_display~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~22_combout\,
	datab => \inst6|gameover|text_display~20_combout\,
	datac => \inst6|gameover|text_display~16_combout\,
	datad => \inst6|gameover|text_display~21_combout\,
	combout => \inst6|gameover|text_display~23_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst6|gameover|character_address[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[5]~2_combout\ = (!\inst6|gameover|text_display~19_combout\ & (!\inst6|gameover|text_display~23_combout\ & !\inst6|gameover|text_display~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~19_combout\,
	datab => \inst6|gameover|text_display~23_combout\,
	datad => \inst6|gameover|text_display~15_combout\,
	combout => \inst6|gameover|character_address[5]~2_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst6|gameover|character_address[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[5]~3_combout\ = (\inst6|gameover|text_display~12_combout\ & (\inst6|gameover|character_address[5]~2_combout\ & ((!\inst6|text_display|text_display~7_combout\) # (!\inst6|text_display|text_display~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~12_combout\,
	datab => \inst6|text_display|text_display~8_combout\,
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|gameover|character_address[5]~2_combout\,
	combout => \inst6|gameover|character_address[5]~3_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst6|gameover|text_display~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~26_combout\ = (\inst3|pixel_column\(6) & (\inst6|gameover|LessThan28~0_combout\ & (!\inst3|pixel_column\(7) & \inst6|gameover|text_display~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datab => \inst6|gameover|LessThan28~0_combout\,
	datac => \inst3|pixel_column\(7),
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|gameover|text_display~26_combout\);

-- Location: LCCOMB_X27_Y18_N12
\inst6|gameover|text_display~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~28_combout\ = (\inst6|gameover|text_display~26_combout\) # ((!\inst6|gameover|LessThan17~0_combout\ & (\inst6|gameover|text_display~27_combout\ & \inst3|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|LessThan17~0_combout\,
	datab => \inst6|gameover|text_display~27_combout\,
	datac => \inst3|pixel_column\(7),
	datad => \inst6|gameover|text_display~26_combout\,
	combout => \inst6|gameover|text_display~28_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst6|gameover|text_display~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~29_combout\ = (\inst6|gameover|text_display~16_combout\ & ((\inst6|gameover|text_display~28_combout\) # ((!\inst3|pixel_column\(7) & \inst6|gameover|text_display~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst6|gameover|text_display~25_combout\,
	datac => \inst6|gameover|text_display~16_combout\,
	datad => \inst6|gameover|text_display~28_combout\,
	combout => \inst6|gameover|text_display~29_combout\);

-- Location: LCCOMB_X27_Y20_N2
\inst6|gameover|text_display~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~30_combout\ = (\inst6|gameover|text_display~39_combout\ & (!\inst6|flappy_bird|LessThan1~0_combout\ & (!\inst3|pixel_column\(6) & \inst6|gameover|text_display~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~39_combout\,
	datab => \inst6|flappy_bird|LessThan1~0_combout\,
	datac => \inst3|pixel_column\(6),
	datad => \inst6|gameover|text_display~40_combout\,
	combout => \inst6|gameover|text_display~30_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst6|gameover|character_address[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[5]~4_combout\ = (!\inst6|gameover|text_display~29_combout\ & !\inst6|gameover|text_display~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|gameover|text_display~29_combout\,
	datad => \inst6|gameover|text_display~30_combout\,
	combout => \inst6|gameover|character_address[5]~4_combout\);

-- Location: LCCOMB_X27_Y20_N24
\inst6|gameover|text_display~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~31_combout\ = (\inst3|pixel_column\(4) & (!\inst3|pixel_column\(5) & ((\inst3|pixel_column\(3)) # (\inst6|gameover|LessThan28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst3|pixel_column\(5),
	datad => \inst6|gameover|LessThan28~0_combout\,
	combout => \inst6|gameover|text_display~31_combout\);

-- Location: LCCOMB_X27_Y20_N18
\inst6|gameover|text_display~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~32_combout\ = (\inst3|pixel_column\(5) & (((\inst6|gameover|text_display~7_combout\) # (!\inst3|pixel_column\(3))) # (!\inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst3|pixel_column\(4),
	datac => \inst6|gameover|text_display~7_combout\,
	datad => \inst3|pixel_column\(3),
	combout => \inst6|gameover|text_display~32_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst6|gameover|text_display~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~33_combout\ = (\inst6|gameover|text_display~39_combout\ & (\inst3|pixel_column\(6) & ((\inst6|gameover|text_display~32_combout\) # (\inst6|gameover|text_display~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~39_combout\,
	datab => \inst6|gameover|text_display~32_combout\,
	datac => \inst3|pixel_column\(6),
	datad => \inst6|gameover|text_display~31_combout\,
	combout => \inst6|gameover|text_display~33_combout\);

-- Location: LCCOMB_X27_Y21_N2
\inst6|gameover|text_display~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~34_combout\ = (!\inst3|pixel_column\(8) & \inst3|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(8),
	datac => \inst3|pixel_column\(7),
	combout => \inst6|gameover|text_display~34_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst6|gameover|text_display~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~35_combout\ = (\inst3|pixel_column\(6) & (((!\inst6|gameover|LessThan17~0_combout\)) # (!\inst3|pixel_column\(5)))) # (!\inst3|pixel_column\(6) & (((\inst6|text_display|LessThan29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datab => \inst3|pixel_column\(5),
	datac => \inst6|text_display|LessThan29~2_combout\,
	datad => \inst6|gameover|LessThan17~0_combout\,
	combout => \inst6|gameover|text_display~35_combout\);

-- Location: LCCOMB_X27_Y21_N20
\inst6|gameover|text_display~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~36_combout\ = (!\inst3|pixel_column\(9) & (\inst6|gameover|text_display~35_combout\ & (\inst6|gameover|text_display~11_combout\ & \inst6|gameover|text_display~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datab => \inst6|gameover|text_display~35_combout\,
	datac => \inst6|gameover|text_display~11_combout\,
	datad => \inst6|gameover|text_display~34_combout\,
	combout => \inst6|gameover|text_display~36_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst6|gameover|character_address[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[5]~5_combout\ = (\inst6|gameover|character_address[5]~4_combout\ & (!\inst6|gameover|text_display~33_combout\ & (\inst6|gameover|character_address[5]~3_combout\ & !\inst6|gameover|text_display~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[5]~4_combout\,
	datab => \inst6|gameover|text_display~33_combout\,
	datac => \inst6|gameover|character_address[5]~3_combout\,
	datad => \inst6|gameover|text_display~36_combout\,
	combout => \inst6|gameover|character_address[5]~5_combout\);

-- Location: LCCOMB_X26_Y20_N8
\inst6|gameover|character_address[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[0]~6_combout\ = ((\inst6|gameover|text_display~29_combout\) # (\inst6|gameover|text_display~36_combout\)) # (!\inst6|gameover|character_address[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|gameover|character_address[5]~2_combout\,
	datac => \inst6|gameover|text_display~29_combout\,
	datad => \inst6|gameover|text_display~36_combout\,
	combout => \inst6|gameover|character_address[0]~6_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst6|gameover|character_address[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[0]~7_combout\ = (\inst6|gameover|character_address[5]~5_combout\) # ((\inst6|gameover|character_address[0]~6_combout\) # ((!\inst6|gameover|text_display~12_combout\ & !\inst6|gameover|text_display~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[5]~5_combout\,
	datab => \inst6|gameover|character_address[0]~6_combout\,
	datac => \inst6|gameover|text_display~12_combout\,
	datad => \inst6|gameover|text_display~30_combout\,
	combout => \inst6|gameover|character_address[0]~7_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst6|text_display|text_display~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~9_combout\ = (\inst3|pixel_column\(3) & (\inst3|pixel_column\(4) & (\inst3|pixel_column\(2) & \inst3|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(5),
	combout => \inst6|text_display|text_display~9_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst6|gameover|text_display~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~37_combout\ = (!\inst6|text_display|text_display~32_combout\) # (!\inst6|text_display|text_display~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|text_display|text_display~32_combout\,
	combout => \inst6|gameover|text_display~37_combout\);

-- Location: LCCOMB_X26_Y20_N6
\inst6|gameover|character_address[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[4]~8_combout\ = (\inst6|text_display|text_display~7_combout\ & \inst6|text_display|text_display~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|text_display|text_display~12_combout\,
	combout => \inst6|gameover|character_address[4]~8_combout\);

-- Location: LCCOMB_X26_Y20_N16
\inst6|gameover|character_address[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[0]~9_combout\ = (\inst6|gameover|character_address[0]~7_combout\ & (((\inst6|gameover|text_display~37_combout\ & \inst6|gameover|character_address[4]~8_combout\)) # (!\inst6|gameover|character_address[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[0]~7_combout\,
	datab => \inst6|gameover|text_display~37_combout\,
	datac => \inst6|gameover|character_address[5]~5_combout\,
	datad => \inst6|gameover|character_address[4]~8_combout\,
	combout => \inst6|gameover|character_address[0]~9_combout\);

-- Location: LCCOMB_X26_Y20_N18
\inst6|gameover|character_address[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[1]~10_combout\ = (\inst6|gameover|character_address[5]~2_combout\ & (((\inst6|gameover|text_display~33_combout\ & \inst6|gameover|text_display~12_combout\)) # (!\inst6|gameover|character_address[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[5]~4_combout\,
	datab => \inst6|gameover|text_display~33_combout\,
	datac => \inst6|gameover|text_display~12_combout\,
	datad => \inst6|gameover|character_address[5]~2_combout\,
	combout => \inst6|gameover|character_address[1]~10_combout\);

-- Location: LCCOMB_X26_Y21_N30
\inst6|gameover|character_address[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[1]~11_combout\ = (\inst6|text_display|text_display~7_combout\ & ((\inst6|text_display|text_display~32_combout\) # (\inst6|text_display|text_display~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|text_display|text_display~7_combout\,
	datac => \inst6|text_display|text_display~32_combout\,
	datad => \inst6|text_display|text_display~12_combout\,
	combout => \inst6|gameover|character_address[1]~11_combout\);

-- Location: LCCOMB_X26_Y20_N24
\inst6|gameover|character_address[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[1]~12_combout\ = (\inst6|gameover|character_address[1]~10_combout\) # ((\inst6|gameover|text_display~36_combout\) # ((\inst6|gameover|character_address[5]~3_combout\ & \inst6|gameover|character_address[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[5]~3_combout\,
	datab => \inst6|gameover|character_address[1]~10_combout\,
	datac => \inst6|gameover|character_address[1]~11_combout\,
	datad => \inst6|gameover|text_display~36_combout\,
	combout => \inst6|gameover|character_address[1]~12_combout\);

-- Location: LCCOMB_X26_Y20_N22
\inst6|gameover|character_address[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[2]~13_combout\ = (!\inst6|gameover|text_display~30_combout\ & (!\inst6|gameover|text_display~29_combout\ & (\inst6|gameover|text_display~12_combout\ & !\inst6|gameover|text_display~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~30_combout\,
	datab => \inst6|gameover|text_display~29_combout\,
	datac => \inst6|gameover|text_display~12_combout\,
	datad => \inst6|gameover|text_display~23_combout\,
	combout => \inst6|gameover|character_address[2]~13_combout\);

-- Location: LCCOMB_X26_Y20_N20
\inst6|gameover|character_address[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[2]~14_combout\ = (\inst6|gameover|text_display~36_combout\) # ((!\inst6|gameover|text_display~15_combout\ & ((\inst6|gameover|text_display~19_combout\) # (!\inst6|gameover|character_address[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~19_combout\,
	datab => \inst6|gameover|text_display~36_combout\,
	datac => \inst6|gameover|character_address[2]~13_combout\,
	datad => \inst6|gameover|text_display~15_combout\,
	combout => \inst6|gameover|character_address[2]~14_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst6|gameover|character_address~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address~15_combout\ = (!\inst6|gameover|text_display~15_combout\ & ((\inst6|gameover|text_display~23_combout\) # ((!\inst6|gameover|text_display~19_combout\ & \inst6|gameover|text_display~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~19_combout\,
	datab => \inst6|gameover|text_display~23_combout\,
	datac => \inst6|gameover|text_display~29_combout\,
	datad => \inst6|gameover|text_display~15_combout\,
	combout => \inst6|gameover|character_address~15_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst6|gameover|character_address[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[4]~16_combout\ = ((\inst6|gameover|text_display~37_combout\ & (\inst6|gameover|character_address[5]~5_combout\ & \inst6|gameover|character_address[4]~8_combout\))) # (!\inst6|gameover|character_address[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[0]~7_combout\,
	datab => \inst6|gameover|text_display~37_combout\,
	datac => \inst6|gameover|character_address[5]~5_combout\,
	datad => \inst6|gameover|character_address[4]~8_combout\,
	combout => \inst6|gameover|character_address[4]~16_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst6|text_display|LessThan33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan33~0_combout\ = (\inst3|pixel_column\(5) & ((\inst3|pixel_column\(2)) # ((\inst3|pixel_column\(0) & \inst3|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(0),
	datab => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(5),
	combout => \inst6|text_display|LessThan33~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst6|text_display|text_display~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~22_combout\ = (\inst6|text_display|text_display~16_combout\ & \inst6|text_display|text_display~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~13_combout\,
	combout => \inst6|text_display|text_display~22_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst6|text_display|character_address~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address~19_combout\ = ((!\inst6|text_display|text_display~17_combout\ & !\inst6|text_display|text_display~19_combout\)) # (!\inst6|text_display|text_display~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~19_combout\,
	combout => \inst6|text_display|character_address~19_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst6|text_display|character_address[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[0]~20_combout\ = (\inst6|text_display|character_address[0]~34_combout\) # (((!\inst6|text_display|text_display~22_combout\ & \inst6|text_display|text_display~21_combout\)) # 
-- (!\inst6|text_display|character_address~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~22_combout\,
	datab => \inst6|text_display|character_address[0]~34_combout\,
	datac => \inst6|text_display|character_address~19_combout\,
	datad => \inst6|text_display|text_display~21_combout\,
	combout => \inst6|text_display|character_address[0]~20_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst6|text_display|character_address[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[1]~26_combout\ = (\inst6|text_display|text_display~22_combout\ & ((\inst6|text_display|character_address[1]~36_combout\) # ((\inst6|text_display|text_display~25_combout\ & 
-- !\inst6|text_display|text_display~27_combout\)))) # (!\inst6|text_display|text_display~22_combout\ & (\inst6|text_display|text_display~25_combout\ & (!\inst6|text_display|text_display~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~22_combout\,
	datab => \inst6|text_display|text_display~25_combout\,
	datac => \inst6|text_display|text_display~27_combout\,
	datad => \inst6|text_display|character_address[1]~36_combout\,
	combout => \inst6|text_display|character_address[1]~26_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst6|text_display|text_display~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~31_combout\ = (\inst6|text_display|text_display~16_combout\ & \inst6|text_display|text_display~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~12_combout\,
	combout => \inst6|text_display|text_display~31_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst6|text_display|character_address~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address~31_combout\ = (!\inst6|text_display|text_display~31_combout\ & ((\inst6|text_display|text_display~20_combout\) # ((\inst6|text_display|text_display~29_combout\ & !\inst6|gameover|text_display~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~31_combout\,
	datab => \inst6|text_display|text_display~29_combout\,
	datac => \inst6|text_display|text_display~20_combout\,
	datad => \inst6|gameover|text_display~38_combout\,
	combout => \inst6|text_display|character_address~31_combout\);

-- Location: FF_X31_Y20_N31
\inst|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~0_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(2));

-- Location: LCCOMB_X22_Y17_N8
\inst3|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~9_combout\ = (!\inst3|v_count\(5) & (!\inst3|v_count\(4) & ((!\inst3|v_count\(3)) # (!\inst3|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(2),
	datab => \inst3|v_count\(3),
	datac => \inst3|v_count\(5),
	datad => \inst3|v_count\(4),
	combout => \inst3|process_0~9_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst3|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~10_combout\ = (!\inst3|v_count\(8) & (!\inst3|v_count\(7) & (\inst3|process_0~9_combout\ & !\inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datab => \inst3|v_count\(7),
	datac => \inst3|process_0~9_combout\,
	datad => \inst3|v_count\(6),
	combout => \inst3|process_0~10_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst6|flappy_bird|pipes|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan10~0_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(1)) # (((!\inst6|flappy_bird|pipes|pipe3_x_pos\(5)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(3),
	datac => \inst6|flappy_bird|pipes|pipe3_x_pos\(4),
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	combout => \inst6|flappy_bird|pipes|LessThan10~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\inst6|flappy_bird|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan12~0_combout\ = (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & !\inst6|flappy_bird|pipes|pipe3_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datac => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	combout => \inst6|flappy_bird|LessThan12~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst6|flappy_bird|pipes|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan10~1_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(10) & (((\inst6|flappy_bird|pipes|LessThan10~0_combout\) # (\inst6|flappy_bird|pipes|pipe3_x_pos\(2))) # (!\inst6|flappy_bird|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|LessThan12~0_combout\,
	datab => \inst6|flappy_bird|pipes|LessThan10~0_combout\,
	datac => \inst6|flappy_bird|pipes|pipe3_x_pos\(2),
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	combout => \inst6|flappy_bird|pipes|LessThan10~1_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst6|flappy_bird|pipes|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan8~0_combout\ = (((\inst6|flappy_bird|pipes|pipe_x_pos\(2)) # (\inst6|flappy_bird|pipes|pipe_x_pos\(4))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(3),
	datac => \inst6|flappy_bird|pipes|pipe_x_pos\(2),
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(4),
	combout => \inst6|flappy_bird|pipes|LessThan8~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\inst6|flappy_bird|pipes|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan8~1_combout\ = (!\inst6|flappy_bird|pipes|pipe_x_pos\(10) & ((\inst6|flappy_bird|pipes|pipe_x_pos\(1)) # ((\inst6|flappy_bird|pipes|LessThan8~0_combout\) # (!\inst6|flappy_bird|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	datac => \inst6|flappy_bird|pipes|LessThan8~0_combout\,
	datad => \inst6|flappy_bird|LessThan6~0_combout\,
	combout => \inst6|flappy_bird|pipes|LessThan8~1_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst6|flappy_bird|collision_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~0_combout\ = (!\inst6|flappy_bird|Add9~6_combout\ & (((!\inst6|flappy_bird|Add9~2_combout\ & \inst6|flappy_bird|pipes|pipe_x_pos\(1))) # (!\inst6|flappy_bird|Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add9~4_combout\,
	datab => \inst6|flappy_bird|Add9~2_combout\,
	datac => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => \inst6|flappy_bird|Add9~6_combout\,
	combout => \inst6|flappy_bird|collision_flag~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst6|flappy_bird|collision_flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~1_combout\ = (((\inst6|flappy_bird|collision_flag~0_combout\) # (\inst6|flappy_bird|Add9~18_combout\)) # (!\inst6|flappy_bird|Add9~10_combout\)) # (!\inst6|flappy_bird|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add9~8_combout\,
	datab => \inst6|flappy_bird|Add9~10_combout\,
	datac => \inst6|flappy_bird|collision_flag~0_combout\,
	datad => \inst6|flappy_bird|Add9~18_combout\,
	combout => \inst6|flappy_bird|collision_flag~1_combout\);

-- Location: LCCOMB_X22_Y21_N28
\inst6|flappy_bird|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan12~1_combout\ = (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & !\inst6|flappy_bird|pipes|pipe3_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datac => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	combout => \inst6|flappy_bird|LessThan12~1_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst6|flappy_bird|collision_flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~2_combout\ = ((\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & !\inst6|flappy_bird|pipes|pipe3_x_pos\(5))) # (!\inst6|flappy_bird|LessThan12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datab => \inst6|flappy_bird|LessThan12~1_combout\,
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	combout => \inst6|flappy_bird|collision_flag~2_combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst6|flappy_bird|collision_flag~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~3_combout\ = (\inst6|flappy_bird|Add9~18_combout\) # ((!\inst6|flappy_bird|Add9~16_combout\ & (!\inst6|flappy_bird|Add9~12_combout\ & !\inst6|flappy_bird|Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add9~16_combout\,
	datab => \inst6|flappy_bird|Add9~12_combout\,
	datac => \inst6|flappy_bird|Add9~14_combout\,
	datad => \inst6|flappy_bird|Add9~18_combout\,
	combout => \inst6|flappy_bird|collision_flag~3_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst6|flappy_bird|collision_flag~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~4_combout\ = (\inst6|flappy_bird|collision_flag~2_combout\ & (\inst6|flappy_bird|pipes|pipe3_x_pos\(10) & (\inst6|flappy_bird|collision_flag~3_combout\ & \inst6|flappy_bird|collision_flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|collision_flag~2_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	datac => \inst6|flappy_bird|collision_flag~3_combout\,
	datad => \inst6|flappy_bird|collision_flag~1_combout\,
	combout => \inst6|flappy_bird|collision_flag~4_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst6|flappy_bird|collision_flag~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~7_combout\ = (!\inst6|flappy_bird|Add7~6_combout\ & (((\inst6|flappy_bird|pipes|pipe_x_pos\(1) & !\inst6|flappy_bird|Add7~2_combout\)) # (!\inst6|flappy_bird|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|flappy_bird|Add7~2_combout\,
	datac => \inst6|flappy_bird|Add7~4_combout\,
	datad => \inst6|flappy_bird|Add7~6_combout\,
	combout => \inst6|flappy_bird|collision_flag~7_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst6|flappy_bird|collision_flag~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~8_combout\ = ((\inst6|flappy_bird|Add7~18_combout\) # ((\inst6|flappy_bird|collision_flag~7_combout\) # (!\inst6|flappy_bird|Add7~10_combout\))) # (!\inst6|flappy_bird|Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add7~8_combout\,
	datab => \inst6|flappy_bird|Add7~18_combout\,
	datac => \inst6|flappy_bird|Add7~10_combout\,
	datad => \inst6|flappy_bird|collision_flag~7_combout\,
	combout => \inst6|flappy_bird|collision_flag~8_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst6|flappy_bird|collision_flag~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~9_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(8)) # ((\inst6|flappy_bird|pipes|pipe2_x_pos\(5)) # ((!\inst6|flappy_bird|pipes|pipe2_x_pos\(7)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datac => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datad => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	combout => \inst6|flappy_bird|collision_flag~9_combout\);

-- Location: LCCOMB_X40_Y15_N12
\inst|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~1_combout\ = (\inst|filter\(3) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(2) & \inst|filter\(5))))) # (!\inst|filter\(3) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(2)) # (\inst|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(3),
	datab => \inst|filter\(2),
	datac => \inst|filter\(5),
	datad => \inst|MOUSE_CLK_FILTER~q\,
	combout => \inst|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X31_Y20_N30
\inst|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~0_combout\ = (!\inst|INCNT\(3) & (\inst|INCNT\(2) $ (((\inst|INCNT\(1) & \inst|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(3),
	datab => \inst|INCNT\(1),
	datac => \inst|INCNT\(2),
	datad => \inst|INCNT\(0),
	combout => \inst|INCNT~0_combout\);

-- Location: FF_X33_Y20_N5
\inst|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.INPUT_PACKETS~q\);

-- Location: FF_X33_Y20_N3
\inst|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|iready_set~0_combout\,
	ena => \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|iready_set~q\);

-- Location: FF_X33_Y20_N1
\inst|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X33_Y20_N4
\inst|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_state.INPUT_PACKETS~0_combout\ = (\inst|mouse_state.INPUT_PACKETS~q\) # ((\inst|mouse_state.WAIT_CMD_ACK~q\ & \inst|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst|mouse_state.INPUT_PACKETS~q\,
	datad => \inst|iready_set~q\,
	combout => \inst|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: LCCOMB_X33_Y20_N2
\inst|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|iready_set~0_combout\ = (\inst|READ_CHAR~q\ & (((!\inst|LessThan1~0_combout\)))) # (!\inst|READ_CHAR~q\ & (\mouse_data~input_o\ & ((\inst|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|iready_set~q\,
	datad => \inst|READ_CHAR~q\,
	combout => \inst|iready_set~0_combout\);

-- Location: LCCOMB_X33_Y20_N0
\inst|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst|output_ready~q\) # ((!\inst|iready_set~q\ & \inst|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst|iready_set~q\ & 
-- (\inst|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|iready_set~q\,
	datac => \inst|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst|output_ready~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst6|gameover|text_display~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~39_combout\ = (\inst3|pixel_column\(7) & (!\inst3|pixel_column\(9) & (\inst6|gameover|text_display~11_combout\ & \inst3|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst3|pixel_column\(9),
	datac => \inst6|gameover|text_display~11_combout\,
	datad => \inst3|pixel_column\(8),
	combout => \inst6|gameover|text_display~39_combout\);

-- Location: LCCOMB_X26_Y20_N14
\inst6|gameover|character_address[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|character_address[5]~17_combout\ = (\inst6|gameover|character_address[5]~5_combout\ & ((!\inst6|text_display|text_display~32_combout\) # (!\inst6|text_display|text_display~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|character_address[5]~5_combout\,
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|text_display|text_display~32_combout\,
	combout => \inst6|gameover|character_address[5]~17_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst6|text_display|character_address[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[0]~34_combout\ = (\inst6|text_display|character_address[0]~18_combout\ & (((!\inst6|text_display|text_display~17_combout\ & !\inst6|text_display|text_display~19_combout\)) # 
-- (!\inst6|text_display|text_display~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[0]~18_combout\,
	datab => \inst6|text_display|text_display~7_combout\,
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~19_combout\,
	combout => \inst6|text_display|character_address[0]~34_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst6|text_display|character_address[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[4]~39_combout\ = (\inst6|text_display|text_display~7_combout\ & ((\inst6|text_display|text_display~17_combout\) # ((\inst6|text_display|character_address[5]~23_combout\ & 
-- \inst6|text_display|text_display~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~7_combout\,
	datab => \inst6|text_display|character_address[5]~23_combout\,
	datac => \inst6|text_display|text_display~8_combout\,
	datad => \inst6|text_display|text_display~17_combout\,
	combout => \inst6|text_display|character_address[4]~39_combout\);

-- Location: IOIBUF_X0_Y23_N1
\control_pb3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_pb3,
	o => \control_pb3~input_o\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X0_Y20_N2
\left_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_left_led~q\,
	devoe => ww_devoe,
	o => ww_left_led_out);

-- Location: IOOBUF_X0_Y20_N9
\right_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_right_led~q\,
	devoe => ww_devoe,
	o => ww_right_led_out);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MOUSE_DATA_BUF~q\,
	oe => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X40_Y15_N22
\inst|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst|filter[0]~feeder_combout\);

-- Location: FF_X40_Y15_N23
\inst|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(0));

-- Location: FF_X40_Y15_N15
\inst|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(1));

-- Location: FF_X40_Y15_N29
\inst|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(2));

-- Location: LCCOMB_X40_Y15_N10
\inst|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[3]~feeder_combout\ = \inst|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(2),
	combout => \inst|filter[3]~feeder_combout\);

-- Location: FF_X40_Y15_N11
\inst|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(3));

-- Location: LCCOMB_X40_Y15_N30
\inst|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[4]~feeder_combout\ = \inst|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(3),
	combout => \inst|filter[4]~feeder_combout\);

-- Location: FF_X40_Y15_N31
\inst|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(4));

-- Location: FF_X40_Y15_N19
\inst|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(5));

-- Location: LCCOMB_X40_Y15_N26
\inst|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[6]~feeder_combout\ = \inst|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(5),
	combout => \inst|filter[6]~feeder_combout\);

-- Location: FF_X40_Y15_N27
\inst|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(6));

-- Location: FF_X40_Y15_N17
\inst|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(7));

-- Location: LCCOMB_X40_Y15_N16
\inst|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~0_combout\ = (\inst|filter\(4) & ((\inst|filter\(7)) # (!\inst|filter\(2)))) # (!\inst|filter\(4) & (\inst|filter\(7) & !\inst|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(4),
	datac => \inst|filter\(7),
	datad => \inst|filter\(2),
	combout => \inst|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X40_Y15_N24
\inst|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~2_combout\ = (\inst|filter\(0) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(1) & \inst|filter\(6))))) # (!\inst|filter\(0) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(1)) # (\inst|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(0),
	datab => \inst|filter\(1),
	datac => \inst|filter\(6),
	datad => \inst|MOUSE_CLK_FILTER~q\,
	combout => \inst|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y15_N20
\inst|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~3_combout\ = (\inst|MOUSE_CLK_FILTER~1_combout\ & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|MOUSE_CLK_FILTER~0_combout\ & \inst|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst|MOUSE_CLK_FILTER~1_combout\ & (\inst|MOUSE_CLK_FILTER~q\ & 
-- ((\inst|MOUSE_CLK_FILTER~0_combout\) # (\inst|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MOUSE_CLK_FILTER~1_combout\,
	datab => \inst|MOUSE_CLK_FILTER~0_combout\,
	datac => \inst|MOUSE_CLK_FILTER~q\,
	datad => \inst|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X40_Y15_N21
\inst|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G9
\inst|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y24_N12
\inst|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X33_Y24_N0
\inst|inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[0]~33_combout\ = \inst|inhibit_wait_count\(0) $ (!\inst|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inhibit_wait_count\(0),
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|inhibit_wait_count[0]~33_combout\);

-- Location: FF_X33_Y24_N1
\inst|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(0));

-- Location: LCCOMB_X33_Y24_N14
\inst|inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[4]~17_combout\ = (\inst|inhibit_wait_count\(4) & (!\inst|inhibit_wait_count[3]~16\)) # (!\inst|inhibit_wait_count\(4) & ((\inst|inhibit_wait_count[3]~16\) # (GND)))
-- \inst|inhibit_wait_count[4]~18\ = CARRY((!\inst|inhibit_wait_count[3]~16\) # (!\inst|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst|inhibit_wait_count[3]~16\,
	combout => \inst|inhibit_wait_count[4]~17_combout\,
	cout => \inst|inhibit_wait_count[4]~18\);

-- Location: FF_X33_Y24_N15
\inst|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[4]~17_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(4));

-- Location: LCCOMB_X33_Y24_N16
\inst|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[5]~19_combout\ = (\inst|inhibit_wait_count\(5) & (\inst|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst|inhibit_wait_count\(5) & (!\inst|inhibit_wait_count[4]~18\ & VCC))
-- \inst|inhibit_wait_count[5]~20\ = CARRY((\inst|inhibit_wait_count\(5) & !\inst|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst|inhibit_wait_count[4]~18\,
	combout => \inst|inhibit_wait_count[5]~19_combout\,
	cout => \inst|inhibit_wait_count[5]~20\);

-- Location: FF_X33_Y24_N17
\inst|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[5]~19_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(5));

-- Location: LCCOMB_X33_Y24_N18
\inst|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[6]~21_combout\ = (\inst|inhibit_wait_count\(6) & (!\inst|inhibit_wait_count[5]~20\)) # (!\inst|inhibit_wait_count\(6) & ((\inst|inhibit_wait_count[5]~20\) # (GND)))
-- \inst|inhibit_wait_count[6]~22\ = CARRY((!\inst|inhibit_wait_count[5]~20\) # (!\inst|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst|inhibit_wait_count[5]~20\,
	combout => \inst|inhibit_wait_count[6]~21_combout\,
	cout => \inst|inhibit_wait_count[6]~22\);

-- Location: FF_X33_Y24_N19
\inst|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[6]~21_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(6));

-- Location: LCCOMB_X33_Y24_N20
\inst|inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[7]~23_combout\ = (\inst|inhibit_wait_count\(7) & (\inst|inhibit_wait_count[6]~22\ $ (GND))) # (!\inst|inhibit_wait_count\(7) & (!\inst|inhibit_wait_count[6]~22\ & VCC))
-- \inst|inhibit_wait_count[7]~24\ = CARRY((\inst|inhibit_wait_count\(7) & !\inst|inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst|inhibit_wait_count[6]~22\,
	combout => \inst|inhibit_wait_count[7]~23_combout\,
	cout => \inst|inhibit_wait_count[7]~24\);

-- Location: FF_X33_Y24_N21
\inst|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[7]~23_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(7));

-- Location: LCCOMB_X33_Y24_N24
\inst|inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[9]~27_combout\ = (\inst|inhibit_wait_count\(9) & (\inst|inhibit_wait_count[8]~26\ $ (GND))) # (!\inst|inhibit_wait_count\(9) & (!\inst|inhibit_wait_count[8]~26\ & VCC))
-- \inst|inhibit_wait_count[9]~28\ = CARRY((\inst|inhibit_wait_count\(9) & !\inst|inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst|inhibit_wait_count[8]~26\,
	combout => \inst|inhibit_wait_count[9]~27_combout\,
	cout => \inst|inhibit_wait_count[9]~28\);

-- Location: FF_X33_Y24_N25
\inst|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[9]~27_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(9));

-- Location: LCCOMB_X33_Y24_N26
\inst|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[10]~29_combout\ = (\inst|inhibit_wait_count\(10) & (!\inst|inhibit_wait_count[9]~28\)) # (!\inst|inhibit_wait_count\(10) & ((\inst|inhibit_wait_count[9]~28\) # (GND)))
-- \inst|inhibit_wait_count[10]~30\ = CARRY((!\inst|inhibit_wait_count[9]~28\) # (!\inst|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst|inhibit_wait_count[9]~28\,
	combout => \inst|inhibit_wait_count[10]~29_combout\,
	cout => \inst|inhibit_wait_count[10]~30\);

-- Location: LCCOMB_X33_Y24_N28
\inst|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[11]~31_combout\ = \inst|inhibit_wait_count[10]~30\ $ (!\inst|inhibit_wait_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inhibit_wait_count\(11),
	cin => \inst|inhibit_wait_count[10]~30\,
	combout => \inst|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X33_Y24_N29
\inst|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[11]~31_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(11));

-- Location: LCCOMB_X33_Y24_N4
\inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|mouse_state.INHIBIT_TRANS~q\) # ((\inst|inhibit_wait_count\(10) & \inst|inhibit_wait_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(10),
	datab => \inst|inhibit_wait_count\(11),
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X33_Y24_N5
\inst|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X32_Y24_N28
\inst|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|send_data~q\ & ((\inst|mouse_state.INPUT_PACKETS~q\) # (!\inst|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.INPUT_PACKETS~q\,
	datab => \inst|send_data~q\,
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X33_Y24_N27
\inst|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[10]~29_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(10));

-- Location: LCCOMB_X33_Y24_N30
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|inhibit_wait_count\(11) & (\inst|inhibit_wait_count\(10) & !\inst|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(11),
	datac => \inst|inhibit_wait_count\(10),
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X33_Y24_N31
\inst|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X32_Y24_N17
\inst|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X32_Y24_N30
\inst|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Selector6~0_combout\) # ((\inst|mouse_state.LOAD_COMMAND~q\) # (\inst|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector6~0_combout\,
	datac => \inst|mouse_state.LOAD_COMMAND~q\,
	datad => \inst|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X32_Y24_N31
\inst|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_data~q\);

-- Location: LCCOMB_X32_Y24_N22
\inst|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~3_combout\ = (!\inst|OUTCNT\(0) & (((!\inst|OUTCNT\(1) & !\inst|OUTCNT\(2))) # (!\inst|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(0),
	datad => \inst|OUTCNT\(2),
	combout => \inst|OUTCNT~3_combout\);

-- Location: LCCOMB_X32_Y24_N18
\inst|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~0_combout\ = (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|send_char~q\,
	combout => \inst|output_ready~0_combout\);

-- Location: FF_X32_Y24_N23
\inst|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(0));

-- Location: LCCOMB_X32_Y24_N26
\inst|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~1_combout\ = (!\inst|OUTCNT\(3) & (\inst|OUTCNT\(2) $ (((\inst|OUTCNT\(1) & \inst|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(2),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~1_combout\);

-- Location: FF_X32_Y24_N27
\inst|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(2));

-- Location: LCCOMB_X32_Y24_N0
\inst|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~2_combout\ = (\inst|OUTCNT\(0) & (!\inst|OUTCNT\(1) & ((!\inst|OUTCNT\(2)) # (!\inst|OUTCNT\(3))))) # (!\inst|OUTCNT\(0) & (!\inst|OUTCNT\(3) & (\inst|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(0),
	datab => \inst|OUTCNT\(3),
	datac => \inst|OUTCNT\(1),
	datad => \inst|OUTCNT\(2),
	combout => \inst|OUTCNT~2_combout\);

-- Location: FF_X32_Y24_N1
\inst|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(1));

-- Location: LCCOMB_X32_Y24_N24
\inst|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~0_combout\ = (\inst|OUTCNT\(1) & (\inst|OUTCNT\(0) & (!\inst|OUTCNT\(3) & \inst|OUTCNT\(2)))) # (!\inst|OUTCNT\(1) & (((\inst|OUTCNT\(3) & !\inst|OUTCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(0),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(3),
	datad => \inst|OUTCNT\(2),
	combout => \inst|OUTCNT~0_combout\);

-- Location: FF_X32_Y24_N25
\inst|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(3));

-- Location: LCCOMB_X32_Y24_N16
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|OUTCNT\(3) & ((\inst|OUTCNT\(2)) # (\inst|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(2),
	datab => \inst|OUTCNT\(3),
	datad => \inst|OUTCNT\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y24_N20
\inst|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~feeder_combout\ = \inst|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|output_ready~feeder_combout\);

-- Location: FF_X32_Y24_N21
\inst|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|output_ready~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|output_ready~q\);

-- Location: LCCOMB_X31_Y20_N4
\inst|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|mouse_state.LOAD_COMMAND2~q\) # ((\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|output_ready~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X31_Y20_N5
\inst|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X31_Y24_N8
\inst|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|send_char~0_combout\ = (\inst|send_char~q\) # ((\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst|send_char~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|send_char~0_combout\);

-- Location: FF_X31_Y24_N9
\inst|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|send_char~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_char~q\);

-- Location: LCCOMB_X31_Y24_N16
\inst|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_DATA_BUF~0_combout\ = (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst|send_char~q\ & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|send_char~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X31_Y24_N13
\inst|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(9));

-- Location: LCCOMB_X31_Y24_N26
\inst|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[8]~3_combout\ = !\inst|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(9),
	combout => \inst|SHIFTOUT[8]~3_combout\);

-- Location: FF_X31_Y24_N27
\inst|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[8]~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(8));

-- Location: LCCOMB_X31_Y24_N20
\inst|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[7]~feeder_combout\ = \inst|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTOUT\(8),
	combout => \inst|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X31_Y24_N21
\inst|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(7));

-- Location: LCCOMB_X31_Y24_N18
\inst|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[6]~feeder_combout\ = \inst|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(7),
	combout => \inst|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X31_Y24_N19
\inst|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(6));

-- Location: LCCOMB_X31_Y24_N24
\inst|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[5]~feeder_combout\ = \inst|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(6),
	combout => \inst|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X31_Y24_N25
\inst|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(5));

-- Location: LCCOMB_X31_Y24_N10
\inst|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[4]~2_combout\ = !\inst|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(5),
	combout => \inst|SHIFTOUT[4]~2_combout\);

-- Location: FF_X31_Y24_N11
\inst|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[4]~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(4));

-- Location: LCCOMB_X31_Y24_N0
\inst|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[3]~1_combout\ = !\inst|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(4),
	combout => \inst|SHIFTOUT[3]~1_combout\);

-- Location: FF_X31_Y24_N1
\inst|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[3]~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(3));

-- Location: LCCOMB_X31_Y24_N2
\inst|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[2]~0_combout\ = !\inst|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(3),
	combout => \inst|SHIFTOUT[2]~0_combout\);

-- Location: FF_X31_Y24_N3
\inst|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[2]~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(2));

-- Location: LCCOMB_X31_Y24_N22
\inst|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[1]~feeder_combout\ = \inst|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(2),
	combout => \inst|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X31_Y24_N23
\inst|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(1));

-- Location: FF_X31_Y24_N17
\inst|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTOUT\(1),
	clrn => \inst|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X32_Y24_N10
\inst|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = (\inst|mouse_state.LOAD_COMMAND~q\) # ((\inst|mouse_state.LOAD_COMMAND2~q\) # (!\inst|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND~q\,
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst|WideOr4~combout\);

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

-- Location: PLL_2
\inst1|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5738,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y18_N8
\inst3|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = (\inst3|v_count\(2) & (\inst3|Add1~3\ $ (GND))) # (!\inst3|v_count\(2) & (!\inst3|Add1~3\ & VCC))
-- \inst3|Add1~5\ = CARRY((\inst3|v_count\(2) & !\inst3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X22_Y18_N10
\inst3|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|v_count\(3) & (!\inst3|Add1~5\)) # (!\inst3|v_count\(3) & ((\inst3|Add1~5\) # (GND)))
-- \inst3|Add1~7\ = CARRY((!\inst3|Add1~5\) # (!\inst3|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X26_Y17_N0
\inst3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|h_count\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X26_Y17_N2
\inst3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|h_count\(1) & (!\inst3|Add0~1\)) # (!\inst3|h_count\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X26_Y17_N3
\inst3|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(1));

-- Location: LCCOMB_X26_Y17_N4
\inst3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|h_count\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|h_count\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|h_count\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X26_Y17_N5
\inst3|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(2));

-- Location: LCCOMB_X26_Y17_N6
\inst3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|h_count\(3) & (!\inst3|Add0~5\)) # (!\inst3|h_count\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X26_Y17_N8
\inst3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|h_count\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|h_count\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|h_count\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X26_Y17_N9
\inst3|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(4));

-- Location: FF_X26_Y17_N1
\inst3|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(0));

-- Location: LCCOMB_X26_Y17_N30
\inst3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|h_count\(3) & (\inst3|h_count\(1) & (\inst3|h_count\(4) & \inst3|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(1),
	datac => \inst3|h_count\(4),
	datad => \inst3|h_count\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y17_N4
\inst3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|h_count\(7) & (\inst3|h_count\(2) & (\inst3|h_count\(8) & !\inst3|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(7),
	datab => \inst3|h_count\(2),
	datac => \inst3|h_count\(8),
	datad => \inst3|h_count\(5),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst3|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~2_combout\ = (\inst3|Add0~10_combout\ & (((!\inst3|Equal0~2_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|h_count~2_combout\);

-- Location: FF_X26_Y17_N29
\inst3|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(5));

-- Location: LCCOMB_X26_Y17_N12
\inst3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|h_count\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|h_count\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|h_count\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X26_Y17_N14
\inst3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|h_count\(7) & (!\inst3|Add0~13\)) # (!\inst3|h_count\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: FF_X26_Y17_N15
\inst3|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(7));

-- Location: LCCOMB_X26_Y17_N16
\inst3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|h_count\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|h_count\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|h_count\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X26_Y17_N18
\inst3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = \inst3|Add0~17\ $ (\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|h_count\(9),
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst3|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~0_combout\ = (\inst3|Add0~18_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~18_combout\,
	combout => \inst3|h_count~0_combout\);

-- Location: FF_X26_Y17_N21
\inst3|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(9));

-- Location: FF_X26_Y17_N13
\inst3|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(6));

-- Location: LCCOMB_X26_Y17_N24
\inst3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|h_count\(9) & !\inst3|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(9),
	datad => \inst3|h_count\(6),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst3|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~1_combout\ = (\inst3|Add0~16_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~16_combout\,
	combout => \inst3|h_count~1_combout\);

-- Location: FF_X26_Y17_N27
\inst3|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(8));

-- Location: FF_X26_Y17_N7
\inst3|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(3));

-- Location: LCCOMB_X27_Y17_N22
\inst3|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~6_combout\ = ((!\inst3|h_count\(2) & ((!\inst3|h_count\(1)) # (!\inst3|h_count\(0))))) # (!\inst3|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(0),
	datab => \inst3|h_count\(2),
	datac => \inst3|h_count\(3),
	datad => \inst3|h_count\(1),
	combout => \inst3|process_0~6_combout\);

-- Location: LCCOMB_X27_Y17_N0
\inst3|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~7_combout\ = (!\inst3|h_count\(6) & (((\inst3|process_0~6_combout\) # (!\inst3|h_count\(5))) # (!\inst3|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(4),
	datab => \inst3|h_count\(5),
	datac => \inst3|process_0~6_combout\,
	datad => \inst3|h_count\(6),
	combout => \inst3|process_0~7_combout\);

-- Location: LCCOMB_X27_Y17_N26
\inst3|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~8_combout\ = (!\inst3|h_count\(8) & ((\inst3|process_0~7_combout\) # (!\inst3|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(7),
	datac => \inst3|h_count\(8),
	datad => \inst3|process_0~7_combout\,
	combout => \inst3|process_0~8_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|h_count\(8)) # (((\inst3|h_count\(2)) # (!\inst3|h_count\(5))) # (!\inst3|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(2),
	datad => \inst3|h_count\(5),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst3|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[2]~0_combout\ = (\inst3|Equal0~0_combout\ & (\inst3|process_0~11_combout\ & (!\inst3|Equal1~0_combout\ & \inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|process_0~11_combout\,
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|v_count[2]~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst3|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[9]~3_combout\ = (\inst3|Add1~18_combout\ & ((\inst3|v_count[2]~0_combout\) # ((!\inst3|v_count[3]~1_combout\ & \inst3|v_count\(9))))) # (!\inst3|Add1~18_combout\ & (!\inst3|v_count[3]~1_combout\ & (\inst3|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~18_combout\,
	datab => \inst3|v_count[3]~1_combout\,
	datac => \inst3|v_count\(9),
	datad => \inst3|v_count[2]~0_combout\,
	combout => \inst3|v_count[9]~3_combout\);

-- Location: FF_X22_Y18_N3
\inst3|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(9));

-- Location: LCCOMB_X23_Y18_N22
\inst3|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~11_combout\ = (\inst3|process_0~10_combout\) # ((\inst3|process_0~8_combout\) # ((!\inst3|v_count\(9)) # (!\inst3|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~10_combout\,
	datab => \inst3|process_0~8_combout\,
	datac => \inst3|h_count\(9),
	datad => \inst3|v_count\(9),
	combout => \inst3|process_0~11_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst3|v_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[3]~1_combout\ = ((\inst3|Equal0~0_combout\ & (!\inst3|Equal1~0_combout\ & \inst3|Equal0~1_combout\))) # (!\inst3|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|process_0~11_combout\,
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|v_count[3]~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst3|v_count[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[3]~9_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~6_combout\) # ((\inst3|v_count\(3) & !\inst3|v_count[3]~1_combout\)))) # (!\inst3|v_count[2]~0_combout\ & (((\inst3|v_count\(3) & !\inst3|v_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|Add1~6_combout\,
	datac => \inst3|v_count\(3),
	datad => \inst3|v_count[3]~1_combout\,
	combout => \inst3|v_count[3]~9_combout\);

-- Location: FF_X21_Y18_N1
\inst3|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(3));

-- Location: LCCOMB_X22_Y17_N6
\inst3|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[3]~feeder_combout\ = \inst3|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(3),
	combout => \inst3|pixel_row[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|v_count\(4) & (\inst3|Add1~7\ $ (GND))) # (!\inst3|v_count\(4) & (!\inst3|Add1~7\ & VCC))
-- \inst3|Add1~9\ = CARRY((\inst3|v_count\(4) & !\inst3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X22_Y18_N14
\inst3|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|v_count\(5) & (!\inst3|Add1~9\)) # (!\inst3|v_count\(5) & ((\inst3|Add1~9\) # (GND)))
-- \inst3|Add1~11\ = CARRY((!\inst3|Add1~9\) # (!\inst3|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X22_Y18_N24
\inst3|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[5]~4_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~10_combout\) # ((\inst3|v_count\(5) & !\inst3|v_count[3]~1_combout\)))) # (!\inst3|v_count[2]~0_combout\ & (((\inst3|v_count\(5) & !\inst3|v_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|Add1~10_combout\,
	datac => \inst3|v_count\(5),
	datad => \inst3|v_count[3]~1_combout\,
	combout => \inst3|v_count[5]~4_combout\);

-- Location: FF_X22_Y18_N25
\inst3|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(5));

-- Location: LCCOMB_X22_Y18_N16
\inst3|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = (\inst3|v_count\(6) & (\inst3|Add1~11\ $ (GND))) # (!\inst3|v_count\(6) & (!\inst3|Add1~11\ & VCC))
-- \inst3|Add1~13\ = CARRY((\inst3|v_count\(6) & !\inst3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X22_Y18_N0
\inst3|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[6]~5_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~12_combout\) # ((!\inst3|v_count[3]~1_combout\ & \inst3|v_count\(6))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[3]~1_combout\ & (\inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[3]~1_combout\,
	datac => \inst3|v_count\(6),
	datad => \inst3|Add1~12_combout\,
	combout => \inst3|v_count[6]~5_combout\);

-- Location: FF_X22_Y18_N1
\inst3|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(6));

-- Location: LCCOMB_X22_Y18_N18
\inst3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|v_count\(7) & (!\inst3|Add1~13\)) # (!\inst3|v_count\(7) & ((\inst3|Add1~13\) # (GND)))
-- \inst3|Add1~15\ = CARRY((!\inst3|Add1~13\) # (!\inst3|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(7),
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X22_Y18_N28
\inst3|v_count[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[7]~2_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~14_combout\) # ((!\inst3|v_count[3]~1_combout\ & \inst3|v_count\(7))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[3]~1_combout\ & (\inst3|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[3]~1_combout\,
	datac => \inst3|v_count\(7),
	datad => \inst3|Add1~14_combout\,
	combout => \inst3|v_count[7]~2_combout\);

-- Location: FF_X22_Y18_N29
\inst3|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(7));

-- Location: LCCOMB_X22_Y17_N0
\inst3|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~0_combout\ = (\inst3|v_count\(8) & (\inst3|v_count\(5) & (\inst3|v_count\(7) & \inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datab => \inst3|v_count\(5),
	datac => \inst3|v_count\(7),
	datad => \inst3|v_count\(6),
	combout => \inst3|LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst3|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~1_combout\ = (!\inst3|LessThan7~0_combout\ & !\inst3|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LessThan7~0_combout\,
	datad => \inst3|v_count\(9),
	combout => \inst3|LessThan7~1_combout\);

-- Location: FF_X22_Y17_N7
\inst3|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[3]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(3));

-- Location: LCCOMB_X21_Y18_N26
\inst3|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~8_combout\ = (\inst3|Add1~2_combout\ & \inst3|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~2_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~8_combout\);

-- Location: FF_X21_Y18_N27
\inst3|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~8_combout\,
	ena => \inst3|v_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(1));

-- Location: FF_X22_Y18_N7
\inst3|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(1),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(1));

-- Location: LCCOMB_X21_Y18_N14
\inst3|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~10_combout\ = (\inst3|Add1~0_combout\ & \inst3|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~0_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~10_combout\);

-- Location: FF_X21_Y18_N15
\inst3|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~10_combout\,
	ena => \inst3|v_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(0));

-- Location: FF_X22_Y18_N9
\inst3|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(0),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(0));

-- Location: LCCOMB_X22_Y19_N28
\inst6|pipes|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan3~0_combout\ = (\inst3|pixel_row\(3) & ((\inst3|pixel_row\(2)) # ((\inst3|pixel_row\(1) & \inst3|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(2),
	datab => \inst3|pixel_row\(3),
	datac => \inst3|pixel_row\(1),
	datad => \inst3|pixel_row\(0),
	combout => \inst6|pipes|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst3|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[8]~6_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~16_combout\) # ((!\inst3|v_count[3]~1_combout\ & \inst3|v_count\(8))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[3]~1_combout\ & (\inst3|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[3]~1_combout\,
	datac => \inst3|v_count\(8),
	datad => \inst3|Add1~16_combout\,
	combout => \inst3|v_count[8]~6_combout\);

-- Location: FF_X22_Y18_N31
\inst3|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(8));

-- Location: FF_X22_Y17_N27
\inst3|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(8),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(8));

-- Location: FF_X22_Y18_N5
\inst3|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(6),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(6));

-- Location: LCCOMB_X23_Y17_N28
\inst6|pipes|pipe_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~2_combout\ = (\inst3|pixel_row\(6) & ((\inst6|pipes|pipe_on~1_combout\) # ((\inst6|pipes|LessThan3~0_combout\ & \inst3|pixel_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|pipe_on~1_combout\,
	datab => \inst6|pipes|LessThan3~0_combout\,
	datac => \inst3|pixel_row\(8),
	datad => \inst3|pixel_row\(6),
	combout => \inst6|pipes|pipe_on~2_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst3|v_count[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[2]~7_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~4_combout\) # ((\inst3|v_count\(2) & !\inst3|v_count[3]~1_combout\)))) # (!\inst3|v_count[2]~0_combout\ & (((\inst3|v_count\(2) & !\inst3|v_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|Add1~4_combout\,
	datac => \inst3|v_count\(2),
	datad => \inst3|v_count[3]~1_combout\,
	combout => \inst3|v_count[2]~7_combout\);

-- Location: FF_X21_Y18_N9
\inst3|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(2));

-- Location: FF_X22_Y17_N5
\inst3|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(2),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(2));

-- Location: LCCOMB_X23_Y17_N20
\inst6|pipes|pipe_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~0_combout\ = (\inst3|pixel_row\(3) & ((\inst3|pixel_row\(1)) # (\inst3|pixel_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(1),
	datac => \inst3|pixel_row\(2),
	datad => \inst3|pixel_row\(3),
	combout => \inst6|pipes|pipe_on~0_combout\);

-- Location: FF_X22_Y17_N25
\inst3|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(7),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(7));

-- Location: LCCOMB_X23_Y17_N14
\inst6|pipes|pipe_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~3_combout\ = (\inst3|pixel_row\(8) & ((\inst6|pipes|pipe_on~2_combout\) # ((\inst3|pixel_row\(7))))) # (!\inst3|pixel_row\(8) & (((!\inst3|pixel_row\(7)) # (!\inst6|pipes|pipe_on~0_combout\)) # (!\inst6|pipes|pipe_on~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(8),
	datab => \inst6|pipes|pipe_on~2_combout\,
	datac => \inst6|pipes|pipe_on~0_combout\,
	datad => \inst3|pixel_row\(7),
	combout => \inst6|pipes|pipe_on~3_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst3|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan6~0_combout\ = ((!\inst3|h_count\(7) & !\inst3|h_count\(8))) # (!\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(8),
	datad => \inst3|h_count\(9),
	combout => \inst3|LessThan6~0_combout\);

-- Location: FF_X26_Y21_N21
\inst3|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(8),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(8));

-- Location: FF_X26_Y21_N19
\inst3|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(7),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(7));

-- Location: FF_X26_Y21_N17
\inst3|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(6),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(6));

-- Location: LCCOMB_X27_Y17_N16
\inst3|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_column[5]~feeder_combout\ = \inst3|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|h_count\(5),
	combout => \inst3|pixel_column[5]~feeder_combout\);

-- Location: FF_X27_Y17_N17
\inst3|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_column[5]~feeder_combout\,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(5));

-- Location: LCCOMB_X26_Y21_N28
\inst3|pixel_column[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_column[3]~feeder_combout\ = \inst3|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|h_count\(3),
	combout => \inst3|pixel_column[3]~feeder_combout\);

-- Location: FF_X26_Y21_N29
\inst3|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_column[3]~feeder_combout\,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(3));

-- Location: LCCOMB_X27_Y17_N28
\inst3|pixel_column[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_column[1]~feeder_combout\ = \inst3|h_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|h_count\(1),
	combout => \inst3|pixel_column[1]~feeder_combout\);

-- Location: FF_X27_Y17_N29
\inst3|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_column[1]~feeder_combout\,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(1));

-- Location: LCCOMB_X26_Y21_N6
\inst6|pipes|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~0_combout\ = \inst3|pixel_column\(1) $ (VCC)
-- \inst6|pipes|Add5~1\ = CARRY(\inst3|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(1),
	datad => VCC,
	combout => \inst6|pipes|Add5~0_combout\,
	cout => \inst6|pipes|Add5~1\);

-- Location: LCCOMB_X26_Y21_N8
\inst6|pipes|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~2_combout\ = (\inst3|pixel_column\(2) & (!\inst6|pipes|Add5~1\)) # (!\inst3|pixel_column\(2) & ((\inst6|pipes|Add5~1\) # (GND)))
-- \inst6|pipes|Add5~3\ = CARRY((!\inst6|pipes|Add5~1\) # (!\inst3|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(2),
	datad => VCC,
	cin => \inst6|pipes|Add5~1\,
	combout => \inst6|pipes|Add5~2_combout\,
	cout => \inst6|pipes|Add5~3\);

-- Location: LCCOMB_X26_Y21_N10
\inst6|pipes|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~4_combout\ = (\inst3|pixel_column\(3) & (\inst6|pipes|Add5~3\ $ (GND))) # (!\inst3|pixel_column\(3) & (!\inst6|pipes|Add5~3\ & VCC))
-- \inst6|pipes|Add5~5\ = CARRY((\inst3|pixel_column\(3) & !\inst6|pipes|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(3),
	datad => VCC,
	cin => \inst6|pipes|Add5~3\,
	combout => \inst6|pipes|Add5~4_combout\,
	cout => \inst6|pipes|Add5~5\);

-- Location: LCCOMB_X26_Y21_N12
\inst6|pipes|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~6_combout\ = (\inst3|pixel_column\(4) & (\inst6|pipes|Add5~5\ & VCC)) # (!\inst3|pixel_column\(4) & (!\inst6|pipes|Add5~5\))
-- \inst6|pipes|Add5~7\ = CARRY((!\inst3|pixel_column\(4) & !\inst6|pipes|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datad => VCC,
	cin => \inst6|pipes|Add5~5\,
	combout => \inst6|pipes|Add5~6_combout\,
	cout => \inst6|pipes|Add5~7\);

-- Location: LCCOMB_X26_Y21_N14
\inst6|pipes|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~8_combout\ = (\inst3|pixel_column\(5) & ((GND) # (!\inst6|pipes|Add5~7\))) # (!\inst3|pixel_column\(5) & (\inst6|pipes|Add5~7\ $ (GND)))
-- \inst6|pipes|Add5~9\ = CARRY((\inst3|pixel_column\(5)) # (!\inst6|pipes|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(5),
	datad => VCC,
	cin => \inst6|pipes|Add5~7\,
	combout => \inst6|pipes|Add5~8_combout\,
	cout => \inst6|pipes|Add5~9\);

-- Location: LCCOMB_X26_Y21_N18
\inst6|pipes|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~12_combout\ = (\inst3|pixel_column\(7) & (\inst6|pipes|Add5~11\ $ (GND))) # (!\inst3|pixel_column\(7) & (!\inst6|pipes|Add5~11\ & VCC))
-- \inst6|pipes|Add5~13\ = CARRY((\inst3|pixel_column\(7) & !\inst6|pipes|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(7),
	datad => VCC,
	cin => \inst6|pipes|Add5~11\,
	combout => \inst6|pipes|Add5~12_combout\,
	cout => \inst6|pipes|Add5~13\);

-- Location: LCCOMB_X26_Y21_N20
\inst6|pipes|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~14_combout\ = (\inst3|pixel_column\(8) & (!\inst6|pipes|Add5~13\)) # (!\inst3|pixel_column\(8) & ((\inst6|pipes|Add5~13\) # (GND)))
-- \inst6|pipes|Add5~15\ = CARRY((!\inst6|pipes|Add5~13\) # (!\inst3|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(8),
	datad => VCC,
	cin => \inst6|pipes|Add5~13\,
	combout => \inst6|pipes|Add5~14_combout\,
	cout => \inst6|pipes|Add5~15\);

-- Location: LCCOMB_X26_Y21_N22
\inst6|pipes|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~16_combout\ = (\inst3|pixel_column\(9) & (\inst6|pipes|Add5~15\ $ (GND))) # (!\inst3|pixel_column\(9) & (!\inst6|pipes|Add5~15\ & VCC))
-- \inst6|pipes|Add5~17\ = CARRY((\inst3|pixel_column\(9) & !\inst6|pipes|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datad => VCC,
	cin => \inst6|pipes|Add5~15\,
	combout => \inst6|pipes|Add5~16_combout\,
	cout => \inst6|pipes|Add5~17\);

-- Location: LCCOMB_X26_Y21_N24
\inst6|pipes|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add5~18_combout\ = \inst6|pipes|Add5~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|pipes|Add5~17\,
	combout => \inst6|pipes|Add5~18_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst6|flappy_bird|pipes|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|pipes|Add12~1_cout\);

-- Location: LCCOMB_X22_Y21_N4
\inst6|flappy_bird|pipes|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~2_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (\inst6|flappy_bird|pipes|Add12~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & 
-- (!\inst6|flappy_bird|pipes|Add12~1_cout\)))) # (!\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & (!\inst6|flappy_bird|pipes|Add12~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & 
-- ((\inst6|flappy_bird|pipes|Add12~1_cout\) # (GND)))))
-- \inst6|flappy_bird|pipes|Add12~3\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & !\inst6|flappy_bird|pipes|Add12~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & 
-- ((!\inst6|flappy_bird|pipes|Add12~1_cout\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~1_cout\,
	combout => \inst6|flappy_bird|pipes|Add12~2_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~3\);

-- Location: FF_X22_Y21_N5
\inst6|flappy_bird|pipes|pipe3_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(2));

-- Location: LCCOMB_X22_Y21_N6
\inst6|flappy_bird|pipes|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~4_combout\ = ((\inst6|flappy_bird|pipes|pipe3_x_motion\(4) $ (\inst6|flappy_bird|pipes|pipe3_x_pos\(3) $ (\inst6|flappy_bird|pipes|Add12~3\)))) # (GND)
-- \inst6|flappy_bird|pipes|Add12~5\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & ((!\inst6|flappy_bird|pipes|Add12~3\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3)))) # (!\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & 
-- (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & !\inst6|flappy_bird|pipes|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~3\,
	combout => \inst6|flappy_bird|pipes|Add12~4_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~5\);

-- Location: LCCOMB_X21_Y21_N4
\inst6|flappy_bird|pipes|pipe3_x_pos[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe3_x_pos[3]~3_combout\ = !\inst6|flappy_bird|pipes|Add12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add12~4_combout\,
	combout => \inst6|flappy_bird|pipes|pipe3_x_pos[3]~3_combout\);

-- Location: FF_X21_Y21_N5
\inst6|flappy_bird|pipes|pipe3_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe3_x_pos[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(3));

-- Location: LCCOMB_X22_Y21_N8
\inst6|flappy_bird|pipes|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~6_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (!\inst6|flappy_bird|pipes|Add12~5\)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (\inst6|flappy_bird|pipes|Add12~5\ 
-- & VCC)))) # (!\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & ((\inst6|flappy_bird|pipes|Add12~5\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (!\inst6|flappy_bird|pipes|Add12~5\))))
-- \inst6|flappy_bird|pipes|Add12~7\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & (\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & !\inst6|flappy_bird|pipes|Add12~5\)) # (!\inst6|flappy_bird|pipes|pipe3_x_motion\(4) & 
-- ((\inst6|flappy_bird|pipes|pipe3_x_pos\(4)) # (!\inst6|flappy_bird|pipes|Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~5\,
	combout => \inst6|flappy_bird|pipes|Add12~6_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~7\);

-- Location: LCCOMB_X21_Y21_N6
\inst6|flappy_bird|pipes|pipe3_x_pos[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe3_x_pos[4]~2_combout\ = !\inst6|flappy_bird|pipes|Add12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add12~6_combout\,
	combout => \inst6|flappy_bird|pipes|pipe3_x_pos[4]~2_combout\);

-- Location: FF_X21_Y21_N7
\inst6|flappy_bird|pipes|pipe3_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe3_x_pos[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(4));

-- Location: LCCOMB_X22_Y21_N10
\inst6|flappy_bird|pipes|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~8_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & (\inst6|flappy_bird|pipes|Add12~7\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & ((GND) # (!\inst6|flappy_bird|pipes|Add12~7\)))
-- \inst6|flappy_bird|pipes|Add12~9\ = CARRY((!\inst6|flappy_bird|pipes|Add12~7\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~7\,
	combout => \inst6|flappy_bird|pipes|Add12~8_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~9\);

-- Location: LCCOMB_X22_Y21_N12
\inst6|flappy_bird|pipes|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~10_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (\inst6|flappy_bird|pipes|Add12~9\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (!\inst6|flappy_bird|pipes|Add12~9\))
-- \inst6|flappy_bird|pipes|Add12~11\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & !\inst6|flappy_bird|pipes|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~9\,
	combout => \inst6|flappy_bird|pipes|Add12~10_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~11\);

-- Location: LCCOMB_X22_Y21_N14
\inst6|flappy_bird|pipes|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~12_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|pipes|Add12~11\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & (\inst6|flappy_bird|pipes|Add12~11\ $ (GND)))
-- \inst6|flappy_bird|pipes|Add12~13\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(7)) # (!\inst6|flappy_bird|pipes|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~11\,
	combout => \inst6|flappy_bird|pipes|Add12~12_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~13\);

-- Location: FF_X22_Y21_N15
\inst6|flappy_bird|pipes|pipe3_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add12~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(7));

-- Location: LCCOMB_X22_Y21_N16
\inst6|flappy_bird|pipes|Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~14_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (\inst6|flappy_bird|pipes|Add12~13\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & (!\inst6|flappy_bird|pipes|Add12~13\))
-- \inst6|flappy_bird|pipes|Add12~15\ = CARRY((!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & !\inst6|flappy_bird|pipes|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~13\,
	combout => \inst6|flappy_bird|pipes|Add12~14_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~15\);

-- Location: FF_X22_Y21_N17
\inst6|flappy_bird|pipes|pipe3_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add12~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(8));

-- Location: LCCOMB_X22_Y21_N18
\inst6|flappy_bird|pipes|Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~16_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|pipes|Add12~15\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & (\inst6|flappy_bird|pipes|Add12~15\ $ (GND)))
-- \inst6|flappy_bird|pipes|Add12~17\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(9)) # (!\inst6|flappy_bird|pipes|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add12~15\,
	combout => \inst6|flappy_bird|pipes|Add12~16_combout\,
	cout => \inst6|flappy_bird|pipes|Add12~17\);

-- Location: FF_X22_Y21_N19
\inst6|flappy_bird|pipes|pipe3_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add12~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(9));

-- Location: LCCOMB_X22_Y21_N20
\inst6|flappy_bird|pipes|Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add12~18_combout\ = \inst6|flappy_bird|pipes|Add12~17\ $ (\inst6|flappy_bird|pipes|pipe3_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	cin => \inst6|flappy_bird|pipes|Add12~17\,
	combout => \inst6|flappy_bird|pipes|Add12~18_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst6|flappy_bird|pipes|pipe3_x_pos[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe3_x_pos[10]~0_combout\ = !\inst6|flappy_bird|pipes|Add12~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add12~18_combout\,
	combout => \inst6|flappy_bird|pipes|pipe3_x_pos[10]~0_combout\);

-- Location: FF_X22_Y21_N25
\inst6|flappy_bird|pipes|pipe3_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe3_x_pos[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(10));

-- Location: FF_X22_Y21_N13
\inst6|flappy_bird|pipes|pipe3_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(6));

-- Location: LCCOMB_X21_Y21_N8
\inst6|flappy_bird|pipes|pipe3_x_pos[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe3_x_pos[5]~1_combout\ = !\inst6|flappy_bird|pipes|Add12~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|flappy_bird|pipes|Add12~8_combout\,
	combout => \inst6|flappy_bird|pipes|pipe3_x_pos[5]~1_combout\);

-- Location: FF_X21_Y21_N9
\inst6|flappy_bird|pipes|pipe3_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe3_x_pos[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe3_x_pos\(5));

-- Location: FF_X26_Y21_N25
\inst3|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(0),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(0));

-- Location: LCCOMB_X20_Y21_N2
\inst6|pipes|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~1_cout\ = CARRY(\inst3|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(0),
	datad => VCC,
	cout => \inst6|pipes|LessThan6~1_cout\);

-- Location: LCCOMB_X20_Y21_N4
\inst6|pipes|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~3_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(1) & ((!\inst6|pipes|LessThan6~1_cout\) # (!\inst6|pipes|Add5~0_combout\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(1) & (!\inst6|pipes|Add5~0_combout\ & 
-- !\inst6|pipes|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|pipes|Add5~0_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan6~1_cout\,
	cout => \inst6|pipes|LessThan6~3_cout\);

-- Location: LCCOMB_X20_Y21_N6
\inst6|pipes|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~5_cout\ = CARRY((\inst6|pipes|Add5~2_combout\ & ((!\inst6|pipes|LessThan6~3_cout\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2)))) # (!\inst6|pipes|Add5~2_combout\ & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(2) & 
-- !\inst6|pipes|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~2_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|pipes|LessThan6~3_cout\,
	cout => \inst6|pipes|LessThan6~5_cout\);

-- Location: LCCOMB_X20_Y21_N8
\inst6|pipes|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~7_cout\ = CARRY((\inst6|pipes|Add5~4_combout\ & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & !\inst6|pipes|LessThan6~5_cout\)) # (!\inst6|pipes|Add5~4_combout\ & ((!\inst6|pipes|LessThan6~5_cout\) # 
-- (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~4_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|pipes|LessThan6~5_cout\,
	cout => \inst6|pipes|LessThan6~7_cout\);

-- Location: LCCOMB_X20_Y21_N10
\inst6|pipes|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~9_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & ((\inst6|pipes|Add5~6_combout\) # (!\inst6|pipes|LessThan6~7_cout\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (\inst6|pipes|Add5~6_combout\ & 
-- !\inst6|pipes|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(4),
	datab => \inst6|pipes|Add5~6_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan6~7_cout\,
	cout => \inst6|pipes|LessThan6~9_cout\);

-- Location: LCCOMB_X20_Y21_N12
\inst6|pipes|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~11_cout\ = CARRY((\inst6|pipes|Add5~8_combout\ & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5) & !\inst6|pipes|LessThan6~9_cout\)) # (!\inst6|pipes|Add5~8_combout\ & ((!\inst6|pipes|LessThan6~9_cout\) # 
-- (!\inst6|flappy_bird|pipes|pipe3_x_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~8_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|pipes|LessThan6~9_cout\,
	cout => \inst6|pipes|LessThan6~11_cout\);

-- Location: LCCOMB_X20_Y21_N14
\inst6|pipes|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~13_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((!\inst6|pipes|LessThan6~11_cout\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6)))) # (!\inst6|pipes|Add5~10_combout\ & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & 
-- !\inst6|pipes|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|LessThan6~11_cout\,
	cout => \inst6|pipes|LessThan6~13_cout\);

-- Location: LCCOMB_X20_Y21_N16
\inst6|pipes|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~15_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & ((!\inst6|pipes|LessThan6~13_cout\) # (!\inst6|pipes|Add5~12_combout\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & (!\inst6|pipes|Add5~12_combout\ & 
-- !\inst6|pipes|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datab => \inst6|pipes|Add5~12_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan6~13_cout\,
	cout => \inst6|pipes|LessThan6~15_cout\);

-- Location: LCCOMB_X20_Y21_N18
\inst6|pipes|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~17_cout\ = CARRY((\inst6|pipes|Add5~14_combout\ & ((!\inst6|pipes|LessThan6~15_cout\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8)))) # (!\inst6|pipes|Add5~14_combout\ & (!\inst6|flappy_bird|pipes|pipe3_x_pos\(8) & 
-- !\inst6|pipes|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~14_combout\,
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|pipes|LessThan6~15_cout\,
	cout => \inst6|pipes|LessThan6~17_cout\);

-- Location: LCCOMB_X20_Y21_N20
\inst6|pipes|LessThan6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~19_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & ((!\inst6|pipes|LessThan6~17_cout\) # (!\inst6|pipes|Add5~16_combout\))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & (!\inst6|pipes|Add5~16_combout\ & 
-- !\inst6|pipes|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	datab => \inst6|pipes|Add5~16_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan6~17_cout\,
	cout => \inst6|pipes|LessThan6~19_cout\);

-- Location: LCCOMB_X20_Y21_N22
\inst6|pipes|LessThan6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan6~20_combout\ = (\inst6|pipes|Add5~18_combout\ & ((\inst6|flappy_bird|pipes|pipe3_x_pos\(10)) # (!\inst6|pipes|LessThan6~19_cout\))) # (!\inst6|pipes|Add5~18_combout\ & (!\inst6|pipes|LessThan6~19_cout\ & 
-- \inst6|flappy_bird|pipes|pipe3_x_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	cin => \inst6|pipes|LessThan6~19_cout\,
	combout => \inst6|pipes|LessThan6~20_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst6|flappy_bird|pipes|pipe_x_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe_x_pos[1]~0_combout\ = !\inst6|flappy_bird|pipes|pipe_x_pos\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	combout => \inst6|flappy_bird|pipes|pipe_x_pos[1]~0_combout\);

-- Location: FF_X22_Y20_N25
\inst6|flappy_bird|pipes|pipe_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe_x_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(1));

-- Location: LCCOMB_X21_Y21_N14
\inst6|pipes|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~2_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & ((\inst6|pipes|Add9~1\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(3) & (!\inst6|pipes|Add9~1\))
-- \inst6|pipes|Add9~3\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(3)) # (!\inst6|pipes|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|pipes|Add9~1\,
	combout => \inst6|pipes|Add9~2_combout\,
	cout => \inst6|pipes|Add9~3\);

-- Location: LCCOMB_X21_Y21_N16
\inst6|pipes|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~4_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & (\inst6|pipes|Add9~3\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4) & ((GND) # (!\inst6|pipes|Add9~3\)))
-- \inst6|pipes|Add9~5\ = CARRY((!\inst6|pipes|Add9~3\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|pipes|Add9~3\,
	combout => \inst6|pipes|Add9~4_combout\,
	cout => \inst6|pipes|Add9~5\);

-- Location: LCCOMB_X21_Y21_N20
\inst6|pipes|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~8_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (\inst6|pipes|Add9~7\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & (!\inst6|pipes|Add9~7\ & VCC))
-- \inst6|pipes|Add9~9\ = CARRY((\inst6|flappy_bird|pipes|pipe3_x_pos\(6) & !\inst6|pipes|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|Add9~7\,
	combout => \inst6|pipes|Add9~8_combout\,
	cout => \inst6|pipes|Add9~9\);

-- Location: LCCOMB_X21_Y21_N22
\inst6|pipes|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~10_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & (!\inst6|pipes|Add9~9\)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7) & ((\inst6|pipes|Add9~9\) # (GND)))
-- \inst6|pipes|Add9~11\ = CARRY((!\inst6|pipes|Add9~9\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|pipes|Add9~9\,
	combout => \inst6|pipes|Add9~10_combout\,
	cout => \inst6|pipes|Add9~11\);

-- Location: LCCOMB_X21_Y21_N26
\inst6|pipes|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~14_combout\ = (\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & (!\inst6|pipes|Add9~13\)) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(9) & ((\inst6|pipes|Add9~13\) # (GND)))
-- \inst6|pipes|Add9~15\ = CARRY((!\inst6|pipes|Add9~13\) # (!\inst6|flappy_bird|pipes|pipe3_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe3_x_pos\(9),
	datad => VCC,
	cin => \inst6|pipes|Add9~13\,
	combout => \inst6|pipes|Add9~14_combout\,
	cout => \inst6|pipes|Add9~15\);

-- Location: LCCOMB_X21_Y21_N28
\inst6|pipes|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add9~16_combout\ = \inst6|pipes|Add9~15\ $ (\inst6|flappy_bird|pipes|pipe3_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe3_x_pos\(10),
	cin => \inst6|pipes|Add9~15\,
	combout => \inst6|pipes|Add9~16_combout\);

-- Location: LCCOMB_X20_Y22_N0
\inst6|pipes|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~1_cout\ = CARRY((!\inst6|pipes|Add5~0_combout\ & !\inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~0_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|pipes|LessThan7~1_cout\);

-- Location: LCCOMB_X20_Y22_N2
\inst6|pipes|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~3_cout\ = CARRY((\inst6|pipes|Add9~0_combout\ & (\inst6|pipes|Add5~2_combout\ & !\inst6|pipes|LessThan7~1_cout\)) # (!\inst6|pipes|Add9~0_combout\ & ((\inst6|pipes|Add5~2_combout\) # (!\inst6|pipes|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add9~0_combout\,
	datab => \inst6|pipes|Add5~2_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~1_cout\,
	cout => \inst6|pipes|LessThan7~3_cout\);

-- Location: LCCOMB_X20_Y22_N4
\inst6|pipes|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~5_cout\ = CARRY((\inst6|pipes|Add5~4_combout\ & (\inst6|pipes|Add9~2_combout\ & !\inst6|pipes|LessThan7~3_cout\)) # (!\inst6|pipes|Add5~4_combout\ & ((\inst6|pipes|Add9~2_combout\) # (!\inst6|pipes|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~4_combout\,
	datab => \inst6|pipes|Add9~2_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~3_cout\,
	cout => \inst6|pipes|LessThan7~5_cout\);

-- Location: LCCOMB_X20_Y22_N6
\inst6|pipes|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~7_cout\ = CARRY((\inst6|pipes|Add5~6_combout\ & ((!\inst6|pipes|LessThan7~5_cout\) # (!\inst6|pipes|Add9~4_combout\))) # (!\inst6|pipes|Add5~6_combout\ & (!\inst6|pipes|Add9~4_combout\ & !\inst6|pipes|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~6_combout\,
	datab => \inst6|pipes|Add9~4_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~5_cout\,
	cout => \inst6|pipes|LessThan7~7_cout\);

-- Location: LCCOMB_X20_Y22_N8
\inst6|pipes|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~9_cout\ = CARRY((\inst6|pipes|Add9~6_combout\ & ((!\inst6|pipes|LessThan7~7_cout\) # (!\inst6|pipes|Add5~8_combout\))) # (!\inst6|pipes|Add9~6_combout\ & (!\inst6|pipes|Add5~8_combout\ & !\inst6|pipes|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add9~6_combout\,
	datab => \inst6|pipes|Add5~8_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~7_cout\,
	cout => \inst6|pipes|LessThan7~9_cout\);

-- Location: LCCOMB_X20_Y22_N10
\inst6|pipes|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~11_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((!\inst6|pipes|LessThan7~9_cout\) # (!\inst6|pipes|Add9~8_combout\))) # (!\inst6|pipes|Add5~10_combout\ & (!\inst6|pipes|Add9~8_combout\ & !\inst6|pipes|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|pipes|Add9~8_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~9_cout\,
	cout => \inst6|pipes|LessThan7~11_cout\);

-- Location: LCCOMB_X20_Y22_N12
\inst6|pipes|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~13_cout\ = CARRY((\inst6|pipes|Add5~12_combout\ & (\inst6|pipes|Add9~10_combout\ & !\inst6|pipes|LessThan7~11_cout\)) # (!\inst6|pipes|Add5~12_combout\ & ((\inst6|pipes|Add9~10_combout\) # (!\inst6|pipes|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~12_combout\,
	datab => \inst6|pipes|Add9~10_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~11_cout\,
	cout => \inst6|pipes|LessThan7~13_cout\);

-- Location: LCCOMB_X20_Y22_N14
\inst6|pipes|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~15_cout\ = CARRY((\inst6|pipes|Add9~12_combout\ & (\inst6|pipes|Add5~14_combout\ & !\inst6|pipes|LessThan7~13_cout\)) # (!\inst6|pipes|Add9~12_combout\ & ((\inst6|pipes|Add5~14_combout\) # (!\inst6|pipes|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add9~12_combout\,
	datab => \inst6|pipes|Add5~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~13_cout\,
	cout => \inst6|pipes|LessThan7~15_cout\);

-- Location: LCCOMB_X20_Y22_N16
\inst6|pipes|LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~17_cout\ = CARRY((\inst6|pipes|Add5~16_combout\ & (\inst6|pipes|Add9~14_combout\ & !\inst6|pipes|LessThan7~15_cout\)) # (!\inst6|pipes|Add5~16_combout\ & ((\inst6|pipes|Add9~14_combout\) # (!\inst6|pipes|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~16_combout\,
	datab => \inst6|pipes|Add9~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan7~15_cout\,
	cout => \inst6|pipes|LessThan7~17_cout\);

-- Location: LCCOMB_X20_Y22_N18
\inst6|pipes|LessThan7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan7~18_combout\ = (\inst6|pipes|Add5~18_combout\ & ((\inst6|pipes|LessThan7~17_cout\) # (!\inst6|pipes|Add9~16_combout\))) # (!\inst6|pipes|Add5~18_combout\ & (\inst6|pipes|LessThan7~17_cout\ & !\inst6|pipes|Add9~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|pipes|Add9~16_combout\,
	cin => \inst6|pipes|LessThan7~17_cout\,
	combout => \inst6|pipes|LessThan7~18_combout\);

-- Location: LCCOMB_X21_Y22_N30
\inst6|pipes|pipe_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~4_combout\ = (\inst6|pipes|LessThan6~20_combout\ & \inst6|pipes|LessThan7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipes|LessThan6~20_combout\,
	datad => \inst6|pipes|LessThan7~18_combout\,
	combout => \inst6|pipes|pipe_on~4_combout\);

-- Location: LCCOMB_X19_Y20_N12
\inst6|flappy_bird|pipes|Add11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|pipes|Add11~1_cout\);

-- Location: LCCOMB_X19_Y20_N14
\inst6|flappy_bird|pipes|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~2_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & ((\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & (\inst6|flappy_bird|pipes|Add11~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & 
-- (!\inst6|flappy_bird|pipes|Add11~1_cout\)))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & ((\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & (!\inst6|flappy_bird|pipes|Add11~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & 
-- ((\inst6|flappy_bird|pipes|Add11~1_cout\) # (GND)))))
-- \inst6|flappy_bird|pipes|Add11~3\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & !\inst6|flappy_bird|pipes|Add11~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & 
-- ((!\inst6|flappy_bird|pipes|Add11~1_cout\) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(2),
	datab => \inst6|flappy_bird|pipes|pipe2_x_motion\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~1_cout\,
	combout => \inst6|flappy_bird|pipes|Add11~2_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~3\);

-- Location: LCCOMB_X19_Y20_N18
\inst6|flappy_bird|pipes|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~6_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & ((\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & (!\inst6|flappy_bird|pipes|Add11~5\)) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & 
-- ((\inst6|flappy_bird|pipes|Add11~5\) # (GND))))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & ((\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & (\inst6|flappy_bird|pipes|Add11~5\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & 
-- (!\inst6|flappy_bird|pipes|Add11~5\))))
-- \inst6|flappy_bird|pipes|Add11~7\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & ((!\inst6|flappy_bird|pipes|Add11~5\) # (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4)))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & 
-- (!\inst6|flappy_bird|pipes|pipe2_x_motion\(4) & !\inst6|flappy_bird|pipes|Add11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(4),
	datab => \inst6|flappy_bird|pipes|pipe2_x_motion\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~5\,
	combout => \inst6|flappy_bird|pipes|Add11~6_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~7\);

-- Location: LCCOMB_X22_Y20_N22
\inst6|flappy_bird|pipes|pipe2_x_pos[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe2_x_pos[4]~3_combout\ = !\inst6|flappy_bird|pipes|Add11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add11~6_combout\,
	combout => \inst6|flappy_bird|pipes|pipe2_x_pos[4]~3_combout\);

-- Location: FF_X22_Y20_N23
\inst6|flappy_bird|pipes|pipe2_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe2_x_pos[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(4));

-- Location: LCCOMB_X20_Y20_N0
\inst6|flappy_bird|pipes|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan9~0_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(3)) # (((\inst6|flappy_bird|pipes|pipe2_x_pos\(5)) # (\inst6|flappy_bird|pipes|pipe_x_pos\(1))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(3),
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(4),
	datac => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	combout => \inst6|flappy_bird|pipes|LessThan9~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\inst6|flappy_bird|pipes|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~12_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & (\inst6|flappy_bird|pipes|Add11~11\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|pipes|Add11~11\)))
-- \inst6|flappy_bird|pipes|Add11~13\ = CARRY((!\inst6|flappy_bird|pipes|Add11~11\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~11\,
	combout => \inst6|flappy_bird|pipes|Add11~12_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~13\);

-- Location: LCCOMB_X22_Y20_N26
\inst6|flappy_bird|pipes|pipe2_x_pos[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe2_x_pos[7]~1_combout\ = !\inst6|flappy_bird|pipes|Add11~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add11~12_combout\,
	combout => \inst6|flappy_bird|pipes|pipe2_x_pos[7]~1_combout\);

-- Location: FF_X22_Y20_N27
\inst6|flappy_bird|pipes|pipe2_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe2_x_pos[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(7));

-- Location: LCCOMB_X19_Y20_N28
\inst6|flappy_bird|pipes|Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~16_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & (\inst6|flappy_bird|pipes|Add11~15\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|pipes|Add11~15\)))
-- \inst6|flappy_bird|pipes|Add11~17\ = CARRY((!\inst6|flappy_bird|pipes|Add11~15\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~15\,
	combout => \inst6|flappy_bird|pipes|Add11~16_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~17\);

-- Location: LCCOMB_X21_Y20_N0
\inst6|flappy_bird|pipes|pipe2_x_pos[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe2_x_pos[9]~0_combout\ = !\inst6|flappy_bird|pipes|Add11~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add11~16_combout\,
	combout => \inst6|flappy_bird|pipes|pipe2_x_pos[9]~0_combout\);

-- Location: FF_X21_Y20_N1
\inst6|flappy_bird|pipes|pipe2_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe2_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(9));

-- Location: LCCOMB_X19_Y20_N22
\inst6|flappy_bird|pipes|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~10_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (!\inst6|flappy_bird|pipes|Add11~9\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (\inst6|flappy_bird|pipes|Add11~9\ & VCC))
-- \inst6|flappy_bird|pipes|Add11~11\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & !\inst6|flappy_bird|pipes|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~9\,
	combout => \inst6|flappy_bird|pipes|Add11~10_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~11\);

-- Location: LCCOMB_X22_Y20_N28
\inst6|flappy_bird|pipes|pipe2_x_pos[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe2_x_pos[6]~2_combout\ = !\inst6|flappy_bird|pipes|Add11~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add11~10_combout\,
	combout => \inst6|flappy_bird|pipes|pipe2_x_pos[6]~2_combout\);

-- Location: FF_X22_Y20_N29
\inst6|flappy_bird|pipes|pipe2_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe2_x_pos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(6));

-- Location: LCCOMB_X20_Y20_N2
\inst6|flappy_bird|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan9~0_combout\ = (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & (\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & \inst6|flappy_bird|pipes|pipe2_x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	datac => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datad => \inst6|flappy_bird|pipes|pipe2_x_pos\(6),
	combout => \inst6|flappy_bird|LessThan9~0_combout\);

-- Location: LCCOMB_X19_Y20_N0
\inst6|flappy_bird|pipes|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|LessThan9~1_combout\ = (!\inst6|flappy_bird|pipes|pipe2_x_pos\(10) & ((\inst6|flappy_bird|pipes|pipe2_x_pos\(2)) # ((\inst6|flappy_bird|pipes|LessThan9~0_combout\) # (!\inst6|flappy_bird|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(2),
	datab => \inst6|flappy_bird|pipes|LessThan9~0_combout\,
	datac => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	datad => \inst6|flappy_bird|LessThan9~0_combout\,
	combout => \inst6|flappy_bird|pipes|LessThan9~1_combout\);

-- Location: FF_X19_Y20_N1
\inst6|flappy_bird|pipes|pipe2_x_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|LessThan9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_motion\(4));

-- Location: LCCOMB_X19_Y20_N20
\inst6|flappy_bird|pipes|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~8_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & ((GND) # (!\inst6|flappy_bird|pipes|Add11~7\))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & (\inst6|flappy_bird|pipes|Add11~7\ $ (GND)))
-- \inst6|flappy_bird|pipes|Add11~9\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(5)) # (!\inst6|flappy_bird|pipes|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~7\,
	combout => \inst6|flappy_bird|pipes|Add11~8_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~9\);

-- Location: FF_X19_Y20_N21
\inst6|flappy_bird|pipes|pipe2_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(5));

-- Location: LCCOMB_X19_Y20_N26
\inst6|flappy_bird|pipes|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~14_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (\inst6|flappy_bird|pipes|Add11~13\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (!\inst6|flappy_bird|pipes|Add11~13\))
-- \inst6|flappy_bird|pipes|Add11~15\ = CARRY((!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & !\inst6|flappy_bird|pipes|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add11~13\,
	combout => \inst6|flappy_bird|pipes|Add11~14_combout\,
	cout => \inst6|flappy_bird|pipes|Add11~15\);

-- Location: LCCOMB_X19_Y20_N30
\inst6|flappy_bird|pipes|Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add11~18_combout\ = \inst6|flappy_bird|pipes|pipe2_x_pos\(10) $ (!\inst6|flappy_bird|pipes|Add11~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	cin => \inst6|flappy_bird|pipes|Add11~17\,
	combout => \inst6|flappy_bird|pipes|Add11~18_combout\);

-- Location: FF_X19_Y20_N31
\inst6|flappy_bird|pipes|pipe2_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add11~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(10));

-- Location: FF_X19_Y20_N27
\inst6|flappy_bird|pipes|pipe2_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add11~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(8));

-- Location: LCCOMB_X19_Y21_N8
\inst6|pipes|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~1_cout\ = CARRY(\inst3|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(0),
	datad => VCC,
	cout => \inst6|pipes|LessThan4~1_cout\);

-- Location: LCCOMB_X19_Y21_N10
\inst6|pipes|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~3_cout\ = CARRY((\inst6|pipes|Add5~0_combout\ & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) & !\inst6|pipes|LessThan4~1_cout\)) # (!\inst6|pipes|Add5~0_combout\ & ((\inst6|flappy_bird|pipes|pipe_x_pos\(1)) # 
-- (!\inst6|pipes|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~0_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cin => \inst6|pipes|LessThan4~1_cout\,
	cout => \inst6|pipes|LessThan4~3_cout\);

-- Location: LCCOMB_X19_Y21_N12
\inst6|pipes|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~5_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (\inst6|pipes|Add5~2_combout\ & !\inst6|pipes|LessThan4~3_cout\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & ((\inst6|pipes|Add5~2_combout\) # 
-- (!\inst6|pipes|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(2),
	datab => \inst6|pipes|Add5~2_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan4~3_cout\,
	cout => \inst6|pipes|LessThan4~5_cout\);

-- Location: LCCOMB_X19_Y21_N14
\inst6|pipes|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~7_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & ((!\inst6|pipes|LessThan4~5_cout\) # (!\inst6|pipes|Add5~4_combout\))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & (!\inst6|pipes|Add5~4_combout\ & 
-- !\inst6|pipes|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(3),
	datab => \inst6|pipes|Add5~4_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan4~5_cout\,
	cout => \inst6|pipes|LessThan4~7_cout\);

-- Location: LCCOMB_X19_Y21_N16
\inst6|pipes|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~9_cout\ = CARRY((\inst6|pipes|Add5~6_combout\ & ((\inst6|flappy_bird|pipes|pipe2_x_pos\(4)) # (!\inst6|pipes|LessThan4~7_cout\))) # (!\inst6|pipes|Add5~6_combout\ & (\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & 
-- !\inst6|pipes|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~6_combout\,
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|pipes|LessThan4~7_cout\,
	cout => \inst6|pipes|LessThan4~9_cout\);

-- Location: LCCOMB_X19_Y21_N18
\inst6|pipes|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~11_cout\ = CARRY((\inst6|pipes|Add5~8_combout\ & (\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & !\inst6|pipes|LessThan4~9_cout\)) # (!\inst6|pipes|Add5~8_combout\ & ((\inst6|flappy_bird|pipes|pipe2_x_pos\(5)) # 
-- (!\inst6|pipes|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~8_combout\,
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|pipes|LessThan4~9_cout\,
	cout => \inst6|pipes|LessThan4~11_cout\);

-- Location: LCCOMB_X19_Y21_N20
\inst6|pipes|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~13_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((\inst6|flappy_bird|pipes|pipe2_x_pos\(6)) # (!\inst6|pipes|LessThan4~11_cout\))) # (!\inst6|pipes|Add5~10_combout\ & (\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & 
-- !\inst6|pipes|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|LessThan4~11_cout\,
	cout => \inst6|pipes|LessThan4~13_cout\);

-- Location: LCCOMB_X19_Y21_N22
\inst6|pipes|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~15_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & (!\inst6|pipes|Add5~12_combout\ & !\inst6|pipes|LessThan4~13_cout\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(7) & ((!\inst6|pipes|LessThan4~13_cout\) # 
-- (!\inst6|pipes|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(7),
	datab => \inst6|pipes|Add5~12_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan4~13_cout\,
	cout => \inst6|pipes|LessThan4~15_cout\);

-- Location: LCCOMB_X19_Y21_N24
\inst6|pipes|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~17_cout\ = CARRY((\inst6|pipes|Add5~14_combout\ & ((!\inst6|pipes|LessThan4~15_cout\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8)))) # (!\inst6|pipes|Add5~14_combout\ & (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & 
-- !\inst6|pipes|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~14_combout\,
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|pipes|LessThan4~15_cout\,
	cout => \inst6|pipes|LessThan4~17_cout\);

-- Location: LCCOMB_X19_Y21_N26
\inst6|pipes|LessThan4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~19_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & (!\inst6|pipes|Add5~16_combout\ & !\inst6|pipes|LessThan4~17_cout\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & ((!\inst6|pipes|LessThan4~17_cout\) # 
-- (!\inst6|pipes|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datab => \inst6|pipes|Add5~16_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan4~17_cout\,
	cout => \inst6|pipes|LessThan4~19_cout\);

-- Location: LCCOMB_X19_Y21_N28
\inst6|pipes|LessThan4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan4~20_combout\ = (\inst6|pipes|Add5~18_combout\ & ((!\inst6|flappy_bird|pipes|pipe2_x_pos\(10)) # (!\inst6|pipes|LessThan4~19_cout\))) # (!\inst6|pipes|Add5~18_combout\ & (!\inst6|pipes|LessThan4~19_cout\ & 
-- !\inst6|flappy_bird|pipes|pipe2_x_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	cin => \inst6|pipes|LessThan4~19_cout\,
	combout => \inst6|pipes|LessThan4~20_combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst6|pipes|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~0_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) $ (VCC))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & (\inst6|flappy_bird|pipes|pipe_x_pos\(1) & VCC))
-- \inst6|pipes|Add8~1\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(2) & \inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(2),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	combout => \inst6|pipes|Add8~0_combout\,
	cout => \inst6|pipes|Add8~1\);

-- Location: LCCOMB_X21_Y20_N12
\inst6|pipes|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~2_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & (!\inst6|pipes|Add8~1\)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(3) & ((\inst6|pipes|Add8~1\) # (GND)))
-- \inst6|pipes|Add8~3\ = CARRY((!\inst6|pipes|Add8~1\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(3),
	datad => VCC,
	cin => \inst6|pipes|Add8~1\,
	combout => \inst6|pipes|Add8~2_combout\,
	cout => \inst6|pipes|Add8~3\);

-- Location: LCCOMB_X21_Y20_N14
\inst6|pipes|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~4_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & (\inst6|pipes|Add8~3\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4) & ((GND) # (!\inst6|pipes|Add8~3\)))
-- \inst6|pipes|Add8~5\ = CARRY((!\inst6|pipes|Add8~3\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|pipes|Add8~3\,
	combout => \inst6|pipes|Add8~4_combout\,
	cout => \inst6|pipes|Add8~5\);

-- Location: LCCOMB_X21_Y20_N16
\inst6|pipes|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~6_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & (\inst6|pipes|Add8~5\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & (!\inst6|pipes|Add8~5\))
-- \inst6|pipes|Add8~7\ = CARRY((!\inst6|flappy_bird|pipes|pipe2_x_pos\(5) & !\inst6|pipes|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|pipes|Add8~5\,
	combout => \inst6|pipes|Add8~6_combout\,
	cout => \inst6|pipes|Add8~7\);

-- Location: LCCOMB_X21_Y20_N18
\inst6|pipes|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~8_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (!\inst6|pipes|Add8~7\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & (\inst6|pipes|Add8~7\ $ (GND)))
-- \inst6|pipes|Add8~9\ = CARRY((!\inst6|flappy_bird|pipes|pipe2_x_pos\(6) & !\inst6|pipes|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|Add8~7\,
	combout => \inst6|pipes|Add8~8_combout\,
	cout => \inst6|pipes|Add8~9\);

-- Location: LCCOMB_X21_Y20_N22
\inst6|pipes|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~12_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (\inst6|pipes|Add8~11\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (!\inst6|pipes|Add8~11\ & VCC))
-- \inst6|pipes|Add8~13\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & !\inst6|pipes|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|pipes|Add8~11\,
	combout => \inst6|pipes|Add8~12_combout\,
	cout => \inst6|pipes|Add8~13\);

-- Location: LCCOMB_X21_Y20_N24
\inst6|pipes|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~14_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & ((\inst6|pipes|Add8~13\) # (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & (!\inst6|pipes|Add8~13\))
-- \inst6|pipes|Add8~15\ = CARRY((\inst6|flappy_bird|pipes|pipe2_x_pos\(9)) # (!\inst6|pipes|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datad => VCC,
	cin => \inst6|pipes|Add8~13\,
	combout => \inst6|pipes|Add8~14_combout\,
	cout => \inst6|pipes|Add8~15\);

-- Location: LCCOMB_X21_Y20_N26
\inst6|pipes|Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|Add8~16_combout\ = \inst6|pipes|Add8~15\ $ (!\inst6|flappy_bird|pipes|pipe2_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	cin => \inst6|pipes|Add8~15\,
	combout => \inst6|pipes|Add8~16_combout\);

-- Location: LCCOMB_X20_Y20_N6
\inst6|pipes|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~1_cout\ = CARRY((!\inst6|pipes|Add5~0_combout\ & !\inst6|flappy_bird|pipes|pipe_x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~0_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|pipes|LessThan5~1_cout\);

-- Location: LCCOMB_X20_Y20_N8
\inst6|pipes|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~3_cout\ = CARRY((\inst6|pipes|Add5~2_combout\ & ((!\inst6|pipes|LessThan5~1_cout\) # (!\inst6|pipes|Add8~0_combout\))) # (!\inst6|pipes|Add5~2_combout\ & (!\inst6|pipes|Add8~0_combout\ & !\inst6|pipes|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~2_combout\,
	datab => \inst6|pipes|Add8~0_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~1_cout\,
	cout => \inst6|pipes|LessThan5~3_cout\);

-- Location: LCCOMB_X20_Y20_N10
\inst6|pipes|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~5_cout\ = CARRY((\inst6|pipes|Add5~4_combout\ & (\inst6|pipes|Add8~2_combout\ & !\inst6|pipes|LessThan5~3_cout\)) # (!\inst6|pipes|Add5~4_combout\ & ((\inst6|pipes|Add8~2_combout\) # (!\inst6|pipes|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~4_combout\,
	datab => \inst6|pipes|Add8~2_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~3_cout\,
	cout => \inst6|pipes|LessThan5~5_cout\);

-- Location: LCCOMB_X20_Y20_N12
\inst6|pipes|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~7_cout\ = CARRY((\inst6|pipes|Add5~6_combout\ & ((!\inst6|pipes|LessThan5~5_cout\) # (!\inst6|pipes|Add8~4_combout\))) # (!\inst6|pipes|Add5~6_combout\ & (!\inst6|pipes|Add8~4_combout\ & !\inst6|pipes|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~6_combout\,
	datab => \inst6|pipes|Add8~4_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~5_cout\,
	cout => \inst6|pipes|LessThan5~7_cout\);

-- Location: LCCOMB_X20_Y20_N14
\inst6|pipes|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~9_cout\ = CARRY((\inst6|pipes|Add5~8_combout\ & (\inst6|pipes|Add8~6_combout\ & !\inst6|pipes|LessThan5~7_cout\)) # (!\inst6|pipes|Add5~8_combout\ & ((\inst6|pipes|Add8~6_combout\) # (!\inst6|pipes|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~8_combout\,
	datab => \inst6|pipes|Add8~6_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~7_cout\,
	cout => \inst6|pipes|LessThan5~9_cout\);

-- Location: LCCOMB_X20_Y20_N16
\inst6|pipes|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~11_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((!\inst6|pipes|LessThan5~9_cout\) # (!\inst6|pipes|Add8~8_combout\))) # (!\inst6|pipes|Add5~10_combout\ & (!\inst6|pipes|Add8~8_combout\ & !\inst6|pipes|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|pipes|Add8~8_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~9_cout\,
	cout => \inst6|pipes|LessThan5~11_cout\);

-- Location: LCCOMB_X20_Y20_N18
\inst6|pipes|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~13_cout\ = CARRY((\inst6|pipes|Add8~10_combout\ & ((!\inst6|pipes|LessThan5~11_cout\) # (!\inst6|pipes|Add5~12_combout\))) # (!\inst6|pipes|Add8~10_combout\ & (!\inst6|pipes|Add5~12_combout\ & !\inst6|pipes|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add8~10_combout\,
	datab => \inst6|pipes|Add5~12_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~11_cout\,
	cout => \inst6|pipes|LessThan5~13_cout\);

-- Location: LCCOMB_X20_Y20_N20
\inst6|pipes|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~15_cout\ = CARRY((\inst6|pipes|Add5~14_combout\ & ((!\inst6|pipes|LessThan5~13_cout\) # (!\inst6|pipes|Add8~12_combout\))) # (!\inst6|pipes|Add5~14_combout\ & (!\inst6|pipes|Add8~12_combout\ & !\inst6|pipes|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~14_combout\,
	datab => \inst6|pipes|Add8~12_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~13_cout\,
	cout => \inst6|pipes|LessThan5~15_cout\);

-- Location: LCCOMB_X20_Y20_N22
\inst6|pipes|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~17_cout\ = CARRY((\inst6|pipes|Add5~16_combout\ & (\inst6|pipes|Add8~14_combout\ & !\inst6|pipes|LessThan5~15_cout\)) # (!\inst6|pipes|Add5~16_combout\ & ((\inst6|pipes|Add8~14_combout\) # (!\inst6|pipes|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~16_combout\,
	datab => \inst6|pipes|Add8~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan5~15_cout\,
	cout => \inst6|pipes|LessThan5~17_cout\);

-- Location: LCCOMB_X20_Y20_N24
\inst6|pipes|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan5~18_combout\ = (\inst6|pipes|Add5~18_combout\ & ((\inst6|pipes|LessThan5~17_cout\) # (!\inst6|pipes|Add8~16_combout\))) # (!\inst6|pipes|Add5~18_combout\ & (\inst6|pipes|LessThan5~17_cout\ & !\inst6|pipes|Add8~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|pipes|Add8~16_combout\,
	cin => \inst6|pipes|LessThan5~17_cout\,
	combout => \inst6|pipes|LessThan5~18_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst6|flappy_bird|pipes|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|pipes|Add10~1_cout\);

-- Location: LCCOMB_X24_Y22_N2
\inst6|flappy_bird|pipes|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~2_combout\ = (\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (\inst6|flappy_bird|pipes|Add10~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & 
-- (!\inst6|flappy_bird|pipes|Add10~1_cout\)))) # (!\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (!\inst6|flappy_bird|pipes|Add10~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & 
-- ((\inst6|flappy_bird|pipes|Add10~1_cout\) # (GND)))))
-- \inst6|flappy_bird|pipes|Add10~3\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_motion\(4) & (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & !\inst6|flappy_bird|pipes|Add10~1_cout\)) # (!\inst6|flappy_bird|pipes|pipe_x_motion\(4) & 
-- ((!\inst6|flappy_bird|pipes|Add10~1_cout\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~1_cout\,
	combout => \inst6|flappy_bird|pipes|Add10~2_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~3\);

-- Location: FF_X24_Y22_N3
\inst6|flappy_bird|pipes|pipe_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(2));

-- Location: LCCOMB_X24_Y22_N4
\inst6|flappy_bird|pipes|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~4_combout\ = ((\inst6|flappy_bird|pipes|pipe_x_motion\(4) $ (\inst6|flappy_bird|pipes|pipe_x_pos\(3) $ (\inst6|flappy_bird|pipes|Add10~3\)))) # (GND)
-- \inst6|flappy_bird|pipes|Add10~5\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((!\inst6|flappy_bird|pipes|Add10~3\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3)))) # (!\inst6|flappy_bird|pipes|pipe_x_motion\(4) & 
-- (!\inst6|flappy_bird|pipes|pipe_x_pos\(3) & !\inst6|flappy_bird|pipes|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~3\,
	combout => \inst6|flappy_bird|pipes|Add10~4_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~5\);

-- Location: LCCOMB_X24_Y20_N22
\inst6|flappy_bird|pipes|pipe_x_pos[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe_x_pos[3]~4_combout\ = !\inst6|flappy_bird|pipes|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add10~4_combout\,
	combout => \inst6|flappy_bird|pipes|pipe_x_pos[3]~4_combout\);

-- Location: FF_X24_Y20_N23
\inst6|flappy_bird|pipes|pipe_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe_x_pos[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(3));

-- Location: LCCOMB_X24_Y22_N6
\inst6|flappy_bird|pipes|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~6_combout\ = (\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe_x_pos\(4) & (\inst6|flappy_bird|pipes|Add10~5\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & 
-- (!\inst6|flappy_bird|pipes|Add10~5\)))) # (!\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((\inst6|flappy_bird|pipes|pipe_x_pos\(4) & (!\inst6|flappy_bird|pipes|Add10~5\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & ((\inst6|flappy_bird|pipes|Add10~5\) # 
-- (GND)))))
-- \inst6|flappy_bird|pipes|Add10~7\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_motion\(4) & (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & !\inst6|flappy_bird|pipes|Add10~5\)) # (!\inst6|flappy_bird|pipes|pipe_x_motion\(4) & ((!\inst6|flappy_bird|pipes|Add10~5\) 
-- # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_motion\(4),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~5\,
	combout => \inst6|flappy_bird|pipes|Add10~6_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~7\);

-- Location: FF_X24_Y22_N7
\inst6|flappy_bird|pipes|pipe_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(4));

-- Location: LCCOMB_X24_Y22_N8
\inst6|flappy_bird|pipes|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~8_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (\inst6|flappy_bird|pipes|Add10~7\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5) & ((GND) # (!\inst6|flappy_bird|pipes|Add10~7\)))
-- \inst6|flappy_bird|pipes|Add10~9\ = CARRY((!\inst6|flappy_bird|pipes|Add10~7\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~7\,
	combout => \inst6|flappy_bird|pipes|Add10~8_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~9\);

-- Location: LCCOMB_X24_Y20_N24
\inst6|flappy_bird|pipes|pipe_x_pos[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe_x_pos[5]~3_combout\ = !\inst6|flappy_bird|pipes|Add10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add10~8_combout\,
	combout => \inst6|flappy_bird|pipes|pipe_x_pos[5]~3_combout\);

-- Location: FF_X24_Y20_N25
\inst6|flappy_bird|pipes|pipe_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe_x_pos[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(5));

-- Location: LCCOMB_X24_Y22_N10
\inst6|flappy_bird|pipes|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~10_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (!\inst6|flappy_bird|pipes|Add10~9\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(6) & (\inst6|flappy_bird|pipes|Add10~9\ & VCC))
-- \inst6|flappy_bird|pipes|Add10~11\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(6) & !\inst6|flappy_bird|pipes|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~9\,
	combout => \inst6|flappy_bird|pipes|Add10~10_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~11\);

-- Location: LCCOMB_X23_Y22_N28
\inst6|flappy_bird|pipes|pipe_x_pos[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe_x_pos[6]~2_combout\ = !\inst6|flappy_bird|pipes|Add10~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|flappy_bird|pipes|Add10~10_combout\,
	combout => \inst6|flappy_bird|pipes|pipe_x_pos[6]~2_combout\);

-- Location: FF_X23_Y22_N29
\inst6|flappy_bird|pipes|pipe_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe_x_pos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(6));

-- Location: LCCOMB_X24_Y22_N12
\inst6|flappy_bird|pipes|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~12_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(7) & ((GND) # (!\inst6|flappy_bird|pipes|Add10~11\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & (\inst6|flappy_bird|pipes|Add10~11\ $ (GND)))
-- \inst6|flappy_bird|pipes|Add10~13\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(7)) # (!\inst6|flappy_bird|pipes|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~11\,
	combout => \inst6|flappy_bird|pipes|Add10~12_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~13\);

-- Location: FF_X24_Y22_N13
\inst6|flappy_bird|pipes|pipe_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(7));

-- Location: LCCOMB_X24_Y22_N14
\inst6|flappy_bird|pipes|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~14_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (!\inst6|flappy_bird|pipes|Add10~13\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (\inst6|flappy_bird|pipes|Add10~13\ & VCC))
-- \inst6|flappy_bird|pipes|Add10~15\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(8) & !\inst6|flappy_bird|pipes|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~13\,
	combout => \inst6|flappy_bird|pipes|Add10~14_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~15\);

-- Location: LCCOMB_X24_Y22_N28
\inst6|flappy_bird|pipes|pipe_x_pos[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe_x_pos[8]~1_combout\ = !\inst6|flappy_bird|pipes|Add10~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|flappy_bird|pipes|Add10~14_combout\,
	combout => \inst6|flappy_bird|pipes|pipe_x_pos[8]~1_combout\);

-- Location: FF_X24_Y22_N29
\inst6|flappy_bird|pipes|pipe_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe_x_pos[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(8));

-- Location: LCCOMB_X24_Y22_N16
\inst6|flappy_bird|pipes|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~16_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|pipes|Add10~15\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(9) & (\inst6|flappy_bird|pipes|Add10~15\ $ (GND)))
-- \inst6|flappy_bird|pipes|Add10~17\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(9)) # (!\inst6|flappy_bird|pipes|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|pipes|Add10~15\,
	combout => \inst6|flappy_bird|pipes|Add10~16_combout\,
	cout => \inst6|flappy_bird|pipes|Add10~17\);

-- Location: FF_X24_Y22_N17
\inst6|flappy_bird|pipes|pipe_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add10~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(9));

-- Location: LCCOMB_X24_Y22_N18
\inst6|flappy_bird|pipes|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|Add10~18_combout\ = \inst6|flappy_bird|pipes|Add10~17\ $ (!\inst6|flappy_bird|pipes|pipe_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	cin => \inst6|flappy_bird|pipes|Add10~17\,
	combout => \inst6|flappy_bird|pipes|Add10~18_combout\);

-- Location: FF_X24_Y22_N19
\inst6|flappy_bird|pipes|pipe_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|Add10~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe_x_pos\(10));

-- Location: LCCOMB_X26_Y22_N6
\inst6|pipes|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~1_cout\ = CARRY(\inst3|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(0),
	datad => VCC,
	cout => \inst6|pipes|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y22_N8
\inst6|pipes|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~3_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(1) & ((!\inst6|pipes|LessThan0~1_cout\) # (!\inst6|pipes|Add5~0_combout\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(1) & (!\inst6|pipes|Add5~0_combout\ & 
-- !\inst6|pipes|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|pipes|Add5~0_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan0~1_cout\,
	cout => \inst6|pipes|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y22_N10
\inst6|pipes|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~5_cout\ = CARRY((\inst6|pipes|Add5~2_combout\ & ((!\inst6|pipes|LessThan0~3_cout\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2)))) # (!\inst6|pipes|Add5~2_combout\ & (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & 
-- !\inst6|pipes|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~2_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(2),
	datad => VCC,
	cin => \inst6|pipes|LessThan0~3_cout\,
	cout => \inst6|pipes|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y22_N12
\inst6|pipes|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~7_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(3) & (!\inst6|pipes|Add5~4_combout\ & !\inst6|pipes|LessThan0~5_cout\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3) & ((!\inst6|pipes|LessThan0~5_cout\) # 
-- (!\inst6|pipes|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(3),
	datab => \inst6|pipes|Add5~4_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan0~5_cout\,
	cout => \inst6|pipes|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y22_N14
\inst6|pipes|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~9_cout\ = CARRY((\inst6|pipes|Add5~6_combout\ & ((!\inst6|pipes|LessThan0~7_cout\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4)))) # (!\inst6|pipes|Add5~6_combout\ & (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & 
-- !\inst6|pipes|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~6_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(4),
	datad => VCC,
	cin => \inst6|pipes|LessThan0~7_cout\,
	cout => \inst6|pipes|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y22_N16
\inst6|pipes|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~11_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (!\inst6|pipes|Add5~8_combout\ & !\inst6|pipes|LessThan0~9_cout\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5) & ((!\inst6|pipes|LessThan0~9_cout\) # 
-- (!\inst6|pipes|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	datab => \inst6|pipes|Add5~8_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan0~9_cout\,
	cout => \inst6|pipes|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y22_N18
\inst6|pipes|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~13_cout\ = CARRY((\inst6|pipes|Add5~10_combout\ & ((\inst6|flappy_bird|pipes|pipe_x_pos\(6)) # (!\inst6|pipes|LessThan0~11_cout\))) # (!\inst6|pipes|Add5~10_combout\ & (\inst6|flappy_bird|pipes|pipe_x_pos\(6) & 
-- !\inst6|pipes|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~10_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(6),
	datad => VCC,
	cin => \inst6|pipes|LessThan0~11_cout\,
	cout => \inst6|pipes|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y22_N20
\inst6|pipes|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~15_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(7) & ((!\inst6|pipes|LessThan0~13_cout\) # (!\inst6|pipes|Add5~12_combout\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & (!\inst6|pipes|Add5~12_combout\ & 
-- !\inst6|pipes|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datab => \inst6|pipes|Add5~12_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan0~13_cout\,
	cout => \inst6|pipes|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y22_N22
\inst6|pipes|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~17_cout\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(8) & ((\inst6|pipes|Add5~14_combout\) # (!\inst6|pipes|LessThan0~15_cout\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (\inst6|pipes|Add5~14_combout\ & 
-- !\inst6|pipes|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datab => \inst6|pipes|Add5~14_combout\,
	datad => VCC,
	cin => \inst6|pipes|LessThan0~15_cout\,
	cout => \inst6|pipes|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y22_N24
\inst6|pipes|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~19_cout\ = CARRY((\inst6|pipes|Add5~16_combout\ & (\inst6|flappy_bird|pipes|pipe_x_pos\(9) & !\inst6|pipes|LessThan0~17_cout\)) # (!\inst6|pipes|Add5~16_combout\ & ((\inst6|flappy_bird|pipes|pipe_x_pos\(9)) # 
-- (!\inst6|pipes|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|Add5~16_combout\,
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datad => VCC,
	cin => \inst6|pipes|LessThan0~17_cout\,
	cout => \inst6|pipes|LessThan0~19_cout\);

-- Location: LCCOMB_X26_Y22_N26
\inst6|pipes|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|LessThan0~20_combout\ = (\inst6|pipes|Add5~18_combout\ & ((!\inst6|flappy_bird|pipes|pipe_x_pos\(10)) # (!\inst6|pipes|LessThan0~19_cout\))) # (!\inst6|pipes|Add5~18_combout\ & (!\inst6|pipes|LessThan0~19_cout\ & 
-- !\inst6|flappy_bird|pipes|pipe_x_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipes|Add5~18_combout\,
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	cin => \inst6|pipes|LessThan0~19_cout\,
	combout => \inst6|pipes|LessThan0~20_combout\);

-- Location: LCCOMB_X21_Y22_N28
\inst6|pipes|pipe_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipes|pipe_on~5_combout\ = (\inst6|pipes|LessThan1~18_combout\ & ((\inst6|pipes|LessThan0~20_combout\) # ((\inst6|pipes|LessThan4~20_combout\ & \inst6|pipes|LessThan5~18_combout\)))) # (!\inst6|pipes|LessThan1~18_combout\ & 
-- (\inst6|pipes|LessThan4~20_combout\ & (\inst6|pipes|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipes|LessThan1~18_combout\,
	datab => \inst6|pipes|LessThan4~20_combout\,
	datac => \inst6|pipes|LessThan5~18_combout\,
	datad => \inst6|pipes|LessThan0~20_combout\,
	combout => \inst6|pipes|pipe_on~5_combout\);

-- Location: LCCOMB_X21_Y22_N10
\inst3|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~1_combout\ = (\inst3|red_out~0_combout\ & (!\inst6|pipes|Add5~18_combout\ & ((\inst6|pipes|pipe_on~4_combout\) # (\inst6|pipes|pipe_on~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|red_out~0_combout\,
	datab => \inst6|pipes|Add5~18_combout\,
	datac => \inst6|pipes|pipe_on~4_combout\,
	datad => \inst6|pipes|pipe_on~5_combout\,
	combout => \inst3|red_out~1_combout\);

-- Location: FF_X22_Y18_N21
\inst3|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_v~q\);

-- Location: IOIBUF_X0_Y23_N15
\control_pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_pb2,
	o => \control_pb2~input_o\);

-- Location: LCCOMB_X21_Y18_N18
\inst18|s_state[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|s_state\(0) = (!\inst18|comb~0_combout\ & ((\inst18|s_state\(0)) # (!\control_pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|comb~0_combout\,
	datac => \control_pb2~input_o\,
	datad => \inst18|s_state\(0),
	combout => \inst18|s_state\(0));

-- Location: IOIBUF_X0_Y21_N8
\control_pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_pb1,
	o => \control_pb1~input_o\);

-- Location: LCCOMB_X21_Y18_N28
\inst18|s_state[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|s_state\(1) = (\control_pb1~input_o\ & ((\inst18|s_state[1]~0_combout\) # (\inst18|s_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|s_state[1]~0_combout\,
	datac => \control_pb1~input_o\,
	datad => \inst18|s_state\(1),
	combout => \inst18|s_state\(1));

-- Location: LCCOMB_X21_Y22_N16
\inst6|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|red~1_combout\ = \inst18|s_state\(0) $ (\inst18|s_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|s_state\(0),
	datac => \inst18|s_state\(1),
	combout => \inst6|red~1_combout\);

-- Location: FF_X26_Y21_N13
\inst3|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(4),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(4));

-- Location: LCCOMB_X22_Y18_N26
\inst3|v_count[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[4]~11_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~8_combout\) # ((!\inst3|v_count[3]~1_combout\ & \inst3|v_count\(4))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[3]~1_combout\ & (\inst3|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[3]~1_combout\,
	datac => \inst3|v_count\(4),
	datad => \inst3|Add1~8_combout\,
	combout => \inst3|v_count[4]~11_combout\);

-- Location: FF_X22_Y18_N27
\inst3|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(4));

-- Location: FF_X22_Y17_N19
\inst3|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(4),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(4));

-- Location: FF_X27_Y17_N31
\inst3|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(2),
	sload => VCC,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(2));

-- Location: LCCOMB_X26_Y18_N12
\inst6|text_display|LessThan41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan41~0_combout\ = (\inst3|pixel_column\(2) & \inst3|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(2),
	datac => \inst3|pixel_column\(1),
	combout => \inst6|text_display|LessThan41~0_combout\);

-- Location: LCCOMB_X27_Y21_N8
\inst6|text_display|text_display~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~5_combout\ = (!\inst3|pixel_column\(4) & !\inst3|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datad => \inst3|pixel_column\(3),
	combout => \inst6|text_display|text_display~5_combout\);

-- Location: LCCOMB_X27_Y21_N0
\inst6|text_display|text_display~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~26_combout\ = (\inst3|pixel_column\(5) & (\inst6|text_display|text_display~5_combout\ & ((!\inst3|pixel_column\(0)) # (!\inst6|text_display|LessThan41~0_combout\)))) # (!\inst3|pixel_column\(5) & 
-- (((!\inst6|text_display|text_display~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst6|text_display|LessThan41~0_combout\,
	datac => \inst6|text_display|text_display~5_combout\,
	datad => \inst3|pixel_column\(0),
	combout => \inst6|text_display|text_display~26_combout\);

-- Location: FF_X22_Y17_N21
\inst3|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(5),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(5));

-- Location: LCCOMB_X22_Y19_N2
\inst6|text_display|text_display~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~15_combout\ = (\inst3|pixel_row\(5) & (\inst6|text_display|LessThan55~0_combout\)) # (!\inst3|pixel_row\(5) & (((\inst6|pipes|LessThan3~0_combout\ & \inst3|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan55~0_combout\,
	datab => \inst6|pipes|LessThan3~0_combout\,
	datac => \inst3|pixel_row\(4),
	datad => \inst3|pixel_row\(5),
	combout => \inst6|text_display|text_display~15_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst6|text_display|text_display~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~14_combout\ = (\inst3|pixel_row\(7) & (\inst3|pixel_row\(5))) # (!\inst3|pixel_row\(7) & ((\inst3|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(7),
	datac => \inst3|pixel_row\(5),
	datad => \inst3|pixel_row\(6),
	combout => \inst6|text_display|text_display~14_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst6|text_display|text_display~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~16_combout\ = (!\inst3|pixel_row\(8) & ((\inst3|pixel_row\(5) & (\inst6|text_display|text_display~15_combout\ & !\inst6|text_display|text_display~14_combout\)) # (!\inst3|pixel_row\(5) & 
-- (!\inst6|text_display|text_display~15_combout\ & \inst6|text_display|text_display~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst6|text_display|text_display~15_combout\,
	datac => \inst3|pixel_row\(8),
	datad => \inst6|text_display|text_display~14_combout\,
	combout => \inst6|text_display|text_display~16_combout\);

-- Location: LCCOMB_X27_Y21_N10
\inst6|text_display|text_display~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~4_combout\ = (\inst3|pixel_column\(7) & (!\inst3|pixel_column\(8) & \inst3|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst3|pixel_column\(8),
	datac => \inst3|pixel_column\(6),
	combout => \inst6|text_display|text_display~4_combout\);

-- Location: LCCOMB_X27_Y21_N22
\inst6|text_display|text_display~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~27_combout\ = (!\inst3|pixel_column\(9) & (\inst6|text_display|text_display~26_combout\ & (\inst6|text_display|text_display~16_combout\ & \inst6|text_display|text_display~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datab => \inst6|text_display|text_display~26_combout\,
	datac => \inst6|text_display|text_display~16_combout\,
	datad => \inst6|text_display|text_display~4_combout\,
	combout => \inst6|text_display|text_display~27_combout\);

-- Location: LCCOMB_X27_Y21_N24
\inst6|text_display|LessThan53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan53~0_combout\ = (\inst3|pixel_column\(2) & ((\inst3|pixel_column\(1)) # (\inst3|pixel_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(0),
	combout => \inst6|text_display|LessThan53~0_combout\);

-- Location: LCCOMB_X27_Y21_N16
\inst6|text_display|text_display~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~24_combout\ = (\inst6|text_display|LessThan32~2_combout\ & (\inst3|pixel_column\(8) & (\inst6|text_display|text_display~5_combout\ & !\inst6|text_display|LessThan53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan32~2_combout\,
	datab => \inst3|pixel_column\(8),
	datac => \inst6|text_display|text_display~5_combout\,
	datad => \inst6|text_display|LessThan53~0_combout\,
	combout => \inst6|text_display|text_display~24_combout\);

-- Location: LCCOMB_X27_Y21_N6
\inst6|text_display|text_display~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~23_combout\ = (\inst3|pixel_column\(5) & (\inst6|text_display|text_display~4_combout\ & ((\inst6|text_display|LessThan41~0_combout\) # (!\inst6|text_display|text_display~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst6|text_display|LessThan41~0_combout\,
	datac => \inst6|text_display|text_display~5_combout\,
	datad => \inst6|text_display|text_display~4_combout\,
	combout => \inst6|text_display|text_display~23_combout\);

-- Location: LCCOMB_X27_Y21_N26
\inst6|text_display|text_display~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~25_combout\ = (!\inst3|pixel_column\(9) & (\inst6|text_display|text_display~16_combout\ & ((\inst6|text_display|text_display~24_combout\) # (\inst6|text_display|text_display~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datab => \inst6|text_display|text_display~24_combout\,
	datac => \inst6|text_display|text_display~16_combout\,
	datad => \inst6|text_display|text_display~23_combout\,
	combout => \inst6|text_display|text_display~25_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst6|text_display|character_address[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[0]~21_combout\ = (!\inst6|text_display|text_display~27_combout\ & !\inst6|text_display|text_display~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~27_combout\,
	datad => \inst6|text_display|text_display~25_combout\,
	combout => \inst6|text_display|character_address[0]~21_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst6|text_display|LessThan55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan55~0_combout\ = (\inst3|pixel_row\(2) & (\inst3|pixel_row\(4) & \inst3|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(2),
	datac => \inst3|pixel_row\(4),
	datad => \inst3|pixel_row\(3),
	combout => \inst6|text_display|LessThan55~0_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst6|text_display|text_display~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~6_combout\ = (\inst3|pixel_row\(5) & (((!\inst3|pixel_row\(1) & !\inst3|pixel_row\(0))) # (!\inst6|text_display|LessThan55~0_combout\))) # (!\inst3|pixel_row\(5) & (\inst3|pixel_row\(1) & 
-- (\inst6|text_display|LessThan55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst3|pixel_row\(1),
	datac => \inst6|text_display|LessThan55~0_combout\,
	datad => \inst3|pixel_row\(0),
	combout => \inst6|text_display|text_display~6_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst6|text_display|text_display~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~7_combout\ = (\inst3|pixel_row\(8) & (\inst6|text_display|text_display~6_combout\ & (!\inst3|pixel_row\(7) & \inst3|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(8),
	datab => \inst6|text_display|text_display~6_combout\,
	datac => \inst3|pixel_row\(7),
	datad => \inst3|pixel_row\(6),
	combout => \inst6|text_display|text_display~7_combout\);

-- Location: LCCOMB_X27_Y18_N20
\inst6|text_display|LessThan41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan41~2_combout\ = (\inst3|pixel_column\(7)) # ((\inst3|pixel_column\(6) & \inst3|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datac => \inst3|pixel_column\(6),
	datad => \inst3|pixel_column\(5),
	combout => \inst6|text_display|LessThan41~2_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst6|gameover|text_display~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~24_combout\ = (\inst3|pixel_column\(3) & \inst3|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datac => \inst3|pixel_column\(4),
	combout => \inst6|gameover|text_display~24_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst6|text_display|LessThan41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan41~1_combout\ = (\inst6|text_display|LessThan41~0_combout\ & (\inst3|pixel_column\(0) & (\inst3|pixel_column\(6) & \inst6|gameover|text_display~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan41~0_combout\,
	datab => \inst3|pixel_column\(0),
	datac => \inst3|pixel_column\(6),
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|text_display|LessThan41~1_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst6|gameover|text_display~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~20_combout\ = (!\inst3|pixel_column\(7) & !\inst3|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datac => \inst3|pixel_column\(6),
	combout => \inst6|gameover|text_display~20_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst6|text_display|text_display~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~13_combout\ = (\inst6|text_display|LessThan25~0_combout\ & (!\inst6|text_display|LessThan41~2_combout\ & (!\inst6|text_display|LessThan41~1_combout\ & !\inst6|gameover|text_display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan25~0_combout\,
	datab => \inst6|text_display|LessThan41~2_combout\,
	datac => \inst6|text_display|LessThan41~1_combout\,
	datad => \inst6|gameover|text_display~20_combout\,
	combout => \inst6|text_display|text_display~13_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst6|text_display|text_display~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~29_combout\ = (!\inst6|text_display|text_display~13_combout\) # (!\inst6|text_display|text_display~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|text_display|text_display~13_combout\,
	combout => \inst6|text_display|text_display~29_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst6|gameover|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|LessThan17~0_combout\ = (\inst3|pixel_column\(3)) # ((\inst3|pixel_column\(1)) # ((\inst3|pixel_column\(2)) # (\inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(4),
	combout => \inst6|gameover|LessThan17~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst3|pixel_column[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_column[9]~feeder_combout\ = \inst3|h_count\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|h_count\(9),
	combout => \inst3|pixel_column[9]~feeder_combout\);

-- Location: FF_X26_Y21_N27
\inst3|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_column[9]~feeder_combout\,
	ena => \inst3|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(9));

-- Location: LCCOMB_X26_Y21_N4
\inst6|text_display|LessThan25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan25~0_combout\ = (!\inst3|pixel_column\(9) & \inst3|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|pixel_column\(9),
	datad => \inst3|pixel_column\(8),
	combout => \inst6|text_display|LessThan25~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst6|text_display|text_display~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~18_combout\ = (!\inst6|text_display|LessThan32~2_combout\ & (\inst6|text_display|LessThan25~0_combout\ & ((\inst6|gameover|LessThan17~0_combout\) # (!\inst6|gameover|text_display~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan32~2_combout\,
	datab => \inst6|gameover|LessThan17~0_combout\,
	datac => \inst6|gameover|text_display~20_combout\,
	datad => \inst6|text_display|LessThan25~0_combout\,
	combout => \inst6|text_display|text_display~18_combout\);

-- Location: LCCOMB_X27_Y21_N4
\inst6|gameover|LessThan28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|LessThan28~0_combout\ = (\inst3|pixel_column\(1)) # ((\inst3|pixel_column\(2)) # (\inst3|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(0),
	combout => \inst6|gameover|LessThan28~0_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst6|gameover|text_display~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~40_combout\ = (\inst3|pixel_column\(3)) # ((\inst3|pixel_column\(4)) # ((\inst3|pixel_column\(5)) # (\inst6|gameover|LessThan28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst3|pixel_column\(5),
	datad => \inst6|gameover|LessThan28~0_combout\,
	combout => \inst6|gameover|text_display~40_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst6|text_display|text_display~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~19_combout\ = (!\inst3|pixel_column\(7) & (\inst6|text_display|text_display~18_combout\ & ((!\inst6|gameover|text_display~40_combout\) # (!\inst3|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst3|pixel_column\(6),
	datac => \inst6|text_display|text_display~18_combout\,
	datad => \inst6|gameover|text_display~40_combout\,
	combout => \inst6|text_display|text_display~19_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst6|text_display|text_display~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~20_combout\ = (\inst6|text_display|text_display~7_combout\ & \inst6|text_display|text_display~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~7_combout\,
	datad => \inst6|text_display|text_display~19_combout\,
	combout => \inst6|text_display|text_display~20_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst6|text_display|character_address[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[5]~23_combout\ = (\inst6|text_display|text_display~29_combout\ & (!\inst6|text_display|text_display~20_combout\ & ((!\inst6|text_display|text_display~16_combout\) # (!\inst6|text_display|text_display~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~12_combout\,
	datab => \inst6|text_display|text_display~29_combout\,
	datac => \inst6|text_display|text_display~16_combout\,
	datad => \inst6|text_display|text_display~20_combout\,
	combout => \inst6|text_display|character_address[5]~23_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst6|text_display|LessThan33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan33~1_combout\ = ((\inst3|pixel_column\(5) & ((\inst3|pixel_column\(3)) # (\inst3|pixel_column\(4))))) # (!\inst6|gameover|text_display~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(4),
	datac => \inst6|gameover|text_display~20_combout\,
	datad => \inst3|pixel_column\(5),
	combout => \inst6|text_display|LessThan33~1_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst6|text_display|LessThan32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan32~2_combout\ = (!\inst3|pixel_column\(5) & (!\inst3|pixel_column\(7) & !\inst3|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(5),
	datac => \inst3|pixel_column\(7),
	datad => \inst3|pixel_column\(6),
	combout => \inst6|text_display|LessThan32~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst6|text_display|LessThan32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan32~3_combout\ = (!\inst3|pixel_column\(3) & (!\inst3|pixel_column\(2) & (!\inst3|pixel_column\(4) & \inst6|text_display|LessThan32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(3),
	datab => \inst3|pixel_column\(2),
	datac => \inst3|pixel_column\(4),
	datad => \inst6|text_display|LessThan32~2_combout\,
	combout => \inst6|text_display|LessThan32~3_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst6|text_display|text_display~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~17_combout\ = (!\inst6|text_display|LessThan33~0_combout\ & (!\inst6|text_display|LessThan33~1_combout\ & (!\inst6|text_display|LessThan32~3_combout\ & \inst6|text_display|LessThan25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan33~0_combout\,
	datab => \inst6|text_display|LessThan33~1_combout\,
	datac => \inst6|text_display|LessThan32~3_combout\,
	datad => \inst6|text_display|LessThan25~0_combout\,
	combout => \inst6|text_display|text_display~17_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst6|text_display|text_display~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~30_combout\ = (\inst6|text_display|text_display~17_combout\ & \inst6|text_display|text_display~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~7_combout\,
	combout => \inst6|text_display|text_display~30_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst6|gameover|text_display~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~25_combout\ = (\inst3|pixel_column\(6) & \inst3|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|pixel_column\(6),
	datad => \inst3|pixel_column\(5),
	combout => \inst6|gameover|text_display~25_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst6|text_display|LessThan53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan53~1_combout\ = (\inst3|pixel_column\(7)) # ((\inst6|gameover|text_display~25_combout\ & (\inst6|text_display|LessThan53~0_combout\ & \inst6|gameover|text_display~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst6|gameover|text_display~25_combout\,
	datac => \inst6|text_display|LessThan53~0_combout\,
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|text_display|LessThan53~1_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst6|text_display|LessThan52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan52~0_combout\ = (!\inst3|pixel_column\(5) & (!\inst3|pixel_column\(7) & ((!\inst6|gameover|text_display~24_combout\) # (!\inst6|text_display|LessThan41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan41~0_combout\,
	datab => \inst3|pixel_column\(5),
	datac => \inst3|pixel_column\(7),
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|text_display|LessThan52~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst6|text_display|text_display~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~8_combout\ = (\inst6|text_display|LessThan25~0_combout\ & (!\inst6|text_display|LessThan53~1_combout\ & (!\inst6|text_display|LessThan52~0_combout\ & !\inst6|gameover|text_display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|LessThan25~0_combout\,
	datab => \inst6|text_display|LessThan53~1_combout\,
	datac => \inst6|text_display|LessThan52~0_combout\,
	datad => \inst6|gameover|text_display~20_combout\,
	combout => \inst6|text_display|text_display~8_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst6|text_display|LessThan25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan25~1_combout\ = (\inst6|gameover|text_display~24_combout\ & ((\inst3|pixel_column\(2)) # ((\inst3|pixel_column\(0) & \inst3|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(0),
	datab => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|text_display|LessThan25~1_combout\);

-- Location: LCCOMB_X27_Y18_N6
\inst6|gameover|text_display~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~27_combout\ = (!\inst3|pixel_column\(6) & !\inst3|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|pixel_column\(6),
	datad => \inst3|pixel_column\(5),
	combout => \inst6|gameover|text_display~27_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst6|text_display|text_display~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~10_combout\ = (\inst3|pixel_column\(7) & (((!\inst6|text_display|LessThan25~1_combout\ & \inst6|gameover|text_display~27_combout\)))) # (!\inst3|pixel_column\(7) & (\inst6|text_display|text_display~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~9_combout\,
	datab => \inst6|text_display|LessThan25~1_combout\,
	datac => \inst3|pixel_column\(7),
	datad => \inst6|gameover|text_display~27_combout\,
	combout => \inst6|text_display|text_display~10_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst6|text_display|text_display~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~32_combout\ = (\inst3|pixel_column\(8) & (\inst6|text_display|text_display~10_combout\ & (!\inst6|gameover|text_display~20_combout\ & !\inst3|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(8),
	datab => \inst6|text_display|text_display~10_combout\,
	datac => \inst6|gameover|text_display~20_combout\,
	datad => \inst3|pixel_column\(9),
	combout => \inst6|text_display|text_display~32_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst6|text_display|character_address[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[0]~18_combout\ = ((!\inst6|text_display|text_display~32_combout\ & !\inst6|text_display|text_display~13_combout\)) # (!\inst6|text_display|text_display~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~32_combout\,
	datad => \inst6|text_display|text_display~13_combout\,
	combout => \inst6|text_display|character_address[0]~18_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst6|text_display|character_address[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[5]~22_combout\ = (\inst6|text_display|character_address[0]~18_combout\ & (((!\inst6|text_display|text_display~19_combout\ & !\inst6|text_display|text_display~8_combout\)) # 
-- (!\inst6|text_display|text_display~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~19_combout\,
	datab => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~8_combout\,
	datad => \inst6|text_display|character_address[0]~18_combout\,
	combout => \inst6|text_display|character_address[5]~22_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst6|text_display|character_address[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[5]~24_combout\ = (\inst6|text_display|character_address[3]~35_combout\ & (\inst6|text_display|character_address[5]~23_combout\ & (!\inst6|text_display|text_display~30_combout\ & 
-- \inst6|text_display|character_address[5]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[3]~35_combout\,
	datab => \inst6|text_display|character_address[5]~23_combout\,
	datac => \inst6|text_display|text_display~30_combout\,
	datad => \inst6|text_display|character_address[5]~22_combout\,
	combout => \inst6|text_display|character_address[5]~24_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst6|gameover|text_display~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|gameover|text_display~38_combout\ = (!\inst6|text_display|text_display~7_combout\) # (!\inst6|text_display|text_display~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~8_combout\,
	datac => \inst6|text_display|text_display~7_combout\,
	combout => \inst6|gameover|text_display~38_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst6|text_display|character_address[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[0]~25_combout\ = (\inst6|text_display|character_address[5]~24_combout\ & (((!\inst6|gameover|text_display~38_combout\)))) # (!\inst6|text_display|character_address[5]~24_combout\ & 
-- (\inst6|text_display|character_address[0]~20_combout\ & (\inst6|text_display|character_address[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[0]~20_combout\,
	datab => \inst6|text_display|character_address[0]~21_combout\,
	datac => \inst6|text_display|character_address[5]~24_combout\,
	datad => \inst6|gameover|text_display~38_combout\,
	combout => \inst6|text_display|character_address[0]~25_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst6|text_display|character_address[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[1]~36_combout\ = (!\inst6|text_display|text_display~27_combout\ & (((!\inst6|text_display|text_display~17_combout\ & !\inst6|text_display|text_display~19_combout\)) # (!\inst6|text_display|text_display~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datab => \inst6|text_display|text_display~27_combout\,
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~19_combout\,
	combout => \inst6|text_display|character_address[1]~36_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst6|text_display|LessThan29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|LessThan29~2_combout\ = (\inst3|pixel_column\(5) & (\inst6|gameover|LessThan28~0_combout\ & (\inst3|pixel_column\(3) & \inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(5),
	datab => \inst6|gameover|LessThan28~0_combout\,
	datac => \inst3|pixel_column\(3),
	datad => \inst3|pixel_column\(4),
	combout => \inst6|text_display|LessThan29~2_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst6|text_display|text_display~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~11_combout\ = (!\inst3|pixel_column\(6) & (!\inst6|text_display|LessThan29~2_combout\ & (\inst3|pixel_column\(7) & \inst6|text_display|LessThan25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datab => \inst6|text_display|LessThan29~2_combout\,
	datac => \inst3|pixel_column\(7),
	datad => \inst6|text_display|LessThan25~0_combout\,
	combout => \inst6|text_display|text_display~11_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst6|text_display|text_display~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~12_combout\ = (\inst6|text_display|text_display~11_combout\ & (((!\inst6|gameover|text_display~7_combout\ & \inst6|gameover|text_display~24_combout\)) # (!\inst6|gameover|text_display~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|gameover|text_display~7_combout\,
	datab => \inst6|gameover|text_display~27_combout\,
	datac => \inst6|text_display|text_display~11_combout\,
	datad => \inst6|gameover|text_display~24_combout\,
	combout => \inst6|text_display|text_display~12_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst6|text_display|character_address[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[1]~27_combout\ = ((!\inst6|text_display|text_display~32_combout\ & !\inst6|text_display|text_display~12_combout\)) # (!\inst6|text_display|text_display~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~32_combout\,
	datad => \inst6|text_display|text_display~12_combout\,
	combout => \inst6|text_display|character_address[1]~27_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst6|text_display|text_display~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~21_combout\ = (\inst6|text_display|text_display~16_combout\ & \inst6|text_display|text_display~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datac => \inst6|text_display|text_display~8_combout\,
	combout => \inst6|text_display|text_display~21_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst6|text_display|character_address[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[1]~28_combout\ = (\inst6|text_display|character_address[1]~26_combout\) # ((\inst6|text_display|character_address[1]~36_combout\ & (!\inst6|text_display|character_address[1]~27_combout\ & 
-- !\inst6|text_display|text_display~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[1]~26_combout\,
	datab => \inst6|text_display|character_address[1]~36_combout\,
	datac => \inst6|text_display|character_address[1]~27_combout\,
	datad => \inst6|text_display|text_display~21_combout\,
	combout => \inst6|text_display|character_address[1]~28_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst6|text_display|character_address~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address~37_combout\ = (!\inst6|text_display|text_display~25_combout\ & (((!\inst6|text_display|text_display~17_combout\ & !\inst6|text_display|text_display~19_combout\)) # (!\inst6|text_display|text_display~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datab => \inst6|text_display|text_display~25_combout\,
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~19_combout\,
	combout => \inst6|text_display|character_address~37_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst6|text_display|character_address~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address~29_combout\ = (!\inst6|text_display|text_display~21_combout\ & (((\inst6|text_display|text_display~20_combout\ & !\inst6|text_display|text_display~30_combout\)) # 
-- (!\inst6|text_display|character_address[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[1]~27_combout\,
	datab => \inst6|text_display|text_display~21_combout\,
	datac => \inst6|text_display|text_display~20_combout\,
	datad => \inst6|text_display|text_display~30_combout\,
	combout => \inst6|text_display|character_address~29_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst6|text_display|character_address[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[2]~30_combout\ = (\inst6|text_display|text_display~27_combout\) # ((\inst6|text_display|character_address~37_combout\ & ((\inst6|text_display|text_display~22_combout\) # 
-- (\inst6|text_display|character_address~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~22_combout\,
	datab => \inst6|text_display|character_address~37_combout\,
	datac => \inst6|text_display|text_display~27_combout\,
	datad => \inst6|text_display|character_address~29_combout\,
	combout => \inst6|text_display|character_address[2]~30_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst6|text_display|character_address[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[3]~35_combout\ = (!\inst6|text_display|text_display~27_combout\ & (!\inst6|text_display|text_display~25_combout\ & ((!\inst6|text_display|text_display~17_combout\) # (!\inst6|text_display|text_display~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~16_combout\,
	datab => \inst6|text_display|text_display~27_combout\,
	datac => \inst6|text_display|text_display~17_combout\,
	datad => \inst6|text_display|text_display~25_combout\,
	combout => \inst6|text_display|character_address[3]~35_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst6|text_display|character_address[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[3]~32_combout\ = (\inst6|text_display|character_address[3]~35_combout\ & (((\inst6|text_display|character_address~31_combout\ & !\inst6|text_display|text_display~30_combout\)) # 
-- (!\inst6|text_display|character_address[5]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address~31_combout\,
	datab => \inst6|text_display|text_display~30_combout\,
	datac => \inst6|text_display|character_address[3]~35_combout\,
	datad => \inst6|text_display|character_address[5]~22_combout\,
	combout => \inst6|text_display|character_address[3]~32_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst6|text_display|text_display~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_display~28_combout\ = (\inst6|text_display|text_display~16_combout\ & \inst6|text_display|text_display~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|text_display|text_display~16_combout\,
	datad => \inst6|text_display|text_display~17_combout\,
	combout => \inst6|text_display|text_display~28_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst6|text_display|character_address[4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[4]~33_combout\ = ((\inst6|text_display|character_address[4]~39_combout\ & (!\inst6|text_display|text_display~28_combout\ & \inst6|text_display|character_address[5]~22_combout\))) # 
-- (!\inst6|text_display|character_address[0]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|character_address[4]~39_combout\,
	datab => \inst6|text_display|character_address[0]~21_combout\,
	datac => \inst6|text_display|text_display~28_combout\,
	datad => \inst6|text_display|character_address[5]~22_combout\,
	combout => \inst6|text_display|character_address[4]~33_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst6|text_display|character_address[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|character_address[5]~38_combout\ = (\inst6|text_display|character_address[5]~24_combout\ & ((!\inst6|text_display|text_display~7_combout\) # (!\inst6|text_display|text_display~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_display~8_combout\,
	datac => \inst6|text_display|character_address[5]~24_combout\,
	datad => \inst6|text_display|text_display~7_combout\,
	combout => \inst6|text_display|character_address[5]~38_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst6|text_display|text_on|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_on|Mux0~0_combout\ = (\inst3|pixel_column\(3) & ((\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(5)) # ((\inst3|pixel_column\(2))))) # (!\inst3|pixel_column\(3) & 
-- (((\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(7) & !\inst3|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst3|pixel_column\(3),
	datad => \inst3|pixel_column\(2),
	combout => \inst6|text_display|text_on|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst6|text_display|text_on|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|text_display|text_on|Mux0~1_combout\ = (\inst3|pixel_column\(2) & ((\inst6|text_display|text_on|Mux0~0_combout\ & ((\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst6|text_display|text_on|Mux0~0_combout\ & 
-- (\inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst3|pixel_column\(2) & (((\inst6|text_display|text_on|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst6|text_display|text_on|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst3|pixel_column\(2),
	datad => \inst6|text_display|text_on|Mux0~0_combout\,
	combout => \inst6|text_display|text_on|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\inst6|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|red~2_combout\ = (\inst6|red~1_combout\ & ((\inst3|pixel_column\(4) & (!\inst6|text_display|text_on|Mux0~3_combout\)) # (!\inst3|pixel_column\(4) & ((!\inst6|text_display|text_on|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|text_display|text_on|Mux0~3_combout\,
	datab => \inst6|red~1_combout\,
	datac => \inst3|pixel_column\(4),
	datad => \inst6|text_display|text_on|Mux0~1_combout\,
	combout => \inst6|red~2_combout\);

-- Location: LCCOMB_X21_Y22_N18
\inst3|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~3_combout\ = (\inst3|video_on_h~q\ & (\inst3|video_on_v~q\ & \inst6|red~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|video_on_h~q\,
	datac => \inst3|video_on_v~q\,
	datad => \inst6|red~2_combout\,
	combout => \inst3|red_out~3_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst6|flappy_bird|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~1_cout\ = CARRY((\inst3|pixel_column\(0) & \inst3|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(0),
	datab => \inst3|pixel_column\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|Add0~1_cout\);

-- Location: LCCOMB_X26_Y19_N10
\inst6|flappy_bird|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~10_combout\ = (\inst3|pixel_column\(6) & (!\inst6|flappy_bird|Add0~9\)) # (!\inst3|pixel_column\(6) & ((\inst6|flappy_bird|Add0~9\) # (GND)))
-- \inst6|flappy_bird|Add0~11\ = CARRY((!\inst6|flappy_bird|Add0~9\) # (!\inst3|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~9\,
	combout => \inst6|flappy_bird|Add0~10_combout\,
	cout => \inst6|flappy_bird|Add0~11\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X30_Y20_N26
\inst|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|READ_CHAR~0_combout\ = (\inst|READ_CHAR~q\ & (\inst|LessThan1~0_combout\)) # (!\inst|READ_CHAR~q\ & ((!\mouse_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datac => \inst|READ_CHAR~q\,
	datad => \mouse_data~input_o\,
	combout => \inst|READ_CHAR~0_combout\);

-- Location: FF_X30_Y20_N1
\inst|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|READ_CHAR~0_combout\,
	ena => \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|READ_CHAR~q\);

-- Location: LCCOMB_X30_Y20_N14
\inst|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[0]~0_combout\ = (\inst|LessThan1~0_combout\ & (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|READ_CHAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|READ_CHAR~q\,
	combout => \inst|SHIFTIN[0]~0_combout\);

-- Location: FF_X30_Y20_N27
\inst|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[8]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(8));

-- Location: FF_X30_Y20_N21
\inst|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTIN\(8),
	sload => VCC,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(7));

-- Location: LCCOMB_X30_Y20_N22
\inst|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[6]~feeder_combout\ = \inst|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(7),
	combout => \inst|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X30_Y20_N23
\inst|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[6]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(6));

-- Location: FF_X30_Y20_N17
\inst|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTIN\(6),
	sload => VCC,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(5));

-- Location: LCCOMB_X30_Y20_N2
\inst|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[4]~feeder_combout\ = \inst|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(5),
	combout => \inst|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X30_Y20_N3
\inst|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[4]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(4));

-- Location: LCCOMB_X30_Y20_N28
\inst|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[3]~feeder_combout\ = \inst|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(4),
	combout => \inst|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X30_Y20_N29
\inst|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[3]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(3));

-- Location: LCCOMB_X30_Y20_N18
\inst|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[2]~feeder_combout\ = \inst|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(3),
	combout => \inst|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X30_Y20_N19
\inst|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[2]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(2));

-- Location: LCCOMB_X30_Y20_N24
\inst|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[1]~feeder_combout\ = \inst|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(2),
	combout => \inst|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X30_Y20_N25
\inst|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[1]~feeder_combout\,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(1));

-- Location: FF_X30_Y20_N15
\inst|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTIN\(1),
	sload => VCC,
	ena => \inst|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(0));

-- Location: LCCOMB_X32_Y20_N28
\inst|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[0]~feeder_combout\ = \inst|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(0),
	combout => \inst|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y20_N6
\inst|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~3_combout\ = (!\inst|INCNT\(0) & (((!\inst|INCNT\(2) & !\inst|INCNT\(1))) # (!\inst|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(2),
	datab => \inst|INCNT\(1),
	datac => \inst|INCNT\(0),
	datad => \inst|INCNT\(3),
	combout => \inst|INCNT~3_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT[3]~1_combout\ = (\inst|READ_CHAR~q\ & !\inst|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|READ_CHAR~q\,
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst|INCNT[3]~1_combout\);

-- Location: FF_X31_Y20_N7
\inst|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~3_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(0));

-- Location: LCCOMB_X31_Y20_N8
\inst|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~2_combout\ = (!\inst|INCNT\(3) & (\inst|INCNT\(1) $ (\inst|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(3),
	datac => \inst|INCNT\(1),
	datad => \inst|INCNT\(0),
	combout => \inst|INCNT~2_combout\);

-- Location: FF_X31_Y20_N9
\inst|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~2_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(1));

-- Location: LCCOMB_X31_Y20_N24
\inst|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~4_combout\ = (\inst|INCNT\(2) & (\inst|INCNT\(1) & (!\inst|INCNT\(3) & \inst|INCNT\(0)))) # (!\inst|INCNT\(2) & (!\inst|INCNT\(1) & (\inst|INCNT\(3) & !\inst|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(2),
	datab => \inst|INCNT\(1),
	datac => \inst|INCNT\(3),
	datad => \inst|INCNT\(0),
	combout => \inst|INCNT~4_combout\);

-- Location: FF_X31_Y20_N25
\inst|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~4_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(3));

-- Location: LCCOMB_X31_Y20_N10
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ((!\inst|INCNT\(2) & (!\inst|INCNT\(1) & !\inst|INCNT\(0)))) # (!\inst|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(2),
	datab => \inst|INCNT\(3),
	datac => \inst|INCNT\(1),
	datad => \inst|INCNT\(0),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y20_N18
\inst|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[1]~0_combout\ = (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst|LessThan1~0_combout\ & \inst|READ_CHAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|READ_CHAR~q\,
	combout => \inst|PACKET_COUNT[1]~0_combout\);

-- Location: LCCOMB_X32_Y20_N20
\inst|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[0]~2_combout\ = (\inst|PACKET_COUNT[1]~0_combout\ & ((\inst|PACKET_COUNT\(1)) # (!\inst|PACKET_COUNT\(0)))) # (!\inst|PACKET_COUNT[1]~0_combout\ & (\inst|PACKET_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PACKET_COUNT[1]~0_combout\,
	datac => \inst|PACKET_COUNT\(0),
	datad => \inst|PACKET_COUNT\(1),
	combout => \inst|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X32_Y20_N21
\inst|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_COUNT\(0));

-- Location: LCCOMB_X32_Y20_N30
\inst|PACKET_COUNT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[1]~1_combout\ = \inst|PACKET_COUNT\(1) $ (((\inst|PACKET_COUNT[1]~0_combout\ & \inst|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PACKET_COUNT[1]~0_combout\,
	datac => \inst|PACKET_COUNT\(1),
	datad => \inst|PACKET_COUNT\(0),
	combout => \inst|PACKET_COUNT[1]~1_combout\);

-- Location: FF_X32_Y20_N31
\inst|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_COUNT\(1));

-- Location: LCCOMB_X32_Y20_N22
\inst|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[0]~0_combout\ = (\inst|PACKET_COUNT\(0) & !\inst|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PACKET_COUNT\(0),
	datac => \inst|PACKET_COUNT\(1),
	combout => \inst|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X32_Y20_N24
\inst|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[0]~1_combout\ = (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst|READ_CHAR~q\ & (\inst|PACKET_CHAR1[0]~0_combout\ & !\inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|READ_CHAR~q\,
	datac => \inst|PACKET_CHAR1[0]~0_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X32_Y20_N29
\inst|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_CHAR1\(0));

-- Location: LCCOMB_X23_Y19_N30
\inst|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|left_button~feeder_combout\ = \inst|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PACKET_CHAR1\(0),
	combout => \inst|left_button~feeder_combout\);

-- Location: LCCOMB_X32_Y20_N6
\inst|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|left_button~0_combout\ = (\inst|PACKET_COUNT\(1) & \inst|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PACKET_COUNT\(1),
	datad => \inst|PACKET_COUNT\(0),
	combout => \inst|left_button~0_combout\);

-- Location: LCCOMB_X31_Y20_N12
\inst|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|left_button~1_combout\ = (\inst|READ_CHAR~q\ & (!\inst|LessThan1~0_combout\ & (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|left_button~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|READ_CHAR~q\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|left_button~0_combout\,
	combout => \inst|left_button~1_combout\);

-- Location: FF_X23_Y19_N31
\inst|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|left_button~feeder_combout\,
	ena => \inst|left_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_button~q\);

-- Location: LCCOMB_X24_Y19_N30
\inst6|flappy_bird|ball_y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_motion~0_combout\ = (\inst6|flappy_bird|collision_flag~q\) # (\inst|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|collision_flag~q\,
	datac => \inst|left_button~q\,
	combout => \inst6|flappy_bird|ball_y_motion~0_combout\);

-- Location: FF_X24_Y19_N31
\inst6|flappy_bird|ball_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_motion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_motion\(0));

-- Location: LCCOMB_X21_Y20_N6
\inst6|flappy_bird|pipes|pipe2_x_pos[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|pipes|pipe2_x_pos[2]~feeder_combout\ = \inst6|flappy_bird|pipes|Add11~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|Add11~2_combout\,
	combout => \inst6|flappy_bird|pipes|pipe2_x_pos[2]~feeder_combout\);

-- Location: FF_X21_Y20_N7
\inst6|flappy_bird|pipes|pipe2_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|pipes|pipe2_x_pos[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|pipes|pipe2_x_pos\(2));

-- Location: LCCOMB_X22_Y20_N0
\inst6|flappy_bird|Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|Add7~1_cout\);

-- Location: LCCOMB_X22_Y20_N14
\inst6|flappy_bird|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~14_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (\inst6|flappy_bird|Add7~13\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & (!\inst6|flappy_bird|Add7~13\))
-- \inst6|flappy_bird|Add7~15\ = CARRY((!\inst6|flappy_bird|pipes|pipe2_x_pos\(8) & !\inst6|flappy_bird|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~13\,
	combout => \inst6|flappy_bird|Add7~14_combout\,
	cout => \inst6|flappy_bird|Add7~15\);

-- Location: LCCOMB_X22_Y20_N16
\inst6|flappy_bird|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~16_combout\ = (\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & (\inst6|flappy_bird|Add7~15\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|Add7~15\)))
-- \inst6|flappy_bird|Add7~17\ = CARRY((!\inst6|flappy_bird|Add7~15\) # (!\inst6|flappy_bird|pipes|pipe2_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe2_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|Add7~15\,
	combout => \inst6|flappy_bird|Add7~16_combout\,
	cout => \inst6|flappy_bird|Add7~17\);

-- Location: LCCOMB_X22_Y20_N18
\inst6|flappy_bird|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add7~18_combout\ = \inst6|flappy_bird|Add7~17\ $ (!\inst6|flappy_bird|pipes|pipe2_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	cin => \inst6|flappy_bird|Add7~17\,
	combout => \inst6|flappy_bird|Add7~18_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst6|flappy_bird|collision_flag~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~10_combout\ = (!\inst6|flappy_bird|Add7~18_combout\ & ((\inst6|flappy_bird|Add7~12_combout\) # ((\inst6|flappy_bird|Add7~16_combout\) # (\inst6|flappy_bird|Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add7~12_combout\,
	datab => \inst6|flappy_bird|Add7~16_combout\,
	datac => \inst6|flappy_bird|Add7~14_combout\,
	datad => \inst6|flappy_bird|Add7~18_combout\,
	combout => \inst6|flappy_bird|collision_flag~10_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst6|flappy_bird|collision_flag~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~11_combout\ = (\inst6|flappy_bird|collision_flag~9_combout\ & (!\inst6|flappy_bird|pipes|pipe2_x_pos\(10) & (!\inst6|flappy_bird|LessThan9~0_combout\ & !\inst6|flappy_bird|collision_flag~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|collision_flag~9_combout\,
	datab => \inst6|flappy_bird|pipes|pipe2_x_pos\(10),
	datac => \inst6|flappy_bird|LessThan9~0_combout\,
	datad => \inst6|flappy_bird|collision_flag~10_combout\,
	combout => \inst6|flappy_bird|collision_flag~11_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst6|flappy_bird|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~1_cout\ = CARRY(\inst6|flappy_bird|pipes|pipe_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datad => VCC,
	cout => \inst6|flappy_bird|Add6~1_cout\);

-- Location: LCCOMB_X24_Y20_N2
\inst6|flappy_bird|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~2_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (\inst6|flappy_bird|Add6~1_cout\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & (!\inst6|flappy_bird|Add6~1_cout\))
-- \inst6|flappy_bird|Add6~3\ = CARRY((!\inst6|flappy_bird|pipes|pipe_x_pos\(2) & !\inst6|flappy_bird|Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~1_cout\,
	combout => \inst6|flappy_bird|Add6~2_combout\,
	cout => \inst6|flappy_bird|Add6~3\);

-- Location: LCCOMB_X24_Y20_N4
\inst6|flappy_bird|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~4_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(3) & (\inst6|flappy_bird|Add6~3\ $ (GND))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3) & ((GND) # (!\inst6|flappy_bird|Add6~3\)))
-- \inst6|flappy_bird|Add6~5\ = CARRY((!\inst6|flappy_bird|Add6~3\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~3\,
	combout => \inst6|flappy_bird|Add6~4_combout\,
	cout => \inst6|flappy_bird|Add6~5\);

-- Location: LCCOMB_X24_Y20_N6
\inst6|flappy_bird|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~6_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(4) & (!\inst6|flappy_bird|Add6~5\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4) & ((\inst6|flappy_bird|Add6~5\) # (GND)))
-- \inst6|flappy_bird|Add6~7\ = CARRY((!\inst6|flappy_bird|Add6~5\) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~5\,
	combout => \inst6|flappy_bird|Add6~6_combout\,
	cout => \inst6|flappy_bird|Add6~7\);

-- Location: LCCOMB_X24_Y20_N8
\inst6|flappy_bird|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~8_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (!\inst6|flappy_bird|Add6~7\ & VCC)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(5) & (\inst6|flappy_bird|Add6~7\ $ (GND)))
-- \inst6|flappy_bird|Add6~9\ = CARRY((!\inst6|flappy_bird|pipes|pipe_x_pos\(5) & !\inst6|flappy_bird|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~7\,
	combout => \inst6|flappy_bird|Add6~8_combout\,
	cout => \inst6|flappy_bird|Add6~9\);

-- Location: LCCOMB_X24_Y20_N14
\inst6|flappy_bird|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~14_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (!\inst6|flappy_bird|Add6~13\)) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (\inst6|flappy_bird|Add6~13\ & VCC))
-- \inst6|flappy_bird|Add6~15\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(8) & !\inst6|flappy_bird|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~13\,
	combout => \inst6|flappy_bird|Add6~14_combout\,
	cout => \inst6|flappy_bird|Add6~15\);

-- Location: LCCOMB_X24_Y20_N16
\inst6|flappy_bird|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~16_combout\ = (\inst6|flappy_bird|pipes|pipe_x_pos\(9) & ((GND) # (!\inst6|flappy_bird|Add6~15\))) # (!\inst6|flappy_bird|pipes|pipe_x_pos\(9) & (\inst6|flappy_bird|Add6~15\ $ (GND)))
-- \inst6|flappy_bird|Add6~17\ = CARRY((\inst6|flappy_bird|pipes|pipe_x_pos\(9)) # (!\inst6|flappy_bird|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|Add6~15\,
	combout => \inst6|flappy_bird|Add6~16_combout\,
	cout => \inst6|flappy_bird|Add6~17\);

-- Location: LCCOMB_X24_Y20_N18
\inst6|flappy_bird|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add6~18_combout\ = \inst6|flappy_bird|Add6~17\ $ (!\inst6|flappy_bird|pipes|pipe_x_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	cin => \inst6|flappy_bird|Add6~17\,
	combout => \inst6|flappy_bird|Add6~18_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst6|flappy_bird|collision_flag~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~5_combout\ = (!\inst6|flappy_bird|Add6~6_combout\ & (((\inst6|flappy_bird|pipes|pipe_x_pos\(1) & !\inst6|flappy_bird|Add6~2_combout\)) # (!\inst6|flappy_bird|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(1),
	datab => \inst6|flappy_bird|Add6~2_combout\,
	datac => \inst6|flappy_bird|Add6~4_combout\,
	datad => \inst6|flappy_bird|Add6~6_combout\,
	combout => \inst6|flappy_bird|collision_flag~5_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst6|flappy_bird|collision_flag~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~6_combout\ = ((\inst6|flappy_bird|Add6~18_combout\) # ((\inst6|flappy_bird|collision_flag~5_combout\) # (!\inst6|flappy_bird|Add6~8_combout\))) # (!\inst6|flappy_bird|Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add6~10_combout\,
	datab => \inst6|flappy_bird|Add6~18_combout\,
	datac => \inst6|flappy_bird|Add6~8_combout\,
	datad => \inst6|flappy_bird|collision_flag~5_combout\,
	combout => \inst6|flappy_bird|collision_flag~6_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst6|flappy_bird|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan6~1_combout\ = (!\inst6|flappy_bird|pipes|pipe_x_pos\(9) & (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & (\inst6|flappy_bird|pipes|pipe_x_pos\(8) & \inst6|flappy_bird|pipes|pipe_x_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datac => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(5),
	combout => \inst6|flappy_bird|LessThan6~1_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst6|flappy_bird|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan6~0_combout\ = (!\inst6|flappy_bird|pipes|pipe_x_pos\(9) & (\inst6|flappy_bird|pipes|pipe_x_pos\(8) & (!\inst6|flappy_bird|pipes|pipe_x_pos\(7) & \inst6|flappy_bird|pipes|pipe_x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(9),
	datab => \inst6|flappy_bird|pipes|pipe_x_pos\(8),
	datac => \inst6|flappy_bird|pipes|pipe_x_pos\(7),
	datad => \inst6|flappy_bird|pipes|pipe_x_pos\(6),
	combout => \inst6|flappy_bird|LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst6|flappy_bird|collision_flag~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~12_combout\ = (\inst6|flappy_bird|Add6~18_combout\) # ((!\inst6|flappy_bird|Add6~12_combout\ & (!\inst6|flappy_bird|Add6~16_combout\ & !\inst6|flappy_bird|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add6~12_combout\,
	datab => \inst6|flappy_bird|Add6~16_combout\,
	datac => \inst6|flappy_bird|Add6~14_combout\,
	datad => \inst6|flappy_bird|Add6~18_combout\,
	combout => \inst6|flappy_bird|collision_flag~12_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst6|flappy_bird|collision_flag~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~13_combout\ = (!\inst6|flappy_bird|pipes|pipe_x_pos\(10) & (!\inst6|flappy_bird|LessThan6~1_combout\ & (!\inst6|flappy_bird|LessThan6~0_combout\ & \inst6|flappy_bird|collision_flag~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|pipes|pipe_x_pos\(10),
	datab => \inst6|flappy_bird|LessThan6~1_combout\,
	datac => \inst6|flappy_bird|LessThan6~0_combout\,
	datad => \inst6|flappy_bird|collision_flag~12_combout\,
	combout => \inst6|flappy_bird|collision_flag~13_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst6|flappy_bird|collision_flag~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~14_combout\ = (\inst6|flappy_bird|collision_flag~8_combout\ & ((\inst6|flappy_bird|collision_flag~11_combout\) # ((\inst6|flappy_bird|collision_flag~6_combout\ & \inst6|flappy_bird|collision_flag~13_combout\)))) # 
-- (!\inst6|flappy_bird|collision_flag~8_combout\ & (((\inst6|flappy_bird|collision_flag~6_combout\ & \inst6|flappy_bird|collision_flag~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|collision_flag~8_combout\,
	datab => \inst6|flappy_bird|collision_flag~11_combout\,
	datac => \inst6|flappy_bird|collision_flag~6_combout\,
	datad => \inst6|flappy_bird|collision_flag~13_combout\,
	combout => \inst6|flappy_bird|collision_flag~14_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst6|flappy_bird|ball_y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[3]~16_combout\ = (\inst6|flappy_bird|ball_y_pos\(3) & ((\inst6|flappy_bird|ball_y_motion\(0) & (\inst6|flappy_bird|ball_y_pos[2]~15\ & VCC)) # (!\inst6|flappy_bird|ball_y_motion\(0) & 
-- (!\inst6|flappy_bird|ball_y_pos[2]~15\)))) # (!\inst6|flappy_bird|ball_y_pos\(3) & ((\inst6|flappy_bird|ball_y_motion\(0) & (!\inst6|flappy_bird|ball_y_pos[2]~15\)) # (!\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos[2]~15\) # 
-- (GND)))))
-- \inst6|flappy_bird|ball_y_pos[3]~17\ = CARRY((\inst6|flappy_bird|ball_y_pos\(3) & (!\inst6|flappy_bird|ball_y_motion\(0) & !\inst6|flappy_bird|ball_y_pos[2]~15\)) # (!\inst6|flappy_bird|ball_y_pos\(3) & ((!\inst6|flappy_bird|ball_y_pos[2]~15\) # 
-- (!\inst6|flappy_bird|ball_y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(3),
	datab => \inst6|flappy_bird|ball_y_motion\(0),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[2]~15\,
	combout => \inst6|flappy_bird|ball_y_pos[3]~16_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[3]~17\);

-- Location: LCCOMB_X24_Y19_N26
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X24_Y19_N13
\inst6|flappy_bird|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(3));

-- Location: LCCOMB_X24_Y19_N6
\inst6|flappy_bird|ball_y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[0]~10_combout\ = (\inst6|flappy_bird|ball_y_pos\(0) & (\inst6|flappy_bird|ball_y_motion\(0) $ (VCC))) # (!\inst6|flappy_bird|ball_y_pos\(0) & (\inst6|flappy_bird|ball_y_motion\(0) & VCC))
-- \inst6|flappy_bird|ball_y_pos[0]~11\ = CARRY((\inst6|flappy_bird|ball_y_pos\(0) & \inst6|flappy_bird|ball_y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(0),
	datab => \inst6|flappy_bird|ball_y_motion\(0),
	datad => VCC,
	combout => \inst6|flappy_bird|ball_y_pos[0]~10_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[0]~11\);

-- Location: LCCOMB_X24_Y19_N8
\inst6|flappy_bird|ball_y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[1]~12_combout\ = (\inst6|flappy_bird|ball_y_pos\(1) & ((\inst6|flappy_bird|ball_y_motion\(1) & (\inst6|flappy_bird|ball_y_pos[0]~11\ & VCC)) # (!\inst6|flappy_bird|ball_y_motion\(1) & 
-- (!\inst6|flappy_bird|ball_y_pos[0]~11\)))) # (!\inst6|flappy_bird|ball_y_pos\(1) & ((\inst6|flappy_bird|ball_y_motion\(1) & (!\inst6|flappy_bird|ball_y_pos[0]~11\)) # (!\inst6|flappy_bird|ball_y_motion\(1) & ((\inst6|flappy_bird|ball_y_pos[0]~11\) # 
-- (GND)))))
-- \inst6|flappy_bird|ball_y_pos[1]~13\ = CARRY((\inst6|flappy_bird|ball_y_pos\(1) & (!\inst6|flappy_bird|ball_y_motion\(1) & !\inst6|flappy_bird|ball_y_pos[0]~11\)) # (!\inst6|flappy_bird|ball_y_pos\(1) & ((!\inst6|flappy_bird|ball_y_pos[0]~11\) # 
-- (!\inst6|flappy_bird|ball_y_motion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(1),
	datab => \inst6|flappy_bird|ball_y_motion\(1),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[0]~11\,
	combout => \inst6|flappy_bird|ball_y_pos[1]~12_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[1]~13\);

-- Location: FF_X24_Y19_N9
\inst6|flappy_bird|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(1));

-- Location: LCCOMB_X23_Y19_N8
\inst6|flappy_bird|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~4_combout\ = (\inst6|flappy_bird|ball_y_pos\(2) & ((GND) # (!\inst6|flappy_bird|Add3~3\))) # (!\inst6|flappy_bird|ball_y_pos\(2) & (\inst6|flappy_bird|Add3~3\ $ (GND)))
-- \inst6|flappy_bird|Add3~5\ = CARRY((\inst6|flappy_bird|ball_y_pos\(2)) # (!\inst6|flappy_bird|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~3\,
	combout => \inst6|flappy_bird|Add3~4_combout\,
	cout => \inst6|flappy_bird|Add3~5\);

-- Location: LCCOMB_X23_Y19_N10
\inst6|flappy_bird|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~6_combout\ = (\inst6|flappy_bird|ball_y_pos\(3) & (!\inst6|flappy_bird|Add3~5\)) # (!\inst6|flappy_bird|ball_y_pos\(3) & ((\inst6|flappy_bird|Add3~5\) # (GND)))
-- \inst6|flappy_bird|Add3~7\ = CARRY((!\inst6|flappy_bird|Add3~5\) # (!\inst6|flappy_bird|ball_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~5\,
	combout => \inst6|flappy_bird|Add3~6_combout\,
	cout => \inst6|flappy_bird|Add3~7\);

-- Location: LCCOMB_X23_Y19_N12
\inst6|flappy_bird|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~8_combout\ = (\inst6|flappy_bird|ball_y_pos\(4) & (\inst6|flappy_bird|Add3~7\ $ (GND))) # (!\inst6|flappy_bird|ball_y_pos\(4) & (!\inst6|flappy_bird|Add3~7\ & VCC))
-- \inst6|flappy_bird|Add3~9\ = CARRY((\inst6|flappy_bird|ball_y_pos\(4) & !\inst6|flappy_bird|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~7\,
	combout => \inst6|flappy_bird|Add3~8_combout\,
	cout => \inst6|flappy_bird|Add3~9\);

-- Location: LCCOMB_X23_Y19_N14
\inst6|flappy_bird|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~10_combout\ = (\inst6|flappy_bird|ball_y_pos\(5) & (!\inst6|flappy_bird|Add3~9\)) # (!\inst6|flappy_bird|ball_y_pos\(5) & ((\inst6|flappy_bird|Add3~9\) # (GND)))
-- \inst6|flappy_bird|Add3~11\ = CARRY((!\inst6|flappy_bird|Add3~9\) # (!\inst6|flappy_bird|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~9\,
	combout => \inst6|flappy_bird|Add3~10_combout\,
	cout => \inst6|flappy_bird|Add3~11\);

-- Location: LCCOMB_X23_Y19_N16
\inst6|flappy_bird|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~12_combout\ = (\inst6|flappy_bird|ball_y_pos\(6) & (\inst6|flappy_bird|Add3~11\ $ (GND))) # (!\inst6|flappy_bird|ball_y_pos\(6) & (!\inst6|flappy_bird|Add3~11\ & VCC))
-- \inst6|flappy_bird|Add3~13\ = CARRY((\inst6|flappy_bird|ball_y_pos\(6) & !\inst6|flappy_bird|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~11\,
	combout => \inst6|flappy_bird|Add3~12_combout\,
	cout => \inst6|flappy_bird|Add3~13\);

-- Location: LCCOMB_X23_Y19_N18
\inst6|flappy_bird|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~14_combout\ = (\inst6|flappy_bird|ball_y_pos\(7) & (!\inst6|flappy_bird|Add3~13\)) # (!\inst6|flappy_bird|ball_y_pos\(7) & ((\inst6|flappy_bird|Add3~13\) # (GND)))
-- \inst6|flappy_bird|Add3~15\ = CARRY((!\inst6|flappy_bird|Add3~13\) # (!\inst6|flappy_bird|ball_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add3~13\,
	combout => \inst6|flappy_bird|Add3~14_combout\,
	cout => \inst6|flappy_bird|Add3~15\);

-- Location: LCCOMB_X23_Y19_N22
\inst6|flappy_bird|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add3~18_combout\ = \inst6|flappy_bird|Add3~17\ $ (\inst6|flappy_bird|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|ball_y_pos\(9),
	cin => \inst6|flappy_bird|Add3~17\,
	combout => \inst6|flappy_bird|Add3~18_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst6|flappy_bird|Move_Ball~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~0_combout\ = (\inst6|flappy_bird|Add3~8_combout\) # ((\inst6|flappy_bird|Add3~6_combout\ & ((\inst6|flappy_bird|Add3~2_combout\) # (\inst6|flappy_bird|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~2_combout\,
	datab => \inst6|flappy_bird|Add3~4_combout\,
	datac => \inst6|flappy_bird|Add3~6_combout\,
	datad => \inst6|flappy_bird|Add3~8_combout\,
	combout => \inst6|flappy_bird|Move_Ball~0_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst6|flappy_bird|Move_Ball~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~1_combout\ = (\inst6|flappy_bird|Add3~14_combout\) # ((\inst6|flappy_bird|Add3~12_combout\ & ((\inst6|flappy_bird|Add3~10_combout\) # (\inst6|flappy_bird|Move_Ball~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~14_combout\,
	datab => \inst6|flappy_bird|Add3~12_combout\,
	datac => \inst6|flappy_bird|Add3~10_combout\,
	datad => \inst6|flappy_bird|Move_Ball~0_combout\,
	combout => \inst6|flappy_bird|Move_Ball~1_combout\);

-- Location: FF_X24_Y19_N7
\inst6|flappy_bird|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(0));

-- Location: LCCOMB_X24_Y21_N2
\inst6|flappy_bird|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~2_combout\ = (\inst6|flappy_bird|ball_y_pos\(1) & (\inst6|flappy_bird|Add11~1\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(1) & (!\inst6|flappy_bird|Add11~1\))
-- \inst6|flappy_bird|Add11~3\ = CARRY((!\inst6|flappy_bird|ball_y_pos\(1) & !\inst6|flappy_bird|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(1),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~1\,
	combout => \inst6|flappy_bird|Add11~2_combout\,
	cout => \inst6|flappy_bird|Add11~3\);

-- Location: LCCOMB_X24_Y21_N4
\inst6|flappy_bird|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~4_combout\ = (\inst6|flappy_bird|ball_y_pos\(2) & (\inst6|flappy_bird|Add11~3\ $ (GND))) # (!\inst6|flappy_bird|ball_y_pos\(2) & (!\inst6|flappy_bird|Add11~3\ & VCC))
-- \inst6|flappy_bird|Add11~5\ = CARRY((\inst6|flappy_bird|ball_y_pos\(2) & !\inst6|flappy_bird|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~3\,
	combout => \inst6|flappy_bird|Add11~4_combout\,
	cout => \inst6|flappy_bird|Add11~5\);

-- Location: LCCOMB_X24_Y21_N6
\inst6|flappy_bird|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~6_combout\ = (\inst6|flappy_bird|ball_y_pos\(3) & (\inst6|flappy_bird|Add11~5\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(3) & (!\inst6|flappy_bird|Add11~5\))
-- \inst6|flappy_bird|Add11~7\ = CARRY((!\inst6|flappy_bird|ball_y_pos\(3) & !\inst6|flappy_bird|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~5\,
	combout => \inst6|flappy_bird|Add11~6_combout\,
	cout => \inst6|flappy_bird|Add11~7\);

-- Location: LCCOMB_X24_Y21_N8
\inst6|flappy_bird|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~8_combout\ = (\inst6|flappy_bird|ball_y_pos\(4) & ((GND) # (!\inst6|flappy_bird|Add11~7\))) # (!\inst6|flappy_bird|ball_y_pos\(4) & (\inst6|flappy_bird|Add11~7\ $ (GND)))
-- \inst6|flappy_bird|Add11~9\ = CARRY((\inst6|flappy_bird|ball_y_pos\(4)) # (!\inst6|flappy_bird|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~7\,
	combout => \inst6|flappy_bird|Add11~8_combout\,
	cout => \inst6|flappy_bird|Add11~9\);

-- Location: LCCOMB_X24_Y21_N14
\inst6|flappy_bird|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~14_combout\ = (\inst6|flappy_bird|ball_y_pos\(7) & (\inst6|flappy_bird|Add11~13\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(7) & (!\inst6|flappy_bird|Add11~13\))
-- \inst6|flappy_bird|Add11~15\ = CARRY((!\inst6|flappy_bird|ball_y_pos\(7) & !\inst6|flappy_bird|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~13\,
	combout => \inst6|flappy_bird|Add11~14_combout\,
	cout => \inst6|flappy_bird|Add11~15\);

-- Location: LCCOMB_X24_Y21_N16
\inst6|flappy_bird|Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~16_combout\ = (\inst6|flappy_bird|ball_y_pos\(8) & ((GND) # (!\inst6|flappy_bird|Add11~15\))) # (!\inst6|flappy_bird|ball_y_pos\(8) & (\inst6|flappy_bird|Add11~15\ $ (GND)))
-- \inst6|flappy_bird|Add11~17\ = CARRY((\inst6|flappy_bird|ball_y_pos\(8)) # (!\inst6|flappy_bird|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|ball_y_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add11~15\,
	combout => \inst6|flappy_bird|Add11~16_combout\,
	cout => \inst6|flappy_bird|Add11~17\);

-- Location: LCCOMB_X24_Y21_N20
\inst6|flappy_bird|Move_Ball~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~2_combout\ = ((!\inst6|flappy_bird|Add11~4_combout\ & ((!\inst6|flappy_bird|Add11~2_combout\) # (!\inst6|flappy_bird|Add11~0_combout\)))) # (!\inst6|flappy_bird|Add11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add11~0_combout\,
	datab => \inst6|flappy_bird|Add11~2_combout\,
	datac => \inst6|flappy_bird|Add11~4_combout\,
	datad => \inst6|flappy_bird|Add11~6_combout\,
	combout => \inst6|flappy_bird|Move_Ball~2_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst6|flappy_bird|Move_Ball~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~3_combout\ = (((\inst6|flappy_bird|Move_Ball~2_combout\) # (!\inst6|flappy_bird|Add11~14_combout\)) # (!\inst6|flappy_bird|Add11~8_combout\)) # (!\inst6|flappy_bird|Add11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add11~10_combout\,
	datab => \inst6|flappy_bird|Add11~8_combout\,
	datac => \inst6|flappy_bird|Add11~14_combout\,
	datad => \inst6|flappy_bird|Move_Ball~2_combout\,
	combout => \inst6|flappy_bird|Move_Ball~3_combout\);

-- Location: LCCOMB_X24_Y21_N18
\inst6|flappy_bird|Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add11~18_combout\ = \inst6|flappy_bird|Add11~17\ $ (!\inst6|flappy_bird|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|flappy_bird|ball_y_pos\(9),
	cin => \inst6|flappy_bird|Add11~17\,
	combout => \inst6|flappy_bird|Add11~18_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst6|flappy_bird|Move_Ball~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~4_combout\ = (!\inst6|flappy_bird|Add11~18_combout\ & ((\inst6|flappy_bird|Add11~16_combout\) # ((\inst6|flappy_bird|Add11~12_combout\ & !\inst6|flappy_bird|Move_Ball~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add11~12_combout\,
	datab => \inst6|flappy_bird|Add11~16_combout\,
	datac => \inst6|flappy_bird|Move_Ball~3_combout\,
	datad => \inst6|flappy_bird|Add11~18_combout\,
	combout => \inst6|flappy_bird|Move_Ball~4_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst6|flappy_bird|Move_Ball~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Move_Ball~5_combout\ = ((\inst6|flappy_bird|Add3~16_combout\ & (!\inst6|flappy_bird|Add3~18_combout\ & \inst6|flappy_bird|Move_Ball~1_combout\))) # (!\inst6|flappy_bird|Move_Ball~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~16_combout\,
	datab => \inst6|flappy_bird|Add3~18_combout\,
	datac => \inst6|flappy_bird|Move_Ball~1_combout\,
	datad => \inst6|flappy_bird|Move_Ball~4_combout\,
	combout => \inst6|flappy_bird|Move_Ball~5_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst6|flappy_bird|collision_flag~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|collision_flag~15_combout\ = (!\inst6|flappy_bird|collision_flag~q\ & (\inst6|flappy_bird|Move_Ball~5_combout\ & ((\inst6|flappy_bird|collision_flag~4_combout\) # (\inst6|flappy_bird|collision_flag~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|collision_flag~4_combout\,
	datab => \inst6|flappy_bird|collision_flag~14_combout\,
	datac => \inst6|flappy_bird|collision_flag~q\,
	datad => \inst6|flappy_bird|Move_Ball~5_combout\,
	combout => \inst6|flappy_bird|collision_flag~15_combout\);

-- Location: FF_X23_Y20_N9
\inst6|flappy_bird|collision_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|collision_flag~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|collision_flag~q\);

-- Location: LCCOMB_X24_Y19_N4
\inst6|flappy_bird|ball_y_motion[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_motion[1]~feeder_combout\ = \inst6|flappy_bird|collision_flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|flappy_bird|collision_flag~q\,
	combout => \inst6|flappy_bird|ball_y_motion[1]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\inst6|flappy_bird|ball_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_motion[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_motion\(1));

-- Location: LCCOMB_X24_Y19_N10
\inst6|flappy_bird|ball_y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[2]~14_combout\ = ((\inst6|flappy_bird|ball_y_pos\(2) $ (\inst6|flappy_bird|ball_y_motion\(2) $ (!\inst6|flappy_bird|ball_y_pos[1]~13\)))) # (GND)
-- \inst6|flappy_bird|ball_y_pos[2]~15\ = CARRY((\inst6|flappy_bird|ball_y_pos\(2) & ((\inst6|flappy_bird|ball_y_motion\(2)) # (!\inst6|flappy_bird|ball_y_pos[1]~13\))) # (!\inst6|flappy_bird|ball_y_pos\(2) & (\inst6|flappy_bird|ball_y_motion\(2) & 
-- !\inst6|flappy_bird|ball_y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(2),
	datab => \inst6|flappy_bird|ball_y_motion\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[1]~13\,
	combout => \inst6|flappy_bird|ball_y_pos[2]~14_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[2]~15\);

-- Location: FF_X24_Y19_N11
\inst6|flappy_bird|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[2]~14_combout\,
	asdata => VCC,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(2));

-- Location: LCCOMB_X23_Y20_N30
\inst6|flappy_bird|ball_y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_motion~2_combout\ = (((!\inst6|flappy_bird|ball_y_pos\(1) & !\inst6|flappy_bird|ball_y_pos\(2))) # (!\inst6|flappy_bird|ball_y_pos\(3))) # (!\inst6|flappy_bird|ball_y_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(1),
	datab => \inst6|flappy_bird|ball_y_pos\(2),
	datac => \inst6|flappy_bird|ball_y_pos\(4),
	datad => \inst6|flappy_bird|ball_y_pos\(3),
	combout => \inst6|flappy_bird|ball_y_motion~2_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst6|flappy_bird|ball_y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_motion~1_combout\ = ((\inst6|flappy_bird|ball_y_pos\(9)) # ((\inst|left_button~q\) # (!\inst6|flappy_bird|ball_y_pos\(8)))) # (!\inst6|flappy_bird|ball_y_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(7),
	datab => \inst6|flappy_bird|ball_y_pos\(9),
	datac => \inst|left_button~q\,
	datad => \inst6|flappy_bird|ball_y_pos\(8),
	combout => \inst6|flappy_bird|ball_y_motion~1_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst6|flappy_bird|ball_y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_motion~3_combout\ = ((\inst6|flappy_bird|ball_y_motion~1_combout\) # ((!\inst6|flappy_bird|ball_y_pos\(5) & \inst6|flappy_bird|ball_y_motion~2_combout\))) # (!\inst6|flappy_bird|ball_y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(5),
	datab => \inst6|flappy_bird|ball_y_motion~2_combout\,
	datac => \inst6|flappy_bird|ball_y_pos\(6),
	datad => \inst6|flappy_bird|ball_y_motion~1_combout\,
	combout => \inst6|flappy_bird|ball_y_motion~3_combout\);

-- Location: FF_X22_Y19_N5
\inst6|flappy_bird|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_motion~3_combout\,
	sclr => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_motion\(2));

-- Location: LCCOMB_X24_Y19_N14
\inst6|flappy_bird|ball_y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[4]~18_combout\ = ((\inst6|flappy_bird|ball_y_motion\(0) $ (\inst6|flappy_bird|ball_y_pos\(4) $ (!\inst6|flappy_bird|ball_y_pos[3]~17\)))) # (GND)
-- \inst6|flappy_bird|ball_y_pos[4]~19\ = CARRY((\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(4)) # (!\inst6|flappy_bird|ball_y_pos[3]~17\))) # (!\inst6|flappy_bird|ball_y_motion\(0) & (\inst6|flappy_bird|ball_y_pos\(4) & 
-- !\inst6|flappy_bird|ball_y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datab => \inst6|flappy_bird|ball_y_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[3]~17\,
	combout => \inst6|flappy_bird|ball_y_pos[4]~18_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[4]~19\);

-- Location: FF_X24_Y19_N15
\inst6|flappy_bird|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(4));

-- Location: LCCOMB_X24_Y19_N16
\inst6|flappy_bird|ball_y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[5]~20_combout\ = (\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(5) & (\inst6|flappy_bird|ball_y_pos[4]~19\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(5) & (!\inst6|flappy_bird|ball_y_pos[4]~19\)))) # 
-- (!\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(5) & (!\inst6|flappy_bird|ball_y_pos[4]~19\)) # (!\inst6|flappy_bird|ball_y_pos\(5) & ((\inst6|flappy_bird|ball_y_pos[4]~19\) # (GND)))))
-- \inst6|flappy_bird|ball_y_pos[5]~21\ = CARRY((\inst6|flappy_bird|ball_y_motion\(0) & (!\inst6|flappy_bird|ball_y_pos\(5) & !\inst6|flappy_bird|ball_y_pos[4]~19\)) # (!\inst6|flappy_bird|ball_y_motion\(0) & ((!\inst6|flappy_bird|ball_y_pos[4]~19\) # 
-- (!\inst6|flappy_bird|ball_y_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datab => \inst6|flappy_bird|ball_y_pos\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[4]~19\,
	combout => \inst6|flappy_bird|ball_y_pos[5]~20_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[5]~21\);

-- Location: FF_X24_Y19_N17
\inst6|flappy_bird|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[5]~20_combout\,
	asdata => VCC,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(5));

-- Location: LCCOMB_X24_Y19_N18
\inst6|flappy_bird|ball_y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[6]~22_combout\ = ((\inst6|flappy_bird|ball_y_motion\(0) $ (\inst6|flappy_bird|ball_y_pos\(6) $ (!\inst6|flappy_bird|ball_y_pos[5]~21\)))) # (GND)
-- \inst6|flappy_bird|ball_y_pos[6]~23\ = CARRY((\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(6)) # (!\inst6|flappy_bird|ball_y_pos[5]~21\))) # (!\inst6|flappy_bird|ball_y_motion\(0) & (\inst6|flappy_bird|ball_y_pos\(6) & 
-- !\inst6|flappy_bird|ball_y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datab => \inst6|flappy_bird|ball_y_pos\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[5]~21\,
	combout => \inst6|flappy_bird|ball_y_pos[6]~22_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[6]~23\);

-- Location: FF_X24_Y19_N19
\inst6|flappy_bird|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[6]~22_combout\,
	asdata => VCC,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(6));

-- Location: LCCOMB_X24_Y19_N20
\inst6|flappy_bird|ball_y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[7]~24_combout\ = (\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(7) & (\inst6|flappy_bird|ball_y_pos[6]~23\ & VCC)) # (!\inst6|flappy_bird|ball_y_pos\(7) & (!\inst6|flappy_bird|ball_y_pos[6]~23\)))) # 
-- (!\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(7) & (!\inst6|flappy_bird|ball_y_pos[6]~23\)) # (!\inst6|flappy_bird|ball_y_pos\(7) & ((\inst6|flappy_bird|ball_y_pos[6]~23\) # (GND)))))
-- \inst6|flappy_bird|ball_y_pos[7]~25\ = CARRY((\inst6|flappy_bird|ball_y_motion\(0) & (!\inst6|flappy_bird|ball_y_pos\(7) & !\inst6|flappy_bird|ball_y_pos[6]~23\)) # (!\inst6|flappy_bird|ball_y_motion\(0) & ((!\inst6|flappy_bird|ball_y_pos[6]~23\) # 
-- (!\inst6|flappy_bird|ball_y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datab => \inst6|flappy_bird|ball_y_pos\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[6]~23\,
	combout => \inst6|flappy_bird|ball_y_pos[7]~24_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[7]~25\);

-- Location: FF_X24_Y19_N21
\inst6|flappy_bird|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(7));

-- Location: LCCOMB_X24_Y19_N22
\inst6|flappy_bird|ball_y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[8]~26_combout\ = ((\inst6|flappy_bird|ball_y_motion\(0) $ (\inst6|flappy_bird|ball_y_pos\(8) $ (!\inst6|flappy_bird|ball_y_pos[7]~25\)))) # (GND)
-- \inst6|flappy_bird|ball_y_pos[8]~27\ = CARRY((\inst6|flappy_bird|ball_y_motion\(0) & ((\inst6|flappy_bird|ball_y_pos\(8)) # (!\inst6|flappy_bird|ball_y_pos[7]~25\))) # (!\inst6|flappy_bird|ball_y_motion\(0) & (\inst6|flappy_bird|ball_y_pos\(8) & 
-- !\inst6|flappy_bird|ball_y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datab => \inst6|flappy_bird|ball_y_pos\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|ball_y_pos[7]~25\,
	combout => \inst6|flappy_bird|ball_y_pos[8]~26_combout\,
	cout => \inst6|flappy_bird|ball_y_pos[8]~27\);

-- Location: FF_X24_Y19_N23
\inst6|flappy_bird|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(8));

-- Location: LCCOMB_X24_Y19_N24
\inst6|flappy_bird|ball_y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_y_pos[9]~28_combout\ = \inst6|flappy_bird|ball_y_motion\(0) $ (\inst6|flappy_bird|ball_y_pos[8]~27\ $ (\inst6|flappy_bird|ball_y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_motion\(0),
	datad => \inst6|flappy_bird|ball_y_pos\(9),
	cin => \inst6|flappy_bird|ball_y_pos[8]~27\,
	combout => \inst6|flappy_bird|ball_y_pos[9]~28_combout\);

-- Location: FF_X24_Y19_N25
\inst6|flappy_bird|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst6|flappy_bird|ball_y_pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst6|flappy_bird|collision_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|flappy_bird|ball_y_pos\(9));

-- Location: LCCOMB_X22_Y17_N12
\inst6|flappy_bird|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~0_combout\ = (\inst3|pixel_row\(1) & (\inst3|pixel_row\(0) $ (VCC))) # (!\inst3|pixel_row\(1) & (\inst3|pixel_row\(0) & VCC))
-- \inst6|flappy_bird|Add2~1\ = CARRY((\inst3|pixel_row\(1) & \inst3|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(1),
	datab => \inst3|pixel_row\(0),
	datad => VCC,
	combout => \inst6|flappy_bird|Add2~0_combout\,
	cout => \inst6|flappy_bird|Add2~1\);

-- Location: LCCOMB_X22_Y17_N14
\inst6|flappy_bird|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~2_combout\ = (\inst3|pixel_row\(2) & (\inst6|flappy_bird|Add2~1\ & VCC)) # (!\inst3|pixel_row\(2) & (!\inst6|flappy_bird|Add2~1\))
-- \inst6|flappy_bird|Add2~3\ = CARRY((!\inst3|pixel_row\(2) & !\inst6|flappy_bird|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(2),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~1\,
	combout => \inst6|flappy_bird|Add2~2_combout\,
	cout => \inst6|flappy_bird|Add2~3\);

-- Location: LCCOMB_X22_Y17_N20
\inst6|flappy_bird|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~8_combout\ = (\inst3|pixel_row\(5) & (\inst6|flappy_bird|Add2~7\ $ (GND))) # (!\inst3|pixel_row\(5) & (!\inst6|flappy_bird|Add2~7\ & VCC))
-- \inst6|flappy_bird|Add2~9\ = CARRY((\inst3|pixel_row\(5) & !\inst6|flappy_bird|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(5),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~7\,
	combout => \inst6|flappy_bird|Add2~8_combout\,
	cout => \inst6|flappy_bird|Add2~9\);

-- Location: LCCOMB_X22_Y17_N22
\inst6|flappy_bird|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~10_combout\ = (\inst3|pixel_row\(6) & (!\inst6|flappy_bird|Add2~9\)) # (!\inst3|pixel_row\(6) & ((\inst6|flappy_bird|Add2~9\) # (GND)))
-- \inst6|flappy_bird|Add2~11\ = CARRY((!\inst6|flappy_bird|Add2~9\) # (!\inst3|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(6),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~9\,
	combout => \inst6|flappy_bird|Add2~10_combout\,
	cout => \inst6|flappy_bird|Add2~11\);

-- Location: LCCOMB_X22_Y17_N24
\inst6|flappy_bird|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add2~12_combout\ = (\inst3|pixel_row\(7) & (\inst6|flappy_bird|Add2~11\ $ (GND))) # (!\inst3|pixel_row\(7) & (!\inst6|flappy_bird|Add2~11\ & VCC))
-- \inst6|flappy_bird|Add2~13\ = CARRY((\inst3|pixel_row\(7) & !\inst6|flappy_bird|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add2~11\,
	combout => \inst6|flappy_bird|Add2~12_combout\,
	cout => \inst6|flappy_bird|Add2~13\);

-- Location: LCCOMB_X21_Y19_N4
\inst6|flappy_bird|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~1_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(0) & \inst3|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(0),
	datab => \inst3|pixel_row\(0),
	datad => VCC,
	cout => \inst6|flappy_bird|LessThan2~1_cout\);

-- Location: LCCOMB_X21_Y19_N6
\inst6|flappy_bird|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~3_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(1) & (\inst6|flappy_bird|Add2~0_combout\ & !\inst6|flappy_bird|LessThan2~1_cout\)) # (!\inst6|flappy_bird|ball_y_pos\(1) & ((\inst6|flappy_bird|Add2~0_combout\) # 
-- (!\inst6|flappy_bird|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(1),
	datab => \inst6|flappy_bird|Add2~0_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~1_cout\,
	cout => \inst6|flappy_bird|LessThan2~3_cout\);

-- Location: LCCOMB_X21_Y19_N8
\inst6|flappy_bird|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~5_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(2) & ((!\inst6|flappy_bird|LessThan2~3_cout\) # (!\inst6|flappy_bird|Add2~2_combout\))) # (!\inst6|flappy_bird|ball_y_pos\(2) & (!\inst6|flappy_bird|Add2~2_combout\ & 
-- !\inst6|flappy_bird|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(2),
	datab => \inst6|flappy_bird|Add2~2_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~3_cout\,
	cout => \inst6|flappy_bird|LessThan2~5_cout\);

-- Location: LCCOMB_X21_Y19_N10
\inst6|flappy_bird|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~7_cout\ = CARRY((\inst6|flappy_bird|Add2~4_combout\ & ((!\inst6|flappy_bird|LessThan2~5_cout\) # (!\inst6|flappy_bird|ball_y_pos\(3)))) # (!\inst6|flappy_bird|Add2~4_combout\ & (!\inst6|flappy_bird|ball_y_pos\(3) & 
-- !\inst6|flappy_bird|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add2~4_combout\,
	datab => \inst6|flappy_bird|ball_y_pos\(3),
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~5_cout\,
	cout => \inst6|flappy_bird|LessThan2~7_cout\);

-- Location: LCCOMB_X21_Y19_N12
\inst6|flappy_bird|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~9_cout\ = CARRY((\inst6|flappy_bird|Add2~6_combout\ & (\inst6|flappy_bird|ball_y_pos\(4) & !\inst6|flappy_bird|LessThan2~7_cout\)) # (!\inst6|flappy_bird|Add2~6_combout\ & ((\inst6|flappy_bird|ball_y_pos\(4)) # 
-- (!\inst6|flappy_bird|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add2~6_combout\,
	datab => \inst6|flappy_bird|ball_y_pos\(4),
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~7_cout\,
	cout => \inst6|flappy_bird|LessThan2~9_cout\);

-- Location: LCCOMB_X21_Y19_N14
\inst6|flappy_bird|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~11_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(5) & (\inst6|flappy_bird|Add2~8_combout\ & !\inst6|flappy_bird|LessThan2~9_cout\)) # (!\inst6|flappy_bird|ball_y_pos\(5) & ((\inst6|flappy_bird|Add2~8_combout\) # 
-- (!\inst6|flappy_bird|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(5),
	datab => \inst6|flappy_bird|Add2~8_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~9_cout\,
	cout => \inst6|flappy_bird|LessThan2~11_cout\);

-- Location: LCCOMB_X21_Y19_N16
\inst6|flappy_bird|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~13_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(6) & ((!\inst6|flappy_bird|LessThan2~11_cout\) # (!\inst6|flappy_bird|Add2~10_combout\))) # (!\inst6|flappy_bird|ball_y_pos\(6) & (!\inst6|flappy_bird|Add2~10_combout\ & 
-- !\inst6|flappy_bird|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(6),
	datab => \inst6|flappy_bird|Add2~10_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~11_cout\,
	cout => \inst6|flappy_bird|LessThan2~13_cout\);

-- Location: LCCOMB_X21_Y19_N18
\inst6|flappy_bird|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~15_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(7) & (\inst6|flappy_bird|Add2~12_combout\ & !\inst6|flappy_bird|LessThan2~13_cout\)) # (!\inst6|flappy_bird|ball_y_pos\(7) & ((\inst6|flappy_bird|Add2~12_combout\) # 
-- (!\inst6|flappy_bird|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(7),
	datab => \inst6|flappy_bird|Add2~12_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~13_cout\,
	cout => \inst6|flappy_bird|LessThan2~15_cout\);

-- Location: LCCOMB_X21_Y19_N20
\inst6|flappy_bird|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~17_cout\ = CARRY((\inst6|flappy_bird|ball_y_pos\(8) & ((!\inst6|flappy_bird|LessThan2~15_cout\) # (!\inst6|flappy_bird|Add2~14_combout\))) # (!\inst6|flappy_bird|ball_y_pos\(8) & (!\inst6|flappy_bird|Add2~14_combout\ & 
-- !\inst6|flappy_bird|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_y_pos\(8),
	datab => \inst6|flappy_bird|Add2~14_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan2~15_cout\,
	cout => \inst6|flappy_bird|LessThan2~17_cout\);

-- Location: LCCOMB_X21_Y19_N22
\inst6|flappy_bird|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan2~18_combout\ = (\inst6|flappy_bird|Add2~16_combout\ & (\inst6|flappy_bird|LessThan2~17_cout\ & \inst6|flappy_bird|ball_y_pos\(9))) # (!\inst6|flappy_bird|Add2~16_combout\ & ((\inst6|flappy_bird|LessThan2~17_cout\) # 
-- (\inst6|flappy_bird|ball_y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add2~16_combout\,
	datad => \inst6|flappy_bird|ball_y_pos\(9),
	cin => \inst6|flappy_bird|LessThan2~17_cout\,
	combout => \inst6|flappy_bird|LessThan2~18_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst6|flappy_bird|ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_on~2_combout\ = (!\inst3|pixel_column\(8) & (!\inst3|pixel_column\(9) & (!\inst6|flappy_bird|LessThan2~18_combout\ & !\inst3|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(8),
	datab => \inst3|pixel_column\(9),
	datac => \inst6|flappy_bird|LessThan2~18_combout\,
	datad => \inst3|pixel_column\(7),
	combout => \inst6|flappy_bird|ball_on~2_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst6|flappy_bird|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~12_combout\ = (\inst3|pixel_column\(7) & (\inst6|flappy_bird|Add0~11\ $ (GND))) # (!\inst3|pixel_column\(7) & (!\inst6|flappy_bird|Add0~11\ & VCC))
-- \inst6|flappy_bird|Add0~13\ = CARRY((\inst3|pixel_column\(7) & !\inst6|flappy_bird|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(7),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~11\,
	combout => \inst6|flappy_bird|Add0~12_combout\,
	cout => \inst6|flappy_bird|Add0~13\);

-- Location: LCCOMB_X26_Y19_N14
\inst6|flappy_bird|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~14_combout\ = (\inst3|pixel_column\(8) & (!\inst6|flappy_bird|Add0~13\)) # (!\inst3|pixel_column\(8) & ((\inst6|flappy_bird|Add0~13\) # (GND)))
-- \inst6|flappy_bird|Add0~15\ = CARRY((!\inst6|flappy_bird|Add0~13\) # (!\inst3|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(8),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~13\,
	combout => \inst6|flappy_bird|Add0~14_combout\,
	cout => \inst6|flappy_bird|Add0~15\);

-- Location: LCCOMB_X26_Y19_N16
\inst6|flappy_bird|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~16_combout\ = (\inst3|pixel_column\(9) & (\inst6|flappy_bird|Add0~15\ $ (GND))) # (!\inst3|pixel_column\(9) & (!\inst6|flappy_bird|Add0~15\ & VCC))
-- \inst6|flappy_bird|Add0~17\ = CARRY((\inst3|pixel_column\(9) & !\inst6|flappy_bird|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(9),
	datad => VCC,
	cin => \inst6|flappy_bird|Add0~15\,
	combout => \inst6|flappy_bird|Add0~16_combout\,
	cout => \inst6|flappy_bird|Add0~17\);

-- Location: LCCOMB_X26_Y19_N28
\inst6|flappy_bird|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan0~0_combout\ = (!\inst6|flappy_bird|Add0~16_combout\ & (!\inst6|flappy_bird|Add0~14_combout\ & !\inst6|flappy_bird|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|flappy_bird|Add0~16_combout\,
	datac => \inst6|flappy_bird|Add0~14_combout\,
	datad => \inst6|flappy_bird|Add0~12_combout\,
	combout => \inst6|flappy_bird|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst6|flappy_bird|ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_on~3_combout\ = (!\inst6|flappy_bird|LessThan0~1_combout\ & (\inst6|flappy_bird|ball_on~2_combout\ & ((\inst6|flappy_bird|Add0~10_combout\) # (!\inst6|flappy_bird|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|LessThan0~1_combout\,
	datab => \inst6|flappy_bird|Add0~10_combout\,
	datac => \inst6|flappy_bird|ball_on~2_combout\,
	datad => \inst6|flappy_bird|LessThan0~0_combout\,
	combout => \inst6|flappy_bird|ball_on~3_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst6|flappy_bird|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|Add0~18_combout\ = \inst6|flappy_bird|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|flappy_bird|Add0~17\,
	combout => \inst6|flappy_bird|Add0~18_combout\);

-- Location: LCCOMB_X22_Y19_N10
\inst6|flappy_bird|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~1_cout\ = CARRY((!\inst6|flappy_bird|Add3~0_combout\ & \inst3|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~0_combout\,
	datab => \inst3|pixel_row\(0),
	datad => VCC,
	cout => \inst6|flappy_bird|LessThan3~1_cout\);

-- Location: LCCOMB_X22_Y19_N12
\inst6|flappy_bird|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~3_cout\ = CARRY((\inst6|flappy_bird|Add3~2_combout\ & ((!\inst6|flappy_bird|LessThan3~1_cout\) # (!\inst3|pixel_row\(1)))) # (!\inst6|flappy_bird|Add3~2_combout\ & (!\inst3|pixel_row\(1) & 
-- !\inst6|flappy_bird|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~2_combout\,
	datab => \inst3|pixel_row\(1),
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~1_cout\,
	cout => \inst6|flappy_bird|LessThan3~3_cout\);

-- Location: LCCOMB_X22_Y19_N14
\inst6|flappy_bird|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~5_cout\ = CARRY((\inst3|pixel_row\(2) & ((!\inst6|flappy_bird|LessThan3~3_cout\) # (!\inst6|flappy_bird|Add3~4_combout\))) # (!\inst3|pixel_row\(2) & (!\inst6|flappy_bird|Add3~4_combout\ & 
-- !\inst6|flappy_bird|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(2),
	datab => \inst6|flappy_bird|Add3~4_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~3_cout\,
	cout => \inst6|flappy_bird|LessThan3~5_cout\);

-- Location: LCCOMB_X22_Y19_N16
\inst6|flappy_bird|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~7_cout\ = CARRY((\inst3|pixel_row\(3) & (\inst6|flappy_bird|Add3~6_combout\ & !\inst6|flappy_bird|LessThan3~5_cout\)) # (!\inst3|pixel_row\(3) & ((\inst6|flappy_bird|Add3~6_combout\) # 
-- (!\inst6|flappy_bird|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(3),
	datab => \inst6|flappy_bird|Add3~6_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~5_cout\,
	cout => \inst6|flappy_bird|LessThan3~7_cout\);

-- Location: LCCOMB_X22_Y19_N18
\inst6|flappy_bird|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~9_cout\ = CARRY((\inst3|pixel_row\(4) & ((!\inst6|flappy_bird|LessThan3~7_cout\) # (!\inst6|flappy_bird|Add3~8_combout\))) # (!\inst3|pixel_row\(4) & (!\inst6|flappy_bird|Add3~8_combout\ & 
-- !\inst6|flappy_bird|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(4),
	datab => \inst6|flappy_bird|Add3~8_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~7_cout\,
	cout => \inst6|flappy_bird|LessThan3~9_cout\);

-- Location: LCCOMB_X22_Y19_N20
\inst6|flappy_bird|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~11_cout\ = CARRY((\inst3|pixel_row\(5) & (\inst6|flappy_bird|Add3~10_combout\ & !\inst6|flappy_bird|LessThan3~9_cout\)) # (!\inst3|pixel_row\(5) & ((\inst6|flappy_bird|Add3~10_combout\) # 
-- (!\inst6|flappy_bird|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst6|flappy_bird|Add3~10_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~9_cout\,
	cout => \inst6|flappy_bird|LessThan3~11_cout\);

-- Location: LCCOMB_X22_Y19_N22
\inst6|flappy_bird|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~13_cout\ = CARRY((\inst3|pixel_row\(6) & ((!\inst6|flappy_bird|LessThan3~11_cout\) # (!\inst6|flappy_bird|Add3~12_combout\))) # (!\inst3|pixel_row\(6) & (!\inst6|flappy_bird|Add3~12_combout\ & 
-- !\inst6|flappy_bird|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(6),
	datab => \inst6|flappy_bird|Add3~12_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~11_cout\,
	cout => \inst6|flappy_bird|LessThan3~13_cout\);

-- Location: LCCOMB_X22_Y19_N24
\inst6|flappy_bird|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~15_cout\ = CARRY((\inst3|pixel_row\(7) & (\inst6|flappy_bird|Add3~14_combout\ & !\inst6|flappy_bird|LessThan3~13_cout\)) # (!\inst3|pixel_row\(7) & ((\inst6|flappy_bird|Add3~14_combout\) # 
-- (!\inst6|flappy_bird|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(7),
	datab => \inst6|flappy_bird|Add3~14_combout\,
	datad => VCC,
	cin => \inst6|flappy_bird|LessThan3~13_cout\,
	cout => \inst6|flappy_bird|LessThan3~15_cout\);

-- Location: LCCOMB_X22_Y19_N26
\inst6|flappy_bird|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|LessThan3~16_combout\ = (\inst6|flappy_bird|Add3~16_combout\ & (!\inst6|flappy_bird|LessThan3~15_cout\ & \inst3|pixel_row\(8))) # (!\inst6|flappy_bird|Add3~16_combout\ & ((\inst3|pixel_row\(8)) # 
-- (!\inst6|flappy_bird|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add3~16_combout\,
	datad => \inst3|pixel_row\(8),
	cin => \inst6|flappy_bird|LessThan3~15_cout\,
	combout => \inst6|flappy_bird|LessThan3~16_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst6|flappy_bird|ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_on~1_combout\ = (!\inst6|flappy_bird|Add2~16_combout\ & (!\inst6|flappy_bird|Add0~18_combout\ & (!\inst6|flappy_bird|Add3~18_combout\ & !\inst6|flappy_bird|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|Add2~16_combout\,
	datab => \inst6|flappy_bird|Add0~18_combout\,
	datac => \inst6|flappy_bird|Add3~18_combout\,
	datad => \inst6|flappy_bird|LessThan3~16_combout\,
	combout => \inst6|flappy_bird|ball_on~1_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst6|flappy_bird|ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|flappy_bird|ball_on~4_combout\ = (\inst6|flappy_bird|ball_on~0_combout\ & (\inst6|flappy_bird|ball_on~3_combout\ & \inst6|flappy_bird|ball_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_on~0_combout\,
	datab => \inst6|flappy_bird|ball_on~3_combout\,
	datad => \inst6|flappy_bird|ball_on~1_combout\,
	combout => \inst6|flappy_bird|ball_on~4_combout\);

-- Location: LCCOMB_X21_Y22_N0
\inst3|red_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~4_combout\ = (\inst3|red_out~3_combout\) # ((\inst3|red_out~0_combout\ & \inst6|flappy_bird|ball_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|red_out~0_combout\,
	datac => \inst3|red_out~3_combout\,
	datad => \inst6|flappy_bird|ball_on~4_combout\,
	combout => \inst3|red_out~4_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst3|red_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~5_combout\ = (\inst3|red_out~2_combout\) # ((\inst3|red_out~4_combout\) # ((\inst6|pipes|pipe_on~3_combout\ & \inst3|red_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|red_out~2_combout\,
	datab => \inst6|pipes|pipe_on~3_combout\,
	datac => \inst3|red_out~1_combout\,
	datad => \inst3|red_out~4_combout\,
	combout => \inst3|red_out~5_combout\);

-- Location: FF_X21_Y22_N25
\inst3|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|red_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|red_out~q\);

-- Location: LCCOMB_X21_Y22_N20
\inst3|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~0_combout\ = (\inst3|video_on_h~q\ & (\inst18|s_state\(0) & (\inst3|video_on_v~q\ & \inst18|s_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|video_on_h~q\,
	datab => \inst18|s_state\(0),
	datac => \inst3|video_on_v~q\,
	datad => \inst18|s_state\(1),
	combout => \inst3|red_out~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\inst3|red_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~6_combout\ = (!\inst3|red_out~2_combout\ & (!\inst3|red_out~3_combout\ & ((!\inst3|red_out~1_combout\) # (!\inst6|pipes|pipe_on~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|red_out~2_combout\,
	datab => \inst6|pipes|pipe_on~3_combout\,
	datac => \inst3|red_out~3_combout\,
	datad => \inst3|red_out~1_combout\,
	combout => \inst3|red_out~6_combout\);

-- Location: LCCOMB_X21_Y22_N14
\inst3|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~0_combout\ = ((!\inst6|flappy_bird|ball_on~4_combout\ & \inst3|red_out~0_combout\)) # (!\inst3|red_out~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|flappy_bird|ball_on~4_combout\,
	datac => \inst3|red_out~0_combout\,
	datad => \inst3|red_out~6_combout\,
	combout => \inst3|green_out~0_combout\);

-- Location: FF_X21_Y22_N15
\inst3|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|green_out~q\);

-- Location: LCCOMB_X26_Y21_N0
\inst3|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|video_on_h~feeder_combout\ = \inst3|LessThan6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|LessThan6~0_combout\,
	combout => \inst3|video_on_h~feeder_combout\);

-- Location: FF_X26_Y21_N1
\inst3|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_h~q\);

-- Location: LCCOMB_X22_Y19_N6
\inst3|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|blue_out~0_combout\ = (\inst3|video_on_h~q\ & (\inst3|video_on_v~q\ & ((!\inst6|flappy_bird|ball_on~4_combout\) # (!\inst6|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal1~0_combout\,
	datab => \inst3|video_on_h~q\,
	datac => \inst3|video_on_v~q\,
	datad => \inst6|flappy_bird|ball_on~4_combout\,
	combout => \inst3|blue_out~0_combout\);

-- Location: FF_X22_Y19_N7
\inst3|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|blue_out~q\);

-- Location: LCCOMB_X21_Y18_N4
\inst3|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = ((\inst3|v_count\(1) $ (!\inst3|v_count\(0))) # (!\inst3|v_count\(3))) # (!\inst3|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(1),
	datab => \inst3|v_count\(2),
	datac => \inst3|v_count\(0),
	datad => \inst3|v_count\(3),
	combout => \inst3|process_0~0_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst3|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~1_combout\ = ((\inst3|v_count\(4)) # ((\inst3|process_0~0_combout\) # (\inst3|v_count\(9)))) # (!\inst3|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan7~0_combout\,
	datab => \inst3|v_count\(4),
	datac => \inst3|process_0~0_combout\,
	datad => \inst3|v_count\(9),
	combout => \inst3|process_0~1_combout\);

-- Location: FF_X21_Y18_N17
\inst3|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync~q\);

-- Location: LCCOMB_X20_Y26_N0
\inst3|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|vert_sync_out~feeder_combout\ = \inst3|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|vert_sync~q\,
	combout => \inst3|vert_sync_out~feeder_combout\);

-- Location: FF_X20_Y26_N1
\inst3|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync_out~q\);

-- Location: LCCOMB_X27_Y17_N18
\inst3|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~3_combout\ = (\inst3|h_count\(2)) # ((\inst3|h_count\(1) & (\inst3|h_count\(0) & !\inst3|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(1),
	datab => \inst3|h_count\(2),
	datac => \inst3|h_count\(0),
	datad => \inst3|h_count\(5),
	combout => \inst3|process_0~3_combout\);

-- Location: LCCOMB_X27_Y17_N20
\inst3|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~4_combout\ = (\inst3|h_count\(4) & ((\inst3|h_count\(3)) # (\inst3|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(4),
	datac => \inst3|h_count\(3),
	datad => \inst3|process_0~3_combout\,
	combout => \inst3|process_0~4_combout\);

-- Location: LCCOMB_X27_Y17_N8
\inst3|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~2_combout\ = (!\inst3|h_count\(8) & (\inst3|h_count\(9) & \inst3|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(9),
	datad => \inst3|h_count\(7),
	combout => \inst3|process_0~2_combout\);

-- Location: LCCOMB_X27_Y17_N14
\inst3|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~5_combout\ = ((\inst3|h_count\(6) & (\inst3|process_0~4_combout\ & \inst3|h_count\(5))) # (!\inst3|h_count\(6) & (!\inst3|process_0~4_combout\ & !\inst3|h_count\(5)))) # (!\inst3|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datab => \inst3|process_0~4_combout\,
	datac => \inst3|process_0~2_combout\,
	datad => \inst3|h_count\(5),
	combout => \inst3|process_0~5_combout\);

-- Location: FF_X27_Y17_N15
\inst3|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync~q\);

-- Location: LCCOMB_X28_Y17_N0
\inst3|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|horiz_sync_out~feeder_combout\ = \inst3|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|horiz_sync~q\,
	combout => \inst3|horiz_sync_out~feeder_combout\);

-- Location: FF_X28_Y17_N1
\inst3|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync_out~q\);

-- Location: CLKCTRL_G12
\inst3|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|vert_sync_out~clkctrl_outclk\);

-- Location: FF_X23_Y19_N29
\inst4|Q_left_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|left_button~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_left_led~q\);

-- Location: LCCOMB_X32_Y20_N16
\inst|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[1]~feeder_combout\ = \inst|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(1),
	combout => \inst|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X32_Y20_N17
\inst|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_CHAR1\(1));

-- Location: LCCOMB_X28_Y19_N20
\inst|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|right_button~feeder_combout\ = \inst|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PACKET_CHAR1\(1),
	combout => \inst|right_button~feeder_combout\);

-- Location: FF_X28_Y19_N21
\inst|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|right_button~feeder_combout\,
	ena => \inst|left_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_button~q\);

-- Location: LCCOMB_X24_Y19_N0
\inst4|Q_right_led~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_right_led~0_combout\ = (!\inst|left_button~q\ & \inst|right_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|left_button~q\,
	datad => \inst|right_button~q\,
	combout => \inst4|Q_right_led~0_combout\);

-- Location: FF_X24_Y19_N1
\inst4|Q_right_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Q_right_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_right_led~q\);

-- Location: IOIBUF_X41_Y21_N8
\display_pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_display_pb1,
	o => \display_pb1~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\display_pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_display_pb2,
	o => \display_pb2~input_o\);
END structure;


