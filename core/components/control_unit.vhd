library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is 
port (
	clk			: in std_logic;
	start			: in std_logic;
	fetch_wait	: in std_logic;
	fetch_done	: in std_logic;
	mem_wait		: in std_logic;
	mem_done		: in std_logic;
	branch		: in std_logic;
	stall			: in std_logic;
	fetch_en		: out std_logic;
	pc_selector	: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
);
end control_unit;

architecture rtl of control_unit is

type state is (stop_s,start_s,stall_s,branch_s,fetch_wait_s,mem_wait_s);
signal current_state, next_state : state:= stop_s;
-- 000 stop
-- 001 start
-- 010 stall for rd
-- 011 branch
-- 100 wait

signal cycle_i: unsigned(1 downto 0):= (others => '0');

begin

process(clk,start)
begin
	if start = '0' then
		current_state <= stop_s;
	elsif rising_edge (clk) then 		
		current_state <= next_state;
	end if;
end process;

process(fetch_wait,mem_wait,start,stall,current_state,branch)
begin
		if current_state = stop_s then
			uut_en 				<= "000000";
			uut_clr 				<= "111111";
			fetch_en 			<= '0';
			if start = '1' then
				next_state 		<= start_s;
			else
				next_state 		<= stop_s;
			end if;
			
		elsif current_state = start_s then
			if cycle_i = "00" then
				uut_en 				<= "110111"; --enable wb , and disable rd
				uut_clr 				<= "000000"; -- no clr
				fetch_en 		<= '0'; --don't fetch
				if branch = '1' then
					pc_selector <= '1'; --select alu output as new pc
					uut_clr 				<= "111100"; -- clr fetch/decode/register/alu phases
					
				else 
					pc_selector <= '0'; --use pc+4 as new pc
				end if;
				cycle_i 			<= cycle_i + 1;
				
			elsif cycle_i = "01" then
				uut_en 				<= "111110"; --enable rd , and disable wb
				fetch_en 		<= '1'; --start
				if fetch_done = '1' then --if instruction fetch done
					uut_out(0) 	<= '1';
					fetch_en <= '0';
				end if;
				uut_out(1) <= '1';
				
			elsif cycle_i = "10" then
				
			end if;
			
			if mem_wait = '1' then
				next_state 		<= mem_wait_s;
			elsif branch = '1' then
				next_state 		<= branch_s;
			elsif stall = '1' then
				next_state 		<= stall_s;
			elsif fetch_wait = '1' then
				next_state 		<= fetch_wait_s;
			else
				next_state 		<= start_s;
			end if;
			
		elsif current_state = stall_s then 
			uut_en 				<= "000111";
			uut_clr 				<= "000000";
			fetch_en 			<= '1';
			if mem_wait = '1' then
				next_state 		<= mem_wait_s;
			elsif branch = '1' then
				next_state 		<= branch_s;
			elsif stall = '0' then
				if current_state = fetch_wait_s then	
					next_state 	<= fetch_wait_s;
				else
					next_state 	<= start_s;
				end if;	
			else
				next_state 		<= stall_s;
			end if;
			
		elsif current_state = branch_s then 
			uut_en 				<= "000011";
			uut_clr 				<= "111100";
			fetch_en 			<= '0';
			if mem_wait = '1' then
				next_state 		<= mem_wait_s;
			elsif branch = '0' then
				next_state 		<= start_s;
			else
				next_state 		<= branch_s;
			end if;
			
		elsif current_state = fetch_wait_s then 
			uut_en 				<= "011111";
			uut_clr 				<= "000000";
			fetch_en 			<= '1';
			if mem_wait = '1' then
				next_state 		<= mem_wait_s;
			elsif branch = '1' then
				next_state 		<= branch_s;
			elsif stall = '1' then
				next_state 		<= stall_s;
			elsif fetch_wait = '0' then
				next_state 		<= start_s;
			else
				next_state 		<= fetch_wait_s;
			end if;
			
		elsif current_state = mem_wait_s then
			uut_en 				<= "000011";
			uut_clr 				<= "000000";
			fetch_en 			<= '1';
			if mem_wait = '0' then
				if branch = '1' then
					next_state 	<= branch_s;
				elsif stall = '1' then
					next_state 	<= stall_s;
				elsif fetch_wait = '1' then
					next_state 	<= fetch_wait_s;
				else
					next_state 	<= start_s;
				end if;
					
			else
				next_state 		<= mem_wait_s;
			end if;
			
		else
			uut_en 				<= "000000";
			uut_clr 				<= "111111";
			fetch_en 			<= '0';
			next_state 			<= stop_s;
		end if;


end process;

end rtl;

