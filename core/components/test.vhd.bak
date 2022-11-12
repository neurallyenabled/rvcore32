library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.registers.all;

entity test is 
port (
		clk,start,ALU_MEM_WB_EN: in std_logic;
		instruction_cycle: out std_logic;
		ALU_MEM_wb_selector: in std_logic_vector(1 downto 0);
		ALU_MEM_FUNCTION3: in std_logic_vector(2 downto 0);
		ID_rs1_address,ID_rs2_address,ALU_MEM_rd_address:	 in std_logic_vector (4 downto 0);
		 ALU_MEM_alu_output,ALU_MEM_pc4,ALU_MEM_RS2:	 in std_logic_vector (31 downto 0);
		ID_ALU_rs1, ID_ALU_rs2:	 out std_logic_vector (31 downto 0);
		registers: out reg_array
);
end test;

architecture rtl of test is

signal IF_mem_en							: std_logic:= '0';
signal IF_done								: std_logic:= '1';
signal IF_pc_selector					: std_logic:= '0';
signal IF_wait								: std_logic:= '0';



signal ID_stall							: std_logic:= '0';




signal ALU_MEM_condition				: std_logic:= '0';
signal ALU_mem_en							: std_logic:= '0';


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


component uut_mem is
port(
	clk				: in std_logic;
	uut_mem_en		: in std_logic;
	uut_mem_clr		: in std_logic;
	I_mem_en			: in std_logic;
	I_wb_en			: in std_logic;
	I_start			: in std_logic;
	I_wb_selector	: in std_logic_vector(1 downto 0);
	I_function3		: in std_logic_vector(2 downto 0);
	I_rd_address	: in std_logic_vector(4 downto 0);
	I_alu_output	: in std_logic_vector(31 downto 0);
	I_rs2				: in std_logic_vector(31 downto 0);
	I_pc4				: in std_logic_vector(31 downto 0);
	O_mem_wait		: out std_logic;
	O_mem_done		: out std_logic;
	O_wb_en			: out std_logic;
	O_wb_selector	: out std_logic_vector(1 downto 0);
	O_rd_address	: out std_logic_vector(4 downto 0);
	O_loaded_data	: out std_logic_vector(31 downto 0);
	O_alu_output	: out std_logic_vector(31 downto 0);
	O_pc4				: out std_logic_vector(31 downto 0)
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
	myreg					: out reg_array
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
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
	);
end component;

attribute preserve: boolean;  
attribute preserve of rtl: architecture is true; 

begin

uut_mem1: uut_mem port map(
				clk 						=> clk,
				I_start					=> start,
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
				O_loaded_data 			=> MEM_WB_loaded_data,
				O_alu_output 			=> MEM_WB_alu_output,
				O_pc4 					=> MEM_WB_pc4,
				O_mem_wait				=> MEM_wait,
				O_mem_done				=> MEM_done,
				O_wb_selector 			=> MEM_WB_wb_selector,
				O_wb_en 					=> MEM_WB_wb_en
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
				
				myreg						=> registers
				);


control_unit1: control_unit port map(
				clk 						=> clk,
				start 					=> start,
				branch 					=> ALU_MEM_condition,
				stall 					=> ID_stall,
				uut_en 					=> uut_en,
				uut_clr 					=> uut_clr,
				fetch_en 				=> IF_mem_en,
				fetch_wait				=> IF_wait,
				fetch_done				=> IF_done,
				I_mem_en					=> ALU_mem_en,
				O_mem_en					=> MEM_mem_en,
				mem_wait					=> MEM_wait,
				mem_done					=> MEM_done,
				instruction_cycle		=> instruction_cycle
				);	
end rtl;
