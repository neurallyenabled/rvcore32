library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.registers.all;

entity main is 
port (
		clk,start: in std_logic;
		registers: out reg_array
);
end main;

architecture rtl of main is

signal IF_mem_en							: std_logic:= '0';
signal IF_done								: std_logic:= '0';
signal IF_pc_selector					: std_logic:= '0';
signal IF_pc_increment					: std_logic:= '0';
signal IF_wait								: std_logic:= '0';

signal IF_ID_instruction				: std_logic_vector (31 downto 0):= (others => '0');
signal IF_ID_pc							: std_logic_vector (31 downto 0):= (others => '0');
signal IF_ID_pc4							: std_logic_vector (31 downto 0):= (others => '0');

signal ID_stall							: std_logic:= '0';
signal ID_rs1_address					: std_logic_vector (4 downto 0):= (others => '0');
signal ID_rs2_address					: std_logic_vector (4 downto 0):= (others => '0');

signal ID_ALU_function7					: std_logic:= '0';
signal ID_ALU_add							: std_logic:= '0';
signal ID_ALU_alu_en						: std_logic:= '0';
signal ID_ALU_compare_en				: std_logic:= '0';
signal ID_ALU_jump						: std_logic:= '0';
signal ID_ALU_mem_en						: std_logic:= '0';
signal ID_ALU_wb_en						: std_logic:= '0';
signal ID_ALU_operand_selector		: std_logic_vector (1 downto 0):= (others => '0');
signal ID_ALU_wb_selector				: std_logic_vector (1 downto 0):= (others => '0');
signal ID_ALU_function3					: std_logic_vector (2 downto 0):= (others => '0');
signal ID_ALU_rd_address				: std_logic_vector (4 downto 0):= (others => '0');
signal ID_ALU_immediate					: std_logic_vector (31 downto 0):= (others => '0');
signal ID_ALU_pc							: std_logic_vector (31 downto 0):= (others => '0');
signal ID_ALU_pc4							: std_logic_vector (31 downto 0):= (others => '0');
signal ID_ALU_rs1							: std_logic_vector (31 downto 0):= (others => '0');
signal ID_ALU_rs2							: std_logic_vector (31 downto 0):= (others => '0');

signal ALU_MEM_condition				: std_logic:= '0';
signal ALU_mem_en					: std_logic:= '0';
signal ALU_MEM_wb_en						: std_logic:= '0';
signal ALU_MEM_wb_selector				: std_logic_vector (1 downto 0):= (others => '0');
signal ALU_MEM_function3				: std_logic_vector (2 downto 0):= (others => '0');
signal ALU_MEM_rd_address				: std_logic_vector (4 downto 0):= (others => '0');
signal ALU_MEM_alu_output				: std_logic_vector (31 downto 0):= (others => '0');
signal ALU_MEM_rs2						: std_logic_vector (31 downto 0):= (others => '0');
signal ALU_MEM_pc4						: std_logic_vector (31 downto 0):= (others => '0');

signal MEM_done							: std_logic:= '0';
signal MEM_mem_en							: std_logic:= '0';
signal MEM_wait							: std_logic:= '0';

signal MEM_WB_wb_en						: std_logic:= '0';
signal MEM_WB_wb_selector				: std_logic_vector (1 downto 0):= (others => '0');
signal MEM_WB_rd_address				: std_logic_vector (4 downto 0):= (others => '0');
signal MEM_WB_alu_output				: std_logic_vector (31 downto 0):= (others => '0');
signal MEM_WB_loaded_data				: std_logic_vector (31 downto 0):= (others => '0');
signal MEM_WB_pc4							: std_logic_vector (31 downto 0):= (others => '0');

