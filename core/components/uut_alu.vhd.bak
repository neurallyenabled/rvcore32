library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity uut_alu is 
port (
	clk					: in std_logic;
	uut_alu_en			: in std_logic;
	uut_alu_clr			: in std_logic;
	uut_alu_out			: in std_logic;
	function7			: in std_logic;
	alu_en				: in std_logic;
	compare_en			: in std_logic;
	add					: in std_logic;
	jump					: in std_logic;
	mem_en_in			: in std_logic;
	wb_en_in				: in std_logic;
	operand_selector	: in std_logic_vector (1 downto 0);
	wb_selector_in		: in std_logic_vector (1 downto 0);
	function3_in 		: in std_logic_vector (2 downto 0);
	rd_address_in		: in std_logic_vector (4 downto 0);
	immediate			: in std_logic_vector (31 downto 0);
	pc						: in std_logic_vector (31 downto 0);
	rs1					: in std_logic_vector (31 downto 0);
	rs2_in				: in std_logic_vector (31 downto 0);
	pc4_in				: in std_logic_vector (31 downto 0);
	condition_out		: out std_logic;
	mem_en_out			: out std_logic;
	wb_en_out			: out std_logic;
	wb_selector_out	: out std_logic_vector (1 downto 0);
	function3_out		: out std_logic_vector (2 downto 0);
	rd_address_out		: out std_logic_vector (4 downto 0);
	rs2_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0);
	alu_out				: out std_logic_vector (31 downto 0)
);
end uut_alu;

architecture rtl of uut_alu is

signal condition_out_i	: std_logic;
signal oper1				: std_logic_vector (31 downto 0):= (others => '0');
signal oper2				: std_logic_vector (31 downto 0):= (others => '0');
signal alu_out_i			: std_logic_vector (31 downto 0):= (others => '0');

begin

process(clk, uut_alu_en, uut_alu_clr)
begin
	if uut_alu_clr = '1' then
		rd_address_out 	<= (others => '0');
		rs2_out 				<= (others => '0');
		pc4_out 				<= (others => '0');
		mem_en_out 			<= '0';
		wb_selector_out 	<= (others => '0');
		wb_en_out 			<= '0';
		alu_out 				<= (others => '0');
		function3_out 		<= (others => '0');
		condition_out 		<= '0';

	elsif rising_edge(clk) and uut_alu_en = '1' then	
		if operand_selector(0) = '1' then
			oper1 <= pc;
		else
			oper1 <= rs1;
		end if;	
		
		if operand_selector(1) = '1' then
			oper2 <= immediate;
		else
			oper2 <= rs2_in;
		end if;
		
		if uut_alu_out = '1' then	
			rd_address_out 	<= rd_address_in;
			rs2_out 				<= rs2_in;
			pc4_out 				<= pc4_in;
			mem_en_out 			<= mem_en_in;
			wb_selector_out 	<= wb_selector_in;
			wb_en_out 			<= wb_en_in;
			function3_out 		<= function3_in;
			alu_out 				<= alu_out_i;
			condition_out 		<= condition_out_i;
		end if;
		
		if alu_en = '1' then
			if add = '1' then
					alu_out_i <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
					
			elsif function3_in = "000" then
				if function7 = '1' and operand_selector = "00" then
					alu_out_i <= std_logic_vector(unsigned(oper1) - unsigned(oper2));
				else
					alu_out_i <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
				end if;
			
			elsif function3_in = "001" then
					alu_out_i <= std_logic_vector(unsigned(shift_left(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));
			
			elsif function3_in = "010" then
				if (signed(oper1) < signed(oper2)) then
					alu_out_i <= (31 downto 1 => '0') & '1';
				else
					alu_out_i <= (31 downto 0 => '0');
				end if;
				
			elsif function3_in = "011" then
				if (unsigned(oper1) < unsigned(oper2)) then
					alu_out_i <= (31 downto 1 => '0') & '1';
				else
					alu_out_i <= (31 downto 0 => '0');
				end if;		
				
			elsif function3_in = "100" then
					alu_out_i <= oper1 xor oper2;
					
			elsif function3_in = "101" then
				if function7 = '1' then
					alu_out_i <= std_logic_vector(unsigned(shift_right(signed(oper1),to_integer(unsigned(oper2(4 downto 0))))));
				else
					alu_out_i <= std_logic_vector (unsigned(shift_right(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));	
				end if;
				
			elsif function3_in = "110"  then
					alu_out_i <= oper1 or oper2;
					
			elsif function3_in = "111"  then
					alu_out_i <= oper1 and oper2;	
			end if;
		else 
					alu_out_i <= oper2;	
		end if;

		if compare_en = '1' then
			if jump = '1' then
					condition_out_i <= '1';
					
			elsif function3_in = "000" then
				if rs1 = rs2_in then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
				
			elsif function3_in = "001" then
				if rs1 /= rs2_in then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
				
			elsif function3_in = "100" then
				if (signed(rs1) < signed(rs2_in)) then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
				
			elsif function3_in = "101" then
				if (signed(rs1) >= signed(rs2_in)) then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
				
			elsif function3_in = "110" then
				if (unsigned(rs1) < unsigned(rs2_in)) then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
				
			elsif function3_in = "111" then
				if (unsigned(rs1) >= unsigned(rs2_in)) then
					condition_out_i <= '1';
				else
					condition_out_i <= '0';
				end if;
			end if;
		else 
					condition_out_i <= '0';
		end if;	
	end if;	
end process;
end rtl;