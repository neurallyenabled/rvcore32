-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "10/09/2022 12:46:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memory_interface IS
    PORT (
	clk : IN std_logic;
	mem_en : IN std_logic;
	wb_en : IN std_logic;
	start : IN std_logic;
	function3 : IN std_logic_vector(2 DOWNTO 0);
	address : IN std_logic_vector(16 DOWNTO 0);
	write_data : IN std_logic_vector(31 DOWNTO 0);
	read_data : OUT std_logic_vector(31 DOWNTO 0);
	waitt : OUT std_logic;
	done : OUT std_logic
	);
END memory_interface;

-- Design Ports Information
-- read_data[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[10]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[11]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[12]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[14]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[16]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[17]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[18]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[21]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[22]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[23]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[24]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[26]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[27]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[28]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[29]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[30]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[31]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waitt	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_en	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- function3[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- function3[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- function3[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wb_en	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[16]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[31]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[30]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[29]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[28]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[27]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[26]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[25]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[22]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[21]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[18]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[17]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[16]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[15]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[9]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memory_interface IS
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
SIGNAL ww_mem_en : std_logic;
SIGNAL ww_wb_en : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_function3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_write_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_waitt : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_en~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \read_data[0]~output_o\ : std_logic;
SIGNAL \read_data[1]~output_o\ : std_logic;
SIGNAL \read_data[2]~output_o\ : std_logic;
SIGNAL \read_data[3]~output_o\ : std_logic;
SIGNAL \read_data[4]~output_o\ : std_logic;
SIGNAL \read_data[5]~output_o\ : std_logic;
SIGNAL \read_data[6]~output_o\ : std_logic;
SIGNAL \read_data[7]~output_o\ : std_logic;
SIGNAL \read_data[8]~output_o\ : std_logic;
SIGNAL \read_data[9]~output_o\ : std_logic;
SIGNAL \read_data[10]~output_o\ : std_logic;
SIGNAL \read_data[11]~output_o\ : std_logic;
SIGNAL \read_data[12]~output_o\ : std_logic;
SIGNAL \read_data[13]~output_o\ : std_logic;
SIGNAL \read_data[14]~output_o\ : std_logic;
SIGNAL \read_data[15]~output_o\ : std_logic;
SIGNAL \read_data[16]~output_o\ : std_logic;
SIGNAL \read_data[17]~output_o\ : std_logic;
SIGNAL \read_data[18]~output_o\ : std_logic;
SIGNAL \read_data[19]~output_o\ : std_logic;
SIGNAL \read_data[20]~output_o\ : std_logic;
SIGNAL \read_data[21]~output_o\ : std_logic;
SIGNAL \read_data[22]~output_o\ : std_logic;
SIGNAL \read_data[23]~output_o\ : std_logic;
SIGNAL \read_data[24]~output_o\ : std_logic;
SIGNAL \read_data[25]~output_o\ : std_logic;
SIGNAL \read_data[26]~output_o\ : std_logic;
SIGNAL \read_data[27]~output_o\ : std_logic;
SIGNAL \read_data[28]~output_o\ : std_logic;
SIGNAL \read_data[29]~output_o\ : std_logic;
SIGNAL \read_data[30]~output_o\ : std_logic;
SIGNAL \read_data[31]~output_o\ : std_logic;
SIGNAL \waitt~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~feeder_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ : std_logic;
SIGNAL \wb_en~input_o\ : std_logic;
SIGNAL \current_state~18_combout\ : std_logic;
SIGNAL \mem_en~input_o\ : std_logic;
SIGNAL \mem_en~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.write_s~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\ : std_logic;
SIGNAL \csr_write_data_i[3]~4_combout\ : std_logic;
SIGNAL \cycle_i[2]~4_combout\ : std_logic;
SIGNAL \cycle_i[1]~6_combout\ : std_logic;
SIGNAL \cycle_i[2]~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ram_address_i~0_combout\ : std_logic;
SIGNAL \current_state~12_combout\ : std_logic;
SIGNAL \burst_count_i[0]~0_combout\ : std_logic;
SIGNAL \ram_read_i~0_combout\ : std_logic;
SIGNAL \cycle_i~0_combout\ : std_logic;
SIGNAL \ram_read_i~1_combout\ : std_logic;
SIGNAL \ram_read_i~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector73~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector73~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_wait~q\ : std_logic;
SIGNAL \csr_read_i~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \csr_address_i~0_combout\ : std_logic;
SIGNAL \csr_address_i~1_combout\ : std_logic;
SIGNAL \csr_address_i~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \csr_write_i~2_combout\ : std_logic;
SIGNAL \csr_write_data_i[3]~6_combout\ : std_logic;
SIGNAL \csr_write_data_i[3]~13_combout\ : std_logic;
SIGNAL \csr_write_i~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~8_combout\ : std_logic;
SIGNAL \csr_write_data_i~8_combout\ : std_logic;
SIGNAL \csr_write_data_i[0]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~33_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector53~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector53~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector52~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector51~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector50~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector49~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector48~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector47~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector46~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector46~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~15\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector45~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~17\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector44~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~19\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector43~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~21\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector42~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~23\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector41~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~25\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector40~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~27\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~29\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~30_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~34_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~35_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~31_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~31\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~32_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~33\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~34_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~35\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~36_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~37\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~38_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~39\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~40_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~41\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~42_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~43\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~44_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~45\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~46_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~47\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~48_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~49\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add2~50_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~36_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~37_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state~32_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\ : std_logic;
SIGNAL \address[15]~input_o\ : std_logic;
SIGNAL \ram_address_i~4_combout\ : std_logic;
SIGNAL \ram_address_i[14]~2_combout\ : std_logic;
SIGNAL \address[13]~input_o\ : std_logic;
SIGNAL \ram_address_i~18_combout\ : std_logic;
SIGNAL \address[12]~input_o\ : std_logic;
SIGNAL \ram_address_i~17_combout\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \ram_address_i~14_combout\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \ram_address_i~12_combout\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \ram_address_i~11_combout\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \ram_address_i~10_combout\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \ram_address_i~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \ram_address_i~7_combout\ : std_logic;
SIGNAL \ram_address_i[2]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector102~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector102~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \ram_address_i~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector101~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector101~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector100~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector100~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector99~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector99~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector98~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector98~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector97~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector97~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \ram_address_i~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector96~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector96~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector95~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector95~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~15\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ : std_logic;
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \ram_address_i~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector94~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector94~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~17\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \ram_address_i~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector93~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector93~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~19\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector92~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector92~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~21\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector91~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector91~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~23\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ : std_logic;
SIGNAL \address[14]~input_o\ : std_logic;
SIGNAL \ram_address_i~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector90~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector90~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~25\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~27\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ : std_logic;
SIGNAL \address[16]~input_o\ : std_logic;
SIGNAL \ram_address_i~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector88~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector88~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~29\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector89~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector89~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\ : std_logic;
SIGNAL \csr_write_data_i~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector18~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector70~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector70~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector71~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector71~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector72~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ : std_logic;
SIGNAL \function3[1]~input_o\ : std_logic;
SIGNAL \function3[2]~input_o\ : std_logic;
SIGNAL \write_data[31]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~8_combout\ : std_logic;
SIGNAL \ram_write_data_i[31]~34_combout\ : std_logic;
SIGNAL \function3[0]~input_o\ : std_logic;
SIGNAL \ram_write_data_i[31]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\ : std_logic;
SIGNAL \ram_write_data_i[31]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector22~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector14~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector14~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[7]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[7]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[2]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[4]~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector9~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[7]~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~15\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~17\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector6~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~19\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~21\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~23\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector3~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~25\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~27\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~29\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~30_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ : std_logic;
SIGNAL \write_data[30]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~11_combout\ : std_logic;
SIGNAL \write_data[28]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~13_combout\ : std_logic;
SIGNAL \write_data[27]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~14_combout\ : std_logic;
SIGNAL \write_data[24]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~17_combout\ : std_logic;
SIGNAL \write_data[22]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~19_combout\ : std_logic;
SIGNAL \write_data[21]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~20_combout\ : std_logic;
SIGNAL \write_data[20]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~21_combout\ : std_logic;
SIGNAL \write_data[19]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~22_combout\ : std_logic;
SIGNAL \write_data[14]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~27_combout\ : std_logic;
SIGNAL \ram_write_i~2_combout\ : std_logic;
SIGNAL \ram_write_data_i[15]~35_combout\ : std_logic;
SIGNAL \ram_write_data_i[15]~36_combout\ : std_logic;
SIGNAL \write_data[11]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~30_combout\ : std_logic;
SIGNAL \write_data[10]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~31_combout\ : std_logic;
SIGNAL \write_data[9]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~32_combout\ : std_logic;
SIGNAL \write_data[6]~input_o\ : std_logic;
SIGNAL \ram_write_data_i[6]~feeder_combout\ : std_logic;
SIGNAL \write_data[4]~input_o\ : std_logic;
SIGNAL \ram_write_data_i[4]~feeder_combout\ : std_logic;
SIGNAL \write_data[3]~input_o\ : std_logic;
SIGNAL \write_data[0]~input_o\ : std_logic;
SIGNAL \ram_write_data_i[0]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~31_combout\ : std_logic;
SIGNAL \write_data[1]~input_o\ : std_logic;
SIGNAL \ram_write_data_i[1]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~30_combout\ : std_logic;
SIGNAL \write_data[2]~input_o\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~29_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~27_combout\ : std_logic;
SIGNAL \write_data[5]~input_o\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~25_combout\ : std_logic;
SIGNAL \write_data[7]~input_o\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~24_combout\ : std_logic;
SIGNAL \write_data[8]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~33_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~20_combout\ : std_logic;
SIGNAL \write_data[12]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~29_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~19_combout\ : std_logic;
SIGNAL \write_data[13]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~17_combout\ : std_logic;
SIGNAL \write_data[15]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~16_combout\ : std_logic;
SIGNAL \write_data[16]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~25_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~15_combout\ : std_logic;
SIGNAL \write_data[17]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~14_combout\ : std_logic;
SIGNAL \write_data[18]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~9_combout\ : std_logic;
SIGNAL \write_data[23]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~7_combout\ : std_logic;
SIGNAL \write_data[25]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~6_combout\ : std_logic;
SIGNAL \write_data[26]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~3_combout\ : std_logic;
SIGNAL \write_data[29]~input_o\ : std_logic;
SIGNAL \ram_write_data_i~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_nprogram~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_nerase~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \ram_address_i~5_combout\ : std_logic;
SIGNAL \ram_address_i[0]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector104~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \ram_address_i~6_combout\ : std_logic;
SIGNAL \ram_address_i[1]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector103~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[1]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]~2_combout\ : std_logic;
SIGNAL \csr_write_data_i~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]~5_combout\ : std_logic;
SIGNAL \csr_write_data_i~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|se_pass\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector54~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector62~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector62~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector62~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\ : std_logic;
SIGNAL \csr_write_data_i~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|busy\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector17~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector17~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector55~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|always9~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_outclk\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|din_s1~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector16~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector16~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_timeout~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|sp_pass\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector27~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector27~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1_combout\ : std_logic;
SIGNAL \csr_write_data_i~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|osc\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_outclk\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|din_s1~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector15~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add1~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector10~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector10~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_wait~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\ : std_logic;
SIGNAL \burst_count_i[0]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector109~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector65~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector66~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector81~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector77~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector63~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector64~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector111~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_PRE_READING~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector110~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector117~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector117~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ : std_logic;
SIGNAL \current_state~16_combout\ : std_logic;
SIGNAL \current_state~17_combout\ : std_logic;
SIGNAL \current_state.read_s~q\ : std_logic;
SIGNAL \current_state~13_combout\ : std_logic;
SIGNAL \cycle_i~1_combout\ : std_logic;
SIGNAL \cycle_i~2_combout\ : std_logic;
SIGNAL \cycle_i~3_combout\ : std_logic;
SIGNAL \csr_read_i~1_combout\ : std_logic;
SIGNAL \csr_read_i~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \csr_write_i~0_combout\ : std_logic;
SIGNAL \csr_write_i~1_combout\ : std_logic;
SIGNAL \current_state~14_combout\ : std_logic;
SIGNAL \current_state~15_combout\ : std_logic;
SIGNAL \current_state.idle_s~q\ : std_logic;
SIGNAL \ram_write_i~3_combout\ : std_logic;
SIGNAL \ram_write_i~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector105~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector105~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\ : std_logic;
SIGNAL \read_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[8]~2_combout\ : std_logic;
SIGNAL \read_data[8]~29_combout\ : std_logic;
SIGNAL \read_data[0]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\ : std_logic;
SIGNAL \read_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[1]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\ : std_logic;
SIGNAL \read_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[2]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\ : std_logic;
SIGNAL \read_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[3]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\ : std_logic;
SIGNAL \read_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[4]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\ : std_logic;
SIGNAL \read_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[5]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\ : std_logic;
SIGNAL \read_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[6]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\ : std_logic;
SIGNAL \read_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \read_data[7]~reg0_q\ : std_logic;
SIGNAL \read_data[15]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\ : std_logic;
SIGNAL \read_data~4_combout\ : std_logic;
SIGNAL \read_data[8]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\ : std_logic;
SIGNAL \read_data~5_combout\ : std_logic;
SIGNAL \read_data[9]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\ : std_logic;
SIGNAL \read_data~6_combout\ : std_logic;
SIGNAL \read_data[10]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\ : std_logic;
SIGNAL \read_data~7_combout\ : std_logic;
SIGNAL \read_data[11]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\ : std_logic;
SIGNAL \read_data~8_combout\ : std_logic;
SIGNAL \read_data[12]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\ : std_logic;
SIGNAL \read_data~9_combout\ : std_logic;
SIGNAL \read_data[13]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\ : std_logic;
SIGNAL \read_data~10_combout\ : std_logic;
SIGNAL \read_data[14]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\ : std_logic;
SIGNAL \read_data~11_combout\ : std_logic;
SIGNAL \read_data[15]~reg0_q\ : std_logic;
SIGNAL \read_data~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\ : std_logic;
SIGNAL \read_data~13_combout\ : std_logic;
SIGNAL \read_data[16]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\ : std_logic;
SIGNAL \read_data~14_combout\ : std_logic;
SIGNAL \read_data[17]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\ : std_logic;
SIGNAL \read_data~15_combout\ : std_logic;
SIGNAL \read_data[18]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\ : std_logic;
SIGNAL \read_data~16_combout\ : std_logic;
SIGNAL \read_data[19]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\ : std_logic;
SIGNAL \read_data~17_combout\ : std_logic;
SIGNAL \read_data[20]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\ : std_logic;
SIGNAL \read_data~18_combout\ : std_logic;
SIGNAL \read_data[21]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\ : std_logic;
SIGNAL \read_data~19_combout\ : std_logic;
SIGNAL \read_data[22]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\ : std_logic;
SIGNAL \read_data~20_combout\ : std_logic;
SIGNAL \read_data[23]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\ : std_logic;
SIGNAL \read_data~21_combout\ : std_logic;
SIGNAL \read_data[24]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\ : std_logic;
SIGNAL \read_data~22_combout\ : std_logic;
SIGNAL \read_data[25]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\ : std_logic;
SIGNAL \read_data~23_combout\ : std_logic;
SIGNAL \read_data[26]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\ : std_logic;
SIGNAL \read_data~24_combout\ : std_logic;
SIGNAL \read_data[27]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\ : std_logic;
SIGNAL \read_data~25_combout\ : std_logic;
SIGNAL \read_data[28]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\ : std_logic;
SIGNAL \read_data~26_combout\ : std_logic;
SIGNAL \read_data[29]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\ : std_logic;
SIGNAL \read_data~27_combout\ : std_logic;
SIGNAL \read_data[30]~reg0_q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\ : std_logic;
SIGNAL \read_data~28_combout\ : std_logic;
SIGNAL \read_data[31]~reg0_q\ : std_logic;
SIGNAL \waitt~reg0feeder_combout\ : std_logic;
SIGNAL \waitt~reg0_q\ : std_logic;
SIGNAL \done_i~0_combout\ : std_logic;
SIGNAL \done_i~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ram_write_data_i : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\ : std_logic_vector(1 DOWNTO 0);
SIGNAL csr_write_data_i : std_logic_vector(31 DOWNTO 0);
SIGNAL cycle_i : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL burst_count_i : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|drdout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|write_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ram_address_i : std_logic_vector(16 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|erase_count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ALT_INV_always9~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_start~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_mem_en <= mem_en;
ww_wb_en <= wb_en;
ww_start <= start;
ww_function3 <= function3;
ww_address <= address;
ww_write_data <= write_data;
read_data <= ww_read_data;
waitt <= ww_waitt;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(20) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(19) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(18) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(17) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(16) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(15) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(14) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(13) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(12) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(11) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(10) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(9) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(8) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(7) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(6) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(5) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(4) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(3) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(2) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(1) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(0));

\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(0);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(1);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(2);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(3);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(4);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(5);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(6);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(7);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(8);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(9);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(10);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(11);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(12);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(13);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(14);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(15);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(16);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(17);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(18);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(19);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(20);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(21);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(22);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(23);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(24);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(25);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(26);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(27);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(28);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(29);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(30);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(31);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \start~input_o\);

\u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u0|onchip_flash_0|avmm_data_controller|always9~0_combout\);

