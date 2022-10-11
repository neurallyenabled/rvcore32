library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_fetch is 
port (
	clk					: in std_logic;
	pc_selector			: in std_logic;
	uut_fetch_en		: in std_logic;
	uut_fetch_clr		: in std_logic;
	fetch_en				: in std_logic;
	new_pc_in			: in std_logic_vector (31 downto 0);
	fetch_wait			: out std_logic;
	instruction			: out std_logic_vector (31 downto 0);
	pc_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0)
);
end uut_fetch;

architecture rtl of uut_fetch is

signal adder				: std_logic_vector (31 downto 0):= (others => '0');
signal pc_content			: std_logic_vector (31 downto 0):= (others => '0');
signal instruction_i		: std_logic_vector (31 downto 0):= (others => '0');

component memory_interface is 
port (
	clk 				: in std_logic;
	mem_en			: in std_logic;
	wb_en				: in std_logic;
	start				: in std_logic;
	function3		: in std_logic_vector (2 downto 0);
	address			: in std_logic_vector (18 downto 0);
	write_data		: in std_logic_vector (31 downto 0);
	read_data		: out std_logic_vector (31 downto 0);
	waitt				: out std_logic;
	done				: out std_logic
);
end component;

begin

mem1: memory_interface port map (
				clk => clk,
				mem_en => fetch_en,
				wb_en => '1',
				start => '0', --change value
				function3 => "010",
				address => pc_content(18 downto 0), --change value
				write_data => (others => '0'),
				read_data => instruction_i,
				waitt => fetch_wait,
				done => open --change value
				);

process(clk,uut_fetch_en,uut_fetch_clr)
begin
	if uut_fetch_clr = '1' then
		instruction 	<= (others => '0');
		pc_out 			<= (others => '0');
		pc4_out 			<= (others => '0');
		adder 			<= (others => '0');
		pc_content 		<= (others => '0');

	elsif rising_edge(clk) and uut_fetch_en = '1' then
		if pc_selector = '1' then
			PC_content 	<= new_pc_in(31 downto 1) & '0';
		else
			PC_content 	<= adder(31 downto 1) & '0';
		end if;	
				
		adder 			<= std_logic_vector(unsigned(pc_content) + 4);	
		pc4_out 			<= adder;
		pc_out 			<= pc_content;
		instruction 	<= instruction_i;	
	end if;	
end process;	
end rtl;