library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_mem is 
port (
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
end uut_mem;

architecture rtl of uut_mem is

signal loaded_data_i: std_logic_vector(31 downto 0):= (others => '0');

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
				mem_en 		=> mem_en,
				wb_en 		=> wb_en_in,
				start 		=> start,
				function3 	=> function3,
				address 		=> alu_output_in(13 downto 0), --change value
				write_data 	=> rs2_in,
				read_data 	=> loaded_data_i,
				waitt 		=> mem_wait,
				done			=> mem_done
				);

process(clk,uut_mem_en,uut_mem_clr)
begin
	if uut_mem_clr = '1' then
		wb_en_out			<= '0';	
		wb_selector_out	<= (others => '0');
		rd_address_out		<= (others => '0');
		loaded_data			<= (others => '0');
		alu_output_out		<= (others => '0');
		pc4_out				<= (others => '0');
	elsif rising_edge(clk) and uut_mem_en = '1' then
		if uut_mem_out = '1' then
			rd_address_out 	<= rd_address_in;
			alu_output_out 	<= alu_output_in;
			pc4_out 				<= pc4_in;
			wb_selector_out 	<= wb_selector_in;
			wb_en_out 			<= wb_en_in;
			loaded_data			<= loaded_data_i;
		end if;
	end if;	
end process;
end rtl;