\u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u0|onchip_flash_0|altera_onchip_flash_block|osc\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\mem_en~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem_en~input_o\);
\u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\ <= NOT \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\u0|onchip_flash_0|avmm_data_controller|ALT_INV_always9~0clkctrl_outclk\ <= NOT \u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_outclk\;
\ALT_INV_start~inputclkctrl_outclk\ <= NOT \start~inputclkctrl_outclk\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y0_N30
\read_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\read_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\read_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\read_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\read_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\read_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\read_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\read_data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\read_data[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[8]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\read_data[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[9]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\read_data[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[10]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\read_data[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[11]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\read_data[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[12]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\read_data[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[13]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\read_data[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[14]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\read_data[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[15]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\read_data[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[16]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[16]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\read_data[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[17]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[17]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\read_data[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[18]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[18]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\read_data[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[19]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[19]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\read_data[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[20]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[20]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\read_data[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[21]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[21]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\read_data[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[22]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[22]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\read_data[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[23]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[23]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\read_data[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[24]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[24]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\read_data[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[25]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[25]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\read_data[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[26]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[26]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\read_data[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[27]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[27]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\read_data[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[28]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[28]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\read_data[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[29]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[29]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\read_data[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[30]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[30]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\read_data[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data[31]~reg0_q\,
	devoe => ww_devoe,
	o => \read_data[31]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\waitt~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \waitt~reg0_q\,
	devoe => ww_devoe,
	o => \waitt~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done_i~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X39_Y38_N28
\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~feeder_combout\);

-- Location: IOIBUF_X0_Y23_N15
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: CLKCTRL_G2
\start~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \start~inputclkctrl_outclk\);

-- Location: FF_X39_Y38_N29
\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~feeder_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~q\);

-- Location: LCCOMB_X39_Y38_N12
\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~feeder_combout\ = \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg1~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~feeder_combout\);

-- Location: FF_X39_Y38_N13
\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~feeder_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\);

-- Location: IOIBUF_X29_Y39_N15
\wb_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wb_en,
	o => \wb_en~input_o\);

-- Location: LCCOMB_X36_Y35_N10
\current_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~18_combout\ = (\current_state.idle_s~q\ & (((\current_state.write_s~q\ & !\csr_write_i~1_combout\)))) # (!\current_state.idle_s~q\ & (!\wb_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wb_en~input_o\,
	datab => \current_state.idle_s~q\,
	datac => \current_state.write_s~q\,
	datad => \csr_write_i~1_combout\,
	combout => \current_state~18_combout\);

-- Location: IOIBUF_X0_Y18_N22
\mem_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_en,
	o => \mem_en~input_o\);

-- Location: CLKCTRL_G1
\mem_en~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem_en~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem_en~inputclkctrl_outclk\);

-- Location: FF_X36_Y35_N11
\current_state.write_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~18_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.write_s~q\);

-- Location: LCCOMB_X38_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|data_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\);

-- Location: LCCOMB_X39_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) $ (((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0))))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\);

-- Location: LCCOMB_X35_Y35_N0
\csr_write_data_i[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i[3]~4_combout\ = (\current_state.idle_s~q\ & \mem_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle_s~q\,
	datac => \mem_en~input_o\,
	combout => \csr_write_data_i[3]~4_combout\);

-- Location: LCCOMB_X36_Y35_N22
\cycle_i[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i[2]~4_combout\ = (\current_state.write_s~q\ & (cycle_i(0) & !\current_state.read_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.write_s~q\,
	datac => cycle_i(0),
	datad => \current_state.read_s~q\,
	combout => \cycle_i[2]~4_combout\);

-- Location: LCCOMB_X36_Y35_N18
\cycle_i[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i[1]~6_combout\ = (\current_state.idle_s~q\ & (cycle_i(1) $ (((\cycle_i[2]~4_combout\ & !cycle_i(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cycle_i[2]~4_combout\,
	datab => \current_state.idle_s~q\,
	datac => cycle_i(1),
	datad => cycle_i(2),
	combout => \cycle_i[1]~6_combout\);

-- Location: FF_X36_Y35_N19
\cycle_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cycle_i[1]~6_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle_i(1));

-- Location: LCCOMB_X36_Y35_N28
\cycle_i[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i[2]~5_combout\ = (\current_state.idle_s~q\ & ((cycle_i(2)) # ((\cycle_i[2]~4_combout\ & cycle_i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cycle_i[2]~4_combout\,
	datab => \current_state.idle_s~q\,
	datac => cycle_i(2),
	datad => cycle_i(1),
	combout => \cycle_i[2]~5_combout\);

-- Location: FF_X36_Y35_N29
\cycle_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cycle_i[2]~5_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle_i(2));

-- Location: LCCOMB_X37_Y35_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cycle_i(2) & (!cycle_i(0) & !cycle_i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y35_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cycle_i(2) & (cycle_i(0) & cycle_i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y37_N30
\ram_address_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~0_combout\ = (\current_state.read_s~q\ & (!\Equal0~0_combout\)) # (!\current_state.read_s~q\ & (((!\Equal0~1_combout\) # (!\current_state.write_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.read_s~q\,
	datab => \Equal0~0_combout\,
	datac => \current_state.write_s~q\,
	datad => \Equal0~1_combout\,
	combout => \ram_address_i~0_combout\);

-- Location: LCCOMB_X36_Y35_N8
\current_state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~12_combout\ = (!cycle_i(1) & (!cycle_i(2) & (cycle_i(0) & \current_state.read_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle_i(1),
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => \current_state.read_s~q\,
	combout => \current_state~12_combout\);

-- Location: LCCOMB_X40_Y37_N6
\burst_count_i[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \burst_count_i[0]~0_combout\ = (!burst_count_i(0) & (((!\current_state~12_combout\) # (!\ram_address_i~0_combout\)) # (!\csr_write_data_i[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst_count_i(0),
	datab => \csr_write_data_i[3]~4_combout\,
	datac => \ram_address_i~0_combout\,
	datad => \current_state~12_combout\,
	combout => \burst_count_i[0]~0_combout\);

-- Location: LCCOMB_X36_Y35_N6
\ram_read_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_read_i~0_combout\ = (cycle_i(1)) # ((cycle_i(2)) # ((!\current_state.read_s~q\) # (!cycle_i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle_i(1),
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => \current_state.read_s~q\,
	combout => \ram_read_i~0_combout\);

-- Location: LCCOMB_X40_Y37_N14
\cycle_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i~0_combout\ = (\current_state.read_s~q\ & (\Equal0~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.read_s~q\,
	datac => \Equal0~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\,
	combout => \cycle_i~0_combout\);

-- Location: LCCOMB_X44_Y37_N2
\ram_read_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_read_i~1_combout\ = (\current_state.idle_s~q\ & ((\cycle_i~0_combout\) # ((\ram_read_i~0_combout\ & \ram_read_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_read_i~0_combout\,
	datab => \current_state.idle_s~q\,
	datac => \ram_read_i~q\,
	datad => \cycle_i~0_combout\,
	combout => \ram_read_i~1_combout\);

-- Location: FF_X44_Y37_N3
ram_read_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_read_i~1_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_read_i~q\);

-- Location: LCCOMB_X46_Y39_N8
\u0|onchip_flash_0|avmm_data_controller|Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\);

-- Location: LCCOMB_X46_Y39_N2
\u0|onchip_flash_0|avmm_data_controller|Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector73~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector73~0_combout\);

-- Location: LCCOMB_X41_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\);

-- Location: LCCOMB_X41_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|Selector73~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector73~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|Selector73~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|read_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector73~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_wait~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector73~1_combout\);

-- Location: FF_X41_Y37_N21
\u0|onchip_flash_0|avmm_data_controller|read_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector73~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_wait~q\);

-- Location: LCCOMB_X35_Y35_N18
\csr_read_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_read_i~0_combout\ = (\current_state.write_s~q\ & (\mem_en~input_o\ & !cycle_i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.write_s~q\,
	datac => \mem_en~input_o\,
	datad => cycle_i(1),
	combout => \csr_read_i~0_combout\);

-- Location: LCCOMB_X36_Y35_N20
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cycle_i(0) & !cycle_i(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cycle_i(0),
	datad => cycle_i(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y35_N28
\csr_address_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_address_i~0_combout\ = (\current_state.write_s~q\ & (\mem_en~input_o\ & ((\Equal0~2_combout\) # (\csr_write_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \current_state.write_s~q\,
	datac => \mem_en~input_o\,
	datad => \csr_write_i~1_combout\,
	combout => \csr_address_i~0_combout\);

-- Location: LCCOMB_X35_Y35_N8
\csr_address_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_address_i~1_combout\ = (\csr_address_i~0_combout\) # ((\csr_address_i~q\ & ((cycle_i(0)) # (!\csr_read_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle_i(0),
	datab => \csr_read_i~0_combout\,
	datac => \csr_address_i~q\,
	datad => \csr_address_i~0_combout\,
	combout => \csr_address_i~1_combout\);

-- Location: FF_X35_Y35_N9
csr_address_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_address_i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \csr_address_i~q\);

-- Location: LCCOMB_X37_Y35_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!cycle_i(2) & (!cycle_i(0) & cycle_i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X36_Y35_N24
\csr_write_i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_i~2_combout\ = (\Equal0~3_combout\) # ((!\Equal0~1_combout\ & ((\csr_write_i~q\) # (\csr_write_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \csr_write_i~q\,
	datad => \csr_write_i~1_combout\,
	combout => \csr_write_i~2_combout\);

-- Location: LCCOMB_X37_Y35_N24
\csr_write_data_i[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i[3]~6_combout\ = (\current_state.write_s~q\ & ((cycle_i(2)) # (cycle_i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.write_s~q\,
	datab => cycle_i(2),
	datad => cycle_i(1),
	combout => \csr_write_data_i[3]~6_combout\);

-- Location: LCCOMB_X37_Y35_N22
\csr_write_data_i[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i[3]~13_combout\ = (\mem_en~input_o\ & (\current_state.idle_s~q\ & \csr_write_data_i[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_en~input_o\,
	datac => \current_state.idle_s~q\,
	datad => \csr_write_data_i[3]~6_combout\,
	combout => \csr_write_data_i[3]~13_combout\);

-- Location: FF_X36_Y35_N25
csr_write_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_i~2_combout\,
	ena => \csr_write_data_i[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \csr_write_i~q\);

-- Location: LCCOMB_X43_Y36_N26
\u0|onchip_flash_0|avmm_data_controller|write_state~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~22_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~22_combout\);

-- Location: LCCOMB_X42_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|write_state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~15_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\ & ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~15_combout\);

-- Location: LCCOMB_X43_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|write_state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state~15_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & ((!\u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state~15_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\);

-- Location: LCCOMB_X43_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|write_state~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~23_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state~22_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\) 
-- # (!\u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state~22_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~23_combout\);

-- Location: FF_X43_Y36_N15
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\);

-- Location: LCCOMB_X39_Y35_N2
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~8_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ & (((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & 
-- !\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~8_combout\);

-- Location: FF_X39_Y35_N3
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0));

-- Location: LCCOMB_X38_Y35_N18
\csr_write_data_i~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~8_combout\ = (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	combout => \csr_write_data_i~8_combout\);

-- Location: LCCOMB_X37_Y35_N18
\csr_write_data_i[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i[0]~7_combout\ = (\csr_write_data_i[3]~4_combout\ & (\csr_write_data_i[3]~6_combout\ & ((\Equal0~3_combout\) # (\csr_write_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_write_data_i[3]~4_combout\,
	datab => \csr_write_data_i[3]~6_combout\,
	datac => \Equal0~3_combout\,
	datad => \csr_write_i~1_combout\,
	combout => \csr_write_data_i[0]~7_combout\);

-- Location: FF_X38_Y35_N19
\csr_write_data_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_data_i~8_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(10));

-- Location: LCCOMB_X38_Y35_N22
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~4_combout\ = (!csr_write_data_i(10) & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => csr_write_data_i(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~4_combout\);

-- Location: LCCOMB_X41_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|erase_state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\);

-- Location: LCCOMB_X41_Y35_N24
\u0|onchip_flash_0|avmm_data_controller|erase_state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~33_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~33_combout\);

-- Location: FF_X41_Y35_N25
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\);

-- Location: LCCOMB_X40_Y35_N20
\u0|onchip_flash_0|avmm_data_controller|erase_state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & ((\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~15_combout\);

-- Location: LCCOMB_X40_Y35_N10
\u0|onchip_flash_0|avmm_data_controller|erase_state~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~22_combout\);

-- Location: LCCOMB_X40_Y35_N0
\u0|onchip_flash_0|avmm_data_controller|erase_state~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~23_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~15_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~15_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~22_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~23_combout\);

-- Location: FF_X40_Y35_N1
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\);

-- Location: LCCOMB_X41_Y35_N18
\u0|onchip_flash_0|avmm_data_controller|erase_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\);

-- Location: LCCOMB_X41_Y35_N14
\u0|onchip_flash_0|avmm_data_controller|erase_state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~26_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~26_combout\);

-- Location: LCCOMB_X41_Y35_N8
\u0|onchip_flash_0|avmm_data_controller|erase_state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~26_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~26_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\);

-- Location: LCCOMB_X40_Y35_N2
\u0|onchip_flash_0|avmm_data_controller|erase_state~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\);

-- Location: LCCOMB_X41_Y35_N4
\u0|onchip_flash_0|avmm_data_controller|Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\ & \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\);

-- Location: LCCOMB_X41_Y33_N6
\u0|onchip_flash_0|avmm_data_controller|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|erase_count\(0) $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|Add2~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|erase_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(0),
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~1\);

-- Location: LCCOMB_X41_Y35_N0
\u0|onchip_flash_0|avmm_data_controller|Selector53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector53~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector53~2_combout\);

-- Location: LCCOMB_X40_Y35_N18
\u0|onchip_flash_0|avmm_data_controller|Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & (\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\);

-- Location: LCCOMB_X40_Y35_N26
\u0|onchip_flash_0|avmm_data_controller|Selector53~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector53~2_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector53~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\);

-- Location: LCCOMB_X40_Y33_N20
\u0|onchip_flash_0|avmm_data_controller|Selector53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector53~3_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|Add2~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector53~3_combout\);

-- Location: FF_X40_Y33_N21
\u0|onchip_flash_0|avmm_data_controller|erase_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector53~3_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(0));

-- Location: LCCOMB_X41_Y33_N8
\u0|onchip_flash_0|avmm_data_controller|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(1) & (\u0|onchip_flash_0|avmm_data_controller|Add2~1\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(1) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~1\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(1) & !\u0|onchip_flash_0|avmm_data_controller|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(1),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~3\);

-- Location: LCCOMB_X41_Y35_N20
\u0|onchip_flash_0|avmm_data_controller|Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector52~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector52~0_combout\);

-- Location: FF_X41_Y35_N21
\u0|onchip_flash_0|avmm_data_controller|erase_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector52~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(1));

-- Location: LCCOMB_X41_Y33_N10
\u0|onchip_flash_0|avmm_data_controller|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(2) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~3\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(2) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~3\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(2)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~5\);

-- Location: LCCOMB_X40_Y33_N2
\u0|onchip_flash_0|avmm_data_controller|Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector51~0_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~4_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector51~0_combout\);

-- Location: FF_X40_Y33_N3
\u0|onchip_flash_0|avmm_data_controller|erase_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector51~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(2));

-- Location: LCCOMB_X41_Y33_N12
\u0|onchip_flash_0|avmm_data_controller|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(3) & (\u0|onchip_flash_0|avmm_data_controller|Add2~5\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(3) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~5\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(3) & !\u0|onchip_flash_0|avmm_data_controller|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(3),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~7\);

-- Location: LCCOMB_X40_Y33_N24
\u0|onchip_flash_0|avmm_data_controller|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector50~0_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~6_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~6_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector53~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector50~0_combout\);

-- Location: FF_X40_Y33_N25
\u0|onchip_flash_0|avmm_data_controller|erase_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector50~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(3));

-- Location: LCCOMB_X41_Y33_N14
\u0|onchip_flash_0|avmm_data_controller|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(4) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~7\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(4) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~7\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(4)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(4),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~9\);

-- Location: LCCOMB_X40_Y33_N18
\u0|onchip_flash_0|avmm_data_controller|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector49~0_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~8_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector49~0_combout\);

-- Location: FF_X40_Y33_N19
\u0|onchip_flash_0|avmm_data_controller|erase_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector49~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(4));

-- Location: LCCOMB_X41_Y33_N16
\u0|onchip_flash_0|avmm_data_controller|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(5) & (\u0|onchip_flash_0|avmm_data_controller|Add2~9\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(5) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~9\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(5) & !\u0|onchip_flash_0|avmm_data_controller|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(5),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~11\);

-- Location: LCCOMB_X40_Y33_N0
\u0|onchip_flash_0|avmm_data_controller|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector48~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~10_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector48~0_combout\);

-- Location: FF_X40_Y33_N1
\u0|onchip_flash_0|avmm_data_controller|erase_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector48~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(5));

-- Location: LCCOMB_X41_Y33_N18
\u0|onchip_flash_0|avmm_data_controller|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(6) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~11\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(6) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~11\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(6)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(6),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~13\);

-- Location: LCCOMB_X40_Y32_N2
\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\);

-- Location: LCCOMB_X40_Y35_N16
\u0|onchip_flash_0|avmm_data_controller|erase_state~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\ & \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\);

-- Location: LCCOMB_X40_Y33_N16
\u0|onchip_flash_0|avmm_data_controller|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\);

-- Location: LCCOMB_X40_Y33_N22
\u0|onchip_flash_0|avmm_data_controller|Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector47~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add2~12_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add2~12_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector47~1_combout\);

-- Location: FF_X40_Y33_N23
\u0|onchip_flash_0|avmm_data_controller|erase_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector47~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(6));

-- Location: LCCOMB_X41_Y33_N20
\u0|onchip_flash_0|avmm_data_controller|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(7) & (\u0|onchip_flash_0|avmm_data_controller|Add2~13\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(7) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~13\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~15\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(7) & !\u0|onchip_flash_0|avmm_data_controller|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(7),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~14_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~15\);

-- Location: LCCOMB_X41_Y35_N28
\u0|onchip_flash_0|avmm_data_controller|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector46~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add2~14_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & !\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add2~14_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector46~0_combout\);

-- Location: LCCOMB_X40_Y33_N8
\u0|onchip_flash_0|avmm_data_controller|Selector46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector46~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Selector46~0_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\) # (\u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector46~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector46~1_combout\);

-- Location: FF_X40_Y33_N9
\u0|onchip_flash_0|avmm_data_controller|erase_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector46~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(7));

-- Location: LCCOMB_X41_Y33_N22
\u0|onchip_flash_0|avmm_data_controller|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(8) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~15\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(8) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~15\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~17\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(8)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(8),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~15\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~16_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~17\);

-- Location: LCCOMB_X40_Y33_N10
\u0|onchip_flash_0|avmm_data_controller|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector45~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add2~16_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~16_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector45~0_combout\);

-- Location: FF_X40_Y33_N11
\u0|onchip_flash_0|avmm_data_controller|erase_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector45~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(8));

-- Location: LCCOMB_X41_Y33_N24
\u0|onchip_flash_0|avmm_data_controller|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(9) & (\u0|onchip_flash_0|avmm_data_controller|Add2~17\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(9) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~17\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~19\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(9) & !\u0|onchip_flash_0|avmm_data_controller|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(9),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~19\);

-- Location: LCCOMB_X40_Y33_N12
\u0|onchip_flash_0|avmm_data_controller|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector44~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~18_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector44~0_combout\);

-- Location: FF_X40_Y33_N13
\u0|onchip_flash_0|avmm_data_controller|erase_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector44~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(9));

-- Location: LCCOMB_X41_Y33_N26
\u0|onchip_flash_0|avmm_data_controller|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(10) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~19\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(10) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~19\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~21\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~20_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~21\);

-- Location: LCCOMB_X40_Y33_N6
\u0|onchip_flash_0|avmm_data_controller|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector43~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~20_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector43~0_combout\);

-- Location: FF_X40_Y33_N7
\u0|onchip_flash_0|avmm_data_controller|erase_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector43~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(10));

-- Location: LCCOMB_X41_Y33_N28
\u0|onchip_flash_0|avmm_data_controller|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(11) & (\u0|onchip_flash_0|avmm_data_controller|Add2~21\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(11) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~21\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~23\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(11) & !\u0|onchip_flash_0|avmm_data_controller|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(11),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~21\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~22_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~23\);

-- Location: LCCOMB_X40_Y33_N4
\u0|onchip_flash_0|avmm_data_controller|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector42~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~22_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector42~0_combout\);

-- Location: FF_X40_Y33_N5
\u0|onchip_flash_0|avmm_data_controller|erase_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector42~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(11));

-- Location: LCCOMB_X41_Y33_N30
\u0|onchip_flash_0|avmm_data_controller|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(12) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~23\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(12) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~23\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~25\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(12)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(12),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~23\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~24_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~25\);

-- Location: LCCOMB_X40_Y33_N28
\u0|onchip_flash_0|avmm_data_controller|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector41~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add2~24_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~24_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector41~0_combout\);

-- Location: FF_X40_Y33_N29
\u0|onchip_flash_0|avmm_data_controller|erase_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector41~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(12));

-- Location: LCCOMB_X41_Y32_N0
\u0|onchip_flash_0|avmm_data_controller|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(13) & (\u0|onchip_flash_0|avmm_data_controller|Add2~25\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(13) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~25\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~27\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(13) & !\u0|onchip_flash_0|avmm_data_controller|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(13),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~25\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~26_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~27\);

