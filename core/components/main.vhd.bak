library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity main is 
port (

		clk,start: in std_logic;
		B: out std_logic_vector (31 downto 0)
	
);
end main;



architecture rtl of main is

signal instruction_fetch_decode,pc_fetch_decode,pc4_fetch_decode,
		immediate_decode_alu,pc_decode_alu,pc4_decode_alu,rs1_register_alu,
		rs2_register_alu,alu_output_alu_mem,rs2_alu_mem,pc4_alu_mem,
		alu_output_mem_register,loaded_data_mem_register,
		pc4_mem_register: std_logic_vector(31 downto 0):= (others => '0');
		
signal uut_en,uut_clr: std_logic_vector(5 downto 0):= (others => '0');

signal rs1_address_decode_register,rs2_address_decode_register,
		rd_address_decode_alu,rd_address_alu_mem,
		rd_address_mem_register: std_logic_vector(4 downto 0):= (others => '0');
		
signal function3_decode_alu,function3_alu_mem: std_logic_vector(2 downto 0):= (others => '0');

signal operand_selector_decode_alu,wb_selector_decode_alu,
		wb_selector_alu_mem,wb_selector_mem_register: std_logic_vector(1 downto 0):= (others => '0');
		
signal fetch_en,fetch_wait,function7_decode_alu,add_decode_alu,
		alu_en_decode_alu,compare_en_decode_alu,jump_decode_alu,mem_en_decode_alu,wb_en_decode_alu,
		condition_alu_mem,mem_en_alu_mem,wb_en_alu_mem,mem_wait,wb_en_mem_register,
		stall_decode: std_logic:= '0';

component uut_fetch is
port (
	new_pc_in: in std_logic_vector (31 downto 0);
	clk,pc_selector,uut_fetch_en,uut_fetch_clr,fetch_en: in std_logic;

	instruction,pc_out,pc4_out: out std_logic_vector (31 downto 0);
	fetch_wait: out std_logic
);
end component;

component uut_decode is
port(
	instruction,pc_in,pc4_in: in std_logic_vector (31 downto 0);
	clk,uut_decode_en,uut_decode_clr: in std_logic;
	rd_address_alu,rd_address_mem: in std_logic_vector(4 downto 0);
	function3: out std_logic_vector(2 downto 0);
	function7: out std_logic;
	immediate,pc_out,pc4_out: out std_logic_vector (31 downto 0);
	oper_selector,wb_selector: out std_logic_vector (1 downto 0);
	add,ALU_en,compare_en,jump,mem_en,wb_en,stall: out std_logic;
	rs1_address,rs2_address,rd_address: out std_logic_vector(4 downto 0)
);
end component;

component uut_register is
port(
	clk,uut_register_re_en,uut_register_wb_en,wb_en: in std_logic;
	rd_address,rs2_address,rs1_address : in  std_logic_vector(4 downto 0);
	alu_output,loaded_data,pc4: in std_logic_vector(31 downto 0);
	wb_selector: in std_logic_vector (1 downto 0);
	rs1,rs2: out std_logic_vector (31 downto 0)
	);
end component;

component uut_alu is
port(
	rd_address_in: in std_logic_vector(4 downto 0);
	function3_in : in std_logic_vector(2 downto 0);
	immediate,pc,rs1,rs2_in,pc4_in: in std_logic_vector(31 downto 0);
	operand_selector,wb_selector_in: in std_logic_vector(1 downto 0);
	add,uut_alu_en,uut_alu_clr,alu_en,compare_en,jump,mem_en_in,wb_en_in,function7,clk: in std_logic;

	rd_address_out: out std_logic_vector(4 downto 0);
	function3_out: out std_logic_vector(2 downto 0);
	rs2_out,pc4_out,alu_out: out std_logic_vector(31 downto 0);
	wb_selector_out: out std_logic_vector(1 downto 0);
	condition_out,mem_en_out,wb_en_out: out std_logic
	);
end component;
component uut_mem is
port(
	alu_output_in,rs2_in,pc4_in: in std_logic_vector (31 downto 0);
	rd_address_in: in std_logic_vector(4 downto 0);
	function3: in std_logic_vector(2 downto 0);
	wb_selector_in: in std_logic_vector(1 downto 0);
	clk,uut_mem_en,mem_en,wb_en_in: in std_logic;

	loaded_data,alu_output_out,pc4_out: out std_logic_vector (31 downto 0);
	rd_address_out: out std_logic_vector(4 downto 0);
	wb_selector_out: out std_logic_vector(1 downto 0);
	mem_wait,wb_en_out: out std_logic
	);
end component;

component control_unit is
port (
	clk,start,fetch_wait,mem_wait,branch,stall: in std_logic;
	uut_en,uut_clr: out std_logic_vector(5 downto 0);
	fetch_en: out std_logic
	);
