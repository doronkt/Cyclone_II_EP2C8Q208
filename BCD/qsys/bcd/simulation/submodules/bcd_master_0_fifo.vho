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

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = altsyncram 1 lut 24 mux21 14 oper_add 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  bcd_master_0_fifo IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 in_data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 in_ready	:	OUT  STD_LOGIC;
		 in_valid	:	IN  STD_LOGIC;
		 out_data	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 out_ready	:	IN  STD_LOGIC;
		 out_valid	:	OUT  STD_LOGIC;
		 reset	:	IN  STD_LOGIC
	 ); 
 END bcd_master_0_fifo;

 ARCHITECTURE RTL OF bcd_master_0_fifo IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_data_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q	:	STD_LOGIC := '0';
	 SIGNAL  wire_ni_w72w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_full_99q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_109q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_0_152q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_1_117q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_2_116q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_3_115q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_4_114q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_5_113q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_6_112q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_7_111q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_valid_110q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nlO_w70w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q	:	STD_LOGIC := '0';
	 SIGNAL	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q	:	STD_LOGIC := '0';
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_97m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_98m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_0_61m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_1_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_2_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_3_58m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_4_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_5_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_80m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_85m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_79m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_84m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_86m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset60w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w68w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w66w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_76_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_82_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_ready_94_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_0_301_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_0_308_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_reset60w(0) <= NOT reset;
	wire_w68w(0) <= NOT s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout;
	wire_w66w(0) <= NOT s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout;
	in_ready <= wire_nl_w1w(0);
	out_data <= ( bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_7_111q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_6_112q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_5_113q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_4_114q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_3_115q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_2_116q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_1_117q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_0_152q);
	out_valid <= bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_valid_110q;
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_76_dataout <= (s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout AND wire_w66w(0));
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_82_dataout <= (wire_w68w(0) AND s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout);
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_ready_94_dataout <= (out_ready OR wire_nlO_w70w(0));
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_0_301_dataout <= ((((((NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(0) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q)) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(1) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(2) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(3) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(4) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(5) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q)));
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_0_308_dataout <= ((((((NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(0) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q)) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(1) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(2) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(3) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(4) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q))) AND (NOT (wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(5) XOR bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q)));
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout <= (s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_ready_94_dataout AND bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_109q);
	s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout <= (in_valid AND wire_nl_w1w(0));
	s_wire_vcc <= '1';
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_a <= ( bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_b <= ( wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_5_56m_dataout & wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_4_57m_dataout & wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_3_58m_dataout & wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_2_59m_dataout & wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_1_60m_dataout & wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_0_61m_dataout);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_data_a <= ( in_data(7 DOWNTO 0));
	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374 :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK0",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ECC_PIPELINE_STAGE_ENABLED => "FALSE",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone II",
		NUMWORDS_A => 64,
		NUMWORDS_B => 64,
		OPERATION_MODE => "DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "UNREGISTERED",
		OUTDATA_REG_B => "UNREGISTERED",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "OLD_DATA",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 8,
		WIDTH_B => 8,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 6,
		WIDTHAD_B => 6,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_a,
		address_b => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_address_b,
		clock0 => clk,
		data_a => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_data_a,
		q_b => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b,
		wren_a => s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout
	  );
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_85m_dataout;
		END IF;
	END PROCESS;
	wire_ni_w72w(0) <= NOT bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_full_99q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_109q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_full_99q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_86m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_109q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_98m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_0_61m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_1_60m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_2_59m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_3_58m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_4_57m_dataout;
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_5_56m_dataout;
		END IF;
	END PROCESS;
	wire_nl_w1w(0) <= NOT bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_full_99q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_0_152q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_1_117q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_2_116q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_3_115q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_4_114q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_5_113q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_6_112q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_7_111q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_valid_110q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_ready_94_dataout = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_0_152q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(0);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_1_117q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(1);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_2_116q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(2);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_3_115q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(3);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_4_114q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(4);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_5_113q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(5);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_6_112q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(6);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_payload_7_111q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_altsyncram_mem_374_q_b(7);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_valid_110q <= bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_109q;
			END IF;
		END IF;
	END PROCESS;
	wire_nlO_w70w(0) <= NOT bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_out_valid_110q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q <= '0';
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_write_41_dataout = '1') THEN
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(0);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(1);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(2);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(3);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(4);
				bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o(5);
			END IF;
		END IF;
	END PROCESS;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_97m_dataout <= wire_ni_w72w(0) AND NOT(s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_0_301_dataout);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_98m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_internal_out_valid_97m_dataout WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE wire_ni_w72w(0);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_0_61m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(0) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_1_60m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(1) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_2_59m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(2) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_3_58m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(3) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_4_57m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(4) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_mem_rd_ptr_5_56m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o(5) WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_read_39_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_78m_dataout <= bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q OR s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_0_301_dataout;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_80m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_78m_dataout WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_76_dataout = '1'  ELSE bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_empty_91q;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_85m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_empty_80m_dataout AND NOT(s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_82_dataout);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_79m_dataout <= bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_full_99q AND NOT(s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_76_dataout);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_84m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_79m_dataout OR s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_0_308_dataout;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_86m_dataout <= wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_84m_dataout WHEN s_wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_always2_82_dataout = '1'  ELSE wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_next_full_79m_dataout;
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_a <= ( bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_5_64q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_4_65q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_3_66q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_2_67q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_1_68q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_wr_ptr_0_69q);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_b <= ( "0" & "0" & "0" & "0" & "0" & "1");
	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 6,
		width_b => 6,
		width_o => 6
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_a,
		b => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add0_42_o
	  );
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_a <= ( bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_5_70q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_4_71q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_3_72q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_2_73q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_1_74q & bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_rd_ptr_0_90q);
	wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_b <= ( "0" & "0" & "0" & "0" & "0" & "1");
	bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 6,
		width_b => 6,
		width_o => 6
	  )
	  PORT MAP ( 
		a => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_a,
		b => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_b,
		cin => wire_gnd,
		o => wire_bcd_master_0_fifo_altera_avalon_sc_fifo_fifo_add1_43_o
	  );

 END RTL; --bcd_master_0_fifo
--synopsys translate_on
--VALID FILE