-- Location: LCCOMB_X40_Y32_N0
\u0|onchip_flash_0|avmm_data_controller|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector40~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add2~26_combout\ 
-- & !\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~26_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector40~0_combout\);

-- Location: FF_X40_Y32_N1
\u0|onchip_flash_0|avmm_data_controller|erase_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector40~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(13));

-- Location: LCCOMB_X41_Y32_N2
\u0|onchip_flash_0|avmm_data_controller|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(14) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~27\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(14) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~27\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~29\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(14)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(14),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~27\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~28_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~29\);

-- Location: LCCOMB_X40_Y32_N6
\u0|onchip_flash_0|avmm_data_controller|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add2~28_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ 
-- & !\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\);

-- Location: FF_X40_Y32_N7
\u0|onchip_flash_0|avmm_data_controller|erase_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(14));

-- Location: LCCOMB_X41_Y32_N4
\u0|onchip_flash_0|avmm_data_controller|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~30_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(15) & (\u0|onchip_flash_0|avmm_data_controller|Add2~29\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(15) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~29\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~31\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(15) & !\u0|onchip_flash_0|avmm_data_controller|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(15),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~29\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~30_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~31\);

-- Location: LCCOMB_X40_Y32_N24
\u0|onchip_flash_0|avmm_data_controller|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add2~30_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\);

-- Location: FF_X40_Y32_N25
\u0|onchip_flash_0|avmm_data_controller|erase_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(15));

-- Location: LCCOMB_X40_Y33_N14
\u0|onchip_flash_0|avmm_data_controller|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~3_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(14) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(12) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(15) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(14),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(12),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(15),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(13),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~3_combout\);

-- Location: LCCOMB_X41_Y33_N2
\u0|onchip_flash_0|avmm_data_controller|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~1_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(7) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(4) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(5) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(7),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~1_combout\);

-- Location: LCCOMB_X40_Y33_N26
\u0|onchip_flash_0|avmm_data_controller|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(8) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(11) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(9) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(8),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(11),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(9),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~2_combout\);

-- Location: LCCOMB_X41_Y33_N0
\u0|onchip_flash_0|avmm_data_controller|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(2) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(0) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(3) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~0_combout\);

-- Location: LCCOMB_X41_Y33_N4
\u0|onchip_flash_0|avmm_data_controller|Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal5~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal5~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal5~2_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal5~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal5~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\);

-- Location: LCCOMB_X41_Y35_N10
\u0|onchip_flash_0|avmm_data_controller|erase_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~34_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~34_combout\);

-- Location: LCCOMB_X41_Y35_N2
\u0|onchip_flash_0|avmm_data_controller|erase_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~35_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~34_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~35_combout\);

-- Location: FF_X41_Y35_N3
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\);

-- Location: LCCOMB_X41_Y35_N30
\u0|onchip_flash_0|avmm_data_controller|erase_state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\);

-- Location: LCCOMB_X41_Y35_N6
\u0|onchip_flash_0|avmm_data_controller|erase_state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~29_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~27_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~8_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\);

-- Location: LCCOMB_X40_Y35_N30
\u0|onchip_flash_0|avmm_data_controller|erase_state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~31_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~24_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~31_combout\);

-- Location: FF_X40_Y35_N31
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\);

-- Location: LCCOMB_X40_Y35_N24
\u0|onchip_flash_0|avmm_data_controller|erase_state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0) & (((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0) & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\);

-- Location: LCCOMB_X41_Y35_N26
\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~28_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\);

-- Location: LCCOMB_X41_Y32_N6
\u0|onchip_flash_0|avmm_data_controller|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~32_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(16) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~31\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(16) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~31\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~33\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(16)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(16),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~31\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~32_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~33\);

-- Location: LCCOMB_X40_Y32_N14
\u0|onchip_flash_0|avmm_data_controller|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add2~32_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~32_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\);

-- Location: FF_X40_Y32_N15
\u0|onchip_flash_0|avmm_data_controller|erase_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(16));

-- Location: LCCOMB_X41_Y32_N8
\u0|onchip_flash_0|avmm_data_controller|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~34_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(17) & (\u0|onchip_flash_0|avmm_data_controller|Add2~33\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(17) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~33\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~35\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(17) & !\u0|onchip_flash_0|avmm_data_controller|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(17),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~33\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~34_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~35\);

-- Location: LCCOMB_X40_Y32_N16
\u0|onchip_flash_0|avmm_data_controller|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~34_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\);

-- Location: FF_X40_Y32_N17
\u0|onchip_flash_0|avmm_data_controller|erase_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(17));

-- Location: LCCOMB_X41_Y32_N10
\u0|onchip_flash_0|avmm_data_controller|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~36_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(18) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~35\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(18) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~35\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~37\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(18)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(18),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~35\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~36_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~37\);

-- Location: LCCOMB_X40_Y32_N22
\u0|onchip_flash_0|avmm_data_controller|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add2~36_combout\ 
-- & !\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~36_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\);

-- Location: FF_X40_Y32_N23
\u0|onchip_flash_0|avmm_data_controller|erase_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(18));

-- Location: LCCOMB_X41_Y32_N12
\u0|onchip_flash_0|avmm_data_controller|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~38_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(19) & (\u0|onchip_flash_0|avmm_data_controller|Add2~37\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(19) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~37\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~39\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(19) & !\u0|onchip_flash_0|avmm_data_controller|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(19),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~37\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~38_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~39\);

-- Location: LCCOMB_X40_Y32_N4
\u0|onchip_flash_0|avmm_data_controller|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~38_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\);

-- Location: FF_X40_Y32_N5
\u0|onchip_flash_0|avmm_data_controller|erase_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(19));

-- Location: LCCOMB_X41_Y32_N14
\u0|onchip_flash_0|avmm_data_controller|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~40_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(20) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~39\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(20) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~39\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~41\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(20)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(20),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~39\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~40_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~41\);

-- Location: LCCOMB_X40_Y32_N10
\u0|onchip_flash_0|avmm_data_controller|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add2~40_combout\ 
-- & !\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~40_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\);

-- Location: FF_X40_Y32_N11
\u0|onchip_flash_0|avmm_data_controller|erase_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(20));

-- Location: LCCOMB_X41_Y32_N16
\u0|onchip_flash_0|avmm_data_controller|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~42_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(21) & (\u0|onchip_flash_0|avmm_data_controller|Add2~41\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(21) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~41\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~43\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(21) & !\u0|onchip_flash_0|avmm_data_controller|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(21),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~41\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~42_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~43\);

-- Location: LCCOMB_X40_Y32_N28
\u0|onchip_flash_0|avmm_data_controller|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~42_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\);

-- Location: FF_X40_Y32_N29
\u0|onchip_flash_0|avmm_data_controller|erase_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(21));

-- Location: LCCOMB_X41_Y32_N18
\u0|onchip_flash_0|avmm_data_controller|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~44_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(22) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~43\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(22) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~43\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~45\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(22)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(22),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~43\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~44_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~45\);

-- Location: LCCOMB_X40_Y32_N18
\u0|onchip_flash_0|avmm_data_controller|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add2~44_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add2~44_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\);

-- Location: FF_X40_Y32_N19
\u0|onchip_flash_0|avmm_data_controller|erase_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(22));

-- Location: LCCOMB_X41_Y32_N20
\u0|onchip_flash_0|avmm_data_controller|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~46_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(23) & (\u0|onchip_flash_0|avmm_data_controller|Add2~45\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(23) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add2~45\))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~47\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|erase_count\(23) & !\u0|onchip_flash_0|avmm_data_controller|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(23),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~45\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~46_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~47\);

-- Location: LCCOMB_X40_Y32_N20
\u0|onchip_flash_0|avmm_data_controller|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add2~46_combout\ 
-- & !\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~46_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\);

-- Location: FF_X40_Y32_N21
\u0|onchip_flash_0|avmm_data_controller|erase_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(23));

-- Location: LCCOMB_X41_Y32_N22
\u0|onchip_flash_0|avmm_data_controller|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~48_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count\(24) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~47\))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(24) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add2~47\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add2~49\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|erase_count\(24)) # (!\u0|onchip_flash_0|avmm_data_controller|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(24),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~47\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~48_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add2~49\);

-- Location: LCCOMB_X40_Y32_N26
\u0|onchip_flash_0|avmm_data_controller|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~25_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add2~48_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\);

-- Location: FF_X40_Y32_N27
\u0|onchip_flash_0|avmm_data_controller|erase_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(24));

-- Location: LCCOMB_X41_Y32_N28
\u0|onchip_flash_0|avmm_data_controller|Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~6_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(20) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(22) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(23) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(20),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(22),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(23),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(21),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~6_combout\);

-- Location: LCCOMB_X41_Y32_N30
\u0|onchip_flash_0|avmm_data_controller|Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~5_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(16) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(19) & (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(17) & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(16),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count\(19),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_count\(17),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(18),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~5_combout\);

-- Location: LCCOMB_X41_Y32_N24
\u0|onchip_flash_0|avmm_data_controller|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add2~50_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add2~49\ $ (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(25),
	cin => \u0|onchip_flash_0|avmm_data_controller|Add2~49\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add2~50_combout\);

-- Location: LCCOMB_X40_Y32_N12
\u0|onchip_flash_0|avmm_data_controller|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[23]~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add2~50_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector47~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\);

-- Location: FF_X40_Y32_N13
\u0|onchip_flash_0|avmm_data_controller|erase_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_count\(25));

-- Location: LCCOMB_X41_Y32_N26
\u0|onchip_flash_0|avmm_data_controller|Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_count\(24) & (\u0|onchip_flash_0|avmm_data_controller|Equal5~6_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal5~5_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count\(24),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal5~6_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_count\(25),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\);

-- Location: LCCOMB_X40_Y35_N28
\u0|onchip_flash_0|avmm_data_controller|erase_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\) # (((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~20_combout\);

-- Location: LCCOMB_X40_Y35_N6
\u0|onchip_flash_0|avmm_data_controller|erase_state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & (\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & (((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~16_combout\);

-- Location: LCCOMB_X41_Y35_N22
\u0|onchip_flash_0|avmm_data_controller|erase_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~16_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~16_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~18_combout\);

-- Location: LCCOMB_X41_Y35_N16
\u0|onchip_flash_0|avmm_data_controller|erase_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~18_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state~20_combout\ & \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~20_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~18_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\);

-- Location: LCCOMB_X40_Y35_N12
\u0|onchip_flash_0|avmm_data_controller|erase_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~36_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\ & !\u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~21_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~36_combout\);

-- Location: LCCOMB_X40_Y38_N30
\u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1)) # 
-- ((!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0)) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2_combout\);

-- Location: LCCOMB_X40_Y35_N8
\u0|onchip_flash_0|avmm_data_controller|erase_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~37_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~36_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\ & 
-- (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & !\u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~36_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|is_erase_addr_writable~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~37_combout\);

-- Location: FF_X40_Y35_N9
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\);

-- Location: LCCOMB_X40_Y35_N14
\u0|onchip_flash_0|avmm_data_controller|erase_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\ & !\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\);

-- Location: LCCOMB_X41_Y35_N12
\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal5~7_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal5~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\);

-- Location: LCCOMB_X44_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|erase_state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|erase_state~32_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\ & (\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~2_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~30_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|erase_state~32_combout\);

-- Location: FF_X44_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|erase_state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\);

-- Location: LCCOMB_X39_Y35_N26
\u0|onchip_flash_0|avmm_data_controller|csr_status_busy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~0_combout\);

-- Location: FF_X39_Y35_N27
\u0|onchip_flash_0|avmm_data_controller|csr_status_busy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1));

-- Location: LCCOMB_X39_Y35_N28
\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\ = (\csr_address_i~q\ & \csr_write_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_address_i~q\,
	datad => \csr_write_i~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\);

-- Location: LCCOMB_X39_Y35_N24
\u0|onchip_flash_0|avmm_data_controller|csr_status_busy~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~1_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~1_combout\);

-- Location: FF_X39_Y35_N25
\u0|onchip_flash_0|avmm_data_controller|csr_status_busy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0));

-- Location: LCCOMB_X39_Y35_N10
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\ = ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1) & (\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0)))) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\);

-- Location: FF_X38_Y35_N23
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~4_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10));

-- Location: IOIBUF_X78_Y36_N23
\address[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(15),
	o => \address[15]~input_o\);

-- Location: LCCOMB_X40_Y36_N14
\ram_address_i~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~4_combout\ = (!\ram_address_i~0_combout\ & !\address[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[15]~input_o\,
	combout => \ram_address_i~4_combout\);

-- Location: LCCOMB_X40_Y37_N0
\ram_address_i[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i[14]~2_combout\ = (\csr_write_data_i[3]~4_combout\ & ((\ram_address_i~0_combout\ & (\current_state~12_combout\)) # (!\ram_address_i~0_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~12_combout\,
	datab => \csr_write_data_i[3]~4_combout\,
	datac => \ram_address_i~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\,
	combout => \ram_address_i[14]~2_combout\);

-- Location: FF_X40_Y36_N15
\ram_address_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~4_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(15));

-- Location: IOIBUF_X34_Y39_N15
\address[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(13),
	o => \address[13]~input_o\);

-- Location: LCCOMB_X39_Y36_N12
\ram_address_i~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~18_combout\ = (!\ram_address_i~0_combout\ & \address[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[13]~input_o\,
	combout => \ram_address_i~18_combout\);

-- Location: FF_X39_Y36_N13
\ram_address_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~18_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(13));

-- Location: IOIBUF_X31_Y39_N22
\address[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(12),
	o => \address[12]~input_o\);

-- Location: LCCOMB_X39_Y36_N0
\ram_address_i~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~17_combout\ = (!\ram_address_i~0_combout\ & \address[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[12]~input_o\,
	combout => \ram_address_i~17_combout\);

-- Location: FF_X39_Y36_N1
\ram_address_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~17_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(12));

-- Location: IOIBUF_X0_Y36_N8
\address[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: LCCOMB_X40_Y36_N10
\ram_address_i~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~14_combout\ = (!\ram_address_i~0_combout\ & \address[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[9]~input_o\,
	combout => \ram_address_i~14_combout\);

-- Location: FF_X40_Y36_N11
\ram_address_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~14_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(9));

-- Location: IOIBUF_X24_Y39_N22
\address[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: LCCOMB_X36_Y37_N30
\ram_address_i~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~12_combout\ = (\address[7]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~12_combout\);

-- Location: FF_X36_Y37_N31
\ram_address_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~12_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(7));

-- Location: IOIBUF_X0_Y36_N15
\address[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: LCCOMB_X35_Y36_N12
\ram_address_i~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~11_combout\ = (\address[6]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[6]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~11_combout\);

-- Location: FF_X39_Y36_N19
\ram_address_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_address_i~11_combout\,
	sload => VCC,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(6));

-- Location: IOIBUF_X24_Y39_N29
\address[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: LCCOMB_X35_Y37_N30
\ram_address_i~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~10_combout\ = (!\ram_address_i~0_combout\ & \address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_address_i~0_combout\,
	datac => \address[5]~input_o\,
	combout => \ram_address_i~10_combout\);

-- Location: FF_X35_Y37_N31
\ram_address_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~10_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(5));

-- Location: IOIBUF_X29_Y39_N1
\address[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: LCCOMB_X35_Y37_N16
\ram_address_i~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~9_combout\ = (\address[4]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datac => \ram_address_i~0_combout\,
	combout => \ram_address_i~9_combout\);

-- Location: FF_X35_Y37_N17
\ram_address_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~9_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(4));

-- Location: LCCOMB_X36_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2) $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|Add0~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~1\);

-- Location: IOIBUF_X34_Y39_N29
\address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X38_Y36_N12
\ram_address_i~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~7_combout\ = (\address[2]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[2]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~7_combout\);

-- Location: LCCOMB_X39_Y36_N30
\ram_address_i[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i[2]~feeder_combout\ = \ram_address_i~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_address_i~7_combout\,
	combout => \ram_address_i[2]~feeder_combout\);

-- Location: FF_X39_Y36_N31
\ram_address_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i[2]~feeder_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(2));

-- Location: LCCOMB_X37_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector102~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\,
	datad => ram_address_i(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector102~0_combout\);

-- Location: LCCOMB_X36_Y36_N26
\u0|onchip_flash_0|avmm_data_controller|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~25\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~27\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~25\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~27\);

-- Location: LCCOMB_X40_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\);

-- Location: LCCOMB_X37_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|Selector102~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector102~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector102~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector102~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector102~1_combout\);

-- Location: LCCOMB_X38_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\);

-- Location: FF_X37_Y36_N11
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector102~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2));

-- Location: LCCOMB_X36_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~1\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~3\);

-- Location: IOIBUF_X38_Y0_N8
\address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X38_Y36_N26
\ram_address_i~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~8_combout\ = (\address[3]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[3]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~8_combout\);

-- Location: FF_X39_Y36_N17
\ram_address_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_address_i~8_combout\,
	sload => VCC,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(3));

-- Location: LCCOMB_X38_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector101~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => ram_address_i(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector101~0_combout\);

-- Location: LCCOMB_X37_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|Selector101~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector101~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector101~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector101~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector101~1_combout\);

-- Location: FF_X37_Y36_N25
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector101~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3));

-- Location: LCCOMB_X36_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & (\u0|onchip_flash_0|avmm_data_controller|Add0~3\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~3\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & !\u0|onchip_flash_0|avmm_data_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~5\);

-- Location: LCCOMB_X35_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector100~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_address_i(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector100~0_combout\);

-- Location: LCCOMB_X37_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|Selector100~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector100~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector100~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector100~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector100~1_combout\);

-- Location: FF_X37_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector100~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4));

-- Location: LCCOMB_X36_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~5\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~7\);

-- Location: LCCOMB_X35_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector99~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => ram_address_i(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector99~0_combout\);

-- Location: LCCOMB_X37_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|Selector99~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector99~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector99~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector99~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector99~1_combout\);

-- Location: FF_X37_Y36_N17
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector99~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5));

-- Location: LCCOMB_X36_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & (\u0|onchip_flash_0|avmm_data_controller|Add0~7\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~7\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & !\u0|onchip_flash_0|avmm_data_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~9\);

-- Location: LCCOMB_X37_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector98~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => ram_address_i(6),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector98~0_combout\);

-- Location: LCCOMB_X37_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|Selector98~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector98~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector98~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector98~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector98~1_combout\);

-- Location: FF_X37_Y36_N19
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector98~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6));

-- Location: LCCOMB_X36_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~9\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~11\);

-- Location: LCCOMB_X37_Y36_N26
\u0|onchip_flash_0|avmm_data_controller|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector97~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => ram_address_i(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector97~0_combout\);

-- Location: LCCOMB_X37_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector97~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector97~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector97~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector97~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector97~1_combout\);

-- Location: FF_X37_Y36_N21
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector97~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7));

-- Location: LCCOMB_X36_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8) & (\u0|onchip_flash_0|avmm_data_controller|Add0~11\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8) 
-- & (!\u0|onchip_flash_0|avmm_data_controller|Add0~11\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8) & !\u0|onchip_flash_0|avmm_data_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~13\);

-- Location: IOIBUF_X38_Y0_N22
\address[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: LCCOMB_X39_Y36_N28
\ram_address_i~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~13_combout\ = (!\ram_address_i~0_combout\ & \address[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[8]~input_o\,
	combout => \ram_address_i~13_combout\);

-- Location: FF_X39_Y36_N29
\ram_address_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~13_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(8));

-- Location: LCCOMB_X37_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector96~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => ram_address_i(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector96~0_combout\);

-- Location: LCCOMB_X37_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|Selector96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector96~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector96~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector96~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector96~1_combout\);

