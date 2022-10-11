library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is 
port (
	clk,start,fetch_wait,mem_wait,branch,stall: in std_logic;
	uut_en,uut_clr: out std_logic_vector(5 downto 0);
	fetch_en: out std_logic
	
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
			uut_en <= "000000";
			uut_clr <= "111111";
			fetch_en <= '0';
			if start = '1' then
				next_state <= start_s;
			else
				next_state <= stop_s;
			end if;
			
		elsif current_state = start_s then
			uut_en <= "111111";
			uut_clr <= "000000";
			fetch_en <= '1';
			if mem_wait = '1' then
				next_state <= mem_wait_s;
			elsif branch = '1' then
				next_state <= branch_s;
			elsif stall = '1' then
				next_state <= stall_s;
			elsif fetch_wait = '1' then
				next_state <= fetch_wait_s;
			else
				next_state <= start_s;
			end if;
			
		elsif current_state = stall_s then 
			uut_en <= "000111";
			uut_clr <= "000000";
			fetch_en <= '1';
			if mem_wait = '1' then
				next_state <= mem_wait_s;
			elsif branch = '1' then
				next_state <= branch_s;
			elsif stall = '0' then
				if current_state = fetch_wait_s then	
					next_state <= fetch_wait_s;
				else
					next_state <= start_s;
				end if;	
			else
				next_state <= stall_s;
			end if;
			
		elsif current_state = branch_s then 
			uut_en <= "000011";
			uut_clr <= "111100";
			fetch_en <= '0';
			if mem_wait = '1' then
				next_state <= mem_wait_s;
			elsif branch = '0' then
				next_state <= start_s;
			else
				next_state <= branch_s;
			end if;
		elsif current_state = fetch_wait_s then 
			uut_en <= "011111";
			uut_clr <= "000000";
			fetch_en <= '1';
			if mem_wait = '1' then
				next_state <= mem_wait_s;
			elsif branch = '1' then
				next_state <= branch_s;
			elsif stall = '1' then
				next_state <= stall_s;
			elsif fetch_wait = '0' then
				next_state <= start_s;
			else
				next_state <= fetch_wait_s;
			end if;
			
		elsif current_state = mem_wait_s then
			uut_en <= "000011";
			uut_clr <= "000000";
			fetch_en <= '1';
			if mem_wait = '0' then
				if branch = '1' then
					next_state <= branch_s;
				elsif stall = '1' then
					next_state <= stall_s;
				elsif fetch_wait = '1' then
					next_state <= fetch_wait_s;
				else
					next_state <= start_s;
				end if;
					
			else
				next_state <= mem_wait_s;
			end if;
		else
			uut_en <= "000000";
			uut_clr <= "111111";
			fetch_en <= '0';
			next_state <= stop_s;
		end if;


end process;

end rtl;

