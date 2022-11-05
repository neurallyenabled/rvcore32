library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera;
use altera.altera_syn_attributes.all;


entity test is 
port (
		clk,start,jump: in std_logic;
		ALU_MEM_rd_address: in std_logic_vector (4 downto 0);
		ALU_MEM_alu_output: in std_logic_vector (31 downto 0);
		ID_ALU_function7,ID_ALU_add,ID_ALU_alu_en,ID_ALU_compare_en,ID_ALU_jump,ID_ALU_mem_en,ID_ALU_wb_en: out std_logic;
		ID_ALU_operand_selector,ID_ALU_wb_selector						: out std_logic_vector (1 downto 0);
		ID_ALU_function3															: out std_logic_vector (2 downto 0);
		ID_ALU_immediate,ID_ALU_pc,ID_ALU_pc4,ID_ALU_rs1,ID_ALU_rs2	: out std_logic_vector (31 downto 0)
);
end test;

architecture rtl of test is

signal IF_mem_en							: std_logic:= '0';
signal IF_done								: std_logic:= '0';
signal IF_wait								: std_logic:= '0';

signal IF_ID_instruction				: std_logic_vector (31 downto 0):= (others => '0');
signal IF_ID_pc							: std_logic_vector (31 downto 0):= (others => '0');
signal IF_ID_pc4							: std_logic_vector (31 downto 0):= (others => '0');

signal ID_stall							: std_logic:= '0';
signal ID_rs1_address					: std_logic_vector (4 downto 0):= (others => '0');
signal ID_rs2_address					: std_logic_vector (4 downto 0):= (others => '0');
signal ID_ALU_rd_address				: std_logic_vector (4 downto 0):= (others => '0');

signal uut_en								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_clr								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_out								: std_logic_vector (5 downto 0):= (others => '0');


component uut_fetch is
port (
	clk				: in std_logic;
	I_start			: in std_logic;
	I_pc_selector	: in std_logic;
	uut_fetch_en	: in std_logic;
	uut_fetch_clr	: in std_logic;
	uut_fetch_out	: in std_logic;
	I_fetch_en		: in std_logic;
	I_alu_output	: in std_logic_vector (31 downto 0);
	O_fetch_wait	: out std_logic;
	O_fetch_done	: out std_logic;
	O_instruction	: out std_logic_vector (31 downto 0);
	O_pc				: out std_logic_vector (31 downto 0);
	O_pc4				: out std_logic_vector (31 downto 0)
);
end component;

component uut_decode is
port(
	clk					: in std_logic;
	uut_decode_en		: in std_logic;
	uut_decode_clr		: in std_logic;
	uut_decode_out		: in std_logic;
	I_rd_address_alu	: in std_logic_vector (4 downto 0);
	I_rd_address_mem	: in std_logic_vector (4 downto 0);
	I_instruction		: in std_logic_vector (31 downto 0);
	I_pc					: in std_logic_vector (31 downto 0);
	I_pc4					: in std_logic_vector (31 downto 0);
	O_add					: out std_logic;
	O_alu_en				: out std_logic;
	O_compare_en		: out std_logic;
	O_jump				: out std_logic;
	O_mem_en				: out std_logic;
	O_wb_en				: out std_logic;
	O_stall				: out std_logic;
	O_function7			: out std_logic;
	O_oper_selector	: out std_logic_vector (1 downto 0);
	O_wb_selector		: out std_logic_vector (1 downto 0);
	O_function3			: out std_logic_vector (2 downto 0);
	O_rs1_address		: out std_logic_vector (4 downto 0);
	O_rs2_address		: out std_logic_vector (4 downto 0);
	O_rd_address		: out std_logic_vector (4 downto 0);
	O_immediate			: out std_logic_vector (31 downto 0);
	O_pc					: out std_logic_vector (31 downto 0);
	O_pc4					: out std_logic_vector (31 downto 0)
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
	instruction_cycle: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
	);
end component;

attribute preserve: boolean; 
attribute preserve of uut_fetch: component is true; 
attribute preserve of rtl: architecture is true; 
begin

uut_fetch1: uut_fetch port map(
				clk 						=> clk,
				I_start					=> start,
				uut_fetch_en 			=> uut_en(0),
				uut_fetch_clr 			=> uut_clr(0),
				uut_fetch_out			=> uut_out(0),
				
				O_fetch_wait			=> IF_wait,
				I_fetch_en 				=> IF_mem_en,
				O_fetch_done			=> IF_done,
				
				I_pc_selector 			=> jump,
				I_alu_output 			=> ALU_MEM_alu_output,

				O_instruction 			=> IF_ID_instruction,
				O_pc 						=> IF_ID_pc,
				O_pc4 					=> IF_ID_pc4
			   );

uut_decode1: uut_decode port map(
				clk 						=> clk,
				uut_decode_clr 		=> uut_clr(1),
				uut_decode_en 			=> uut_en(1),
				uut_decode_out			=> uut_out(1),
				
				I_instruction 			=> IF_ID_instruction,
				I_pc 						=> IF_ID_pc,
				I_pc4 					=> IF_ID_pc4,
				
				O_function3 			=> ID_ALU_function3,
				O_function7 			=> ID_ALU_function7,
				O_immediate 			=> ID_ALU_immediate,
				O_pc 						=> ID_ALU_pc,
				O_pc4 					=> ID_ALU_pc4,
				O_oper_selector 		=> ID_ALU_operand_selector,
				O_wb_selector 			=> ID_ALU_wb_selector,
				O_add 					=> ID_ALU_add,
				O_alu_en 				=> ID_ALU_alu_en,
				O_compare_en 			=> ID_ALU_compare_en,
				O_jump 					=> ID_ALU_jump,
				O_mem_en 				=> ID_ALU_mem_en,
				O_wb_en 					=> ID_ALU_wb_en,
				O_rs1_address 			=> ID_rs1_address,
				O_rs2_address 			=> ID_rs2_address,
				
				O_rd_address 			=> ID_ALU_rd_address,
				I_rd_address_alu 		=> ID_ALU_rd_address,
				I_rd_address_mem 		=> ALU_MEM_rd_address,
				O_stall 					=> ID_stall
				);

control_unit1: control_unit port map(
				clk 						=> clk,
				start 					=> start,
				branch 					=> jump,
				stall 					=> ID_stall,
				uut_en 					=> uut_en,
				uut_clr 					=> uut_clr,
				uut_out					=> uut_out,
				fetch_en 				=> IF_mem_en,
				fetch_wait				=> IF_wait,
				fetch_done				=> IF_done,
				I_mem_en					=> '0',
				O_mem_en					=> open,
				mem_wait					=> '0',
				mem_done					=> '0'
				);	
end rtl;