-- Location: FF_X37_Y36_N3
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector96~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8));

-- Location: LCCOMB_X36_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~13\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~13\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~15\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~13\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~15\);

-- Location: LCCOMB_X37_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector95~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => ram_address_i(9),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector95~0_combout\);

-- Location: LCCOMB_X37_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|Selector95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector95~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector95~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector95~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector95~1_combout\);

-- Location: FF_X37_Y36_N29
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector95~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9));

-- Location: LCCOMB_X36_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & (\u0|onchip_flash_0|avmm_data_controller|Add0~15\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~15\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~17\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & !\u0|onchip_flash_0|avmm_data_controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~15\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~17\);

-- Location: IOIBUF_X34_Y39_N8
\address[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: LCCOMB_X38_Y36_N16
\ram_address_i~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~15_combout\ = (\address[10]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[10]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~15_combout\);

-- Location: FF_X39_Y36_N27
\ram_address_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_address_i~15_combout\,
	sload => VCC,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(10));

-- Location: LCCOMB_X37_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector94~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	datad => ram_address_i(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector94~0_combout\);

-- Location: LCCOMB_X37_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|Selector94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector94~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector94~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector94~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector94~1_combout\);

-- Location: FF_X37_Y36_N31
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector94~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10));

-- Location: LCCOMB_X36_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~17\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~19\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~19\);

-- Location: IOIBUF_X31_Y39_N29
\address[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: LCCOMB_X39_Y36_N4
\ram_address_i~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~16_combout\ = (!\ram_address_i~0_combout\ & \address[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[11]~input_o\,
	combout => \ram_address_i~16_combout\);

-- Location: FF_X39_Y36_N5
\ram_address_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~16_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(11));

-- Location: LCCOMB_X39_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector93~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	datac => ram_address_i(11),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector93~0_combout\);

-- Location: LCCOMB_X39_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|Selector93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector93~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector93~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector93~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector93~1_combout\);

-- Location: FF_X39_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector93~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11));

-- Location: LCCOMB_X36_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12) & (\u0|onchip_flash_0|avmm_data_controller|Add0~19\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~19\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~21\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12) & !\u0|onchip_flash_0|avmm_data_controller|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~21\);

-- Location: LCCOMB_X38_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector92~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_address_i(12),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector92~0_combout\);

-- Location: LCCOMB_X37_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|Selector92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector92~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector92~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector92~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector92~1_combout\);

-- Location: FF_X37_Y36_N1
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector92~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12));

-- Location: LCCOMB_X36_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~21\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~21\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~23\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~21\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~21\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~23\);

-- Location: LCCOMB_X39_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector91~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(13),
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector91~0_combout\);

-- Location: LCCOMB_X39_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|Selector91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector91~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector91~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector91~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector91~1_combout\);

-- Location: FF_X39_Y36_N25
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector91~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13));

-- Location: LCCOMB_X36_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & (\u0|onchip_flash_0|avmm_data_controller|Add0~23\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~23\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~25\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & !\u0|onchip_flash_0|avmm_data_controller|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~23\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~25\);

-- Location: IOIBUF_X40_Y0_N29
\address[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(14),
	o => \address[14]~input_o\);

-- Location: LCCOMB_X40_Y36_N4
\ram_address_i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~3_combout\ = (!\ram_address_i~0_combout\ & \address[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_address_i~0_combout\,
	datad => \address[14]~input_o\,
	combout => \ram_address_i~3_combout\);

-- Location: FF_X40_Y36_N5
\ram_address_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~3_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(14));

-- Location: LCCOMB_X40_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector90~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datab => ram_address_i(14),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector90~0_combout\);

-- Location: LCCOMB_X40_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|Selector90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector90~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector90~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector90~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector90~1_combout\);

-- Location: FF_X40_Y36_N3
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector90~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14));

-- Location: LCCOMB_X36_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16) & (\u0|onchip_flash_0|avmm_data_controller|Add0~27\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~27\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~29\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16) & !\u0|onchip_flash_0|avmm_data_controller|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~27\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~29\);

-- Location: IOIBUF_X78_Y36_N1
\address[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(16),
	o => \address[16]~input_o\);

-- Location: LCCOMB_X40_Y36_N26
\ram_address_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~1_combout\ = (!\ram_address_i~0_combout\ & (\address[16]~input_o\ $ (\address[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[16]~input_o\,
	datac => \ram_address_i~0_combout\,
	datad => \address[15]~input_o\,
	combout => \ram_address_i~1_combout\);

-- Location: FF_X40_Y36_N27
\ram_address_i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i~1_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(16));

-- Location: LCCOMB_X40_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector88~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((ram_address_i(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datac => ram_address_i(16),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector88~0_combout\);

-- Location: LCCOMB_X40_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|Selector88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector88~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector88~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector88~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector88~1_combout\);

-- Location: FF_X40_Y36_N1
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector88~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16));

-- Location: LCCOMB_X36_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add0~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~29\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\);

-- Location: LCCOMB_X40_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector89~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (ram_address_i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => ram_address_i(15),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector89~0_combout\);

-- Location: LCCOMB_X40_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|Selector89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector89~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector89~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector89~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector89~1_combout\);

-- Location: FF_X40_Y36_N17
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector89~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15));

-- Location: LCCOMB_X40_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_address_i(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\);

-- Location: LCCOMB_X40_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~10_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\);

-- Location: LCCOMB_X40_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => ram_address_i(14),
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\);

-- Location: LCCOMB_X40_Y38_N26
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~9_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\);

-- Location: LCCOMB_X38_Y35_N10
\csr_write_data_i~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~12_combout\ = (!\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0)) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0),
	combout => \csr_write_data_i~12_combout\);

-- Location: FF_X38_Y35_N11
\csr_write_data_i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_data_i~12_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(23));

-- Location: LCCOMB_X39_Y35_N8
\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~1_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\ & (!csr_write_data_i(23))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => csr_write_data_i(23),
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~0_combout\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~1_combout\);

-- Location: FF_X39_Y35_N9
\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0));

-- Location: LCCOMB_X39_Y35_N22
\u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0) & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_wp_mode\(0),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~0_combout\);

-- Location: FF_X39_Y35_N23
\u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~q\);

-- Location: LCCOMB_X40_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(16),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\);

-- Location: LCCOMB_X39_Y38_N14
\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & ((!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|is_sector1_writable_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0_combout\);

-- Location: LCCOMB_X40_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\);

-- Location: LCCOMB_X43_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\ = (!burst_count_i(0) & (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst_count_i(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\);

-- Location: LCCOMB_X43_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~feeder_combout\);

-- Location: LCCOMB_X43_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|write_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~21_combout\ = (((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~21_combout\);

-- Location: FF_X43_Y36_N7
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~feeder_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\);

-- Location: LCCOMB_X41_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector18~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & (((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector18~0_combout\);

-- Location: FF_X41_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector18~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\);

-- Location: LCCOMB_X41_Y37_N10
\u0|onchip_flash_0|avmm_data_controller|Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector70~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector70~0_combout\);

-- Location: LCCOMB_X41_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|Selector70~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector70~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector70~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ & \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector70~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector70~1_combout\);

-- Location: FF_X41_Y37_N31
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector70~1_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\);

-- Location: LCCOMB_X41_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|write_drclk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & ((\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & (((\u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~0_combout\);

-- Location: FF_X41_Y36_N19
\u0|onchip_flash_0|avmm_data_controller|write_drclk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\);

-- Location: LCCOMB_X44_Y41_N10
\u0|onchip_flash_0|avmm_data_controller|Selector71~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector71~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector71~3_combout\);

-- Location: LCCOMB_X44_Y41_N6
\u0|onchip_flash_0|avmm_data_controller|Selector71~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector71~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\) # ((\u0|onchip_flash_0|avmm_data_controller|Selector71~3_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector71~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector71~2_combout\);

-- Location: FF_X44_Y41_N7
\u0|onchip_flash_0|avmm_data_controller|read_drclk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector71~2_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\);

-- Location: LCCOMB_X41_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_drclk_en~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\);

-- Location: FF_X41_Y36_N1
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\);

-- Location: LCCOMB_X41_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|flash_drclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ = (\clk~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_write_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\);

-- Location: LCCOMB_X44_Y41_N12
\u0|onchip_flash_0|avmm_data_controller|Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector72~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector72~0_combout\);

-- Location: FF_X44_Y41_N13
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector72~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\);

-- Location: LCCOMB_X44_Y41_N0
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\);

-- Location: FF_X44_Y41_N1
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\);

-- Location: LCCOMB_X44_Y41_N28
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\);

-- Location: IOIBUF_X36_Y39_N22
\function3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_function3(1),
	o => \function3[1]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\function3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_function3(2),
	o => \function3[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\write_data[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(31),
	o => \write_data[31]~input_o\);

-- Location: LCCOMB_X45_Y37_N4
\ram_write_data_i~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~8_combout\ = (\write_data[31]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[2]~input_o\,
	datad => \write_data[31]~input_o\,
	combout => \ram_write_data_i~8_combout\);

-- Location: LCCOMB_X40_Y37_N22
\ram_write_data_i[31]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[31]~34_combout\ = (\current_state.write_s~q\ & (\current_state.idle_s~q\ & (!\function3[2]~input_o\ & \mem_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.write_s~q\,
	datab => \current_state.idle_s~q\,
	datac => \function3[2]~input_o\,
	datad => \mem_en~input_o\,
	combout => \ram_write_data_i[31]~34_combout\);

-- Location: IOIBUF_X26_Y39_N29
\function3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_function3(0),
	o => \function3[0]~input_o\);

-- Location: LCCOMB_X40_Y37_N16
\ram_write_data_i[31]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[31]~9_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & (\Equal0~1_combout\ & ((!\function3[0]~input_o\) # (!\function3[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datac => \function3[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \ram_write_data_i[31]~9_combout\);

-- Location: LCCOMB_X40_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|write_wait_neg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~0_combout\);

-- Location: FF_X40_Y37_N29
\u0|onchip_flash_0|avmm_data_controller|write_wait_neg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\);

-- Location: LCCOMB_X40_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\ = (!\start~input_o\ & (!\u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\) # (!\ram_write_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \start~input_o\,
	datac => \ram_write_i~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\);

-- Location: LCCOMB_X44_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|read_wait_neg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_wait~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|read_wait~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~0_combout\);

-- Location: FF_X44_Y37_N1
\u0|onchip_flash_0|avmm_data_controller|read_wait_neg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\);

-- Location: LCCOMB_X44_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_wait~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\))) # (!\ram_read_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_read_i~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_wait~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\);

-- Location: LCCOMB_X40_Y37_N18
\ram_write_data_i[31]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[31]~10_combout\ = (\ram_write_data_i[31]~34_combout\ & (\ram_write_data_i[31]~9_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\ & \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_write_data_i[31]~34_combout\,
	datab => \ram_write_data_i[31]~9_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\,
	combout => \ram_write_data_i[31]~10_combout\);

-- Location: FF_X46_Y37_N25
\ram_write_data_i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_write_data_i~8_combout\,
	sload => VCC,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(31));

-- Location: LCCOMB_X43_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector22~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector22~0_combout\);

-- Location: FF_X43_Y36_N21
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector22~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\);

-- Location: LCCOMB_X44_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\);

-- Location: LCCOMB_X44_Y38_N0
\u0|onchip_flash_0|avmm_data_controller|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\) # (\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\);

-- Location: FF_X44_Y38_N1
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\);

-- Location: LCCOMB_X43_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\ & ((burst_count_i(0)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst_count_i(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|access_address_write_protection_checker|is_addr_writable~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\);

-- Location: FF_X43_Y36_N19
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\);

-- Location: LCCOMB_X41_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|write_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\);

-- Location: LCCOMB_X41_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|write_count[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\ & ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\);

-- Location: LCCOMB_X41_Y34_N0
\u0|onchip_flash_0|avmm_data_controller|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|write_count\(0) $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|Add1~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|write_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(0),
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~1\);

-- Location: LCCOMB_X41_Y34_N2
\u0|onchip_flash_0|avmm_data_controller|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(1) & (\u0|onchip_flash_0|avmm_data_controller|Add1~1\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(1) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~1\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(1) & !\u0|onchip_flash_0|avmm_data_controller|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(1),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~3\);

-- Location: LCCOMB_X42_Y38_N8
\u0|onchip_flash_0|avmm_data_controller|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector14~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector14~2_combout\);

-- Location: LCCOMB_X42_Y34_N0
\u0|onchip_flash_0|avmm_data_controller|Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector14~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add1~2_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Selector14~2_combout\) 
-- # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~2_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector14~2_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector14~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector14~3_combout\);

-- Location: FF_X42_Y34_N1
\u0|onchip_flash_0|avmm_data_controller|write_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector14~3_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(1));

-- Location: LCCOMB_X41_Y34_N4
\u0|onchip_flash_0|avmm_data_controller|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(2) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~3\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(2) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~3\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(2)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~5\);

-- Location: LCCOMB_X42_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|write_count[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[7]~0_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\) # ((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0) & 
-- \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~0_combout\);

-- Location: LCCOMB_X42_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|write_count[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[7]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[7]~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~1_combout\);

-- Location: LCCOMB_X42_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[7]~1_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\);

-- Location: LCCOMB_X41_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|write_count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\);

-- Location: LCCOMB_X41_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|write_count[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[2]~6_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\)))) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_count\(2)) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\ & \u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~6_combout\);

-- Location: FF_X41_Y36_N15
\u0|onchip_flash_0|avmm_data_controller|write_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(2));

-- Location: LCCOMB_X41_Y34_N6
\u0|onchip_flash_0|avmm_data_controller|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(3) & (\u0|onchip_flash_0|avmm_data_controller|Add1~5\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(3) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~5\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(3) & !\u0|onchip_flash_0|avmm_data_controller|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(3),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~7\);

-- Location: LCCOMB_X42_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|write_count[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\ & (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\);

-- Location: LCCOMB_X42_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\);

-- Location: LCCOMB_X42_Y36_N6
\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ = ((!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\ & \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\);

-- Location: LCCOMB_X42_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector15~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\);

-- Location: LCCOMB_X42_Y34_N26
\u0|onchip_flash_0|avmm_data_controller|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Add1~6_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add1~6_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\);

-- Location: FF_X42_Y34_N27
\u0|onchip_flash_0|avmm_data_controller|write_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(3));

-- Location: LCCOMB_X41_Y34_N8
\u0|onchip_flash_0|avmm_data_controller|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(4) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~7\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(4) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~7\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(4)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(4),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~9\);

-- Location: LCCOMB_X41_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|write_count[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ & (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add1~8_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\);

-- Location: LCCOMB_X41_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|write_count[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[4]~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|write_count\(4))))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\ & (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|write_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count[4]~10_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[2]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[4]~11_combout\);

-- Location: FF_X41_Y36_N9
\u0|onchip_flash_0|avmm_data_controller|write_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(4));

-- Location: LCCOMB_X41_Y34_N10
\u0|onchip_flash_0|avmm_data_controller|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(5) & (\u0|onchip_flash_0|avmm_data_controller|Add1~9\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(5) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~9\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(5) & !\u0|onchip_flash_0|avmm_data_controller|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(5),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~11\);

-- Location: LCCOMB_X41_Y34_N12
\u0|onchip_flash_0|avmm_data_controller|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(6) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~11\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(6) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~11\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(6)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(6),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~13\);

-- Location: LCCOMB_X42_Y34_N14
\u0|onchip_flash_0|avmm_data_controller|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector9~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~12_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~12_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector9~0_combout\);

-- Location: FF_X42_Y34_N15
\u0|onchip_flash_0|avmm_data_controller|write_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector9~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(6));

-- Location: LCCOMB_X41_Y34_N14
\u0|onchip_flash_0|avmm_data_controller|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(7) & (\u0|onchip_flash_0|avmm_data_controller|Add1~13\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(7) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~13\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~15\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(7) & !\u0|onchip_flash_0|avmm_data_controller|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(7),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~15\);

-- Location: LCCOMB_X41_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|write_count[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~14_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\);

-- Location: LCCOMB_X41_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|write_count[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[7]~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|write_count\(7))))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\ & (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|write_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~12_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~13_combout\);

-- Location: FF_X41_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|write_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(7));

-- Location: LCCOMB_X41_Y34_N16
\u0|onchip_flash_0|avmm_data_controller|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(8) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~15\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(8) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~15\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~17\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(8)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(8),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~15\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~16_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~17\);

-- Location: LCCOMB_X42_Y34_N20
\u0|onchip_flash_0|avmm_data_controller|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~16_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~16_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\);

-- Location: FF_X42_Y34_N21
\u0|onchip_flash_0|avmm_data_controller|write_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(8));

-- Location: LCCOMB_X41_Y34_N18
\u0|onchip_flash_0|avmm_data_controller|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(9) & (\u0|onchip_flash_0|avmm_data_controller|Add1~17\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(9) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~17\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~19\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(9) & !\u0|onchip_flash_0|avmm_data_controller|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(9),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~19\);

-- Location: LCCOMB_X43_Y34_N24
\u0|onchip_flash_0|avmm_data_controller|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\ & (\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\);

-- Location: LCCOMB_X42_Y34_N30
\u0|onchip_flash_0|avmm_data_controller|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector6~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add1~18_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add1~18_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector6~1_combout\);

-- Location: FF_X42_Y34_N31
\u0|onchip_flash_0|avmm_data_controller|write_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector6~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(9));

-- Location: LCCOMB_X41_Y34_N20
\u0|onchip_flash_0|avmm_data_controller|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(10) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~19\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(10) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~19\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~21\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~20_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~21\);

-- Location: LCCOMB_X42_Y34_N22
\u0|onchip_flash_0|avmm_data_controller|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~20_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~20_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\);

-- Location: FF_X42_Y34_N23
\u0|onchip_flash_0|avmm_data_controller|write_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(10));

-- Location: LCCOMB_X41_Y34_N22
\u0|onchip_flash_0|avmm_data_controller|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(11) & (\u0|onchip_flash_0|avmm_data_controller|Add1~21\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(11) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~21\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~23\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(11) & !\u0|onchip_flash_0|avmm_data_controller|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(11),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~21\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~22_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~23\);

-- Location: LCCOMB_X42_Y34_N16
\u0|onchip_flash_0|avmm_data_controller|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add1~22_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add1~22_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\);

-- Location: FF_X42_Y34_N17
\u0|onchip_flash_0|avmm_data_controller|write_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(11));

-- Location: LCCOMB_X41_Y34_N24
\u0|onchip_flash_0|avmm_data_controller|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(12) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~23\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(12) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~23\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~25\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(12)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(12),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~23\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~24_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~25\);

-- Location: LCCOMB_X42_Y34_N10
\u0|onchip_flash_0|avmm_data_controller|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector3~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~24_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~24_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector3~0_combout\);

-- Location: FF_X42_Y34_N11
\u0|onchip_flash_0|avmm_data_controller|write_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector3~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(12));

-- Location: LCCOMB_X41_Y34_N26
\u0|onchip_flash_0|avmm_data_controller|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(13) & (\u0|onchip_flash_0|avmm_data_controller|Add1~25\ & VCC)) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(13) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add1~25\))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~27\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|write_count\(13) & !\u0|onchip_flash_0|avmm_data_controller|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(13),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~25\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~26_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~27\);

