library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

	
entity main_tb is 
end main_tb;

architecture rtl of main_tb is

component main is 
port (
		clk,start: in std_logic;
		reg31: out std_logic_vector (31 downto 0)
);
end component main;

attribute preserve: boolean;  
attribute preserve of main: component is true; 

signal clk		: std_logic;
signal start	: std_logic;
signal reg31   : std_logic_vector(31 downto 0);


signal stop_clk: boolean;
constant clk_period:time:= 50 ns;
constant clk_period_half:time:= 25 ns;

begin

main1: main port map(
				clk 		=> clk,
				start 	=> start,
				reg31    => reg31 
			  	);

clocking : PROCESS
  BEGIN
    WHILE NOT stop_clk LOOP
      clk <= '0', '1' AFTER clk_period_half;
      WAIT FOR clk_period;
    END LOOP;
    WAIT;
  END PROCESS;
  
running : process
begin
start <= '1';
wait for 1 ms; --1o minutes
-- stop test bench
stop_clk <= true;
start <= '0';
wait;

end process;
end rtl;




