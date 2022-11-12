library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is 
port (
	clk			: in std_logic;
	I_start		: in std_logic;
	I_IF_wait	: in std_logic;
	I_IF_done	: in std_logic;
	I_MEM_wait	: in std_logic;
	I_MEM_done	: in std_logic;
	I_branch		: in std_logic;
	I_stall		: in std_logic;
	I_stop		: in std_logic;
	I_MEM_en		: in std_logic;
	O_MEM_en		: out std_logic;
	O_IF_en		: out std_logic;
	instruction_cycle: out std_logic;
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
);
end control_unit;

architecture rtl of control_unit is

type state is (stop_s,start_s);
signal current_state, next_state : state:= stop_s;

signal cycle_i: integer range 2 downto 0:= 0;
signal O_MEM_done_i,O_IF_done_i: std_logic:= '0';
signal O_MEM_en_i: std_logic:= '0';

begin
O_mem_en <= O_MEM_en_i; 

process(clk,I_start,I_stop)
begin
	if I_start = '0' or I_stop = '1' then
		current_state 		<= stop_s;
		cycle_i				<= 0;
	elsif rising_edge (clk) then 		
		current_state 	<= next_state;
		if current_state = start_s then
			if cycle_i = 0 then
				cycle_i 			<= 1;
			elsif cycle_i = 1 then
				if O_IF_done_i = '1' and O_MEM_done_i = '1' then
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
	instruction_cycle <= '0';
	uut_clr 				<= "111111";
	uut_en				<=	"000000";
	O_IF_en 			<= '0';
	O_MEM_en_i 			<= '0';
	O_MEM_done_i 			<= '0';
	O_IF_done_i 		<= '0';

else --current_state = start_s
	if cycle_i = 0 then
		instruction_cycle <= '0';
		O_MEM_done_i 			<= '0';
		O_IF_done_i 		<= '0';
		if I_mem_en = '1' then				--check if instruction at the MEM stage reqiure memory access
			O_MEM_en_i 		<= '1';
		else
			O_MEM_en_i			<= '0';
		end if;

		uut_en 				<= "100000";
		if I_stall = '1' then
			uut_clr 			<= "000110"; 	--clr decode/rd output to not duplicate instructions
			O_IF_en 		<= '0';			-- stop instruction fetch ?
		else
			uut_clr 			<= "000000"; 	-- no clr
			O_IF_en 		<= '1';			-- start insturction fetch	
		end if;
		

	elsif cycle_i = 1 then
		instruction_cycle <= '1';
		uut_en					<= "000000"; 	-- no instruction moves to next stage in this cycle
		if I_branch = '1' then
			uut_clr 			<= "000111"; 	-- clr fetch/decode/register/alu phases
		else
			uut_clr 				<= "000000";	--no clr
		end if;
		if rising_edge(clk) then
			if O_IF_en = '1' then				--fetch_en logic
				if I_IF_done = '1' then		
					O_IF_en 		<= '0';
					O_IF_done_i 	<= '1';
				else
					O_IF_en			<= '1';
					O_IF_done_i 	<= '0';
				end if;
			else
				O_IF_en 			<= '0';
				O_IF_done_i 		<= '1';
			end if;
			
			if O_MEM_en_i = '1' then					-- mem_en logic 
				if I_MEM_done = '1' then
					O_MEM_en_i 		<= '0';
					O_MEM_done_i 		<= '1';
				else
					O_MEM_en_i			<= '1';
					O_MEM_done_i 		<= '0';
				end if;
			else
				O_MEM_en_i 			<= '0';
				O_MEM_done_i 			<= '1';
			end if;
		end if;


	else -- cycle_i = 2 then
		instruction_cycle <= '1';
		O_MEM_en_i 			<= '0';
		O_IF_en 			<= '0';
		O_MEM_done_i 			<= '0';
		O_IF_done_i 		<= '0';
		uut_clr 			<= "000000";	--no clr
		if I_stall = '1' then
			uut_en 			<= "111000";	--all out except for stalled units
		else
			uut_en 			<= "111111";	--all out
		end if;
	end if;
end if;

if I_start = '1' then							--next_state logic
	next_state 					<= start_s;
else
	next_state 					<= stop_s;
end if;
end process;
end rtl;