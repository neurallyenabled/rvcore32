library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity uut_alu is 
port (
	rd_address_in: in std_logic_vector(4 downto 0);
	function3_in : in std_logic_vector(2 downto 0);
	immediate,pc,rs1,rs2_in,pc4_in: in std_logic_vector(31 downto 0);
	operand_selector,wb_selector_in: in std_logic_vector(1 downto 0);
	add,uut_alu_en,uut_alu_clr,alu_en,compare_en,jump,mem_en_in,wb_en_in,function7,clk: in std_logic;

	rd_address_out: out std_logic_vector(4 downto 0);
	function3_out: out std_logic_vector(2 downto 0);
	rs2_out,pc4_out,alu_out: out std_logic_vector(31 downto 0);
	wb_selector_out: out std_logic_vector(1 downto 0);
	condition_out,mem_en_out,wb_en_out: out std_logic
);

end uut_alu;


architecture rtl of uut_alu is

signal oper1, oper2: std_logic_vector(31 downto 0):= (others => '0');

begin

process(clk, uut_alu_en, uut_alu_clr)
begin
	if uut_alu_clr = '1' then
		oper1 <= (others => '0');
		oper2 <= (others => '0');
		rd_address_out <= (others => '0');
		rs2_out <= (others => '0');
		pc4_out <= (others => '0');
		mem_en_out <= '0';
		wb_selector_out <= (others => '0');
		wb_en_out <= '0';
		alu_out <= (others => '0');
		function3_out <= (others => '0');
		condition_out <= '0';

elsif rising_edge(clk) and uut_alu_en = '1' then	

--	oper1 <= pc when (operand_selector(0) = '1') else rs1;
	if operand_selector(0) = '1' then
		oper1 <= pc;
	else
		oper1 <= rs1;
	end if;	
	
--	oper2 <= immediate when (operand_selector(1) = '1') else rs2_in;
	if operand_selector(1) = '1' then
		oper2 <= immediate;
	else
		oper2 <= rs2_in;
	end if;	
		
	rd_address_out <= rd_address_in;
	rs2_out <= rs2_in;
	pc4_out <= pc4_in;
	mem_en_out <= mem_en_in;
	wb_selector_out <= wb_selector_in;
	wb_en_out <= wb_en_in;
	function3_out <= function3_in;

	if ALU_en = '1' then
		if add = '1' then
			ALU_out <= std_logic_vector(unsigned(oper1) + unsigned(oper2));	
		elsif function3_in = "000" then
			if function7 = '1' and operand_selector = "00" then
				ALU_out <= std_logic_vector(unsigned(oper1) - unsigned(oper2));
			else
				ALU_out <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
			end if;	
		elsif function3_in = "001" then
				ALU_out <= std_logic_vector(unsigned(shift_left(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));
		elsif function3_in = "010" then
			if (signed(oper1) < signed(oper2)) then
				ALU_out <= (31 downto 1 => '0') & '1';
			else
				ALU_out <= (31 downto 0 => '0');
			end if;
		elsif function3_in = "011" then
			if (unsigned(oper1) < unsigned(oper2)) then
				ALU_out <= (31 downto 1 => '0') & '1';
			else
				ALU_out <= (31 downto 0 => '0');
			end if;		
		elsif function3_in = "100" then
			ALU_out <= oper1 xor oper2;	
		elsif function3_in = "101" then
			if function7 = '1' then
				ALU_out <= std_logic_vector(unsigned(shift_right(signed(oper1),to_integer(unsigned(oper2(4 downto 0))))));
			else
				ALU_out <= std_logic_vector (unsigned(shift_right(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));	
			end if;	
		elsif function3_in = "110"  then
			ALU_out <= oper1 or oper2;
		elsif function3_in = "111"  then
			ALU_out <= oper1 and oper2;	
		end if;
	else 
		ALU_out <= oper2;	
	end if;

	if compare_en = '1' then
		if jump = '1' then
			condition_out <= '1';
		elsif function3_in = "000" then
			if rs1 = rs2_in then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		elsif function3_in = "001" then
			if rs1 /= rs2_in then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		elsif function3_in = "100" then
			if (signed(rs1) < signed(rs2_in)) then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		elsif function3_in = "101" then
			if (signed(rs1) >= signed(rs2_in)) then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		elsif function3_in = "110" then
			if (unsigned(rs1) < unsigned(rs2_in)) then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		elsif function3_in = "111" then
			if (unsigned(rs1) >= unsigned(rs2_in)) then
				condition_out <= '1';
			else
				condition_out <= '0';
			end if;
		end if;
	else 
		condition_out <= '0';
	end if;	
end if;	
end process;
end rtl;
