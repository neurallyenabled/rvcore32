library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity control_unit_tb is 
end control_unit_tb;

architecture rtl of control_unit_tb is


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
	pc_selector	: out std_logic;
	pc_increment: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
);
end component control_unit;

signal clk,start,fetch_wait,fetch_done,mem_wait,mem_done,branch,stall,I_mem_en,O_mem_en,fetch_en,pc_selector,pc_increment:std_logic:= '0';
signal uut_out,uut_en,uut_clr:std_logic_vector (5 downto 0);
signal stop_clk: boolean;
constant clk_period:time:= 50 ns;
constant clk_period_half:time:= 25 ns;

begin

uut1: control_unit port map (clk,start,fetch_wait,fetch_done,mem_wait,mem_done,branch,stall,I_mem_en,O_mem_en,fetch_en,pc_selector,pc_increment,uut_out,uut_en,uut_clr);

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

start <= '1';
I_mem_en <= '0';

WAIT FOR clk_period;

for i in 1 to 6 loop
fetch_wait <= '1';
WAIT FOR clk_period;
 end loop;
 
fetch_done <= '1';
WAIT FOR clk_period;

fetch_wait <= '0';
fetch_done <= '0';
WAIT FOR clk_period;

wait until uut_out = "000000";

-- stop test bench
stop_clk <= true;
wait;

end process;
end rtl;
