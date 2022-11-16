library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_mem is 
port (
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
end uut_mem;

architecture rtl of uut_mem is

signal O_loaded_data_i: std_logic_vector(31 downto 0):= (others => '0');

component memory_interface is 
port (
	clk 				: in std_logic;
	mem_en			: in std_logic;
	wb_en				: in std_logic;
	start				: in std_logic;
	function3		: in std_logic_vector (2 downto 0);
	address			: in std_logic_vector (13 downto 0);
	write_data		: in std_logic_vector (31 downto 0);
	read_data		: out std_logic_vector (31 downto 0);
	waitt				: out std_logic;
	done				: out std_logic
);
end component;

begin

mem1: memory_interface port map (
				clk 			=> clk,
				mem_en 		=> I_mem_en,
				wb_en 		=> I_wb_en,
				start 		=> I_start,
				function3 	=> I_function3,
				address 		=> I_alu_output(13 downto 0), --change value
				write_data 	=> I_rs2,
				read_data 	=> O_loaded_data_i,
				waitt 		=> O_mem_wait,
				done			=> O_mem_done
				);

process(clk,uut_mem_en,uut_mem_clr)
begin
	if uut_mem_clr = '1' then
		O_wb_en				<= '0';	
		O_wb_selector		<= (others => '0');
		O_rd_address		<= (others => '0');
		O_loaded_data		<= (others => '0');
		O_alu_output		<= (others => '0');
		O_pc4					<= (others => '0');
	elsif rising_edge(clk) and uut_mem_en = '1' then
		O_wb_en 			<= I_wb_en;
		O_wb_selector 	<= I_wb_selector;
		O_rd_address 	<= I_rd_address;
		O_loaded_data	<= O_loaded_data_i;
		O_alu_output 	<= I_alu_output;
		O_pc4 			<= I_pc4;
	end if;	
end process;
end rtl;