signal uut_en								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_clr								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_out								: std_logic_vector (5 downto 0):= (others => '0');




		
component uut_fetch is
port (
	clk					: in std_logic;
	start					: in std_logic;
	pc_selector			: in std_logic;
	pc_increment		: in std_logic;
	uut_fetch_en		: in std_logic;
	uut_fetch_clr		: in std_logic;
	uut_fetch_out		: in std_logic;
	fetch_en				: in std_logic;
	new_pc_in			: in std_logic_vector (31 downto 0);
	fetch_wait			: out std_logic;
	fetch_done			: out std_logic;
	instruction			: out std_logic_vector (31 downto 0);
	pc_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0)
);
end component;

component uut_decode is
port(
	clk					: in std_logic;
	uut_decode_en		: in std_logic;
	uut_decode_clr		: in std_logic;
	uut_decode_out		: in std_logic;
	rd_address_alu		: in std_logic_vector (4 downto 0);
	rd_address_mem		: in std_logic_vector (4 downto 0);
	instruction			: in std_logic_vector (31 downto 0);
	pc_in					: in std_logic_vector (31 downto 0);
	pc4_in				: in std_logic_vector (31 downto 0);
	add					: out std_logic;
	alu_en				: out std_logic;
	compare_en			: out std_logic;
	jump					: out std_logic;
	mem_en				: out std_logic;
	wb_en					: out std_logic;
	stall					: out std_logic;
	function7			: out std_logic;
	oper_selector		: out std_logic_vector (1 downto 0);
	wb_selector			: out std_logic_vector (1 downto 0);
	function3			: out std_logic_vector (2 downto 0);
	rs1_address			: out std_logic_vector (4 downto 0);
	rs2_address			: out std_logic_vector (4 downto 0);
	rd_address			: out std_logic_vector (4 downto 0);
	immediate			: out std_logic_vector (31 downto 0);
	pc_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0)
);
end component;

component uut_register is
port(
	clk					: in std_logic;
	start					: in std_logic;
	uut_register_re_en: in std_logic;
	uut_register_wb_en: in std_logic;
	uut_register_clr	: in std_logic;
	uut_register_out	: in std_logic;
	wb_en					: in std_logic;
	wb_selector			: in std_logic_vector (1 downto 0);
	rd_address			: in std_logic_vector (4 downto 0);
	rs2_address			: in std_logic_vector (4 downto 0);
	rs1_address			: in std_logic_vector (4 downto 0);
	alu_output			: in std_logic_vector (31 downto 0);
	loaded_data			: in std_logic_vector (31 downto 0);
	pc4					: in std_logic_vector (31 downto 0);
	rs1					: out std_logic_vector (31 downto 0);
	rs2					: out std_logic_vector (31 downto 0);
	myreg					: out reg_array
	);
end component;

component uut_alu is
port(
	clk					: in std_logic;
	uut_alu_en			: in std_logic;
	uut_alu_clr			: in std_logic;
	uut_alu_out			: in std_logic;
	function7			: in std_logic;
	alu_en				: in std_logic;
	compare_en			: in std_logic;
	add					: in std_logic;
	jump					: in std_logic;
	mem_en_in			: in std_logic;
	wb_en_in				: in std_logic;
	operand_selector	: in std_logic_vector (1 downto 0);
	wb_selector_in		: in std_logic_vector (1 downto 0);
	function3_in 		: in std_logic_vector (2 downto 0);
	rd_address_in		: in std_logic_vector (4 downto 0);
	immediate			: in std_logic_vector (31 downto 0);
	pc						: in std_logic_vector (31 downto 0);
	rs1					: in std_logic_vector (31 downto 0);
	rs2_in				: in std_logic_vector (31 downto 0);
	pc4_in				: in std_logic_vector (31 downto 0);
	condition_out		: out std_logic;
	mem_en_out			: out std_logic;
	wb_en_out			: out std_logic;
	wb_selector_out	: out std_logic_vector (1 downto 0);
	function3_out		: out std_logic_vector (2 downto 0);
	rd_address_out		: out std_logic_vector (4 downto 0);
	rs2_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0);
	alu_out				: out std_logic_vector (31 downto 0)
	);
end component;

