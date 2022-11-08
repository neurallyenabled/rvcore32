library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity uut_alu is 
port (
	clk						: in std_logic;
	uut_alu_en				: in std_logic;
	uut_alu_clr				: in std_logic;
	I_function7				: in std_logic;
	I_alu_en					: in std_logic;
	I_compare_en			: in std_logic;
	I_add						: in std_logic;
	I_jump					: in std_logic;
	I_mem_en					: in std_logic;
	I_wb_en					: in std_logic;
	I_operand_selector	: in std_logic_vector (1 downto 0);
	I_wb_selector			: in std_logic_vector (1 downto 0);
	I_function3 			: in std_logic_vector (2 downto 0);
	I_rd_address			: in std_logic_vector (4 downto 0);
	I_immediate				: in std_logic_vector (31 downto 0);
	I_pc						: in std_logic_vector (31 downto 0);
	I_rs1						: in std_logic_vector (31 downto 0);
	I_rs2						: in std_logic_vector (31 downto 0);
	I_pc4						: in std_logic_vector (31 downto 0);
	O_condition				: out std_logic;
	O_mem_en					: out std_logic;
	O_wb_en					: out std_logic;
	O_wb_selector			: out std_logic_vector (1 downto 0);
	O_function3				: out std_logic_vector (2 downto 0);
	O_rd_address			: out std_logic_vector (4 downto 0);
	O_rs2						: out std_logic_vector (31 downto 0);
	O_pc4						: out std_logic_vector (31 downto 0);
	O_alu_output			: out std_logic_vector (31 downto 0)
);
end uut_alu;

architecture rtl of uut_alu is

signal O_condition_i	: std_logic;
signal oper1			: std_logic_vector (31 downto 0):= (others => '0');
signal oper2			: std_logic_vector (31 downto 0):= (others => '0');
signal O_alu_output_i: std_logic_vector (31 downto 0):= (others => '0');

begin

process(I_operand_selector,I_pc,I_rs1,I_rs2,I_immediate)
begin
case I_operand_selector(0) is
 when '1' 		=> oper1 <= I_pc;
 when others 	=> oper1 <= I_rs1;
end case;

case I_operand_selector(1) is
 when '1' 		=> oper2 <= I_immediate;
 when others 	=> oper2 <= I_rs2;
end case;
end process;


process(clk, uut_alu_en, uut_alu_clr)
begin
	if uut_alu_clr = '1' then
		O_condition 	<= '0';
		O_mem_en 		<= '0';
		O_wb_en 			<= '0';
		O_wb_selector 	<= (others => '0');
		O_function3 	<= (others => '0');
		O_rd_address 	<= (others => '0');
		O_rs2 			<= (others => '0');
		O_pc4 			<= (others => '0');
		O_alu_output 	<= (others => '0');

	elsif rising_edge(clk) and uut_alu_en = '1' then		
		O_rd_address 	<= I_rd_address;
		O_rs2 			<= I_rs2;
		O_pc4 			<= I_pc4;
		O_mem_en 		<= I_mem_en;
		O_wb_selector 	<= I_wb_selector;
		O_wb_en 			<= I_wb_en;
		O_function3 	<= I_function3;
		O_alu_output 	<= O_alu_output_i;
		O_condition 	<= O_condition_i;
	end if;
end process;


process(clk,I_alu_en,i_compare_en,I_function3,I_function7,I_operand_selector,I_add,I_jump,oper1,oper2,I_rs1,I_rs2)
begin
	if rising_edge(clk) then
		if I_alu_en = '1' then
			if I_add = '1' then
					O_alu_output_i <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
					
			elsif I_function3 = "000" then
				if I_function7 = '1' and I_operand_selector = "00" then
					O_alu_output_i <= std_logic_vector(unsigned(oper1) - unsigned(oper2));
				else
					O_alu_output_i <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
				end if;
			
			elsif I_function3 = "001" then
					O_alu_output_i <= std_logic_vector(unsigned(shift_left(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));
			
			elsif I_function3 = "010" then
				if (signed(oper1) < signed(oper2)) then
					O_alu_output_i <= (31 downto 1 => '0') & '1';
				else
					O_alu_output_i <= (31 downto 0 => '0');
				end if;
				
			elsif I_function3 = "011" then
				if (unsigned(oper1) < unsigned(oper2)) then
					O_alu_output_i <= (31 downto 1 => '0') & '1';
				else
					O_alu_output_i <= (31 downto 0 => '0');
				end if;		
				
			elsif I_function3 = "100" then
					O_alu_output_i <= oper1 xor oper2;
					
			elsif I_function3 = "101" then
				if I_function7 = '1' then
					O_alu_output_i <= std_logic_vector(unsigned(shift_right(signed(oper1),to_integer(unsigned(oper2(4 downto 0))))));
				else
					O_alu_output_i <= std_logic_vector (unsigned(shift_right(unsigned(oper1),to_integer(unsigned(oper2(4 downto 0))))));	
				end if;
				
			elsif I_function3 = "110"  then
					O_alu_output_i <= oper1 or oper2;
					
			elsif I_function3 = "111"  then
					O_alu_output_i <= oper1 and oper2;	
			end if;
		else 
					O_alu_output_i <= oper2;	
		end if;

		if I_compare_en = '1' then
			if I_jump = '1' then
					O_condition_i <= '1';
					
			elsif I_function3 = "000" then
				if I_rs1 = I_rs2 then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
				
			elsif I_function3 = "001" then
				if I_rs1 /= I_rs2 then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
				
			elsif I_function3 = "100" then
				if (signed(I_rs1) < signed(I_rs2)) then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
				
			elsif I_function3 = "101" then
				if (signed(I_rs1) >= signed(I_rs2)) then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
				
			elsif I_function3 = "110" then
				if (unsigned(I_rs1) < unsigned(I_rs2)) then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
				
			elsif I_function3 = "111" then
				if (unsigned(I_rs1) >= unsigned(I_rs2)) then
					O_condition_i <= '1';
				else
					O_condition_i <= '0';
				end if;
			end if;
		else 
					O_condition_i <= '0';
		end if;
	end if;
end process;
end rtl;