-- Location: LCCOMB_X42_Y34_N8
\u0|onchip_flash_0|avmm_data_controller|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~26_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~26_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\);

-- Location: FF_X42_Y34_N9
\u0|onchip_flash_0|avmm_data_controller|write_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(13));

-- Location: LCCOMB_X41_Y34_N28
\u0|onchip_flash_0|avmm_data_controller|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(14) & ((GND) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~27\))) # (!\u0|onchip_flash_0|avmm_data_controller|write_count\(14) & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~27\ $ (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add1~29\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|write_count\(14)) # (!\u0|onchip_flash_0|avmm_data_controller|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(14),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~27\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~28_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add1~29\);

-- Location: LCCOMB_X42_Y34_N24
\u0|onchip_flash_0|avmm_data_controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~28_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\);

-- Location: FF_X42_Y34_N25
\u0|onchip_flash_0|avmm_data_controller|write_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(14));

-- Location: LCCOMB_X41_Y34_N30
\u0|onchip_flash_0|avmm_data_controller|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add1~30_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add1~29\ $ (!\u0|onchip_flash_0|avmm_data_controller|write_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(15),
	cin => \u0|onchip_flash_0|avmm_data_controller|Add1~29\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add1~30_combout\);

-- Location: LCCOMB_X42_Y34_N2
\u0|onchip_flash_0|avmm_data_controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add1~30_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Add1~30_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\);

-- Location: FF_X42_Y34_N3
\u0|onchip_flash_0|avmm_data_controller|write_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(15));

-- Location: LCCOMB_X42_Y34_N12
\u0|onchip_flash_0|avmm_data_controller|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~3_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(14) & !\u0|onchip_flash_0|avmm_data_controller|write_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(14),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~3_combout\);

-- Location: LCCOMB_X42_Y34_N18
\u0|onchip_flash_0|avmm_data_controller|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(12) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(13) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(10) & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(12),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(13),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(11),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~2_combout\);

-- Location: LCCOMB_X42_Y34_N4
\u0|onchip_flash_0|avmm_data_controller|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(3) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(1) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(4) & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(3),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y34_N28
\u0|onchip_flash_0|avmm_data_controller|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~1_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(9) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(6) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(7) & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(9),
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(6),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~1_combout\);

-- Location: LCCOMB_X42_Y34_N6
\u0|onchip_flash_0|avmm_data_controller|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal3~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal3~2_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Equal3~0_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal3~2_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\);

-- Location: LCCOMB_X43_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(0) & (\u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\ & \u0|onchip_flash_0|avmm_data_controller|write_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\);

-- Location: IOIBUF_X78_Y33_N22
\write_data[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(30),
	o => \write_data[30]~input_o\);

-- Location: LCCOMB_X46_Y37_N26
\ram_write_data_i~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~11_combout\ = (\write_data[30]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[2]~input_o\,
	datad => \write_data[30]~input_o\,
	combout => \ram_write_data_i~11_combout\);

-- Location: FF_X43_Y35_N25
\ram_write_data_i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_write_data_i~11_combout\,
	sload => VCC,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(30));

-- Location: IOIBUF_X54_Y54_N8
\write_data[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(28),
	o => \write_data[28]~input_o\);

-- Location: LCCOMB_X46_Y37_N16
\ram_write_data_i~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~13_combout\ = (\write_data[28]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[28]~input_o\,
	combout => \ram_write_data_i~13_combout\);

-- Location: FF_X46_Y37_N17
\ram_write_data_i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~13_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(28));

-- Location: IOIBUF_X54_Y54_N1
\write_data[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(27),
	o => \write_data[27]~input_o\);

-- Location: LCCOMB_X46_Y37_N30
\ram_write_data_i~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~14_combout\ = (\write_data[27]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[2]~input_o\,
	datad => \write_data[27]~input_o\,
	combout => \ram_write_data_i~14_combout\);

-- Location: FF_X46_Y37_N31
\ram_write_data_i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~14_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(27));

-- Location: IOIBUF_X56_Y54_N8
\write_data[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(24),
	o => \write_data[24]~input_o\);

-- Location: LCCOMB_X46_Y37_N0
\ram_write_data_i~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~17_combout\ = (\write_data[24]~input_o\ & ((\function3[2]~input_o\) # (\function3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[24]~input_o\,
	datab => \function3[2]~input_o\,
	datad => \function3[1]~input_o\,
	combout => \ram_write_data_i~17_combout\);

-- Location: FF_X45_Y37_N7
\ram_write_data_i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_write_data_i~17_combout\,
	sload => VCC,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(24));

-- Location: IOIBUF_X49_Y54_N1
\write_data[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(22),
	o => \write_data[22]~input_o\);

-- Location: LCCOMB_X46_Y37_N8
\ram_write_data_i~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~19_combout\ = (\write_data[22]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[2]~input_o\,
	datac => \write_data[22]~input_o\,
	combout => \ram_write_data_i~19_combout\);

-- Location: FF_X46_Y37_N9
\ram_write_data_i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~19_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(22));

-- Location: IOIBUF_X78_Y37_N22
\write_data[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(21),
	o => \write_data[21]~input_o\);

-- Location: LCCOMB_X46_Y37_N12
\ram_write_data_i~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~20_combout\ = (\write_data[21]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[21]~input_o\,
	combout => \ram_write_data_i~20_combout\);

-- Location: FF_X46_Y37_N13
\ram_write_data_i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~20_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(21));

-- Location: IOIBUF_X49_Y0_N15
\write_data[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(20),
	o => \write_data[20]~input_o\);

-- Location: LCCOMB_X46_Y37_N14
\ram_write_data_i~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~21_combout\ = (\write_data[20]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[20]~input_o\,
	combout => \ram_write_data_i~21_combout\);

-- Location: FF_X46_Y37_N15
\ram_write_data_i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~21_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(20));

-- Location: IOIBUF_X54_Y54_N29
\write_data[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(19),
	o => \write_data[19]~input_o\);

-- Location: LCCOMB_X46_Y37_N20
\ram_write_data_i~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~22_combout\ = (\write_data[19]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[19]~input_o\,
	combout => \ram_write_data_i~22_combout\);

-- Location: FF_X46_Y37_N21
\ram_write_data_i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~22_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(19));

-- Location: IOIBUF_X51_Y54_N8
\write_data[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(14),
	o => \write_data[14]~input_o\);

-- Location: LCCOMB_X43_Y37_N20
\ram_write_data_i~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~27_combout\ = (\write_data[14]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[14]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~27_combout\);

-- Location: LCCOMB_X44_Y37_N16
\ram_write_i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_i~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & (\Equal0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\ & \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datab => \Equal0~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~4_combout\,
	combout => \ram_write_i~2_combout\);

-- Location: LCCOMB_X44_Y37_N6
\ram_write_data_i[15]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[15]~35_combout\ = (\mem_en~input_o\ & (\current_state.idle_s~q\ & (\current_state.write_s~q\ & \ram_write_i~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_en~input_o\,
	datab => \current_state.idle_s~q\,
	datac => \current_state.write_s~q\,
	datad => \ram_write_i~2_combout\,
	combout => \ram_write_data_i[15]~35_combout\);

-- Location: LCCOMB_X43_Y37_N10
\ram_write_data_i[15]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[15]~36_combout\ = (!\function3[2]~input_o\ & (\ram_write_data_i[15]~35_combout\ & ((!\function3[1]~input_o\) # (!\function3[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[0]~input_o\,
	datab => \function3[2]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \ram_write_data_i[15]~35_combout\,
	combout => \ram_write_data_i[15]~36_combout\);

-- Location: FF_X43_Y37_N21
\ram_write_data_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~27_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(14));

-- Location: IOIBUF_X58_Y54_N22
\write_data[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(11),
	o => \write_data[11]~input_o\);

-- Location: LCCOMB_X43_Y37_N6
\ram_write_data_i~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~30_combout\ = (\write_data[11]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[11]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~30_combout\);

-- Location: FF_X43_Y37_N7
\ram_write_data_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~30_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(11));

-- Location: IOIBUF_X36_Y39_N15
\write_data[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(10),
	o => \write_data[10]~input_o\);

-- Location: LCCOMB_X43_Y37_N12
\ram_write_data_i~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~31_combout\ = (\write_data[10]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[10]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~31_combout\);

-- Location: FF_X43_Y37_N13
\ram_write_data_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~31_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(10));

-- Location: IOIBUF_X40_Y0_N8
\write_data[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(9),
	o => \write_data[9]~input_o\);

-- Location: LCCOMB_X43_Y37_N8
\ram_write_data_i~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~32_combout\ = (\write_data[9]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[9]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~32_combout\);

-- Location: FF_X43_Y37_N9
\ram_write_data_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~32_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(9));

-- Location: IOIBUF_X40_Y0_N15
\write_data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(6),
	o => \write_data[6]~input_o\);

-- Location: LCCOMB_X42_Y37_N10
\ram_write_data_i[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[6]~feeder_combout\ = \write_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[6]~input_o\,
	combout => \ram_write_data_i[6]~feeder_combout\);

-- Location: FF_X42_Y37_N11
\ram_write_data_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i[6]~feeder_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(6));

-- Location: IOIBUF_X60_Y54_N8
\write_data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(4),
	o => \write_data[4]~input_o\);

-- Location: LCCOMB_X42_Y37_N16
\ram_write_data_i[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[4]~feeder_combout\ = \write_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[4]~input_o\,
	combout => \ram_write_data_i[4]~feeder_combout\);

-- Location: FF_X42_Y37_N17
\ram_write_data_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i[4]~feeder_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(4));

-- Location: IOIBUF_X49_Y54_N8
\write_data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(3),
	o => \write_data[3]~input_o\);

-- Location: FF_X43_Y37_N1
\ram_write_data_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \write_data[3]~input_o\,
	sload => VCC,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(3));

-- Location: IOIBUF_X78_Y37_N15
\write_data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(0),
	o => \write_data[0]~input_o\);

-- Location: LCCOMB_X43_Y37_N16
\ram_write_data_i[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[0]~feeder_combout\ = \write_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[0]~input_o\,
	combout => \ram_write_data_i[0]~feeder_combout\);

-- Location: FF_X43_Y37_N17
\ram_write_data_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i[0]~feeder_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(0));

-- Location: LCCOMB_X43_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~31_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count\(0)) # ((ram_write_data_i(0)) # ((!\u0|onchip_flash_0|avmm_data_controller|write_count\(5)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(0),
	datab => ram_write_data_i(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~31_combout\);

-- Location: FF_X43_Y37_N31
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~31_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(0));

-- Location: IOIBUF_X62_Y54_N29
\write_data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(1),
	o => \write_data[1]~input_o\);

-- Location: LCCOMB_X43_Y37_N4
\ram_write_data_i[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i[1]~feeder_combout\ = \write_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[1]~input_o\,
	combout => \ram_write_data_i[1]~feeder_combout\);

-- Location: FF_X43_Y37_N5
\ram_write_data_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i[1]~feeder_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(1));

-- Location: LCCOMB_X42_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~30_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(1)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(0),
	datad => ram_write_data_i(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~30_combout\);

-- Location: FF_X42_Y37_N23
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~30_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(1));

-- Location: IOIBUF_X78_Y37_N8
\write_data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(2),
	o => \write_data[2]~input_o\);

-- Location: FF_X43_Y37_N15
\ram_write_data_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \write_data[2]~input_o\,
	sload => VCC,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(2));

-- Location: LCCOMB_X42_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~29_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(2)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(1),
	datab => ram_write_data_i(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~29_combout\);

-- Location: FF_X42_Y37_N1
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~29_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(2));

-- Location: LCCOMB_X42_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(3))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(3),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~28_combout\);

-- Location: FF_X42_Y37_N3
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~28_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(3));

-- Location: LCCOMB_X42_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~27_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(4))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~27_combout\);

-- Location: FF_X42_Y37_N27
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~27_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(4));

-- Location: IOIBUF_X58_Y54_N15
\write_data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(5),
	o => \write_data[5]~input_o\);

-- Location: FF_X43_Y37_N23
\ram_write_data_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \write_data[5]~input_o\,
	sload => VCC,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(5));

-- Location: LCCOMB_X42_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(5)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~26_combout\);

-- Location: FF_X42_Y37_N29
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~26_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(5));

-- Location: LCCOMB_X42_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~25_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(6))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(6),
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(5),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~25_combout\);

-- Location: FF_X42_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~25_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(6));

-- Location: IOIBUF_X40_Y0_N1
\write_data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(7),
	o => \write_data[7]~input_o\);

-- Location: FF_X43_Y37_N25
\ram_write_data_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \write_data[7]~input_o\,
	sload => VCC,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(7));

-- Location: LCCOMB_X42_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(7)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(6),
	datad => ram_write_data_i(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~24_combout\);

-- Location: FF_X42_Y37_N15
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~24_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(7));

-- Location: IOIBUF_X51_Y54_N22
\write_data[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(8),
	o => \write_data[8]~input_o\);

-- Location: LCCOMB_X43_Y37_N2
\ram_write_data_i~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~33_combout\ = (\write_data[8]~input_o\ & ((\function3[1]~input_o\) # ((\function3[0]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[8]~input_o\,
	datab => \function3[1]~input_o\,
	datac => \function3[0]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~33_combout\);

-- Location: FF_X43_Y37_N3
\ram_write_data_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~33_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(8));

-- Location: LCCOMB_X43_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~23_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(8)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(7),
	datab => ram_write_data_i(8),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~23_combout\);

-- Location: FF_X46_Y37_N1
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~23_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	sload => VCC,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(8));

-- Location: LCCOMB_X42_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(9))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => ram_write_data_i(9),
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~22_combout\);

-- Location: FF_X42_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~22_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(9));

-- Location: LCCOMB_X43_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~21_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(10))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~21_combout\);

-- Location: FF_X45_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~21_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	sload => VCC,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(10));

-- Location: LCCOMB_X42_Y37_N18
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(11))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(11),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~20_combout\);

-- Location: FF_X42_Y37_N19
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~20_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(11));

-- Location: IOIBUF_X46_Y54_N8
\write_data[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(12),
	o => \write_data[12]~input_o\);

-- Location: LCCOMB_X43_Y37_N28
\ram_write_data_i~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~29_combout\ = (\write_data[12]~input_o\ & ((\function3[0]~input_o\) # ((\function3[2]~input_o\) # (\function3[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[0]~input_o\,
	datab => \function3[2]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \write_data[12]~input_o\,
	combout => \ram_write_data_i~29_combout\);

-- Location: FF_X43_Y37_N29
\ram_write_data_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~29_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(12));

-- Location: LCCOMB_X42_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(12)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(11),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(12),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~19_combout\);

-- Location: FF_X42_Y37_N13
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~19_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(12));

-- Location: IOIBUF_X51_Y54_N1
\write_data[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(13),
	o => \write_data[13]~input_o\);

-- Location: LCCOMB_X43_Y37_N18
\ram_write_data_i~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~28_combout\ = (\write_data[13]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[13]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~28_combout\);

-- Location: FF_X43_Y37_N19
\ram_write_data_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~28_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(13));

-- Location: LCCOMB_X42_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(13)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(12),
	datab => ram_write_data_i(13),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~18_combout\);

-- Location: FF_X42_Y37_N31
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~18_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(13));

-- Location: LCCOMB_X42_Y37_N8
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~17_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(14))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(14),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(13),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~17_combout\);

-- Location: FF_X42_Y37_N9
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~17_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(14));

-- Location: IOIBUF_X46_Y0_N8
\write_data[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(15),
	o => \write_data[15]~input_o\);

-- Location: LCCOMB_X43_Y37_N26
\ram_write_data_i~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~26_combout\ = (\write_data[15]~input_o\ & ((\function3[0]~input_o\) # ((\function3[1]~input_o\) # (\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[15]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \function3[2]~input_o\,
	combout => \ram_write_data_i~26_combout\);

-- Location: FF_X43_Y37_N27
\ram_write_data_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~26_combout\,
	ena => \ram_write_data_i[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(15));

-- Location: LCCOMB_X42_Y37_N6
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(15)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(14),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~16_combout\);

-- Location: FF_X42_Y37_N7
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~16_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(15));

-- Location: IOIBUF_X46_Y0_N1
\write_data[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(16),
	o => \write_data[16]~input_o\);

-- Location: LCCOMB_X46_Y37_N6
\ram_write_data_i~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~25_combout\ = (\write_data[16]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[16]~input_o\,
	combout => \ram_write_data_i~25_combout\);

-- Location: FF_X46_Y37_N7
\ram_write_data_i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~25_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(16));

-- Location: LCCOMB_X42_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(16)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(16),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~15_combout\);

-- Location: FF_X42_Y37_N21
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~15_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(16));

-- Location: IOIBUF_X78_Y36_N8
\write_data[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(17),
	o => \write_data[17]~input_o\);

-- Location: LCCOMB_X46_Y37_N28
\ram_write_data_i~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~24_combout\ = (\write_data[17]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[17]~input_o\,
	combout => \ram_write_data_i~24_combout\);

-- Location: FF_X46_Y37_N29
\ram_write_data_i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~24_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(17));

-- Location: LCCOMB_X45_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(17)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(16),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(17),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~14_combout\);

-- Location: FF_X45_Y37_N27
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~14_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(17));

-- Location: IOIBUF_X58_Y54_N8
\write_data[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(18),
	o => \write_data[18]~input_o\);

-- Location: LCCOMB_X46_Y37_N22
\ram_write_data_i~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~23_combout\ = (\write_data[18]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[18]~input_o\,
	combout => \ram_write_data_i~23_combout\);

-- Location: FF_X46_Y37_N23
\ram_write_data_i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~23_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(18));

-- Location: LCCOMB_X45_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(18)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(17),
	datad => ram_write_data_i(18),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~13_combout\);

-- Location: FF_X45_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~13_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(18));

-- Location: LCCOMB_X45_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(19))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => ram_write_data_i(19),
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(18),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~12_combout\);

-- Location: FF_X45_Y37_N3
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~12_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(19));

-- Location: LCCOMB_X45_Y37_N8
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(20))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(20),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(19),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~11_combout\);

-- Location: FF_X45_Y37_N9
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~11_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(20));

-- Location: LCCOMB_X46_Y37_N10
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(21))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(21),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(20),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~10_combout\);

-- Location: FF_X46_Y37_N11
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~10_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(21));

-- Location: LCCOMB_X45_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(22))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(22),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(21),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~9_combout\);

-- Location: FF_X45_Y37_N23
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~9_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(22));

-- Location: IOIBUF_X54_Y54_N15
\write_data[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(23),
	o => \write_data[23]~input_o\);

-- Location: LCCOMB_X46_Y37_N2
\ram_write_data_i~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~18_combout\ = (\write_data[23]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[23]~input_o\,
	combout => \ram_write_data_i~18_combout\);

-- Location: FF_X46_Y37_N3
\ram_write_data_i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~18_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(23));

-- Location: LCCOMB_X45_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(23)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(22),
	datad => ram_write_data_i(23),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~8_combout\);

-- Location: FF_X45_Y37_N1
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~8_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(23));

-- Location: LCCOMB_X45_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(24))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(24),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(23),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~7_combout\);

-- Location: FF_X45_Y37_N31
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~7_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(24));

-- Location: IOIBUF_X78_Y36_N15
\write_data[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(25),
	o => \write_data[25]~input_o\);

-- Location: LCCOMB_X46_Y37_N18
\ram_write_data_i~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~16_combout\ = (\write_data[25]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[25]~input_o\,
	combout => \ram_write_data_i~16_combout\);

-- Location: FF_X46_Y37_N19
\ram_write_data_i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~16_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(25));