component uut_mem is
port(
	clk					: in std_logic;
	uut_mem_en			: in std_logic;
	uut_mem_clr			: in std_logic;
	uut_mem_out			: in std_logic;
	mem_en				: in std_logic;
	wb_en_in				: in std_logic;
	start					: in std_logic;
	wb_selector_in		: in std_logic_vector(1 downto 0);
	function3			: in std_logic_vector(2 downto 0);
	rd_address_in		: in std_logic_vector(4 downto 0);
	alu_output_in		: in std_logic_vector(31 downto 0);
	rs2_in				: in std_logic_vector(31 downto 0);
	pc4_in				: in std_logic_vector(31 downto 0);
	mem_wait				: out std_logic;
	mem_done				: out std_logic;
	wb_en_out			: out std_logic;
	wb_selector_out	: out std_logic_vector(1 downto 0);
	rd_address_out		: out std_logic_vector(4 downto 0);
	loaded_data			: out std_logic_vector(31 downto 0);
	alu_output_out		: out std_logic_vector(31 downto 0);
	pc4_out				: out std_logic_vector(31 downto 0)
	);
end component;

component control_unit is
port (
	clk			: in std_logic;
	start			: in std_logic;
	fetch_wait	: in std_logic;
	fetch_done	: in std_logic;
	mem_wait		: in std_logic;
	mem_done		: in std_logic;
	branch		: in std_logic;
	stall			: in std_logic;
	I_mem_en		: in std_logic;
	O_mem_en		: out std_logic;
	fetch_en		: out std_logic;
	pc_selector	: out std_logic;
	pc_increment: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
	);
end component;

begin

uut_fetch1: uut_fetch port map(
				clk 						=> clk,
				start						=> start,
				uut_fetch_en 			=> uut_en(0),
				uut_fetch_clr 			=> uut_clr(0),
				uut_fetch_out			=> uut_out(0),
				
				fetch_wait				=> IF_wait,
				fetch_en 				=> IF_mem_en,
				fetch_done				=> IF_done,
				
				pc_selector 			=> IF_pc_selector,
				pc_increment			=> IF_pc_increment,
				new_pc_in 				=> ALU_MEM_alu_output,

				instruction 			=> IF_ID_instruction,
				pc_out 					=> IF_ID_pc,
				pc4_out 					=> IF_ID_pc4
			   );
uut_decode1: uut_decode port map(
				clk 						=> clk,
				uut_decode_clr 		=> uut_clr(1),
				uut_decode_en 			=> uut_en(1),
				uut_decode_out			=> uut_out(1),
				instruction 			=> IF_ID_instruction,
				pc_in 					=> IF_ID_pc,
				pc4_in 					=> IF_ID_pc4,
				function3 				=> ID_ALU_function3,
				function7 				=> ID_ALU_function7,
				immediate 				=> ID_ALU_immediate,
				pc_out 					=> ID_ALU_pc,
				pc4_out 					=> ID_ALU_pc4,
				oper_selector 			=> ID_ALU_operand_selector,
				wb_selector 			=> ID_ALU_wb_selector,
				add 						=> ID_ALU_add,
				alu_en 					=> ID_ALU_alu_en,
				compare_en 				=> ID_ALU_compare_en,
				jump 						=> ID_ALU_jump,
				mem_en 					=> ID_ALU_mem_en,
				wb_en 					=> ID_ALU_wb_en,
				rs1_address 			=> ID_rs1_address,
				rs2_address 			=> ID_rs2_address,
				rd_address 				=> ID_ALU_rd_address,
				rd_address_alu 		=> ID_ALU_rd_address,
				rd_address_mem 		=> ALU_MEM_rd_address,
				stall 					=> ID_stall
				);
