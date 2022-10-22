library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is 
port (
	clk			: in std_logic;
	start			: in std_logic;
	fetch_done	: in std_logic;
	mem_done		: in std_logic;
	branch		: in std_logic;
	stall			: in std_logic;
	fetch_en		: out std_logic;
	mem_en		: out std_logic;
	pc_selector	: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
);
end control_unit;

architecture rtl of control_unit is

type state is (stop_s,start_s);
signal current_state, next_state : state:= stop_s;

signal cycle_i: integer range 0 to 10:= 0;

begin

process(clk,start)
begin
	if start = '0' then
		current_state <= stop_s;
	elsif rising_edge (clk) then 		
		current_state <= next_state;
	end if;
end process;

process(all)
begin
if current_state = stop_s then
	uut_en 				<= "000000";
	uut_clr 				<= "111111";
	uut_out				<=	"000000";
	cycle_i				<= 0;
	pc_selector			<= '0';
	fetch_en 			<= '0';
	mem_en 				<= '0';
	
	if start = '1' then
		next_state 		<= start_s;
	else
		next_state 		<= stop_s;
	end if;
	
elsif current_state = start_s then
	if cycle_i = 0 then
		cycle_i 				<= cycle_i + 1; --move to next cycle
		mem_en 				<= '1';
		-- uut_en logic
		if stall = '1' then
			uut_en 			<= "000111";
			fetch_en 		<= '0';
		else
			uut_en 			<= "110111"; --enable wb , and disable rd
			fetch_en 		<= '1';		-- start insturction fetch
		end if;
		--uut_clr logic
		if branch = '1' then
			pc_selector 	<= '1'; --select alu output as new pc
			uut_clr 			<= "011100"; -- clr fetch/decode/register/alu phases
		elsif stall = '1' then
			pc_selector		<= '0';
			uut_clr 			<= "011000";
		else 
			pc_selector 	<= '0'; --use pc+4 as new pc
			uut_clr 			<= "000000"; -- no clr
		end if;
		--uut_out logic
		uut_out				<= "000000"; -- no instruction moves to next stage in this cycle
		
		
		
	elsif cycle_i < 10 then
		cycle_i 				<= cycle_i + 1;
		pc_selector 		<= '0';
		--uut_en logic
		if stall = '1' then
			uut_en 			<= "000110";
		else
			uut_en 			<= "111110"; --enable rd , and disable wb
		end if;
		--uut_clr logic
		if branch = '1' then
			uut_clr 			<= "011100";
		elsif stall = '1' then
			uut_clr 			<= "011000";
		else
			uut_clr 			<= "000000";
		end if;
		--uut_out logic
		uut_out				<= "000000"; -- no instruction moves to next stage in this cycle
		--instruction fetch and memory fetch logic
		if fetch_en = '1' then
			if fetch_done = '1' then --if instruction fetch done
				fetch_en 		<= '0';
			else
				fetch_en			<= '1';
			end if;
		else
			fetch_en				<= '0';
		end if;
		
		if mem_en = '1' then
			if mem_done = '1' then
				mem_en 		<= '0';
			else
				mem_en		<= '1';
			end if;
		else
			mem_en <= '0';
		end if;

		
		
	elsif cycle_i = 10 then
		cycle_i <= 0;
		pc_selector <= '0';
		mem_en <= '0';
		fetch_en <= '0';
		--uut_en logic
		if stall = '1' then
			uut_en 			<= "000110";
		else
			uut_en 			<= "111110";
		end if;
		--uut_clr logic
		if stall = '1' then
			uut_clr 			<= "011000";
		else
			uut_clr 			<= "000000";
		end if;
		--uut_out logic
		if stall = '1' then
			uut_out 			<= "000111";
		else
			uut_out 			<= "111111";
		end if;
	end if;
	
	if start = '0' then
		next_state <= start_s;
	else
		next_state <= stop_s;
	end if;
end if;
end process;
end rtl;