-- Location: LCCOMB_X45_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(25)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(24),
	datad => ram_write_data_i(25),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~6_combout\);

-- Location: FF_X45_Y37_N29
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~6_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(25));

-- Location: IOIBUF_X78_Y37_N1
\write_data[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(26),
	o => \write_data[26]~input_o\);

-- Location: LCCOMB_X46_Y37_N4
\ram_write_data_i~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~15_combout\ = (\write_data[26]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \write_data[26]~input_o\,
	combout => \ram_write_data_i~15_combout\);

-- Location: FF_X46_Y37_N5
\ram_write_data_i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_data_i~15_combout\,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(26));

-- Location: LCCOMB_X45_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(26)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(25),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(26),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~5_combout\);

-- Location: FF_X45_Y37_N15
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~5_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(26));

-- Location: LCCOMB_X45_Y37_N16
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(27))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_write_data_i(27),
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(26),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~4_combout\);

-- Location: FF_X45_Y37_N17
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~4_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(27));

-- Location: LCCOMB_X45_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(28))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(28),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(27),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~3_combout\);

-- Location: FF_X45_Y37_N21
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~3_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(28));

-- Location: IOIBUF_X78_Y40_N8
\write_data[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(29),
	o => \write_data[29]~input_o\);

-- Location: LCCOMB_X45_Y37_N6
\ram_write_data_i~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_data_i~12_combout\ = (\write_data[29]~input_o\ & ((\function3[1]~input_o\) # (\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[2]~input_o\,
	datad => \write_data[29]~input_o\,
	combout => \ram_write_data_i~12_combout\);

-- Location: FF_X46_Y37_N27
\ram_write_data_i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram_write_data_i~12_combout\,
	sload => VCC,
	ena => \ram_write_data_i[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_write_data_i(29));

-- Location: LCCOMB_X45_Y37_N10
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & ((ram_write_data_i(29)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(28),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => ram_write_data_i(29),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~2_combout\);

-- Location: FF_X45_Y37_N11
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~2_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(29));

-- Location: LCCOMB_X45_Y37_N18
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(30))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datac => ram_write_data_i(30),
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(29),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~1_combout\);

-- Location: FF_X45_Y37_N19
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~1_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(30));

-- Location: LCCOMB_X45_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & (ram_write_data_i(31))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_write_data_i(31),
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(30),
	combout => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~0_combout\);

-- Location: FF_X45_Y37_N13
\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|_~0_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(31));

-- Location: LCCOMB_X44_Y41_N2
\u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(31)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|ufm_data_shiftreg|dffs\(31),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~0_combout\);

-- Location: FF_X44_Y41_N3
\u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~q\);

-- Location: LCCOMB_X43_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|flash_nprogram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_nprogram~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_nprogram~2_combout\);

-- Location: LCCOMB_X42_Y35_N12
\u0|onchip_flash_0|avmm_data_controller|flash_nerase~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_nerase~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & !\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_nerase~2_combout\);

-- Location: LCCOMB_X44_Y51_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X44_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|flash_xe_ye\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\) # ((!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & (\ram_read_i~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datac => \ram_read_i~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\);

-- Location: LCCOMB_X45_Y39_N16
\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\);

-- Location: LCCOMB_X45_Y43_N22
\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~feeder_combout\);

-- Location: FF_X45_Y43_N23
\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\);

-- Location: IOIBUF_X29_Y39_N8
\address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X35_Y37_N24
\ram_address_i~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~5_combout\ = (\address[0]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[0]~input_o\,
	datac => \ram_address_i~0_combout\,
	combout => \ram_address_i~5_combout\);

-- Location: LCCOMB_X36_Y37_N12
\ram_address_i[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i[0]~feeder_combout\ = \ram_address_i~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_address_i~5_combout\,
	combout => \ram_address_i[0]~feeder_combout\);

-- Location: FF_X36_Y37_N13
\ram_address_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i[0]~feeder_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(0));

-- Location: LCCOMB_X45_Y39_N12
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ & ((ram_address_i(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datad => ram_address_i(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\);

-- Location: LCCOMB_X45_Y39_N26
\u0|onchip_flash_0|avmm_data_controller|Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector104~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector104~0_combout\);

-- Location: FF_X45_Y39_N13
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|Selector104~0_combout\,
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0));

-- Location: LCCOMB_X43_Y38_N4
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datab => ram_address_i(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]~0_combout\);

-- Location: LCCOMB_X38_Y35_N30
\u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\);

-- Location: FF_X38_Y35_N31
\csr_write_data_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(0));

-- Location: LCCOMB_X38_Y35_N8
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~3_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & !csr_write_data_i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => csr_write_data_i(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~3_combout\);

-- Location: FF_X38_Y35_N9
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~3_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(0));

-- Location: LCCOMB_X42_Y35_N2
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]~_wirecell_combout\);

-- Location: FF_X43_Y38_N5
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[0]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0));

-- Location: LCCOMB_X43_Y38_N6
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\);

-- Location: FF_X43_Y38_N7
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(0));

-- Location: IOIBUF_X34_Y39_N22
\address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X35_Y36_N10
\ram_address_i~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i~6_combout\ = (\address[1]~input_o\ & !\ram_address_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[1]~input_o\,
	datad => \ram_address_i~0_combout\,
	combout => \ram_address_i~6_combout\);

-- Location: LCCOMB_X39_Y36_N20
\ram_address_i[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_address_i[1]~feeder_combout\ = \ram_address_i~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_address_i~6_combout\,
	combout => \ram_address_i[1]~feeder_combout\);

-- Location: FF_X39_Y36_N21
\ram_address_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_address_i[1]~feeder_combout\,
	ena => \ram_address_i[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address_i(1));

-- Location: LCCOMB_X45_Y39_N10
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ & ((ram_address_i(1)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	datad => ram_address_i(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\);

-- Location: LCCOMB_X45_Y39_N4
\u0|onchip_flash_0|avmm_data_controller|Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector103~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector103~0_combout\);

-- Location: FF_X45_Y39_N11
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|Selector103~0_combout\,
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1));

-- Location: LCCOMB_X43_Y38_N2
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	datad => ram_address_i(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]~1_combout\);

-- Location: LCCOMB_X38_Y35_N4
\u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[1]~2_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1),
	combout => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[1]~2_combout\);

-- Location: FF_X38_Y35_N5
\csr_write_data_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[1]~2_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(1));

-- Location: LCCOMB_X38_Y35_N2
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~2_combout\ = (!csr_write_data_i(1) & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => csr_write_data_i(1),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~2_combout\);

-- Location: FF_X38_Y35_N3
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~2_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1));

-- Location: LCCOMB_X39_Y36_N26
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]~_wirecell_combout\);

-- Location: FF_X43_Y38_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]~1_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[1]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1));

-- Location: LCCOMB_X43_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\);

-- Location: FF_X43_Y38_N17
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(1));

-- Location: LCCOMB_X38_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]~2_combout\);

-- Location: LCCOMB_X38_Y35_N24
\csr_write_data_i~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~11_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(2)))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(2),
	combout => \csr_write_data_i~11_combout\);

-- Location: FF_X38_Y35_N25
\csr_write_data_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_data_i~11_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(2));

-- Location: LCCOMB_X39_Y35_N30
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~5_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & !csr_write_data_i(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => csr_write_data_i(2),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~5_combout\);

-- Location: FF_X38_Y35_N17
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~5_combout\,
	sload => VCC,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(2));

-- Location: LCCOMB_X38_Y35_N16
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(2),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]~_wirecell_combout\);

-- Location: FF_X38_Y36_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]~2_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[2]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2));

-- Location: LCCOMB_X42_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\);

-- Location: FF_X42_Y38_N29
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(2));

-- Location: LCCOMB_X38_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datab => ram_address_i(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]~3_combout\);

-- Location: LCCOMB_X38_Y35_N0
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & !csr_write_data_i(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => csr_write_data_i(3),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~0_combout\);

-- Location: FF_X38_Y35_N1
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3));

-- Location: LCCOMB_X37_Y35_N12
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]~_wirecell_combout\);

-- Location: FF_X38_Y36_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]~3_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[3]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3));

-- Location: LCCOMB_X43_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\);

-- Location: FF_X43_Y38_N19
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(3));

-- Location: LCCOMB_X35_Y36_N0
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => ram_address_i(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]~4_combout\);

-- Location: LCCOMB_X40_Y35_N4
\u0|onchip_flash_0|avmm_data_controller|Selector62~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_BUSY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\);

-- Location: LCCOMB_X35_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(5),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]~5_combout\);

-- Location: LCCOMB_X37_Y35_N16
\csr_write_data_i~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~9_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(5),
	combout => \csr_write_data_i~9_combout\);

-- Location: FF_X38_Y35_N13
\csr_write_data_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \csr_write_data_i~9_combout\,
	sload => VCC,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(5));

-- Location: LCCOMB_X38_Y35_N28
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~7_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & !csr_write_data_i(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => csr_write_data_i(5),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~7_combout\);

-- Location: FF_X38_Y35_N29
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~7_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(5));

-- Location: LCCOMB_X37_Y35_N2
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(5),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell_combout\);

-- Location: FF_X35_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]~5_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5));

-- Location: LCCOMB_X43_Y38_N14
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\);

-- Location: FF_X43_Y38_N15
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(5));

-- Location: LCCOMB_X35_Y36_N28
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(6),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]~6_combout\);

-- Location: FF_X35_Y36_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]~6_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[5]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6));

-- Location: LCCOMB_X43_Y38_N12
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\);

-- Location: FF_X43_Y38_N13
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(6));

-- Location: LCCOMB_X38_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(7),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]~7_combout\);

-- Location: LCCOMB_X38_Y36_N14
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\);

-- Location: FF_X38_Y36_N25
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]~7_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7));

-- Location: LCCOMB_X42_Y38_N14
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\);

-- Location: FF_X42_Y38_N15
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(7));

-- Location: LCCOMB_X38_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8),
	datab => ram_address_i(8),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]~8_combout\);

-- Location: FF_X38_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]~8_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8));

-- Location: LCCOMB_X42_Y38_N12
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\);

-- Location: FF_X42_Y38_N13
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(8));

-- Location: LCCOMB_X38_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(9),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]~9_combout\);

-- Location: FF_X38_Y36_N5
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]~9_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9));

-- Location: LCCOMB_X42_Y38_N2
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\);

-- Location: FF_X42_Y38_N3
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(9));

-- Location: LCCOMB_X38_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]~10_combout\);

-- Location: FF_X38_Y36_N19
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]~10_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10));

-- Location: LCCOMB_X42_Y38_N0
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\);

-- Location: FF_X42_Y38_N1
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(10));

-- Location: LCCOMB_X39_Y36_N18
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datab => ram_address_i(11),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\);

-- Location: LCCOMB_X39_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~11_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\);

-- Location: LCCOMB_X38_Y38_N8
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\ $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\,
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\);

-- Location: LCCOMB_X39_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\);

-- Location: LCCOMB_X39_Y38_N26
\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\ & (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\) # ((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y38_N0
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[11]~12_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~11_combout\);

-- Location: FF_X38_Y38_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~11_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11));

-- Location: LCCOMB_X42_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\);

-- Location: FF_X42_Y38_N23
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(11));

-- Location: LCCOMB_X38_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((ram_address_i(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12),
	datac => ram_address_i(12),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\);

-- Location: LCCOMB_X39_Y36_N10
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~13_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\);

-- Location: LCCOMB_X38_Y38_N10
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\);

-- Location: LCCOMB_X38_Y38_N2
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[12]~14_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~12_combout\);

-- Location: FF_X38_Y38_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~12_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12));

-- Location: LCCOMB_X42_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\);

-- Location: FF_X42_Y38_N25
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(12));

-- Location: LCCOMB_X39_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (ram_address_i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(13),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\);

-- Location: LCCOMB_X39_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0) & (((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~15_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\);

-- Location: LCCOMB_X38_Y38_N12
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\);

-- Location: LCCOMB_X38_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[13]~19_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~13_combout\);

-- Location: FF_X38_Y38_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~13_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13));

-- Location: LCCOMB_X42_Y38_N30
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\);

-- Location: FF_X42_Y38_N31
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(13));

-- Location: LCCOMB_X38_Y38_N14
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\) # (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\);

-- Location: LCCOMB_X39_Y38_N4
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[14]~16_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~14_combout\);

-- Location: FF_X39_Y38_N5
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~14_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14));

-- Location: LCCOMB_X43_Y38_N30
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\);

-- Location: FF_X43_Y38_N31
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(14));

-- Location: LCCOMB_X38_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\);

-- Location: LCCOMB_X39_Y38_N2
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[15]~17_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~15_combout\);

-- Location: FF_X39_Y38_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~15_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15));

-- Location: LCCOMB_X43_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\);

-- Location: FF_X43_Y38_N29
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(15));

-- Location: LCCOMB_X38_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\) # (!\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\);

-- Location: LCCOMB_X39_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|cur_a_addr[16]~18_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~16_combout\);

-- Location: FF_X39_Y38_N25
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~16_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(16));

-- Location: LCCOMB_X43_Y38_N10
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~16_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(16)) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(16),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~16_combout\);

-- Location: FF_X43_Y38_N11
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(16));

-- Location: LCCOMB_X38_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ & (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & VCC))) # (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ & ((((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & 
-- !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\);

-- Location: LCCOMB_X39_Y38_N30
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~17_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\)) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~17_combout\);

-- Location: FF_X39_Y38_N31
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~17_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(17));

-- Location: LCCOMB_X43_Y38_N8
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~17_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(17)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(17),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~17_combout\);

-- Location: FF_X43_Y38_N9
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(17));

-- Location: LCCOMB_X38_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ & (((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ & (((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\ = CARRY(((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\);

-- Location: LCCOMB_X39_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\)) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~18_combout\);

-- Location: FF_X39_Y38_N17
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~18_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(18));

-- Location: LCCOMB_X43_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~18_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(18)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(18),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~18_combout\);

-- Location: FF_X43_Y38_N23
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(18));

-- Location: LCCOMB_X38_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\ & (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & VCC))) # (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\ & ((((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10))))))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & 
-- !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\);

-- Location: LCCOMB_X39_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\)) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ & 
-- (((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~19_combout\);

-- Location: FF_X39_Y38_N23
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~19_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(19));

-- Location: LCCOMB_X43_Y38_N0
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~19_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(19) & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(19),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~19_combout\);

-- Location: FF_X43_Y38_N1
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(19));

-- Location: LCCOMB_X38_Y38_N26
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\ = \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\);

-- Location: LCCOMB_X38_Y38_N6
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\ & 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~20_combout\);

-- Location: FF_X38_Y38_N7
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~20_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(20));

-- Location: LCCOMB_X42_Y38_N4
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~20_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(20) & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(20),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~20_combout\);

-- Location: FF_X42_Y38_N5
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(20));

-- Location: UNVM_X0_Y40_N40
\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => 114687,
	addr_range1_offset => 2048,
	addr_range2_end_addr => 114687,
	addr_range2_offset => 0,
	addr_range3_offset => 0,
	device_id => "50",
	init_filename => "none",
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "true",
	max_ufm_valid_addr => 114687,
	max_valid_addr => 114687,
	min_ufm_valid_addr => 0,
	min_valid_addr => 0,
	part_name => "10m50daf484c7g",
	reserve_block => "false")
-- pragma translate_on
PORT MAP (
	arclk => \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\,
	arshft => VCC,
	drclk => \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\,
	drshft => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\,
	drdin => \u0|onchip_flash_0|avmm_data_controller|flash_drdin_neg_reg~q\,
	nprogram => \u0|onchip_flash_0|avmm_data_controller|flash_nprogram~2_combout\,
	nerase => \u0|onchip_flash_0|avmm_data_controller|flash_nerase~2_combout\,
	nosc_ena => \~GND~combout\,
	par_en => VCC,
	xe_ye => \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\,
	se => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\,
	ardin => \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\,
	busy => \u0|onchip_flash_0|altera_onchip_flash_block|busy\,
	osc => \u0|onchip_flash_0|altera_onchip_flash_block|osc\,
	sp_pass => \u0|onchip_flash_0|altera_onchip_flash_block|sp_pass\,
	se_pass => \u0|onchip_flash_0|altera_onchip_flash_block|se_pass\,
	drdout => \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\);

-- Location: LCCOMB_X43_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|altera_onchip_flash_block|se_pass\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|se_pass\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~0_combout\);

-- Location: FF_X43_Y36_N31
\u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~q\);

-- Location: LCCOMB_X39_Y35_N20
\u0|onchip_flash_0|avmm_data_controller|Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector54~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_count[0]~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state~19_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector54~0_combout\);

-- Location: FF_X39_Y35_N21
\u0|onchip_flash_0|avmm_data_controller|erase_timeout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector54~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\);

-- Location: LCCOMB_X39_Y35_N18
\u0|onchip_flash_0|avmm_data_controller|Selector62~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector62~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~q\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_se_pass_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_timeout~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector62~4_combout\);

-- Location: LCCOMB_X40_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|Selector62~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector62~7_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1)) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector62~7_combout\);

-- Location: LCCOMB_X39_Y35_N4
\u0|onchip_flash_0|avmm_data_controller|Selector62~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector62~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector62~4_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Selector62~7_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector62~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector62~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector62~6_combout\);

-- Location: FF_X39_Y35_N5
\u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector62~6_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\);

-- Location: LCCOMB_X38_Y35_N6
\csr_write_data_i~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~10_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(4))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_e_pass~q\,
	combout => \csr_write_data_i~10_combout\);

-- Location: FF_X38_Y35_N7
\csr_write_data_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_data_i~10_combout\,
	ena => \csr_write_data_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(4));

-- Location: LCCOMB_X38_Y35_N26
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~6_combout\ = (!csr_write_data_i(4) & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => csr_write_data_i(4),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~6_combout\);

-- Location: FF_X38_Y35_N27
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg~6_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(4));

-- Location: LCCOMB_X35_Y35_N12
\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(4),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]~_wirecell_combout\);

-- Location: FF_X35_Y36_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]~4_combout\,
	asdata => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg[4]~_wirecell_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	sload => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4));

-- Location: LCCOMB_X43_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4)) # 
-- ((\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10) & \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\);

-- Location: FF_X43_Y38_N25
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(4));

-- Location: LCCOMB_X41_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|busy\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|busy\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~0_combout\);

-- Location: LCCOMB_X42_Y38_N6
\u0|onchip_flash_0|avmm_data_controller|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector17~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector17~0_combout\);

-- Location: LCCOMB_X42_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector17~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector17~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\) # (\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector17~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector17~1_combout\);

-- Location: FF_X42_Y38_N17
\u0|onchip_flash_0|avmm_data_controller|write_busy_scan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector17~1_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\);

-- Location: LCCOMB_X40_Y35_N22
\u0|onchip_flash_0|avmm_data_controller|Selector55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector55~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\) # (!\u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_ERROR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector62~5_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector55~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector55~1_combout\);

-- Location: FF_X40_Y35_N23
\u0|onchip_flash_0|avmm_data_controller|erase_busy_scan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector55~1_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\);

-- Location: LCCOMB_X40_Y38_N0
\u0|onchip_flash_0|avmm_data_controller|always9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|always9~0_combout\ = (\start~input_o\) # ((!\u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\ & !\u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_busy_scan~q\,
	datac => \start~input_o\,
	datad => \u0|onchip_flash_0|avmm_data_controller|erase_busy_scan~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|always9~0_combout\);

-- Location: CLKCTRL_G12
\u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u0|onchip_flash_0|avmm_data_controller|always9~0clkctrl_outclk\);