end component;

begin

uut_fetch1: uut_fetch port map(
				new_pc_in => alu_output_alu_mem,
				clk => clk,
				pc_selector => condition_alu_mem,
				uut_fetch_en => uut_en(0),
				uut_fetch_clr => uut_clr(0),
				fetch_en => fetch_en,
				instruction => instruction_fetch_decode,
				pc_out => pc_fetch_decode,
				pc4_out => pc4_fetch_decode,
				fetch_wait => fetch_wait
			   );
uut_decode1: uut_decode port map(
				instruction => instruction_fetch_decode,
				pc_in => pc_fetch_decode,
				pc4_in => pc4_fetch_decode,
				clk => clk,
				uut_decode_clr => uut_clr(1),
				uut_decode_en => uut_en(1),
				function3 => function3_decode_alu,
				function7 => function7_decode_alu,
				immediate => immediate_decode_alu,
				pc_out => pc_decode_alu,
				pc4_out => pc4_decode_alu,
				oper_selector => operand_selector_decode_alu,
				wb_selector => wb_selector_decode_alu,
				add => add_decode_alu,
				alu_en => alu_en_decode_alu,
				compare_en => compare_en_decode_alu,
				jump => jump_decode_alu,
				mem_en => mem_en_decode_alu,
				wb_en => wb_en_decode_alu,
				rs1_address => rs1_address_decode_register,
				rs2_address => rs2_address_decode_register,
				rd_address => rd_address_decode_alu,
				rd_address_alu => rd_address_decode_alu,
				rd_address_mem => rd_address_alu_mem,
				stall => stall_decode
				);
uut_register1: uut_register port map(
				clk => clk,
				uut_register_re_en => uut_en(2),
				uut_register_wb_en => uut_en(5),
				rs1_address => rs1_address_decode_register,
				rs2_address => rs2_address_decode_register,
				wb_en => wb_en_mem_register,
				rd_address => rd_address_mem_register,
				alu_output => alu_output_mem_register,
				loaded_data => loaded_data_mem_register,
				pc4 => pc4_mem_register,
				wb_selector => wb_selector_mem_register,
				rs1 => rs1_register_alu,
				rs2 => rs2_register_alu
				);
uut_alu1: uut_alu port map(
				uut_alu_clr => uut_clr(3),
				uut_alu_en => uut_en(3),
				clk => clk,
				function3_in => function3_decode_alu,
				function7 => function7_decode_alu,
				immediate => immediate_decode_alu,
				pc => pc_decode_alu,
				pc4_in => pc4_decode_alu,
				operand_selector => operand_selector_decode_alu,
				wb_selector_in => wb_selector_decode_alu,
				add => add_decode_alu,
				alu_en => alu_en_decode_alu,
				compare_en => compare_en_decode_alu,
				jump => jump_decode_alu,
				mem_en_in => mem_en_decode_alu,
				wb_en_in => wb_en_decode_alu,
				rs1 => rs1_register_alu,
				rs2_in => rs2_register_alu,
				rd_address_in => rd_address_decode_alu,
				rd_address_out => rd_address_alu_mem,
				function3_out => function3_alu_mem,
				rs2_out => rs2_alu_mem,
				pc4_out => pc4_alu_mem,
				alu_out => alu_output_alu_mem,
				wb_selector_out => wb_selector_alu_mem,
				condition_out => condition_alu_mem,
				mem_en_out => mem_en_alu_mem,
				wb_en_out => wb_en_alu_mem
			  	);
uut_mem1: uut_mem port map(
				rd_address_in => rd_address_alu_mem,
				rd_address_out => rd_address_mem_register,
				function3 => function3_alu_mem,
				rs2_in => rs2_alu_mem,
				pc4_in => pc4_alu_mem,
				alu_output_in => alu_output_alu_mem,
				wb_selector_in => wb_selector_alu_mem,
				mem_en => mem_en_alu_mem,
				wb_en_in => wb_en_alu_mem,
				clk => clk,
				uut_mem_en => uut_en(4),
				loaded_data => loaded_data_mem_register,
				alu_output_out => alu_output_mem_register,
				pc4_out => pc4_mem_register,
				mem_wait => mem_wait,
				wb_selector_out => wb_selector_mem_register,
				wb_en_out => wb_en_mem_register
			  	);
control_unit1: control_unit port map(
				clk => clk,
				start => start,
				fetch_wait => fetch_wait,
				mem_wait => mem_wait,
				branch => condition_alu_mem,
				stall => stall_decode,
				uut_en => uut_en,
				uut_clr => uut_clr,
				fetch_en => fetch_en
				);
				
end rtl;
