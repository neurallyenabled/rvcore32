library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity memory_interface_inst_tb is 
end memory_interface_inst_tb;

architecture rtl of memory_interface_inst_tb is


component memory_interface_inst is
port (
	clk,mem_en,wb_en,start: in std_logic;
	function3: in std_logic_vector (2 downto 0);
	address: in std_logic_vector (18 downto 0);
	write_data: in std_logic_vector (31 downto 0);
	read_data: out std_logic_vector (31 downto 0);
	waitt,done: out std_logic
);
end component memory_interface_inst;

signal clk,mem_en,wb_en,start,waitt,done:std_logic:= '0';
signal function3: std_logic_vector (2 downto 0);
signal address: std_logic_vector (18 downto 0);
signal write_data,read_data:std_logic_vector (31 downto 0);
signal stop_clk: boolean;
constant clk_period:time:= 50 ns;
constant clk_period_half:time:= 25 ns;


begin

mem_int: memory_interface_inst port map (clk,mem_en,wb_en,start,function3,address,write_data,read_data,waitt,done);

clocking : PROCESS
  BEGIN
    WHILE NOT stop_clk LOOP
      clk <= '0', '1' AFTER clk_period_half;
      WAIT FOR clk_period;
    END LOOP;
    WAIT;
  END PROCESS;
  
checking_variables : process
begin

mem_en <= '0';
start <= '1';
wb_en <= '0';
function3 <= "001";
address <= (others => '0');
write_data <= "01010111010101000000100101100111";

wait for clk_period;

mem_en <= '1';

while done /= '1' loop
wait for clk_period;
end loop;
stop_clk <= true;
wait;

end process;
end rtl;