uut_register1: uut_register port map(
				clk 						=> clk,
				start						=> start,
				uut_register_re_en 	=> uut_en(2),
				uut_register_wb_en 	=> uut_en(5),
				uut_register_clr		=> uut_clr(2),
				uut_register_out		=> uut_out(2),
				rs1_address 			=> ID_rs1_address,
				rs2_address 			=> ID_rs2_address,
				rs1 						=> ID_ALU_rs1,
				rs2 						=> ID_ALU_rs2,
				wb_en 					=> MEM_WB_wb_en,
				rd_address 				=> MEM_WB_rd_address,
				alu_output 				=> MEM_WB_alu_output,
				loaded_data 			=> MEM_WB_loaded_data,
				pc4 						=> MEM_WB_pc4,
				wb_selector 			=> MEM_WB_wb_selector,
				myreg						=> registers
				);
uut_alu1: uut_alu port map(
				uut_alu_clr 			=> uut_clr(3),
				uut_alu_en 				=> uut_en(3),
				uut_alu_out				=> uut_out(3),
				clk 						=> clk,
				function3_in 			=> ID_ALU_function3,
				function7 				=> ID_ALU_function7,
				immediate 				=> ID_ALU_immediate,
				pc 						=> ID_ALU_pc,
				pc4_in 					=> ID_ALU_pc4,
				operand_selector 		=> ID_ALU_operand_selector,
				wb_selector_in 		=> ID_ALU_wb_selector,
				add 						=> ID_ALU_add,
				alu_en 					=> ID_ALU_alu_en,
				compare_en 				=> ID_ALU_compare_en,
				jump 						=> ID_ALU_jump,
				mem_en_in 				=> ID_ALU_mem_en,
				wb_en_in 				=> ID_ALU_wb_en,
				rs1 						=> ID_ALU_rs1,
				rs2_in 					=> ID_ALU_rs2,
				rd_address_in 			=> ID_ALU_rd_address,
				rd_address_out 		=> ALU_MEM_rd_address,
				function3_out 			=> ALU_MEM_function3,
				rs2_out 					=> ALU_MEM_rs2,
				pc4_out 					=> ALU_MEM_pc4,
				alu_out 					=> ALU_MEM_alu_output,
				wb_selector_out 		=> ALU_MEM_wb_selector,
				condition_out 			=> ALU_MEM_condition,
				mem_en_out 				=> ALU_mem_en,
				wb_en_out 				=> ALU_MEM_wb_en
			  	);
uut_mem1: uut_mem port map(
				clk 						=> clk,
				start						=> start,
				uut_mem_en 				=> uut_en(4),
				uut_mem_clr				=> uut_clr(4),
				uut_mem_out				=> uut_out(4),
				rd_address_in 			=> ALU_MEM_rd_address,
				rd_address_out 		=> MEM_WB_rd_address,
				function3 				=> ALU_MEM_function3,
				rs2_in 					=> ALU_MEM_rs2,
				pc4_in 					=> ALU_MEM_pc4,
				alu_output_in 			=> ALU_MEM_alu_output,
				wb_selector_in 		=> ALU_MEM_wb_selector,
				mem_en 					=> MEM_mem_en,
				wb_en_in 				=> ALU_MEM_wb_en,
				loaded_data 			=> MEM_WB_loaded_data,
				alu_output_out 		=> MEM_WB_alu_output,
				pc4_out 					=> MEM_WB_pc4,
				mem_wait					=> MEM_wait,
				mem_done					=> MEM_done,
				wb_selector_out 		=> MEM_WB_wb_selector,
				wb_en_out 				=> MEM_WB_wb_en
			  	);
control_unit1: control_unit port map(
				clk 						=> clk,
				start 					=> start,
				branch 					=> ALU_MEM_condition,
				stall 					=> ID_stall,
				uut_en 					=> uut_en,
				uut_clr 					=> uut_clr,
				uut_out					=> uut_out,
				pc_selector				=> IF_pc_selector,
				pc_increment			=> IF_pc_increment,
				fetch_en 				=> IF_mem_en,
				fetch_wait				=> IF_wait,
				fetch_done				=> IF_done,
				I_mem_en					=> ALU_mem_en,
				O_mem_en					=> MEM_mem_en,
				mem_wait					=> MEM_wait,
				mem_done					=> MEM_done
				);	
end rtl;
