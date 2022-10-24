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
	I_mem_en		: in std_logic;
	O_mem_en		: out std_logic;
	fetch_en		: out std_logic;
	pc_selector	: out std_logic;
	pc_increment: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
);
end control_unit;

architecture rtl of control_unit is

type state is (stop_s,start_s);
signal current_state, next_state : state:= stop_s;

signal cycle_i: integer range 2 downto 0:= 0;
signal mem_done_i,fetch_done_i: std_logic:= '0';
signal mem_en_i: std_logic:= '0';

begin
O_mem_en <= mem_en_i; 

process(clk,start)
begin
	if start = '0' then
		current_state 		<= stop_s;
		cycle_i				<= 0;
	elsif rising_edge (clk) then 		
		current_state 	<= next_state;
		if current_state = start_s then
			if cycle_i = 0 then
				cycle_i 			<= 1;
			elsif cycle_i = 1 then
				if fetch_done_i = '1' and mem_done_i = '1' then
					cycle_i	<= 2;
				else
					cycle_i <= 1;
				end if;
			else --cycle_i = 2
				cycle_i 		<= 0; --move to next cycle
			end if;
		end if;
	end if;
end process;

process(all)
begin
if current_state = stop_s then
	uut_en 				<= "000000";
	uut_clr 				<= "111111";
	uut_out				<=	"000000";
	pc_selector			<= '0';
	pc_increment		<= '0';
	fetch_en 			<= '0';
	mem_en_i 			<= '0';
	mem_done_i 			<= '0';
	fetch_done_i 		<= '0';

else --current_state = start_s
	if cycle_i = 0 then
		uut_out				<= "000000"; 	-- no instruction moves to next stage in this cycle
		mem_done_i 			<= '0';
		fetch_done_i 		<= '0';
		if I_mem_en = '1' then				--check if instruction at the MEM stage reqiure memory access
			mem_en_i 		<= '1';
		else
			mem_en_i			<= '0';
		end if;
		
		if branch = '1' then
			pc_selector 	<= '1'; 			--select alu output as new pc
			pc_increment		<= '1';
			uut_clr 			<= "011100"; 	-- clr fetch/decode/register/alu phases
			uut_en 			<= "110111"; 	--start all, enable wb , and disable rd
			fetch_en 		<= '1';			-- start insturction fetch
		elsif stall = '1' then
			pc_selector		<= '0'; 			--use the same pc
			pc_increment		<= '0';
			uut_clr 			<= "011000"; 	--clr decode/rd output to not duplicate instructions
			uut_en 			<= "000111"; 	-- stop fetch/decode/rd units
			fetch_en 		<= '0';			-- stop instruction fetch ?
		else
			pc_selector 	<= '0'; 			--use pc+4 as new pc
			pc_increment		<= '1';
			uut_clr 			<= "000000"; 	-- no clr
			uut_en 			<= "110111"; 	--start all, enable wb , and disable rd
			fetch_en 		<= '1';			-- start insturction fetch	
		end if;
		




	elsif cycle_i = 2 then
		pc_selector 		<= '0';
		pc_increment		<= '0';
		mem_en_i 			<= '0';
		fetch_en 			<= '0';
		mem_done_i 			<= '0';
		fetch_done_i 		<= '0';
		if stall = '1' then
			uut_clr 			<= "011000";	
			uut_en 			<= "000110";	--same as before
			uut_out 			<= "000111";	--all out except for stalled units
		else
			uut_clr 			<= "000000";	--no clr
			uut_en 			<= "111110";	--same as before
			uut_out 			<= "111111";	--all out
		end if;
		
		
		
	else -- 0< cycle_i < 2
		pc_selector 			<= '0';			--select pc+4 for next pc 
		pc_increment			<= '0';
		uut_out					<= "000000"; 	-- no instruction moves to next stage in this cycle
		if stall = '1' then
			uut_clr 				<= "011000";
			uut_en 				<= "000110";	--disable wb
		else
			uut_clr 				<= "000000";	--no clr
			uut_en 				<= "111110"; 	--enable rd , and disable wb
		end if;

		if rising_edge(clk) then
			if fetch_en = '1' then				--fetch_en logic
				if fetch_done = '1' then		
					fetch_en 		<= '0';
					fetch_done_i 	<= '1';
				else
					fetch_en			<= '1';
					fetch_done_i 	<= '0';
				end if;
			else
				fetch_en 			<= '0';
				fetch_done_i 		<= '1';
			end if;
		end if;
		
		if mem_en_i = '1' then					-- mem_en logic 
			if mem_done = '1' then
				mem_en_i 		<= '0';
				mem_done_i 		<= '1';
			else
				mem_en_i			<= '1';
				mem_done_i 		<= '0';
			end if;
		else
			mem_en_i 			<= '0';
			mem_done_i 			<= '1';
		end if;
		
	end if;
end if;

if start = '1' then							--next_state logic
	next_state 					<= start_s;
else
	next_state 					<= stop_s;
end if;
end process;
end rtl;