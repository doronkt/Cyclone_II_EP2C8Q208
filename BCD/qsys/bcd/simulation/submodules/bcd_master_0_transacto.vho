--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = lut 152 mux21 495 oper_add 4 oper_decoder 1 oper_less_than 1 oper_mux 16 oper_selector 84 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  bcd_master_0_transacto IS 
	 PORT 
	 ( 
		 address	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 byteenable	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 clk	:	IN  STD_LOGIC;
		 in_data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 in_endofpacket	:	IN  STD_LOGIC;
		 in_ready	:	OUT  STD_LOGIC;
		 in_startofpacket	:	IN  STD_LOGIC;
		 in_valid	:	IN  STD_LOGIC;
		 out_data	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 out_endofpacket	:	OUT  STD_LOGIC;
		 out_ready	:	IN  STD_LOGIC;
		 out_startofpacket	:	OUT  STD_LOGIC;
		 out_valid	:	OUT  STD_LOGIC;
		 read	:	OUT  STD_LOGIC;
		 readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 readdatavalid	:	IN  STD_LOGIC;
		 reset_n	:	IN  STD_LOGIC;
		 waitrequest	:	IN  STD_LOGIC;
		 write	:	OUT  STD_LOGIC;
		 writedata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END bcd_master_0_transacto;

 ARCHITECTURE RTL OF bcd_master_0_transacto IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_7_1201q	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni_w2034w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2042w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2025w2027w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2037w2038w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2025w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2037w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w_lg_w2019w2021w2023w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w_lg_w2019w2021w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2032w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2030w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2028w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2026w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2024w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2022w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2020w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w2019w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_0_1152q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_10_1142q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_11_1141q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_12_1140q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_13_1139q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_14_1138q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_15_1137q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_16_1136q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_17_1135q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_18_1134q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_19_1133q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_1_1151q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_20_1132q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_21_1131q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_22_1130q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_23_1129q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_24_1128q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_25_1127q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_26_1126q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_27_1125q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_28_1124q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_29_1123q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_2_1150q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_30_1122q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_31_1121q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_3_1149q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_4_1148q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_5_1147q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_6_1146q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_7_1145q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_8_1144q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_9_1143q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_0_1253q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_10_1243q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_11_1242q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_12_1241q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_13_1240q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_14_1239q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_15_1238q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_16_1237q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_17_1236q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_18_1235q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_19_1234q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_1_1252q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_20_1233q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_21_1232q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_22_1231q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_23_1230q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_2_1251q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_3_1250q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_4_1249q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_5_1248q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_6_1247q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_7_1246q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_8_1245q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_9_1244q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_first_trans_1209q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1103q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_1104q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_1106q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_1115q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_3_1254q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w_lg_w2008w2010w2012w2014w2015w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w2008w2010w2012w2014w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w2008w2010w2012w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w2008w2010w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2008w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w_lg_w1998w2000w2002w2004w2006w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w1998w2000w2002w2004w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w1998w2000w2002w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w1998w2000w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1998w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w_lg_w1988w1990w1992w1994w1996w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w1988w1990w1992w1994w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w1988w1990w1992w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w1988w1990w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2017w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1997w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1995w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1993w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1991w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1989w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1988w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2051w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2013w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2011w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2009w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2007w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2005w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2003w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2001w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w1999w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2046w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w2048w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w350w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_592m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_593m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_594m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_595m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_596m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_597m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_598m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_599m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_600m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_601m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_602m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_603m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_604m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_605m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_606m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_607m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_608m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_609m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_610m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_611m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_612m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_613m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_614m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_615m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_616m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_617m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_618m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_619m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_620m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_621m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_656m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_657m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_658m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_659m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_660m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_661m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_662m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_663m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_664m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_665m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_666m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_667m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_668m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_669m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_670m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_671m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_672m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_673m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_674m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_675m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_676m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_677m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_678m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_679m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_680m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_681m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_682m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_683m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_684m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_685m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_802m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_803m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_804m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_805m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_806m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_807m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_808m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_809m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_810m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_811m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_812m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_813m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_814m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_815m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_816m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_817m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_818m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_819m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_820m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_821m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_822m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_823m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_824m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_825m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_826m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_827m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_828m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_829m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_830m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_831m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_835m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_836m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_837m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_838m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_839m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_840m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_841m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_842m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_843m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_844m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_845m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_846m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_847m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_848m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_849m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_850m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_851m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_852m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_853m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_854m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_855m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_856m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_857m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_858m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_859m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_860m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_861m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_862m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_863m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_864m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_885m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_886m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_887m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_888m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_889m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_890m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_891m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_892m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_893m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_894m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_895m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_896m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_897m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_898m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_899m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_900m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_901m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_902m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_903m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_904m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_905m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_906m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_907m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_908m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_909m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_910m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_911m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_912m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_913m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_914m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_586m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_587m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_588m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_589m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_652m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_653m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_654m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_655m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_736m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_737m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_738m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_739m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_741m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_742m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_743m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_744m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_746m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_747m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_748m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_749m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_751m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_752m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_753m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_754m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_433m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_434m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_435m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_436m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_437m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_438m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_439m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_440m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_517m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_518m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_519m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_520m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_521m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_522m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_523m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_524m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_525m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_526m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_527m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_528m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_529m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_530m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_531m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_532m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_865m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_866m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_867m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_868m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_869m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_870m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_871m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_872m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_873m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_874m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_875m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_876m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_877m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_878m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_879m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_880m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_463m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_464m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_478m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_479m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_494m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_495m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_533m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_534m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_633m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_634m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_696m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_697m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_717m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_718m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1102m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_483m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_535m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_651m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_553m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_454m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_455m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_456m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_457m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_458m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_459m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_460m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_461m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_469m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_470m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_471m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_472m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_473m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_474m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_475m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_476m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_485m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_486m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_487m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_488m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_489m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_490m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_491m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_492m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_624m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_625m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_626m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_627m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_628m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_629m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_630m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_631m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_687m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_688m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_689m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_690m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_691m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_692m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_693m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_694m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_709m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_710m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_711m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_712m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_713m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_714m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_715m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_716m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1074m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_396m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_453m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_468m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_484m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_623m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_686m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_462m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_477m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_493m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_632m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_695m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_735m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_774m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1078m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1079m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1080m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1081m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1082m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1083m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1084m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1085m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1086m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1087m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1088m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1089m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1090m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1091m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1092m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1093m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_419m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_442m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_443m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_444m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_445m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_446m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_465m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_466m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_480m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_481m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_482m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_501m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_502m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_503m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_504m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_505m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_506m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_507m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_508m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_509m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_510m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_511m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_512m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_513m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_514m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_515m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_516m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_537m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_538m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_539m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_540m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_541m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_542m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_543m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_544m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_545m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_546m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_547m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_548m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_549m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_550m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_551m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_552m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_635m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_636m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_637m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_638m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_639m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_640m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_641m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_642m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_643m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_644m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_645m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_646m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_647m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_648m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_649m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_650m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_719m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_720m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_721m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_722m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_723m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_724m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_725m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_726m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_727m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_728m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_729m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_730m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_731m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_732m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_733m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_734m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_755m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_756m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_757m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_758m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_759m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_760m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_761m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_762m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_763m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_764m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_765m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_766m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_767m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_768m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_769m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_770m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_771m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_772m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_773m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_775m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_776m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_777m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_778m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_779m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_780m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_781m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_782m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_783m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_784m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_785m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_786m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_787m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_788m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_789m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_790m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_833m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_834m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_881m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_882m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_883m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_884m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_401m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_402m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_403m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_404m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_405m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_406m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_407m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_408m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_409m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_410m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_411m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_412m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_413m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_414m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_415m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_416m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_500m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_536m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_554m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_555m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_556m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_557m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_558m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_559m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_560m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_561m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_562m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_563m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_564m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_565m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_566m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_567m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_568m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_569m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_570m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_571m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_572m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_573m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_574m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_575m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_576m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_577m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_578m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_579m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_580m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_581m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_582m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_583m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_584m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_585m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_a	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_b	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_a	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_b	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_a	:	STD_LOGIC_VECTOR (16 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_b	:	STD_LOGIC_VECTOR (16 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o	:	STD_LOGIC_VECTOR (16 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_i	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_a	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_b	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_data	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_sel	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_sel	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_data	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_sel	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_sel	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_data	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_sel	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_data	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_sel	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_data	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_sel	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_data	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_sel	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_data	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_data	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_data	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_data	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_o	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_sel	:	STD_LOGIC_VECTOR (14 DOWNTO 0);
	 SIGNAL  wire_w_lg_out_ready578w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w426w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w144w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w222w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_waitrequest349w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_0_1461_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1_1470_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_2_1479_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_3_1488_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor0_915_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor12_998_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor13_1001_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor15_1013_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor16_1047_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor17_1049_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor1_917_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor2_918_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor6_960_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor7_962_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_out_ready578w(0) <= NOT out_ready;
	wire_w426w(0) <= NOT s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout;
	wire_w144w(0) <= NOT s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout;
	wire_w222w(0) <= NOT s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout;
	wire_w_lg_waitrequest349w(0) <= NOT waitrequest;
	address <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q
 & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q & "0" & "0");
	byteenable <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q);
	in_ready <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1103q;
	out_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q);
	out_endofpacket <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q;
	out_startofpacket <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_1104q;
	out_valid <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_1106q;
	read <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_1115q;
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout <= (bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_0_1461_dataout <= (((wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2025w2027w(0) AND wire_ni_w2028w(0)) AND wire_ni_w2030w(0)) AND wire_ni_w2032w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout <= (in_startofpacket AND s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1_1470_dataout <= ((wire_ni_w2034w(0) AND wire_ni_w2030w(0)) AND wire_ni_w2032w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_2_1479_dataout <= (((wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2037w2038w(0) AND wire_ni_w2028w(0)) AND wire_ni_w2030w(0)) AND wire_ni_w2032w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_3_1488_dataout <= ((wire_ni_w2042w(0) AND wire_ni_w2030w(0)) AND wire_ni_w2032w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout <= (s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_0_1461_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1_1470_dataout);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout <= (s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_2_1479_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_3_1488_dataout);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout <= (in_endofpacket OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout <= (bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q AND wire_nO_w2046w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout <= (wire_nO_w2048w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout <= (wire_nO_w2048w(0) AND wire_nO_w2046w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout <= (in_valid AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1103q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout <= (bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout <= ((wire_nO_w_lg_w_lg_w_lg_w2008w2010w2012w2014w(0) AND wire_nO_w2051w(0)) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout <= (bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout <= (wire_nO_w_lg_w_lg_w_lg_w_lg_w2008w2010w2012w2014w2015w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout <= (wire_nO_w_lg_w_lg_w_lg_w_lg_w2008w2010w2012w2014w2015w(0) AND wire_nO_w2017w(0));
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor0_915_dataout <= (((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor12_998_dataout <= ((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor13_1001_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout <= (((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor15_1013_dataout <= (((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor16_1047_dataout <= (((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor17_1049_dataout <= (((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor1_917_dataout <= ((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor2_918_dataout <= (((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout <= (((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor6_960_dataout <= (((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor7_962_dataout <= (((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout <= ((((((((((((bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q) OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	s_wire_vcc <= '1';
	write <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q;
	writedata <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_31_1121q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_30_1122q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_29_1123q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_28_1124q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_27_1125q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_26_1126q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_25_1127q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_24_1128q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_23_1129q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_22_1130q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_21_1131q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_20_1132q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_19_1133q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_18_1134q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_17_1135q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_16_1136q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_15_1137q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_14_1138q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_13_1139q
 & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_12_1140q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_11_1141q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_10_1142q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_9_1143q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_8_1144q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_7_1145q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_6_1146q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_5_1147q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_4_1148q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_3_1149q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_2_1150q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_1_1151q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_0_1152q);
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_7_1201q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout = '1') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q <= in_data(0);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q <= in_data(1);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q <= in_data(2);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q <= in_data(3);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q <= in_data(4);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q <= in_data(5);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q <= in_data(6);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_7_1201q <= in_data(7);
			END IF;
		END IF;
	END PROCESS;
	wire_ni_w2034w(0) <= wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2025w2027w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q;
	wire_ni_w2042w(0) <= wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2037w2038w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q;
	wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2025w2027w(0) <= wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2025w(0) AND wire_ni_w2026w(0);
	wire_ni_w_lg_w_lg_w_lg_w_lg_w2019w2021w2023w2037w2038w(0) <= wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2037w(0) AND wire_ni_w2026w(0);
	wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2025w(0) <= wire_ni_w_lg_w_lg_w2019w2021w2023w(0) AND wire_ni_w2024w(0);
	wire_ni_w_lg_w_lg_w_lg_w2019w2021w2023w2037w(0) <= wire_ni_w_lg_w_lg_w2019w2021w2023w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_ni_w_lg_w_lg_w2019w2021w2023w(0) <= wire_ni_w_lg_w2019w2021w(0) AND wire_ni_w2022w(0);
	wire_ni_w_lg_w2019w2021w(0) <= wire_ni_w2019w(0) AND wire_ni_w2020w(0);
	wire_ni_w2032w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q;
	wire_ni_w2030w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q;
	wire_ni_w2028w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q;
	wire_ni_w2026w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q;
	wire_ni_w2024w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_ni_w2022w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q;
	wire_ni_w2020w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q;
	wire_ni_w2019w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_7_1201q;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_0_1152q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_10_1142q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_11_1141q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_12_1140q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_13_1139q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_14_1138q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_15_1137q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_16_1136q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_17_1135q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_18_1134q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_19_1133q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_1_1151q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_20_1132q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_21_1131q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_22_1130q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_23_1129q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_24_1128q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_25_1127q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_26_1126q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_27_1125q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_28_1124q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_29_1123q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_2_1150q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_30_1122q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_31_1121q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_3_1149q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_4_1148q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_5_1147q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_6_1146q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_7_1145q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_8_1144q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_9_1143q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q = '1') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_0_1152q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_585m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_10_1142q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_575m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_11_1141q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_574m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_12_1140q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_573m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_13_1139q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_572m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_14_1138q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_571m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_15_1137q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_570m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_16_1136q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_569m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_17_1135q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_568m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_18_1134q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_567m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_19_1133q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_566m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_1_1151q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_584m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_20_1132q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_565m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_21_1131q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_564m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_22_1130q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_563m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_23_1129q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_562m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_24_1128q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_561m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_25_1127q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_560m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_26_1126q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_559m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_27_1125q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_558m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_28_1124q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_557m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_29_1123q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_556m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_2_1150q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_583m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_30_1122q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_555m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_31_1121q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_554m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_3_1149q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_582m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_4_1148q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_581m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_5_1147q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_580m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_6_1146q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_579m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_7_1145q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_578m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_8_1144q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_577m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_9_1143q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_576m_dataout;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_0_1253q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_10_1243q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_11_1242q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_12_1241q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_13_1240q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_14_1239q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_15_1238q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_16_1237q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_17_1236q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_18_1235q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_19_1234q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_1_1252q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_20_1233q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_21_1232q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_22_1231q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_23_1230q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_2_1251q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_3_1250q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_4_1249q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_5_1248q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_6_1247q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_7_1246q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_8_1245q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_9_1244q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout = '1') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_0_1253q <= readdata(8);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_10_1243q <= readdata(18);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_11_1242q <= readdata(19);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_12_1241q <= readdata(20);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_13_1240q <= readdata(21);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_14_1239q <= readdata(22);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_15_1238q <= readdata(23);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_16_1237q <= readdata(24);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_17_1236q <= readdata(25);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_18_1235q <= readdata(26);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_19_1234q <= readdata(27);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_1_1252q <= readdata(9);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_20_1233q <= readdata(28);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_21_1232q <= readdata(29);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_22_1231q <= readdata(30);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_23_1230q <= readdata(31);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_2_1251q <= readdata(10);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_3_1250q <= readdata(11);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_4_1249q <= readdata(12);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_5_1248q <= readdata(13);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_6_1247q <= readdata(14);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_7_1246q <= readdata(15);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_8_1245q <= readdata(16);
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_9_1244q <= readdata(17);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1078m_dataout;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_first_trans_1209q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1103q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_1104q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_1106q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_1115q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_3_1254q <= '0';
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_first_trans_1209q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1103q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1102m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_1104q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_1106q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_1115q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_o;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1082m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1083m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1084m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1085m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1079m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1080m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1081m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1086m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1089m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1090m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1091m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1092m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1093m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1088m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1087m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_416m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_415m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_414m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_3_1254q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_413m_dataout;
				bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_o;
		END IF;
	END PROCESS;
	wire_nO_w_lg_w_lg_w_lg_w_lg_w2008w2010w2012w2014w2015w(0) <= wire_nO_w_lg_w_lg_w_lg_w2008w2010w2012w2014w(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q;
	wire_nO_w_lg_w_lg_w_lg_w2008w2010w2012w2014w(0) <= wire_nO_w_lg_w_lg_w2008w2010w2012w(0) AND wire_nO_w2013w(0);
	wire_nO_w_lg_w_lg_w2008w2010w2012w(0) <= wire_nO_w_lg_w2008w2010w(0) AND wire_nO_w2011w(0);
	wire_nO_w_lg_w2008w2010w(0) <= wire_nO_w2008w(0) AND wire_nO_w2009w(0);
	wire_nO_w2008w(0) <= wire_nO_w_lg_w_lg_w_lg_w_lg_w1998w2000w2002w2004w2006w(0) AND wire_nO_w2007w(0);
	wire_nO_w_lg_w_lg_w_lg_w_lg_w1998w2000w2002w2004w2006w(0) <= wire_nO_w_lg_w_lg_w_lg_w1998w2000w2002w2004w(0) AND wire_nO_w2005w(0);
	wire_nO_w_lg_w_lg_w_lg_w1998w2000w2002w2004w(0) <= wire_nO_w_lg_w_lg_w1998w2000w2002w(0) AND wire_nO_w2003w(0);
	wire_nO_w_lg_w_lg_w1998w2000w2002w(0) <= wire_nO_w_lg_w1998w2000w(0) AND wire_nO_w2001w(0);
	wire_nO_w_lg_w1998w2000w(0) <= wire_nO_w1998w(0) AND wire_nO_w1999w(0);
	wire_nO_w1998w(0) <= wire_nO_w_lg_w_lg_w_lg_w_lg_w1988w1990w1992w1994w1996w(0) AND wire_nO_w1997w(0);
	wire_nO_w_lg_w_lg_w_lg_w_lg_w1988w1990w1992w1994w1996w(0) <= wire_nO_w_lg_w_lg_w_lg_w1988w1990w1992w1994w(0) AND wire_nO_w1995w(0);
	wire_nO_w_lg_w_lg_w_lg_w1988w1990w1992w1994w(0) <= wire_nO_w_lg_w_lg_w1988w1990w1992w(0) AND wire_nO_w1993w(0);
	wire_nO_w_lg_w_lg_w1988w1990w1992w(0) <= wire_nO_w_lg_w1988w1990w(0) AND wire_nO_w1991w(0);
	wire_nO_w_lg_w1988w1990w(0) <= wire_nO_w1988w(0) AND wire_nO_w1989w(0);
	wire_nO_w2017w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q;
	wire_nO_w1997w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q;
	wire_nO_w1995w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q;
	wire_nO_w1993w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q;
	wire_nO_w1991w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q;
	wire_nO_w1989w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q;
	wire_nO_w1988w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q;
	wire_nO_w2051w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q;
	wire_nO_w2013w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q;
	wire_nO_w2011w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q;
	wire_nO_w2009w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q;
	wire_nO_w2007w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q;
	wire_nO_w2005w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q;
	wire_nO_w2003w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q;
	wire_nO_w2001w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q;
	wire_nO_w1999w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q;
	wire_nO_w2046w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q;
	wire_nO_w2048w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q;
	wire_nO_w350w(0) <= NOT bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_592m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(29) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_593m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(28) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_594m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(27) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_595m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(26) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_596m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(25) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_597m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(24) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_598m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(23) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_599m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(22) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_600m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(21) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_601m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(20) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_602m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(19) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_603m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(18) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_604m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(17) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_605m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(16) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_606m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(15) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_607m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(14) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_608m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(13) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_609m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(12) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_610m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(11) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_611m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(10) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_612m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(9) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_613m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(8) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_614m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(7) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_615m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(6) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_616m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(5) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_617m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(4) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_618m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(3) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_619m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(2) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_620m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(1) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_621m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o(0) WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_656m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_592m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_657m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_593m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_658m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_594m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_659m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_595m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_660m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_596m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_661m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_597m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_662m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_598m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_663m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_599m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_664m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_600m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_665m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_601m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_666m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_602m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_667m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_603m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_668m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_604m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_669m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_605m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_670m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_606m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_671m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_607m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_672m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_608m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_673m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_609m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_674m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_610m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_675m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_611m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_676m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_612m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_677m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_613m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_678m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_614m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_679m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_615m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_680m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_616m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_681m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_617m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_682m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_618m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_683m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_619m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_684m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_620m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_685m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_621m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_802m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_592m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_803m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_593m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_804m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_594m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_805m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_595m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_806m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_596m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_807m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_597m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_808m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_598m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_809m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_599m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_810m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_600m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_811m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_601m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_812m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_602m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_813m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_603m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_814m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_604m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_815m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_605m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_816m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_606m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_817m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_607m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_818m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_608m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_819m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_609m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_820m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_610m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_821m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_611m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_822m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_612m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_823m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_613m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_824m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_614m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_825m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_615m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_826m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_616m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_827m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_617m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_828m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_618m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_829m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_619m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_830m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_620m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_831m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_621m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_835m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_802m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_836m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_803m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_837m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_804m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_838m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_805m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_839m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_806m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_840m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_807m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_841m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_808m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_842m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_809m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_843m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_810m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_844m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_811m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_845m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_812m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_846m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_813m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_847m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_814m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_848m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_815m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_849m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_816m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_850m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_817m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_851m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_818m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_852m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_819m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_853m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_820m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_854m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_821m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_855m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_822m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_856m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_823m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_857m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_824m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_858m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_825m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_859m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_826m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_860m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_827m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_861m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_828m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_862m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_829m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_863m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_830m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_864m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_831m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_885m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_835m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_886m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_836m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_887m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_837m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_888m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_838m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_889m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_839m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_890m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_840m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_891m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_841m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_892m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_842m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_893m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_843m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_894m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_844m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_895m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_845m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_896m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_846m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_897m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_847m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_898m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_848m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_899m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_849m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_900m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_850m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_901m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_851m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_902m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_852m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_903m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_853m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_904m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_854m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_905m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_855m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_906m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_856m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_907m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_857m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_908m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_858m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_909m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_859m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_910m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_860m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_911m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_861m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_912m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_862m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_913m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_863m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_914m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_864m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_586m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_587m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_588m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_589m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_652m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_653m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_654m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_655m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_736m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_737m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_738m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_739m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_741m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_736m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_742m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_737m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_743m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_738m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_744m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_739m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1554_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_746m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_741m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_747m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_742m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_748m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_743m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_749m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_744m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1587_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_751m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_3_1254q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_746m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_752m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_747m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_753m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_748m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_754m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1620_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_749m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_433m_dataout <= in_data(7) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_434m_dataout <= in_data(6) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_435m_dataout <= in_data(5) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_436m_dataout <= in_data(4) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_437m_dataout <= in_data(3) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_438m_dataout <= in_data(2) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_439m_dataout <= in_data(1) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_440m_dataout <= in_data(0) AND bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_517m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(15) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_518m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(14) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_519m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(13) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_520m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(12) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_521m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(11) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_522m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(10) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_523m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(9) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_524m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(8) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_525m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(7) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_526m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(6) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_527m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(5) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_528m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(4) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_529m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(3) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_530m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(2) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_531m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(1) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_532m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o(0) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_865m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(16) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_866m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(15) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_867m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(14) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_868m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(13) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_869m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(12) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_870m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(11) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_871m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(10) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_872m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(9) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_873m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(8) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_874m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(7) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_875m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(6) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_876m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(5) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_877m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(4) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_878m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(3) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_879m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(2) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_880m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o(1) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_463m_dataout <= in_data(1) AND s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_464m_dataout <= in_data(0) AND s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_478m_dataout <= in_data(1) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_463m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_479m_dataout <= in_data(0) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_464m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_494m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_478m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE in_data(1);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_495m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_479m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE in_data(0);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_533m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o(1) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_534m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o(0) WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_633m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q AND NOT(bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_634m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q AND NOT(bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_696m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_633m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_697m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_634m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_717m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o(1) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_718m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o(0) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_1102m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_o OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_483m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout OR NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_535m_dataout <= wire_w222w(0) OR NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_651m_dataout <= wire_nO_w350w(0) AND wire_w_lg_waitrequest349w(0);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_553m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q OR in_endofpacket;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_454m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q OR NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_455m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_456m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_457m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_458m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_459m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_460m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_461m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_469m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_454m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_470m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_455m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_471m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_456m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_472m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_457m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_473m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_458m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_474m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_459m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_475m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_460m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_476m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_461m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_485m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_469m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_486m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_470m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_487m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_471m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_488m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_472m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_489m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_473m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_490m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_474m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_491m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_475m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_492m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_476m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_624m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_625m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_6_1202q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_626m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_5_1203q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_627m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_4_1204q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_628m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_3_1205q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_629m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_2_1206q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_630m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_1_1207q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_631m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_command_0_1208q WHEN bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_687m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_624m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_688m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_625m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_689m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_626m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_690m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_627m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_691m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_628m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_692m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_629m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_693m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_630m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_694m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_631m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_709m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_710m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_711m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_712m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_713m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_714m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_715m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_716m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_o WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1074m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_396m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1105q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_1104q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_453m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout OR NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_468m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_453m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_484m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_468m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_623m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_686m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_623m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_1106q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_462m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout OR NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_477m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_462m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_493m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_477m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_632m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout OR bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_695m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_632m_dataout WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_735m_dataout <= wire_w426w(0) OR NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_774m_dataout <= waitrequest AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1078m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1079m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_o OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1080m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1081m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1082m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1083m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1084m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1085m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1086m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1087m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1088m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1089m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1090m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1091m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1092m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_1093m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_o AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_1077_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_419m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_442m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_443m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_444m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_445m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_446m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_465m_dataout <= wire_w144w(0) AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_466m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_452_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_480m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_449_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_481m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_465m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_482m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_466m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_501m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_502m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_503m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_504m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_505m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_506m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_507m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_508m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_509m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_510m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_511m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_512m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_513m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_514m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_515m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_516m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_537m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_501m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_538m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_502m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_539m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_503m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_540m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_504m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_541m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_505m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_542m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_506m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_543m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_507m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_544m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_508m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_545m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_509m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_546m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_510m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_547m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_511m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_548m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_512m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_549m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_513m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_550m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_514m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_551m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_515m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_552m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_516m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_635m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_636m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_637m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_638m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_639m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_640m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_641m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_642m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_643m_dataout <= wire_nO_w350w(0) WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_644m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_645m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q WHEN wire_w_lg_waitrequest349w(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_646m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_647m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_648m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_649m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_650m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_719m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_720m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_721m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_722m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_723m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_724m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_725m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_726m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_727m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_728m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_729m_dataout <= wire_w426w(0) WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_730m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_731m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_732m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_733m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_734m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_755m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_756m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q AND NOT(wire_w_lg_waitrequest349w(0));
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_757m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q OR wire_w_lg_waitrequest349w(0);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_758m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_635m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_759m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_636m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_760m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_637m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_761m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_638m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_762m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_639m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_763m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_640m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_764m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_641m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_765m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_642m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_766m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_755m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_767m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_644m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_768m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_756m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_769m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_646m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_770m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_647m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_771m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_757m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_772m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_649m_dataout OR readdatavalid;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_773m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_650m_dataout AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_775m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_776m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_777m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_778m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_779m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_780m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_781m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_782m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_783m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_784m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_785m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_786m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_787m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_788m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_789m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q OR readdatavalid;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_790m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q AND NOT(readdatavalid);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_833m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_0_1521_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_834m_dataout <= wire_w426w(0) AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_881m_dataout <= s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_882m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q AND NOT(out_ready);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_883m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_833m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_884m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_834m_dataout WHEN out_ready = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_401m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_3_1254q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_402m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_2_1255q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_403m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1256q AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_404m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1072q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_405m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_401m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_406m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_402m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_407m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_403m_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_408m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_404m_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_1_1452_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_409m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_405m_dataout AND NOT(s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_410m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_406m_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_411m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_407m_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_412m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_408m_dataout OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_0_1419_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_413m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_409m_dataout OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_414m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_410m_dataout OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_415m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_411m_dataout OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_416m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_unshifted_byteenable_412m_dataout OR wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_500m_dataout <= bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q OR s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_always1_499_dataout;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_536m_dataout <= wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_500m_dataout WHEN s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_enable_393_dataout = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_554m_dataout <= in_data(7) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_31_1121q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_555m_dataout <= in_data(6) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_30_1122q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_556m_dataout <= in_data(5) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_29_1123q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_557m_dataout <= in_data(4) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_28_1124q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_558m_dataout <= in_data(3) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_27_1125q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_559m_dataout <= in_data(2) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_26_1126q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_560m_dataout <= in_data(1) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_25_1127q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_561m_dataout <= in_data(0) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(3) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_24_1128q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_562m_dataout <= in_data(7) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_23_1129q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_563m_dataout <= in_data(6) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_22_1130q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_564m_dataout <= in_data(5) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_21_1131q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_565m_dataout <= in_data(4) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_20_1132q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_566m_dataout <= in_data(3) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_19_1133q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_567m_dataout <= in_data(2) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_18_1134q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_568m_dataout <= in_data(1) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_17_1135q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_569m_dataout <= in_data(0) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(2) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_16_1136q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_570m_dataout <= in_data(7) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_15_1137q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_571m_dataout <= in_data(6) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_14_1138q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_572m_dataout <= in_data(5) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_13_1139q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_573m_dataout <= in_data(4) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_12_1140q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_574m_dataout <= in_data(3) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_11_1141q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_575m_dataout <= in_data(2) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_10_1142q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_576m_dataout <= in_data(1) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_9_1143q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_577m_dataout <= in_data(0) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(1) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_8_1144q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_578m_dataout <= in_data(7) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_7_1145q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_579m_dataout <= in_data(6) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_6_1146q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_580m_dataout <= in_data(5) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_5_1147q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_581m_dataout <= in_data(4) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_4_1148q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_582m_dataout <= in_data(3) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_3_1149q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_583m_dataout <= in_data(2) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_2_1150q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_584m_dataout <= in_data(1) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_1_1151q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_585m_dataout <= in_data(0) WHEN wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o(0) = '1'  ELSE bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_writedata_0_1152q;
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_a <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "1");
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 16,
		width_b => 16,
		width_o => 16
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_a,
		b => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add0_496_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_a <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_b <= ( "0" & "1");
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_a,
		b => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add1_497_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_a <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q
 & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "1");
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 30,
		width_b => 30,
		width_o => 30
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_a,
		b => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add2_591_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_a <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q & "1");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_b <= ( "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1" & "0" & "1");
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 17,
		width_b => 17,
		width_o => 17
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_a,
		b => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_add3_801_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_i <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698 :  oper_decoder
	  GENERIC MAP (
		width_i => 2,
		width_o => 4
	  )
	  PORT MAP ( 
		i => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_i,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_decoder0_698_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "1" & "1");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_b <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 16,
		width_b => 16
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_a,
		b => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_b,
		cin => wire_vcc,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_lessthan0_398_o
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux0_699_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_21_1232q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_13_1240q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_5_1248q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_20_1233q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_12_1241q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_4_1249q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_19_1234q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_11_1242q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_3_1250q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_18_1235q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_10_1243q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_2_1251q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_17_1236q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_9_1244q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_1_1252q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_16_1237q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_8_1245q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_0_1253q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux1_700_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux2_701_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux3_702_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux4_703_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux5_704_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux6_705_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux7_706_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_23_1230q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_15_1238q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_7_1246q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_22_1231q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_14_1239q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_data_buffer_6_1247q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794 :  oper_mux
	  GENERIC MAP (
		width_data => 4,
		width_sel => 2
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_data <= ( "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_397m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_493m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_695m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_valid_735m_dataout & "1" & wire_w_lg_out_ready578w);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor0_915_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916 :  oper_selector
	  GENERIC MAP (
		width_data => 7,
		width_sel => 7
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector0_916_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_443m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_421m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_541m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_639m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_723m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_762m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_779m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_723m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector10_930_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_444m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_422m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_542m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_640m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_724m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_763m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_780m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_724m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector11_931_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_445m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_423m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_543m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_641m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_725m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_764m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_781m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_725m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector12_932_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_446m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_424m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_544m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_642m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_726m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_765m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_782m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_726m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector13_933_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_425m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_480m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_545m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_643m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_727m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_766m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_783m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_727m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector14_934_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_426m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_546m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_644m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_728m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_767m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_784m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_728m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector15_935_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_427m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_481m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_547m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_645m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_729m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_768m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_785m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_882m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector16_936_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_428m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_482m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_548m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_646m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_730m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_769m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_786m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_883m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector17_937_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_429m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_549m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_647m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_731m_dataout & "1" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_770m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_787m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_731m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938 :  oper_selector
	  GENERIC MAP (
		width_data => 16,
		width_sel => 16
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector18_938_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_430m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_550m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_648m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_732m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_771m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_788m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_732m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector19_939_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_data <= ( "1" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_483m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_535m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_in_ready_0_651m_dataout & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor1_917_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor2_918_dataout);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919 :  oper_selector
	  GENERIC MAP (
		width_data => 5,
		width_sel => 5
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector1_919_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_431m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_551m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_649m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_733m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_772m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_789m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_884m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector20_940_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_432m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_552m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_650m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_734m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_773m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_790m_dataout & "1" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_734m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941 :  oper_selector
	  GENERIC MAP (
		width_data => 16,
		width_sel => 16
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector21_941_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_15_1185q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_433m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_517m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_865m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector22_943_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_14_1186q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_434m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_518m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_866m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector23_944_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_13_1187q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_435m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_519m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_867m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector24_945_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_12_1188q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_436m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_520m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_868m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector25_946_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_11_1189q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_437m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_521m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_869m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector26_947_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_10_1190q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_438m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_522m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_870m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector27_948_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_9_1191q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_439m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_523m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_871m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector28_949_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_8_1192q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_440m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_524m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_872m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor4_942_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector29_950_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_3_1117q & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_586m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_652m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_751m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921 :  oper_selector
	  GENERIC MAP (
		width_data => 5,
		width_sel => 5
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector2_921_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_7_1193q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_433m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_525m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_873m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector30_952_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_6_1194q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_434m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_526m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_874m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector31_953_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_5_1195q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_435m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_527m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_875m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector32_954_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_4_1196q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_436m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_528m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_876m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector33_955_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_3_1197q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_437m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_529m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_877m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector34_956_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_2_1198q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_438m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_530m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_878m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector35_957_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_1_1199q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_439m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_531m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_879m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector36_958_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_0_1200q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_440m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_532m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_counter_880m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor5_951_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector37_959_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_first_trans_1209q & "1" & "0");
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor6_960_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961 :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector38_961_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_1210q & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_last_trans_553m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor7_962_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963 :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector39_963_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_2_1118q & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_587m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_653m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_752m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922 :  oper_selector
	  GENERIC MAP (
		width_data => 5,
		width_sel => 5
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector3_922_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_31_1153q & in_data(7) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_656m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_885m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector40_965_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_30_1154q & in_data(6) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_657m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_886m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector41_966_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_29_1155q & in_data(5) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_658m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_887m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector42_967_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_28_1156q & in_data(4) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_659m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_888m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector43_968_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_27_1157q & in_data(3) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_660m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_889m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector44_969_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_26_1158q & in_data(2) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_661m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_890m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector45_970_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_25_1159q & in_data(1) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_662m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_891m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector46_971_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_24_1160q & in_data(0) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_663m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_892m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor8_964_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector47_972_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_23_1161q & in_data(7) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_664m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_893m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector48_974_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_22_1162q & in_data(6) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_665m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_894m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector49_975_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_1_1119q & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_588m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_654m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_753m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923 :  oper_selector
	  GENERIC MAP (
		width_data => 5,
		width_sel => 5
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector4_923_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_21_1163q & in_data(5) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_666m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_895m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector50_976_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_20_1164q & in_data(4) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_667m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_896m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector51_977_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_19_1165q & in_data(3) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_668m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_897m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector52_978_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_18_1166q & in_data(2) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_669m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_898m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector53_979_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_17_1167q & in_data(1) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_670m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_899m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector54_980_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_16_1168q & in_data(0) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_671m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_900m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor9_973_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector55_981_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_15_1169q & in_data(7) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_672m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_901m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector56_983_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_14_1170q & in_data(6) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_673m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_902m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector57_984_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_13_1171q & in_data(5) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_674m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_903m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector58_985_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_12_1172q & in_data(4) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_675m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_904m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector59_986_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_0_1120q & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_589m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_655m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_byteenable_754m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor3_920_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924 :  oper_selector
	  GENERIC MAP (
		width_data => 5,
		width_sel => 5
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector5_924_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_11_1173q & in_data(3) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_676m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_905m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector60_987_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_10_1174q & in_data(2) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_677m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_906m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector61_988_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_9_1175q & in_data(1) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_678m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_907m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector62_989_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_8_1176q & in_data(0) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_679m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_908m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor10_982_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector63_990_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_7_1177q & in_data(7) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_680m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_909m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector64_992_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_6_1178q & in_data(6) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_681m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_910m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector65_993_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_5_1179q & in_data(5) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_682m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_911m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector66_994_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_4_1180q & in_data(4) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_683m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_912m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector67_995_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_3_1181q & in_data(3) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_684m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_913m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector68_996_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_2_1182q & in_data(2) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_685m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_address_914m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor11_991_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector69_997_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_417m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_537m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_635m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_719m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_758m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_775m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_881m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector6_926_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_1_1228q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_494m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_533m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_696m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_717m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_717m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor12_998_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector70_999_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_0_1229q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_495m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_534m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_697m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_718m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_current_byte_718m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor12_998_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector71_1000_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_data <= ( wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_395m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_484m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_startofpacket_686m_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_first_trans_1209q);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor13_1001_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002 :  oper_selector
	  GENERIC MAP (
		width_data => 4,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector72_1002_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_7_1107q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_485m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_687m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_709m_dataout & readdata(7) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux8_793_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector73_1005_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_6_1108q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_486m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_688m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_710m_dataout & readdata(6) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux9_794_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector74_1006_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_5_1109q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_487m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_689m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_711m_dataout & readdata(5) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux10_795_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector75_1007_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_4_1110q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_488m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_690m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_712m_dataout & readdata(4) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux11_796_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector76_1008_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_3_1111q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_489m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_691m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_713m_dataout & readdata(3) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux12_797_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector77_1009_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_2_1112q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_490m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_692m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_714m_dataout & readdata(2) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux13_798_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector78_1010_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1_1113q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_491m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_693m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_715m_dataout & readdata(1) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux14_799_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector79_1011_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_418m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_538m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_636m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_720m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_759m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_776m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_720m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector7_927_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_0_1114q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_492m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_694m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_716m_dataout & readdata(0) & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_mux15_800_o);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor14_1003_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_data_1004_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012 :  oper_selector
	  GENERIC MAP (
		width_data => 6,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector80_1012_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_1116q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_write_536m_dataout & waitrequest);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor15_1013_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014 :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector81_1014_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_data <= ( wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_396m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_out_endofpacket_1074m_dataout & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0_1653_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor16_1047_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_issue_1225q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048 :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector82_1048_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_1115q & "1" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_read_774m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_sel <= ( s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_wideor17_1049_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_assert_1222q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050 :  oper_selector
	  GENERIC MAP (
		width_data => 3,
		width_sel => 3
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector83_1050_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_419m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_441m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_539m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_637m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_721m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_760m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_777m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_721m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector8_928_sel
	  );
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_data <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_442m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_420m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_540m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_638m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_722m_dataout & "0" & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_761m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_778m_dataout & wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_722m_dataout);
	wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_sel <= ( bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_0000_1211q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_extra_1212q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size1_1213q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_size2_1214q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr1_1215q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr2_1216q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr3_1217q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_addr4_1218q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_get_write_data_1219q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_write_wait_1220q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_return_packet_1221q & s_wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_925_dataout & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_cmd_wait_1223q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_data_wait_1224q & bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_state_read_send_wait_1227q);
	bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929 :  oper_selector
	  GENERIC MAP (
		width_data => 15,
		width_sel => 15
	  )
	  PORT MAP ( 
		data => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_data,
		o => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_o,
		sel => wire_bcd_master_0_transacto_altera_avalon_packets_to_master_transacto_packets_to_master_p2m_selector9_929_sel
	  );

 END RTL; --bcd_master_0_transacto
--synopsys translate_on
--VALID FILE
