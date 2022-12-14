library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- 2 cycles before wait
-- 7 cycles during wait
-- 2 cycles after wait
entity uut_fetch is 
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
end uut_fetch;

architecture rtl of uut_fetch is

signal O_pc4_i				: std_logic_vector (31 downto 0):= (others => '0');
signal O_pc_i				: std_logic_vector (31 downto 0):= (others => '0');
signal O_instruction_i	: std_logic_vector (31 downto 0):= (others => '0');

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
O_pc4 <= O_pc4_i;

mem1: memory_interface_1 port map (
				clk 			=> clk,
				mem_en 		=> I_fetch_en,
				start 		=> I_start,
				address 		=> O_pc_i(13 downto 0),
				read_data 	=> O_instruction_i,
				waitt 		=> O_fetch_wait,
				done 			=> O_fetch_done
				);

process(I_pc_selector,I_alu_output,O_pc4_i)
begin
case I_pc_selector is
 when '1' 		=> O_pc_i 	<= I_alu_output(31 downto 1) & '0';
 when others 	=> O_pc_i 	<= O_pc4_i(31 downto 1) & '0';
end case;
end process;				
				
process(clk,uut_fetch_en,uut_fetch_clr)
begin
	if uut_fetch_clr = '1' then
		O_instruction 		<= (others => '0');
		O_pc 					<= (others => '0');
		O_pc4_i 				<= (others => '0');

	elsif rising_edge(clk) and uut_fetch_en = '1' then
		O_pc4_i 			<= std_logic_vector(unsigned(O_pc_i(31 downto 1)) + 2) & '0'; --add 2 to pc_i(31 downto 1) to be equal to adding 4 to pc_i(31 downto 0)
		O_pc 				<= O_pc_i;
		O_instruction 	<= O_instruction_i;	
	end if;	
end process;	
end rtl;