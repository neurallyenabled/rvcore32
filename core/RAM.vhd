library ieee;
use ieee.std_logic_1164.all;

entity RAM is
port
(
	clk: in std_logic;
	address_bus: in integer range 0 to 65535;
	en,re_we: in std_logic; -- re => 0 ; we => 1
	data_in: std_logic_vector(7 downto 0);
	done: out std_logic;
	data_out: out std_logic_vector (7 downto 0)
);
 
end RAM;

architecture rtl of RAM is

type RAM is array(0 to 63) of std_logic_vector(7 downto 0); -- check it
signal myRAM : RAM;

type state is (read_s, write_s,done_s);
signal current_state, next_state : state:= done_s;

begin

process (clk)
begin
	if rising_edge(clk) then
		current_state <= next_state;
	end if;
end process;

process(clk)
begin
	if rising_edge(clk) then
		if current_state = done_s then
			done <= '1';
			if en = '1' and re_we = '0' then
				next_state <= read_s;
			elsif en = '1' and re_we = '1' then
				next_state <= write_s;
			else
				next_state <= done_s;
			end if;
			
		elsif current_state = write_s then
				done <= '0';
				myRAM(address_bus) <= data_in;
				next_state <= done_s;

		elsif current_state = read_s then
				done <= '0';
				data_out <= myRAM(address_bus);
				next_state <= done_s;
		end if;
	end if;		
end process;
end rtl;