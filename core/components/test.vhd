library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is 
port (
		clk,start: in std_logic
);
end test;

architecture rtl of test is


signal function7_decode_alu			: std_logic:= '0';
signal add_decode_alu					: std_logic:= '0';
signal alu_en_decode_alu				: std_logic:= '0';
signal compare_en_decode_alu			: std_logic:= '0';
signal jump_decode_alu					: std_logic:= '0';
signal mem_en_decode_alu				: std_logic:= '0';
signal wb_en_decode_alu					: std_logic:= '0';
signal wb_en_mem_register				: std_logic:= '0';
signal stall_decode						: std_logic:= '0';
signal operand_selector_decode_alu	: std_logic_vector (1 downto 0):= (others => '0');
signal wb_selector_decode_alu			: std_logic_vector (1 downto 0):= (others => '0');
signal wb_selector_mem_register		: std_logic_vector (1 downto 0):= (others => '0');
signal function3_decode_alu			: std_logic_vector (2 downto 0):= (others => '0');
signal rs1_address_decode_register	: std_logic_vector (4 downto 0):= (others => '0');
signal rs2_address_decode_register	: std_logic_vector (4 downto 0):= (others => '0');
signal rd_address_decode_alu			: std_logic_vector (4 downto 0):= (others => '0');
signal rd_address_alu_mem				: std_logic_vector (4 downto 0):= (others => '0');
signal rd_address_mem_register		: std_logic_vector (4 downto 0):= (others => '0');
signal uut_en								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_clr								: std_logic_vector (5 downto 0):= (others => '0');
signal instruction_fetch_decode		: std_logic_vector (31 downto 0):= (others => '0');
signal pc_fetch_decode					: std_logic_vector (31 downto 0):= (others => '0');
signal pc4_fetch_decode					: std_logic_vector (31 downto 0):= (others => '0');
signal immediate_decode_alu			: std_logic_vector (31 downto 0):= (others => '0');
signal pc_decode_alu						: std_logic_vector (31 downto 0):= (others => '0');
signal pc4_decode_alu					: std_logic_vector (31 downto 0):= (others => '0');
signal rs1_register_alu					: std_logic_vector (31 downto 0):= (others => '0');
signal rs2_register_alu					: std_logic_vector (31 downto 0):= (others => '0');
signal alu_output_mem_register		: std_logic_vector (31 downto 0):= (others => '0');
signal loaded_data_mem_register		: std_logic_vector (31 downto 0):= (others => '0');
signal pc4_mem_register					: std_logic_vector (31 downto 0):= (others => '0');
		

component uut_decode is
port(
	clk					: in std_logic;
	uut_decode_en		: in std_logic;
	uut_decode_clr		: in std_logic;
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
	uut_register_re_en: in std_logic;
	uut_register_wb_en: in std_logic;
	wb_en					: in std_logic;
	wb_selector			: in std_logic_vector (1 downto 0);
	rd_address			: in std_logic_vector (4 downto 0);
	rs2_address			: in std_logic_vector (4 downto 0);
	rs1_address			: in std_logic_vector (4 downto 0);
	alu_output			: in std_logic_vector (31 downto 0);
	loaded_data			: in std_logic_vector (31 downto 0);
	pc4					: in std_logic_vector (31 downto 0);
	rs1					: out std_logic_vector (31 downto 0);
	rs2					: out std_logic_vector (31 downto 0)
	);
end component;


begin

uut_decode1: uut_decode port map(
				instruction 			=> instruction_fetch_decode,
				pc_in 					=> pc_fetch_decode,
				pc4_in 					=> pc4_fetch_decode,
				clk 						=> clk,
				uut_decode_clr 		=> uut_clr(1),
				uut_decode_en 			=> uut_en(1),
				function3 				=> function3_decode_alu,
				function7 				=> function7_decode_alu,
				immediate 				=> immediate_decode_alu,
				pc_out 					=> pc_decode_alu,
				pc4_out 					=> pc4_decode_alu,
				oper_selector 			=> operand_selector_decode_alu,
				wb_selector 			=> wb_selector_decode_alu,
				add 						=> add_decode_alu,
				alu_en 					=> alu_en_decode_alu,
				compare_en 				=> compare_en_decode_alu,
				jump 						=> jump_decode_alu,
				mem_en 					=> mem_en_decode_alu,
				wb_en 					=> wb_en_decode_alu,
				rs1_address 			=> rs1_address_decode_register,
				rs2_address 			=> rs2_address_decode_register,
				rd_address 				=> rd_address_decode_alu,
				rd_address_alu 		=> rd_address_decode_alu,
				rd_address_mem 		=> rd_address_alu_mem,
				stall 					=> stall_decode
				);
uut_register1: uut_register port map(
				clk 						=> clk,
				uut_register_re_en 	=> uut_en(2),
				uut_register_wb_en 	=> uut_en(5),
				rs1_address 			=> rs1_address_decode_register,
				rs2_address 			=> rs2_address_decode_register,
				wb_en 					=> wb_en_mem_register,
				rd_address 				=> rd_address_mem_register,
				alu_output 				=> alu_output_mem_register,
				loaded_data 			=> loaded_data_mem_register,
				pc4 						=> pc4_mem_register,
				wb_selector 			=> wb_selector_mem_register,
				rs1 						=> rs1_register_alu,
				rs2 						=> rs2_register_alu
				);

end rtl;