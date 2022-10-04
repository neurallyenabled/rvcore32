
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_fetch is 
port (
	new_pc_in: in std_logic_vector (31 downto 0);
	clk,pc_selector,uut_fetch_en,uut_fetch_clr,fetch_en: in std_logic;
	instruction,pc_out,pc4_out: out std_logic_vector (31 downto 0);
	fetch_wait: out std_logic
);
end uut_fetch;


architecture rtl of uut_fetch is


component memory_interface is 
port (
			clk: in std_logic;
			address_bus,data_in: in std_logic_vector(31 downto 0);
			data_out: out std_logic_vector(31 downto 0);
			function3: in std_logic_vector(2 downto 0);
			mem_en,wb_en: in std_logic;
			wait_sig: out std_logic

);
end component;

signal adder,PC_content,instruction_i: std_logic_vector (31 downto 0):= (others => '0') ;

begin

mem1: memory_interface port map (
				clk => clk,
				address_bus => pc_content,
				data_in => (others => '0'),
				data_out => instruction_i,
				function3 => "010",
				mem_en => fetch_en,
				wb_en => '1',
				wait_sig => fetch_wait
				);

process(clk,uut_fetch_en,uut_fetch_clr)
begin
	
	if uut_fetch_clr = '1' then
		instruction <= (others => '0');
		pc_out <= (others => '0');
		pc4_out <= (others => '0');
		adder <= (others => '0');
		pc_content <= (others => '0');

	elsif rising_edge(clk) and uut_fetch_en = '1' then

		if pc_selector = '1' then
			PC_content <= new_pc_in(31 downto 1) & '0';
		else
			PC_content <= adder(31 downto 1) & '0';
		end if;	
		
			
--		PC_content <= (new_pc_in(31 downto 1) & '0') when pc_selector = '1' else (adder(31 downto 1) & '0'); --pc always even 		
		adder <= std_logic_vector(unsigned(pc_content) + 4);	
		pc4_out <= adder;
		pc_out <= pc_content;
		instruction <= instruction_i;	
		
	end if;	
end process;
				
end rtl;