-- Location: FF_X41_Y38_N19
\u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~0_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_always9~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~q\);

-- Location: FF_X42_Y36_N23
\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_busy_clear_reg~q\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|din_s1~q\);

-- Location: FF_X42_Y36_N31
\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|din_s1~q\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0));

-- Location: LCCOMB_X44_Y38_N26
\u0|onchip_flash_0|avmm_data_controller|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & ((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\);

-- Location: LCCOMB_X42_Y38_N18
\u0|onchip_flash_0|avmm_data_controller|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector16~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_timeout~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_timeout~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector16~0_combout\);

-- Location: LCCOMB_X42_Y38_N26
\u0|onchip_flash_0|avmm_data_controller|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector16~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector16~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector14~1_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector16~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector16~1_combout\);

-- Location: FF_X42_Y38_N27
\u0|onchip_flash_0|avmm_data_controller|write_timeout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector16~1_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_timeout~q\);

-- Location: LCCOMB_X43_Y36_N12
\u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|altera_onchip_flash_block|sp_pass\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|sp_pass\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~0_combout\);

-- Location: FF_X42_Y36_N25
\u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~q\);

-- Location: LCCOMB_X41_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\ & (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\ & !\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\);

-- Location: LCCOMB_X41_Y36_N2
\u0|onchip_flash_0|avmm_data_controller|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector27~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|write_timeout~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_timeout~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_sp_pass_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector27~1_combout\);

-- Location: LCCOMB_X41_Y36_N30
\u0|onchip_flash_0|avmm_data_controller|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector27~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector27~1_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\ & !\u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector27~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector27~2_combout\);

-- Location: FF_X41_Y36_N31
\u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector27~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\);

-- Location: LCCOMB_X37_Y35_N20
\u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3)))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & (\u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3),
	combout => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1_combout\);

-- Location: LCCOMB_X37_Y35_N14
\csr_write_data_i~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_data_i~5_combout\ = (\Equal0~3_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1_combout\)) # (!\Equal0~3_combout\ & (((csr_write_data_i(3)) # (\csr_write_i~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[3]~1_combout\,
	datac => csr_write_data_i(3),
	datad => \csr_write_i~1_combout\,
	combout => \csr_write_data_i~5_combout\);

-- Location: FF_X37_Y35_N15
\csr_write_data_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_write_data_i~5_combout\,
	ena => \csr_write_data_i[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => csr_write_data_i(3));

-- Location: LCCOMB_X38_Y35_N12
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2_combout\ = (csr_write_data_i(3) & (csr_write_data_i(10) & (csr_write_data_i(5) & csr_write_data_i(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => csr_write_data_i(3),
	datab => csr_write_data_i(10),
	datac => csr_write_data_i(5),
	datad => csr_write_data_i(4),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2_combout\);

-- Location: LCCOMB_X38_Y35_N14
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2_combout\ & (csr_write_data_i(1) & (csr_write_data_i(2) & csr_write_data_i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~2_combout\,
	datab => csr_write_data_i(1),
	datac => csr_write_data_i(2),
	datad => csr_write_data_i(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3_combout\);

-- Location: LCCOMB_X39_Y35_N12
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4_combout\ = (\csr_address_i~q\ & (\csr_write_i~q\ & !\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_address_i~q\,
	datab => \csr_write_i~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4_combout\);

-- Location: LCCOMB_X39_Y35_N14
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1) & ((!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1) & (\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\);

-- Location: LCCOMB_X39_Y35_N0
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6_combout\);

-- Location: LCCOMB_X39_Y35_N6
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6_combout\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0)))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0)) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~4_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~6_combout\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~5_combout\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\);

-- Location: LCCOMB_X39_Y35_N16
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]~9_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ & (((\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[0]~7_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]~9_combout\);

-- Location: FF_X39_Y35_N17
\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1));

-- Location: LCCOMB_X40_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\ = (!\u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1) & \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(1),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_erase_state\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y37_N8
\u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\) # (\ram_write_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state~17_combout\,
	datad => \ram_write_i~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2_combout\);

-- Location: LCCOMB_X41_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~3_combout\);

-- Location: FF_X41_Y37_N29
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~3_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\);

-- Location: LCCOMB_X21_Y33_N20
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\);

-- Location: FF_X21_Y33_N21
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\);

-- Location: LCCOMB_X21_Y33_N4
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\);

-- Location: FF_X21_Y33_N5
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\);

-- Location: LCCOMB_X21_Y33_N6
\u0|onchip_flash_0|avmm_data_controller|flash_arclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ = (\clk~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\) # (!\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\);

-- Location: CLKCTRL_G10
\u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\) # (\u0|onchip_flash_0|altera_onchip_flash_block|busy\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|busy\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0_combout\);

-- Location: LCCOMB_X41_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~feeder_combout\);

-- Location: FF_X41_Y38_N17
\u0|onchip_flash_0|avmm_data_controller|flash_busy_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|onchip_flash_0|altera_onchip_flash_block|osc~clkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~feeder_combout\,
	clrn => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_always9~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\);

-- Location: FF_X42_Y36_N17
\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_busy_reg~q\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|din_s1~q\);

-- Location: LCCOMB_X42_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|din_s1~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]~feeder_combout\);

-- Location: FF_X42_Y36_N5
\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg[0]~feeder_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0));

-- Location: LCCOMB_X44_Y38_N28
\u0|onchip_flash_0|avmm_data_controller|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0) & \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy|dreg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\);

-- Location: LCCOMB_X43_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|write_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~18_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~17_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~18_combout\);

-- Location: FF_X43_Y36_N17
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\);

-- Location: LCCOMB_X42_Y36_N26
\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|stdsync_busy_clear|dreg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\);

-- Location: LCCOMB_X42_Y36_N20
\u0|onchip_flash_0|avmm_data_controller|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector15~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~9_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add1~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector15~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector15~2_combout\);

-- Location: FF_X42_Y36_N21
\u0|onchip_flash_0|avmm_data_controller|write_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector15~2_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|write_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(0));

-- Location: LCCOMB_X42_Y36_N14
\u0|onchip_flash_0|avmm_data_controller|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_count\(0) & (!\u0|onchip_flash_0|avmm_data_controller|write_count\(5) & \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|write_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|write_count\(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\);

-- Location: LCCOMB_X44_Y38_N8
\u0|onchip_flash_0|avmm_data_controller|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector10~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add1~10_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\) # (!\u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add1~10_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count[15]~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector10~2_combout\);

-- Location: LCCOMB_X44_Y38_N10
\u0|onchip_flash_0|avmm_data_controller|Selector10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector10~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & \u0|onchip_flash_0|avmm_data_controller|Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector10~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector10~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector10~3_combout\);

-- Location: FF_X44_Y38_N11
\u0|onchip_flash_0|avmm_data_controller|write_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector10~3_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_count\(5));

-- Location: LCCOMB_X42_Y36_N16
\u0|onchip_flash_0|avmm_data_controller|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~1_combout\);

-- Location: LCCOMB_X42_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector26~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_count\(5)) # ((!\u0|onchip_flash_0|avmm_data_controller|write_count\(0)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_count\(5),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal3~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector26~1_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~2_combout\);

-- Location: LCCOMB_X43_Y36_N22
\u0|onchip_flash_0|avmm_data_controller|Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector26~2_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_wait~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector26~2_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~3_combout\);

-- Location: LCCOMB_X43_Y36_N8
\u0|onchip_flash_0|avmm_data_controller|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_DONE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WAIT_BUSY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_WRITE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\);

-- Location: LCCOMB_X43_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|Selector26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector26~3_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector26~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector10~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~4_combout\);

-- Location: FF_X43_Y36_N25
\u0|onchip_flash_0|avmm_data_controller|write_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector26~4_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\);

-- Location: LCCOMB_X44_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_wait~q\ & (((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|read_wait~q\)) # (!\ram_read_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_wait~q\,
	datac => \ram_read_i~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_wait~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0_combout\);

-- Location: LCCOMB_X40_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout\ = (!\start~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\) # 
-- (!\ram_write_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \start~input_o\,
	datac => \ram_write_i~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout\);

-- Location: LCCOMB_X40_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\) # (!\ram_read_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_read_i~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_wait_neg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_wait_neg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\);

-- Location: LCCOMB_X40_Y37_N10
\burst_count_i[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \burst_count_i[0]~1_combout\ = (!\burst_count_i[0]~0_combout\ & (((\ram_address_i~0_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\)) # (!\csr_write_data_i[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \burst_count_i[0]~0_combout\,
	datab => \csr_write_data_i[3]~4_combout\,
	datac => \ram_address_i~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_waitrequest~2_combout\,
	combout => \burst_count_i[0]~1_combout\);

-- Location: FF_X40_Y37_N11
\burst_count_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \burst_count_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => burst_count_i(0));

-- Location: LCCOMB_X41_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0) & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\);

-- Location: LCCOMB_X41_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\) # ((\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!burst_count_i(0) & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => burst_count_i(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~1_combout\);

-- Location: FF_X41_Y37_N23
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0));

-- Location: LCCOMB_X39_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\);

-- Location: LCCOMB_X39_Y37_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) & \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\ & 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) & \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~5_combout\);

-- Location: FF_X39_Y37_N17
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2));

-- Location: LCCOMB_X39_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector109~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector109~0_combout\);

-- Location: LCCOMB_X39_Y37_N4
\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~8_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector109~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\) # (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector109~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~8_combout\);

-- Location: FF_X39_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\);

-- Location: LCCOMB_X39_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1)) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2)) # (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\);

-- Location: LCCOMB_X39_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|data_count[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\);

-- Location: FF_X38_Y37_N5
\u0|onchip_flash_0|avmm_data_controller|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(0));

-- Location: LCCOMB_X38_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|data_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & !\u0|onchip_flash_0|avmm_data_controller|data_count\(1))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~5_combout\);

-- Location: FF_X38_Y37_N29
\u0|onchip_flash_0|avmm_data_controller|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(2));

-- Location: LCCOMB_X38_Y37_N18
\u0|onchip_flash_0|avmm_data_controller|data_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~2_combout\ = ((!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & !\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~2_combout\);

-- Location: LCCOMB_X38_Y37_N26
\u0|onchip_flash_0|avmm_data_controller|data_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ & (!\u0|onchip_flash_0|avmm_data_controller|data_count~2_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|data_count\(0) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~3_combout\);

-- Location: FF_X38_Y37_N27
\u0|onchip_flash_0|avmm_data_controller|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~3_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(1));

-- Location: LCCOMB_X42_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector65~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(1) & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector65~0_combout\);

-- Location: FF_X42_Y38_N21
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector65~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(1));

-- Location: LCCOMB_X38_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~0_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~0_combout\);

-- Location: LCCOMB_X38_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(0)) # ((\u0|onchip_flash_0|avmm_data_controller|data_count\(1)) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\);

-- Location: LCCOMB_X39_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\);

-- Location: LCCOMB_X39_Y37_N8
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1_combout\ = ((!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1_combout\);

-- Location: FF_X38_Y37_N3
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(1));

-- Location: LCCOMB_X42_Y38_N10
\u0|onchip_flash_0|avmm_data_controller|Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector66~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0) & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector66~0_combout\);

-- Location: FF_X42_Y38_N11
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector66~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0));

-- Location: LCCOMB_X38_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\);

-- Location: FF_X38_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0));

-- Location: LCCOMB_X38_Y37_N6
\u0|onchip_flash_0|avmm_data_controller|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0)) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => VCC,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\);

-- Location: LCCOMB_X38_Y37_N8
\u0|onchip_flash_0|avmm_data_controller|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & (!\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(1) & !\u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & ((!\u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(1),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add6~1_cout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\);

-- Location: LCCOMB_X38_Y37_N10
\u0|onchip_flash_0|avmm_data_controller|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\ & ((\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (GND))))
-- \u0|onchip_flash_0|avmm_data_controller|Add6~5\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add6~3_cout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add6~5\);

-- Location: LCCOMB_X38_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add6~5\ & (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add6~5\ & (((\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & \u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add6~7\ = CARRY(((!\u0|onchip_flash_0|avmm_data_controller|Add6~5\) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add6~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add6~7\);

-- Location: LCCOMB_X38_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add6~7\ $ (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	cin => \u0|onchip_flash_0|avmm_data_controller|Add6~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\);

-- Location: LCCOMB_X38_Y37_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\) # (\u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2_combout\);

-- Location: LCCOMB_X39_Y37_N18
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\);

-- Location: LCCOMB_X39_Y37_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\ & \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~6_combout\);

-- Location: FF_X39_Y37_N15
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0));

-- Location: LCCOMB_X39_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) $ (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\);

-- Location: LCCOMB_X39_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\ & 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~7_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~8_combout\);

-- Location: FF_X39_Y37_N13
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1));

-- Location: LCCOMB_X39_Y37_N6
\u0|onchip_flash_0|avmm_data_controller|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\);

-- Location: LCCOMB_X41_Y37_N18
\u0|onchip_flash_0|avmm_data_controller|Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector81~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector81~0_combout\);

-- Location: FF_X41_Y37_N19
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector81~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\);

-- Location: LCCOMB_X41_Y37_N16
\u0|onchip_flash_0|avmm_data_controller|read_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_PULSE_SE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\);

-- Location: FF_X41_Y37_N17
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\);

-- Location: LCCOMB_X46_Y39_N24
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & ((!\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3_combout\);

-- Location: LCCOMB_X46_Y39_N10
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & (((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # ((!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\);

-- Location: LCCOMB_X46_Y39_N18
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~4_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0)))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~4_combout\);

-- Location: FF_X46_Y39_N19
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0));

-- Location: LCCOMB_X46_Y39_N28
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0) $ 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1))))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0_combout\);

-- Location: LCCOMB_X46_Y39_N20
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~2_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~2_combout\);

-- Location: FF_X46_Y39_N21
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1));

-- Location: LCCOMB_X46_Y39_N4
\u0|onchip_flash_0|avmm_data_controller|Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector77~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector77~0_combout\);

-- Location: FF_X46_Y39_N5
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector77~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\);

-- Location: LCCOMB_X46_Y39_N12
\u0|onchip_flash_0|avmm_data_controller|read_state~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~23_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~23_combout\);

-- Location: FF_X46_Y39_N13
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\);

-- Location: LCCOMB_X46_Y39_N22
\u0|onchip_flash_0|avmm_data_controller|read_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ & \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\);

-- Location: FF_X46_Y39_N23
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\);

-- Location: LCCOMB_X44_Y41_N8
\u0|onchip_flash_0|avmm_data_controller|Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector63~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector63~0_combout\);

-- Location: FF_X44_Y41_N9
\u0|onchip_flash_0|avmm_data_controller|avmm_read_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector63~0_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\);

-- Location: LCCOMB_X46_Y39_N26
\u0|onchip_flash_0|avmm_data_controller|Selector64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector64~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector64~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector64~1_combout\);

-- Location: FF_X46_Y39_N27
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector64~1_combout\,
	ena => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\);

-- Location: LCCOMB_X39_Y37_N10
\u0|onchip_flash_0|avmm_data_controller|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector111~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & 
-- (((\u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\ & !\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector111~0_combout\);

-- Location: FF_X39_Y37_N11
\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_PRE_READING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector111~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_PRE_READING~q\);

-- Location: LCCOMB_X39_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|Selector110~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector110~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_PRE_READING~q\) # ((\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_PRE_READING~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector110~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector110~1_combout\);

-- Location: FF_X39_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector110~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\);

-- Location: LCCOMB_X38_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|Selector117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector117~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\) # (\u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add6~6_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add6~8_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add6~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector117~0_combout\);

-- Location: LCCOMB_X40_Y37_N20
\u0|onchip_flash_0|avmm_data_controller|Selector117~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\ & (\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Selector117~0_combout\ $ 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector117~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\);

-- Location: LCCOMB_X40_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|Selector117~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector117~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_READING~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state.READ_VALID_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector117~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector117~2_combout\);

-- Location: FF_X40_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector117~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\);

-- Location: LCCOMB_X36_Y35_N16
\current_state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~16_combout\ = ((cycle_i(2)) # ((cycle_i(1)) # (!cycle_i(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \current_state~16_combout\);

-- Location: LCCOMB_X36_Y35_N0
\current_state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~17_combout\ = (\current_state.idle_s~q\ & (((\current_state.read_s~q\ & \current_state~16_combout\)))) # (!\current_state.idle_s~q\ & (\wb_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wb_en~input_o\,
	datab => \current_state.idle_s~q\,
	datac => \current_state.read_s~q\,
	datad => \current_state~16_combout\,
	combout => \current_state~17_combout\);

-- Location: FF_X36_Y35_N1
\current_state.read_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~17_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.read_s~q\);

-- Location: LCCOMB_X36_Y35_N12
\current_state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~13_combout\ = (\current_state.write_s~q\ & !\current_state.read_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.write_s~q\,
	datad => \current_state.read_s~q\,
	combout => \current_state~13_combout\);

-- Location: LCCOMB_X36_Y35_N2
\cycle_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i~1_combout\ = ((!cycle_i(0) & !cycle_i(1))) # (!cycle_i(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cycle_i(2),
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \cycle_i~1_combout\);

-- Location: LCCOMB_X36_Y35_N4
\cycle_i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i~2_combout\ = (\current_state~13_combout\ & ((\cycle_i~1_combout\) # ((\Equal11~0_combout\ & !cycle_i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~13_combout\,
	datab => \cycle_i~1_combout\,
	datac => \Equal11~0_combout\,
	datad => cycle_i(1),
	combout => \cycle_i~2_combout\);

-- Location: LCCOMB_X36_Y35_N26
\cycle_i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cycle_i~3_combout\ = (\current_state.idle_s~q\ & (cycle_i(0) $ (((\cycle_i~2_combout\) # (\cycle_i~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle_s~q\,
	datab => \cycle_i~2_combout\,
	datac => cycle_i(0),
	datad => \cycle_i~0_combout\,
	combout => \cycle_i~3_combout\);

-- Location: FF_X36_Y35_N27
\cycle_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cycle_i~3_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle_i(0));

-- Location: LCCOMB_X35_Y35_N6
\csr_read_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_read_i~1_combout\ = (\csr_read_i~0_combout\ & (!cycle_i(0))) # (!\csr_read_i~0_combout\ & ((\csr_read_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle_i(0),
	datab => \csr_read_i~0_combout\,
	datac => \csr_read_i~q\,
	combout => \csr_read_i~1_combout\);

-- Location: FF_X35_Y35_N7
csr_read_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \csr_read_i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \csr_read_i~q\);

-- Location: LCCOMB_X35_Y35_N16
\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~0_combout\ = (\csr_read_i~q\ & (\csr_address_i~q\)) # (!\csr_read_i~q\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_read_i~q\,
	datab => \csr_address_i~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	combout => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~0_combout\);

-- Location: FF_X35_Y35_N17
\u0|onchip_flash_0|avmm_csr_controller|csr_control_access\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\);

