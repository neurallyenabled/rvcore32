library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- 2 cycles before wait
-- 7 cycles during wait
-- 2 cycles after wait
entity uut_fetch is 
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
end uut_fetch;

architecture rtl of uut_fetch is

signal pc4_i				: std_logic_vector (31 downto 0):= (others => '0');
signal pc_i			: std_logic_vector (31 downto 0):= (others => '0');
signal instruction_i		: std_logic_vector (31 downto 0):= (others => '0');

component memory_interface_1 is 
port (
	clk 				: in std_logic;
	mem_en			: in std_logic;
	start				: in std_logic;
	address			: in std_logic_vector (13 downto 0);
	read_data		: out std_logic_vector (31 downto 0);
	waitt				: out std_logic;
	done				: out std_logic
);
end component;

begin

mem1: memory_interface_1 port map (
				clk => clk,
				mem_en => fetch_en,
				start => start,
				address => pc_i(13 downto 0),
				read_data => instruction_i,
				waitt => fetch_wait,
				done => fetch_done
				);

process(clk,uut_fetch_en,uut_fetch_clr)
begin
	if uut_fetch_clr = '1' then
		instruction 	<= (others => '0');
		pc_out 			<= (others => '0');
		pc4_out 			<= (others => '0');

	elsif rising_edge(clk) and uut_fetch_en = '1' then
		if pc_selector = '1' then
			PC_i 			<= new_pc_in(31 downto 1) & '0';
			if pc_increment = '1' then
				pc4_i 			<= std_logic_vector(unsigned(new_pc_in) + 4);
			end if;
		else
			PC_i 				<= pc4_i(31 downto 1) & '0';
			if pc_increment = '1' then
				pc4_i 			<= std_logic_vector(unsigned(pc_i) + 4);
			end if;
		end if;		
		
		if uut_fetch_out = '1' then
			pc4_out 			<= pc4_i;
			pc_out 			<= pc_i;
			instruction 	<= instruction_i;	
		end if;
	end if;	
end process;	
end rtl;