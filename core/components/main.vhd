library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity main is 
port (
		clk,start: in std_logic;
		reg31: out std_logic_vector (31 downto 0)
);
end main;

architecture rtl of main is

signal IF_mem_en							: std_logic:= '0';
signal IF_done								: std_logic:= '0';
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
signal ID_ALU_stop						: std_logic:= '0';
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
signal ALU_mem_en							: std_logic:= '0';
signal ALU_MEM_wb_en						: std_logic:= '0';
signal ALU_MEM_stop						: std_logic:= '0';
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
signal MEM_WB_stop						: std_logic:= '0';
signal MEM_WB_wb_selector				: std_logic_vector (1 downto 0):= (others => '0');
signal MEM_WB_rd_address				: std_logic_vector (4 downto 0):= (others => '0');
signal MEM_WB_alu_output				: std_logic_vector (31 downto 0):= (others => '0');
signal MEM_WB_loaded_data				: std_logic_vector (31 downto 0):= (others => '0');
signal MEM_WB_pc4							: std_logic_vector (31 downto 0):= (others => '0');

signal uut_en								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_clr								: std_logic_vector (5 downto 0):= (others => '0');
signal start_i								: std_logic:= '0';

		
component uut_fetch is
port (
	clk				: in std_logic;
	I_start			: in std_logic;
	I_pc_selector	: in std_logic;
	uut_fetch_en	: in std_logic;
	uut_fetch_clr	: in std_logic;
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
	I_branch				: in std_logic;
	I_start				: in std_logic;
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
	O_stop				: out std_logic;
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

component uut_register is
port(
	clk					: in std_logic;
	uut_register_re_en: in std_logic;
	uut_register_wb_en: in std_logic;
	uut_register_re_clr	: in std_logic;
	uut_register_wb_clr	: in std_logic;
	I_wb_en				: in std_logic;
	I_wb_selector		: in std_logic_vector (1 downto 0);
	I_rd_address		: in std_logic_vector (4 downto 0);
	I_rs2_address		: in std_logic_vector (4 downto 0);
	I_rs1_address		: in std_logic_vector (4 downto 0);
	I_alu_output		: in std_logic_vector (31 downto 0);
	I_loaded_data		: in std_logic_vector (31 downto 0);
	I_pc4					: in std_logic_vector (31 downto 0);
	O_rs1					: out std_logic_vector (31 downto 0);
	O_rs2					: out std_logic_vector (31 downto 0);
	O_reg31           : out std_logic_vector (31 downto 0)
	);
end component;

component uut_alu is
port(
	clk						: in std_logic;
	uut_alu_en				: in std_logic;
	uut_alu_clr				: in std_logic;
	I_function7				: in std_logic;
	I_alu_en					: in std_logic;
	I_compare_en			: in std_logic;
	I_add						: in std_logic;
	I_jump					: in std_logic;
	I_mem_en					: in std_logic;
	I_wb_en					: in std_logic;
	I_stop					: in std_logic;
	I_operand_selector	: in std_logic_vector (1 downto 0);
	I_wb_selector			: in std_logic_vector (1 downto 0);
	I_function3 			: in std_logic_vector (2 downto 0);
	I_rd_address			: in std_logic_vector (4 downto 0);
	I_immediate				: in std_logic_vector (31 downto 0);
	I_pc						: in std_logic_vector (31 downto 0);
	I_rs1						: in std_logic_vector (31 downto 0);
	I_rs2						: in std_logic_vector (31 downto 0);
	I_pc4						: in std_logic_vector (31 downto 0);
	O_condition				: out std_logic;
	O_mem_en					: out std_logic;
	O_wb_en					: out std_logic;
	O_stop					: out std_logic;
	O_wb_selector			: out std_logic_vector (1 downto 0);
	O_function3				: out std_logic_vector (2 downto 0);
	O_rd_address			: out std_logic_vector (4 downto 0);
	O_rs2						: out std_logic_vector (31 downto 0);
	O_pc4						: out std_logic_vector (31 downto 0);
	O_alu_output			: out std_logic_vector (31 downto 0)
	);
end component;

component uut_mem is
port(
	clk				: in std_logic;
	uut_mem_en		: in std_logic;
	uut_mem_clr		: in std_logic;
	I_mem_en			: in std_logic;
	I_wb_en			: in std_logic;
	I_start			: in std_logic;
	I_stop			: in std_logic;
	I_wb_selector	: in std_logic_vector(1 downto 0);
	I_function3		: in std_logic_vector(2 downto 0);
	I_rd_address	: in std_logic_vector(4 downto 0);
	I_alu_output	: in std_logic_vector(31 downto 0);
	I_rs2				: in std_logic_vector(31 downto 0);
	I_pc4				: in std_logic_vector(31 downto 0);
	O_mem_wait		: out std_logic;
	O_mem_done		: out std_logic;
	O_wb_en			: out std_logic;
	O_stop			: out std_logic;
	O_wb_selector	: out std_logic_vector(1 downto 0);
	O_rd_address	: out std_logic_vector(4 downto 0);
	O_loaded_data	: out std_logic_vector(31 downto 0);
	O_alu_output	: out std_logic_vector(31 downto 0);
	O_pc4				: out std_logic_vector(31 downto 0)
	);
end component;

component control_unit is
port (
	clk			: in std_logic;
	I_start		: in std_logic;
	I_IF_wait	: in std_logic;
	I_IF_done	: in std_logic;
	I_MEM_wait	: in std_logic;
	I_MEM_done	: in std_logic;
	I_branch		: in std_logic;
	I_stall		: in std_logic;
	I_stop		: in std_logic;
	I_MEM_en		: in std_logic;
	O_MEM_en		: out std_logic;
	O_IF_en		: out std_logic;
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
	);
end component;

attribute preserve: boolean; 
attribute preserve of uut_fetch: component is true;
attribute preserve of uut_mem: component is true; 
attribute preserve of rtl: architecture is true; 

begin

uut_fetch1: uut_fetch port map(
				clk 						=> clk,
				I_start					=> start_i,
				uut_fetch_en 			=> uut_en(0),
				uut_fetch_clr 			=> uut_clr(0),
				
				O_fetch_wait			=> IF_wait,
				I_fetch_en 				=> IF_mem_en,
				O_fetch_done			=> IF_done,
				
				I_pc_selector 			=> ALU_MEM_condition,
				I_alu_output 			=> ALU_MEM_alu_output,

				O_instruction 			=> IF_ID_instruction,
				O_pc 						=> IF_ID_pc,
				O_pc4 					=> IF_ID_pc4
			   );
uut_decode1: uut_decode port map(
				clk 						=> clk,
				uut_decode_clr 		=> uut_clr(1),
				uut_decode_en 			=> uut_en(1),
				I_branch					=> ALU_MEM_condition,
				I_start					=> start_i,
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
				O_stop					=> ID_ALU_stop,
				O_rs1_address 			=> ID_rs1_address,
				O_rs2_address 			=> ID_rs2_address,
				
				O_rd_address 			=> ID_ALU_rd_address,
				I_rd_address_alu 		=> ID_ALU_rd_address,
				I_rd_address_mem 		=> ALU_MEM_rd_address,
				O_stall 					=> ID_stall
				);
uut_register1: uut_register port map(
				clk 						=> clk,
				uut_register_re_en	=> uut_en(2),
				uut_register_wb_en	=> uut_en(5),
				uut_register_re_clr	=> uut_clr(2),
				uut_register_wb_clr	=> uut_clr(5),
				
				I_rs1_address 			=> ID_rs1_address,
				I_rs2_address 			=> ID_rs2_address,
				O_rs1 					=> ID_ALU_rs1,
				O_rs2 					=> ID_ALU_rs2,
				
				I_wb_en 					=> MEM_WB_wb_en,
				I_wb_selector 			=> MEM_WB_wb_selector,				
				I_rd_address 			=> MEM_WB_rd_address,
				I_alu_output 			=> MEM_WB_alu_output,
				I_loaded_data 			=> MEM_WB_loaded_data,
				I_pc4 					=> MEM_WB_pc4,
				O_reg31              => reg31
								);
uut_alu1: uut_alu port map(
				clk 						=> clk,
				uut_alu_en 				=> uut_en(3),
				uut_alu_clr 			=> uut_clr(3),

				I_function3 			=> ID_ALU_function3,
				I_function7 			=> ID_ALU_function7,
				I_immediate 			=> ID_ALU_immediate,
				I_pc 						=> ID_ALU_pc,
				I_pc4 					=> ID_ALU_pc4,
				I_operand_selector 	=> ID_ALU_operand_selector,
				I_wb_selector 			=> ID_ALU_wb_selector,
				I_add 					=> ID_ALU_add,
				I_alu_en 				=> ID_ALU_alu_en,
				I_compare_en 			=> ID_ALU_compare_en,
				I_jump 					=> ID_ALU_jump,
				I_mem_en 				=> ID_ALU_mem_en,
				I_wb_en 					=> ID_ALU_wb_en,
				I_stop					=> ID_ALU_stop,
				I_rs1 					=> ID_ALU_rs1,
				I_rs2						=> ID_ALU_rs2,
				I_rd_address 			=> ID_ALU_rd_address,
				O_rd_address 			=> ALU_MEM_rd_address,
				O_function3 			=> ALU_MEM_function3,
				O_rs2 					=> ALU_MEM_rs2,
				O_pc4 					=> ALU_MEM_pc4,
				O_alu_output 			=> ALU_MEM_alu_output,
				O_wb_selector 			=> ALU_MEM_wb_selector,
				O_condition 			=> ALU_MEM_condition,
				O_mem_en 				=> ALU_mem_en,
				O_wb_en 					=> ALU_MEM_wb_en,
				O_stop					=> ALU_MEM_stop
			  	);
uut_mem1: uut_mem port map(
				clk 						=> clk,
				I_start					=> start_i,
				uut_mem_en 				=> uut_en(4),
				uut_mem_clr				=> uut_clr(4),

				I_rd_address 			=> ALU_MEM_rd_address,
				O_rd_address 			=> MEM_WB_rd_address,
				I_function3 			=> ALU_MEM_function3,
				I_rs2 					=> ALU_MEM_rs2,
				I_pc4 					=> ALU_MEM_pc4,
				I_alu_output 			=> ALU_MEM_alu_output,
				I_wb_selector 			=> ALU_MEM_wb_selector,
				I_mem_en 				=> MEM_mem_en,
				I_wb_en 					=> ALU_MEM_wb_en,
				I_stop					=> ALU_MEM_stop,
				O_loaded_data 			=> MEM_WB_loaded_data,
				O_alu_output 			=> MEM_WB_alu_output,
				O_pc4 					=> MEM_WB_pc4,
				O_mem_wait				=> MEM_wait,
				O_mem_done				=> MEM_done,
				O_wb_selector 			=> MEM_WB_wb_selector,
				O_wb_en 					=> MEM_WB_wb_en,
				O_stop					=> MEM_WB_stop
			  	);
control_unit1: control_unit port map(
				clk 						=> clk,
				I_start 					=> start_i,
				I_stop					=> MEM_WB_stop,
				I_branch 				=> ALU_MEM_condition,
				I_stall 					=> ID_stall,
				uut_en 					=> uut_en,
				uut_clr 					=> uut_clr,
				O_IF_en 					=> IF_mem_en,
				I_IF_wait				=> IF_wait,
				I_IF_done				=> IF_done,
				I_mem_en					=> ALU_mem_en,
				O_mem_en					=> MEM_mem_en,
				I_MEM_wait				=> MEM_wait,
				I_MEM_done				=> MEM_done
				);	

process(start,clk)
begin
if rising_edge(clk) then
	start_i <= start;
end if;
end process;
end rtl;