-- Location: LCCOMB_X38_Y35_N20
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!\u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\ & ((\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & (!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1))) # 
-- (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((\u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(1),
	datac => \u0|onchip_flash_0|avmm_csr_controller|avmm_readdata[0]~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_busy\(1),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X37_Y35_N28
\csr_write_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_i~0_combout\ = (cycle_i(2) & ((\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & ((!\u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3)))) # (!\u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_w_pass~q\,
	datab => cycle_i(2),
	datac => \u0|onchip_flash_0|avmm_csr_controller|csr_sector_page_erase_addr_reg\(3),
	datad => \u0|onchip_flash_0|avmm_csr_controller|csr_control_access~q\,
	combout => \csr_write_i~0_combout\);

-- Location: LCCOMB_X37_Y35_N10
\csr_write_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \csr_write_i~1_combout\ = (!\Equal11~0_combout\ & (\csr_write_i~0_combout\ & (cycle_i(0) & !cycle_i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \csr_write_i~0_combout\,
	datac => cycle_i(0),
	datad => cycle_i(1),
	combout => \csr_write_i~1_combout\);

-- Location: LCCOMB_X35_Y35_N2
\current_state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~14_combout\ = (\csr_write_i~1_combout\ & ((\current_state~13_combout\) # ((\current_state~12_combout\ & \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\)))) # (!\csr_write_i~1_combout\ & (\current_state~12_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_write_i~1_combout\,
	datab => \current_state~12_combout\,
	datac => \current_state~13_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	combout => \current_state~14_combout\);

-- Location: LCCOMB_X35_Y35_N22
\current_state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~15_combout\ = (!\current_state~14_combout\) # (!\current_state.idle_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.idle_s~q\,
	datad => \current_state~14_combout\,
	combout => \current_state~15_combout\);

-- Location: FF_X35_Y35_N23
\current_state.idle_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~15_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.idle_s~q\);

-- Location: LCCOMB_X44_Y37_N18
\ram_write_i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_write_i~3_combout\ = (\current_state.idle_s~q\ & ((\ram_write_i~q\) # ((\current_state.write_s~q\ & \ram_write_i~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle_s~q\,
	datab => \current_state.write_s~q\,
	datac => \ram_write_i~q\,
	datad => \ram_write_i~2_combout\,
	combout => \ram_write_i~3_combout\);

-- Location: FF_X44_Y37_N19
ram_write_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_write_i~3_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_write_i~q\);

-- Location: LCCOMB_X44_Y37_N12
\u0|onchip_flash_0|avmm_data_controller|write_state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\ram_write_i~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \ram_write_i~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\);

-- Location: LCCOMB_X44_Y37_N28
\u0|onchip_flash_0|avmm_data_controller|write_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\) # ((\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_ERROR~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_RESET~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal3~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~19_combout\);

-- Location: LCCOMB_X44_Y37_N22
\u0|onchip_flash_0|avmm_data_controller|write_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|write_state~20_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|write_state~19_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\) # (\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|write_state~16_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|write_state~19_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|write_state~20_combout\);

-- Location: FF_X44_Y37_N23
\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|write_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\);

-- Location: LCCOMB_X44_Y37_N30
\u0|onchip_flash_0|avmm_data_controller|read_wait~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\ & (\ram_read_i~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|write_state.WRITE_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|erase_state.ERASE_STATE_IDLE~q\,
	datac => \ram_read_i~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal2~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\);

-- Location: LCCOMB_X41_Y37_N6
\u0|onchip_flash_0|avmm_data_controller|read_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\ & (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Equal6~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\);

-- Location: FF_X41_Y37_N7
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\);

-- Location: LCCOMB_X44_Y37_N24
\u0|onchip_flash_0|avmm_data_controller|read_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\);

-- Location: FF_X44_Y37_N25
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\);

-- Location: LCCOMB_X41_Y37_N2
\u0|onchip_flash_0|avmm_data_controller|read_state~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~22_combout\ = (\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_wait~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~22_combout\);

-- Location: FF_X41_Y37_N3
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\);

-- Location: LCCOMB_X41_Y37_N0
\u0|onchip_flash_0|avmm_data_controller|Selector105~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\);

-- Location: LCCOMB_X40_Y36_N24
\u0|onchip_flash_0|avmm_data_controller|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector105~0_combout\ = ((!ram_address_i(15)) # (!ram_address_i(14))) # (!ram_address_i(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_address_i(16),
	datab => ram_address_i(14),
	datac => ram_address_i(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector105~0_combout\);

-- Location: LCCOMB_X41_Y36_N4
\u0|onchip_flash_0|avmm_data_controller|Selector105~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector105~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Selector105~0_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector105~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector105~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector105~2_combout\);

-- Location: FF_X41_Y36_N5
\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector105~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_csr_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\);

-- Location: LCCOMB_X44_Y38_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\);

-- Location: FF_X44_Y38_N15
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0));

-- Location: LCCOMB_X45_Y38_N4
\read_data[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[0]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0),
	combout => \read_data[0]~reg0feeder_combout\);

-- Location: LCCOMB_X40_Y37_N26
\read_data[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[8]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ & (((!\function3[0]~input_o\ & !\function3[2]~input_o\)) # (!\function3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[1]~input_o\,
	datab => \function3[0]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	combout => \read_data[8]~2_combout\);

-- Location: LCCOMB_X40_Y37_N8
\read_data[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[8]~29_combout\ = (\mem_en~input_o\ & (\current_state.idle_s~q\ & (\read_data[8]~2_combout\ & \current_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_en~input_o\,
	datab => \current_state.idle_s~q\,
	datac => \read_data[8]~2_combout\,
	datad => \current_state~12_combout\,
	combout => \read_data[8]~29_combout\);

-- Location: FF_X45_Y38_N5
\read_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[0]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[0]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N12
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\);

-- Location: FF_X44_Y43_N13
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1));

-- Location: LCCOMB_X44_Y43_N24
\read_data[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[1]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1),
	combout => \read_data[1]~reg0feeder_combout\);

-- Location: FF_X44_Y43_N25
\read_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[1]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[1]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\);

-- Location: FF_X44_Y43_N31
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2));

-- Location: LCCOMB_X45_Y43_N8
\read_data[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[2]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2),
	combout => \read_data[2]~reg0feeder_combout\);

-- Location: FF_X45_Y43_N9
\read_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[2]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[2]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N0
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\);

-- Location: FF_X44_Y43_N1
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3));

-- Location: LCCOMB_X44_Y43_N2
\read_data[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[3]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3),
	combout => \read_data[3]~reg0feeder_combout\);

-- Location: FF_X44_Y43_N3
\read_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[3]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[3]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N6
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\);

-- Location: FF_X44_Y43_N7
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4));

-- Location: LCCOMB_X44_Y43_N20
\read_data[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[4]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4),
	combout => \read_data[4]~reg0feeder_combout\);

-- Location: FF_X44_Y43_N21
\read_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[4]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[4]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\);

-- Location: FF_X44_Y43_N17
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5));

-- Location: LCCOMB_X44_Y43_N26
\read_data[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[5]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5),
	combout => \read_data[5]~reg0feeder_combout\);

-- Location: FF_X44_Y43_N27
\read_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[5]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[5]~reg0_q\);

-- Location: LCCOMB_X45_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\);

-- Location: FF_X45_Y38_N25
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6));

-- Location: LCCOMB_X45_Y38_N10
\read_data[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[6]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6),
	combout => \read_data[6]~reg0feeder_combout\);

-- Location: FF_X45_Y38_N11
\read_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[6]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[6]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N4
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\);

-- Location: FF_X44_Y38_N5
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7));

-- Location: LCCOMB_X45_Y38_N16
\read_data[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[7]~reg0feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	combout => \read_data[7]~reg0feeder_combout\);

-- Location: FF_X45_Y38_N17
\read_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data[7]~reg0feeder_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[7]~reg0_q\);

-- Location: LCCOMB_X45_Y38_N22
\read_data[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data[15]~3_combout\ = (\function3[1]~input_o\) # (\function3[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \function3[1]~input_o\,
	datac => \function3[0]~input_o\,
	combout => \read_data[15]~3_combout\);

-- Location: LCCOMB_X44_Y38_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8),
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\);

-- Location: FF_X44_Y38_N31
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8));

-- Location: LCCOMB_X45_Y38_N2
\read_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~4_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[15]~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datad => \function3[2]~input_o\,
	combout => \read_data~4_combout\);

-- Location: FF_X45_Y38_N3
\read_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~4_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[8]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N12
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\);

-- Location: FF_X44_Y38_N13
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9));

-- Location: LCCOMB_X45_Y38_N12
\read_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~5_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datac => \read_data[15]~3_combout\,
	datad => \function3[2]~input_o\,
	combout => \read_data~5_combout\);

-- Location: FF_X45_Y38_N13
\read_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~5_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[9]~reg0_q\);

-- Location: LCCOMB_X45_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\);

-- Location: FF_X45_Y38_N21
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10));

-- Location: LCCOMB_X45_Y38_N14
\read_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~6_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[15]~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datad => \function3[2]~input_o\,
	combout => \read_data~6_combout\);

-- Location: FF_X45_Y38_N15
\read_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~6_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[10]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N22
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\);

-- Location: FF_X44_Y38_N23
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11));

-- Location: LCCOMB_X45_Y38_N28
\read_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~7_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[15]~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datad => \function3[2]~input_o\,
	combout => \read_data~7_combout\);

-- Location: FF_X45_Y38_N29
\read_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~7_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[11]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\);

-- Location: FF_X44_Y38_N25
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12));

-- Location: LCCOMB_X45_Y38_N18
\read_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~8_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datac => \read_data[15]~3_combout\,
	datad => \function3[2]~input_o\,
	combout => \read_data~8_combout\);

-- Location: FF_X45_Y38_N19
\read_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~8_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[12]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N2
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\);

-- Location: FF_X44_Y38_N3
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13));

-- Location: LCCOMB_X45_Y38_N8
\read_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~9_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datac => \read_data[15]~3_combout\,
	datad => \function3[2]~input_o\,
	combout => \read_data~9_combout\);

-- Location: FF_X45_Y38_N9
\read_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~9_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[13]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\);

-- Location: FF_X44_Y38_N17
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14));

-- Location: LCCOMB_X45_Y38_N6
\read_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~10_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datac => \read_data[15]~3_combout\,
	datad => \function3[2]~input_o\,
	combout => \read_data~10_combout\);

-- Location: FF_X45_Y38_N7
\read_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~10_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[14]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N6
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\);

-- Location: FF_X44_Y38_N7
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15));

-- Location: LCCOMB_X45_Y38_N0
\read_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~11_combout\ = (\read_data[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15))) # (!\read_data[15]~3_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7) & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data[15]~3_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	datad => \function3[2]~input_o\,
	combout => \read_data~11_combout\);

-- Location: FF_X45_Y38_N1
\read_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~11_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[15]~reg0_q\);

-- Location: LCCOMB_X45_Y38_N30
\read_data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~12_combout\ = (\function3[0]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15))) # (!\function3[0]~input_o\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[0]~input_o\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	combout => \read_data~12_combout\);

-- Location: LCCOMB_X45_Y39_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\);

-- Location: FF_X45_Y39_N9
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16));

-- Location: LCCOMB_X44_Y39_N24
\read_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~13_combout\ = (\function3[1]~input_o\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16))))) # (!\function3[1]~input_o\ & (!\function3[2]~input_o\ & (\read_data~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[2]~input_o\,
	datab => \read_data~12_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16),
	datad => \function3[1]~input_o\,
	combout => \read_data~13_combout\);

-- Location: FF_X44_Y39_N25
\read_data[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~13_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[16]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N18
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\);

-- Location: FF_X44_Y43_N19
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17));

-- Location: LCCOMB_X44_Y39_N6
\read_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~14_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~14_combout\);

-- Location: FF_X44_Y39_N7
\read_data[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~14_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[17]~reg0_q\);

-- Location: LCCOMB_X44_Y38_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\);

-- Location: FF_X44_Y38_N21
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18));

-- Location: LCCOMB_X45_Y38_N26
\read_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~15_combout\ = (\function3[1]~input_o\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18))))) # (!\function3[1]~input_o\ & (\read_data~12_combout\ & (!\function3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data~12_combout\,
	datab => \function3[2]~input_o\,
	datac => \function3[1]~input_o\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18),
	combout => \read_data~15_combout\);

-- Location: FF_X45_Y38_N27
\read_data[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~15_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[18]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\);

-- Location: FF_X44_Y43_N29
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19));

-- Location: LCCOMB_X44_Y39_N8
\read_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~16_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~16_combout\);

-- Location: FF_X44_Y39_N9
\read_data[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~16_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[19]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\);

-- Location: FF_X45_Y39_N15
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20));

-- Location: LCCOMB_X44_Y39_N18
\read_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~17_combout\ = (\function3[1]~input_o\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20))))) # (!\function3[1]~input_o\ & (!\function3[2]~input_o\ & (\read_data~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[2]~input_o\,
	datab => \read_data~12_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20),
	datad => \function3[1]~input_o\,
	combout => \read_data~17_combout\);

-- Location: FF_X44_Y39_N19
\read_data[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~17_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[20]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N22
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\);

-- Location: FF_X44_Y43_N23
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21));

-- Location: LCCOMB_X44_Y39_N0
\read_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~18_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~18_combout\);

-- Location: FF_X44_Y39_N1
\read_data[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~18_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[21]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\);

-- Location: FF_X45_Y39_N29
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22));

-- Location: LCCOMB_X44_Y39_N14
\read_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~19_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22))) # (!\function3[1]~input_o\ & (((\read_data~12_combout\ & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22),
	datab => \read_data~12_combout\,
	datac => \function3[2]~input_o\,
	datad => \function3[1]~input_o\,
	combout => \read_data~19_combout\);

-- Location: FF_X44_Y39_N15
\read_data[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~19_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[22]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N18
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\);

-- Location: FF_X45_Y39_N19
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23));

-- Location: LCCOMB_X44_Y39_N12
\read_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~20_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23))) # (!\function3[1]~input_o\ & (((\read_data~12_combout\ & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23),
	datab => \read_data~12_combout\,
	datac => \function3[2]~input_o\,
	datad => \function3[1]~input_o\,
	combout => \read_data~20_combout\);

-- Location: FF_X44_Y39_N13
\read_data[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~20_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[23]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N0
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\);

-- Location: FF_X45_Y39_N1
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24));

-- Location: LCCOMB_X44_Y39_N26
\read_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~21_combout\ = (\function3[1]~input_o\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24))))) # (!\function3[1]~input_o\ & (!\function3[2]~input_o\ & ((\read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \function3[2]~input_o\,
	datab => \function3[1]~input_o\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24),
	datad => \read_data~12_combout\,
	combout => \read_data~21_combout\);

-- Location: FF_X44_Y39_N27
\read_data[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~21_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[24]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N4
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25),
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\);

-- Location: FF_X44_Y43_N5
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25));

-- Location: LCCOMB_X44_Y39_N20
\read_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~22_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~22_combout\);

-- Location: FF_X44_Y39_N21
\read_data[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~22_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[25]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\);

-- Location: FF_X45_Y39_N31
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26));

-- Location: LCCOMB_X44_Y39_N22
\read_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~23_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~23_combout\);

-- Location: FF_X44_Y39_N23
\read_data[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~23_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[26]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N10
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\);

-- Location: FF_X44_Y43_N11
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27));

-- Location: LCCOMB_X44_Y39_N28
\read_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~24_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~24_combout\);

-- Location: FF_X44_Y39_N29
\read_data[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~24_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[27]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\);

-- Location: FF_X44_Y43_N9
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28));

-- Location: LCCOMB_X44_Y39_N2
\read_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~25_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~25_combout\);

-- Location: FF_X44_Y39_N3
\read_data[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~25_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[28]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\);

-- Location: FF_X45_Y39_N21
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29));

-- Location: LCCOMB_X44_Y39_N16
\read_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~26_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29))) # (!\function3[1]~input_o\ & (((\read_data~12_combout\ & !\function3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29),
	datab => \read_data~12_combout\,
	datac => \function3[2]~input_o\,
	datad => \function3[1]~input_o\,
	combout => \read_data~26_combout\);

-- Location: FF_X44_Y39_N17
\read_data[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~26_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[29]~reg0_q\);

-- Location: LCCOMB_X44_Y43_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datab => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30),
	datad => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\);

-- Location: FF_X44_Y43_N15
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30));

-- Location: LCCOMB_X44_Y39_N10
\read_data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~27_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~27_combout\);

-- Location: FF_X44_Y39_N11
\read_data[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~27_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[30]~reg0_q\);

-- Location: LCCOMB_X45_Y39_N6
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\ = ((\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31)) # (!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\)) # (!\u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_csr_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\);

-- Location: FF_X45_Y39_N7
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31));

-- Location: LCCOMB_X44_Y39_N4
\read_data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_data~28_combout\ = (\function3[1]~input_o\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31))) # (!\function3[1]~input_o\ & (((!\function3[2]~input_o\ & \read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31),
	datab => \function3[1]~input_o\,
	datac => \function3[2]~input_o\,
	datad => \read_data~12_combout\,
	combout => \read_data~28_combout\);

-- Location: FF_X44_Y39_N5
\read_data[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_data~28_combout\,
	ena => \read_data[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data[31]~reg0_q\);

-- Location: LCCOMB_X35_Y35_N26
\waitt~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \waitt~reg0feeder_combout\ = \current_state.idle_s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.idle_s~q\,
	combout => \waitt~reg0feeder_combout\);

-- Location: FF_X35_Y35_N27
\waitt~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \waitt~reg0feeder_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waitt~reg0_q\);

-- Location: LCCOMB_X35_Y35_N4
\done_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \done_i~0_combout\ = (\current_state.idle_s~q\ & ((\done_i~q\) # (\current_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle_s~q\,
	datac => \done_i~q\,
	datad => \current_state~14_combout\,
	combout => \done_i~0_combout\);

-- Location: FF_X35_Y35_N5
done_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \done_i~0_combout\,
	clrn => \mem_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done_i~q\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_read_data(0) <= \read_data[0]~output_o\;

ww_read_data(1) <= \read_data[1]~output_o\;

ww_read_data(2) <= \read_data[2]~output_o\;

ww_read_data(3) <= \read_data[3]~output_o\;

ww_read_data(4) <= \read_data[4]~output_o\;

ww_read_data(5) <= \read_data[5]~output_o\;

ww_read_data(6) <= \read_data[6]~output_o\;

ww_read_data(7) <= \read_data[7]~output_o\;

ww_read_data(8) <= \read_data[8]~output_o\;

ww_read_data(9) <= \read_data[9]~output_o\;

ww_read_data(10) <= \read_data[10]~output_o\;

ww_read_data(11) <= \read_data[11]~output_o\;

ww_read_data(12) <= \read_data[12]~output_o\;

ww_read_data(13) <= \read_data[13]~output_o\;

ww_read_data(14) <= \read_data[14]~output_o\;

ww_read_data(15) <= \read_data[15]~output_o\;

ww_read_data(16) <= \read_data[16]~output_o\;

ww_read_data(17) <= \read_data[17]~output_o\;

ww_read_data(18) <= \read_data[18]~output_o\;

ww_read_data(19) <= \read_data[19]~output_o\;

ww_read_data(20) <= \read_data[20]~output_o\;

ww_read_data(21) <= \read_data[21]~output_o\;

ww_read_data(22) <= \read_data[22]~output_o\;

ww_read_data(23) <= \read_data[23]~output_o\;

ww_read_data(24) <= \read_data[24]~output_o\;

ww_read_data(25) <= \read_data[25]~output_o\;

ww_read_data(26) <= \read_data[26]~output_o\;

ww_read_data(27) <= \read_data[27]~output_o\;

ww_read_data(28) <= \read_data[28]~output_o\;

ww_read_data(29) <= \read_data[29]~output_o\;

ww_read_data(30) <= \read_data[30]~output_o\;

ww_read_data(31) <= \read_data[31]~output_o\;

ww_waitt <= \waitt~output_o\;

ww_done <= \done~output_o\;
END structure;


