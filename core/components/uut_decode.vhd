library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity uut_decode is 
port (
	clk					: in std_logic;
	uut_decode_en		: in std_logic;
	uut_decode_clr		: in std_logic;
	I_rd_address_alu	: in std_logic_vector (4 downto 0);
	I_rd_address_mem	: in std_logic_vector (4 downto 0);
	I_instruction		: in std_logic_vector (31 downto 0);
	I_pc					: in std_logic_vector (31 downto 0);
	I_pc4					: in std_logic_vector (31 downto 0);
	O_add					: out std_logic;
	O_alu_en				: out std_logic;
	O_compare_en		: out std_logic;
	O_jump				: out std_logic;
	O_mem_en				: out std_logic;
	O_wb_en				: out std_logic;
	O_stall				: out std_logic;
	O_stop				: out std_logic;
	O_function7			: out std_logic;
	O_oper_selector	: out std_logic_vector (1 downto 0);
	O_wb_selector		: out std_logic_vector (1 downto 0);
	O_function3			: out std_logic_vector (2 downto 0);
	O_rs1_address		: out std_logic_vector (4 downto 0);
	O_rs2_address		: out std_logic_vector (4 downto 0);
	O_rd_address		: out std_logic_vector (4 downto 0);
	O_immediate			: out std_logic_vector (31 downto 0);
	O_pc					: out std_logic_vector (31 downto 0);
	O_pc4					: out std_logic_vector (31 downto 0)
);
end uut_decode;

architecture rtl of uut_decode is
signal stall_rs1_i	: std_logic:= '0';
signal stall_rs2_i	: std_logic:= '0';
signal O_function3_i	: std_logic_vector (2 downto 0):= (others => '0');
signal O_rd_address_i: std_logic_vector (4 downto 0):= (others => '0');
signal opcode_i		: std_logic_vector (6 downto 0):= (others => '0');
signal immu				: std_logic_vector (31 downto 0):= (others => '0');
signal immi				: std_logic_vector (31 downto 0):= (others => '0');
signal immb				: std_logic_vector (31 downto 0):= (others => '0');
signal imms				: std_logic_vector (31 downto 0):= (others => '0');
signal immj				: std_logic_vector (31 downto 0):= (others => '0');
signal zimm				: std_logic_vector (31 downto 0):= (others => '0');

begin

immi 				<= (31 downto 12 => I_instruction(31)) & I_instruction(31 downto 20);
immu 				<= I_instruction(31 downto 12) & (11 downto 0 => '0');
immj 				<= (31 downto 21 => I_instruction(31)) & I_instruction(31) & I_instruction(19 downto 12) & I_instruction(20) & I_instruction(30 downto 21) & '0';
immb 				<= (31 downto 13 => I_instruction(31)) & I_instruction(31) & I_instruction(7) & I_instruction(30 downto 25) & I_instruction(11 downto 8) & '0';
imms 				<= (31 downto 11 => I_instruction(31)) & I_instruction(30 downto 25) & I_instruction(11 downto 7);
zimm 				<= (31 downto 5 => '0') & I_instruction(19 downto 15);						
O_function3_i 	<= I_instruction(14 downto 12);
opcode_i 		<= I_instruction(6 downto 0);
O_rs1_address 	<= I_instruction(19 downto 15);
O_rs2_address 	<= I_instruction(24 downto 20);
O_rd_address_i 	<= I_instruction(11 downto 7);


process(clk,uut_decode_clr,opcode_i,O_rs1_address,O_rs2_address,I_rd_address_alu,I_rd_address_mem,stall_rs1_i,stall_rs2_i)
begin
stall_rs1_i		<= and_reduce(O_rs1_address xnor I_rd_address_alu) or and_reduce(O_rs1_address xnor I_rd_address_mem);
stall_rs2_i		<= and_reduce(O_rs2_address xnor I_rd_address_alu) or and_reduce(O_rs2_address xnor I_rd_address_mem);

-- stall logic
if uut_decode_clr = '1' then
			O_stall <= '0';
elsif rising_edge(clk) then
	if opcode_i = "1100011" or opcode_i = "0100011" or opcode_i = "0110011" or opcode_i = "1110011" then
		if (O_rs1_address /= "00000" and stall_rs1_i = '1') or (O_rs2_address /= "00000" and stall_rs2_i = '1') then
			O_stall 	<= '1';
		else
			O_stall 	<= '0';
		end if;
	elsif opcode_i = "1100111" or opcode_i = "0000011" or opcode_i = "0010011" then
		if O_rs1_address /= "00000" and stall_rs1_i = '1' then
			O_stall 	<= '1';
		else
			O_stall 	<= '0';
		end if;
	else
			O_stall 	<= '0';
	end if;
end if;
end process;

process(clk,uut_decode_en,uut_decode_clr,opcode_i,stall_rs1_i,stall_rs2_i)
begin
	if uut_decode_clr = '1' then
		O_rd_address 		<= (others => '0');
		O_function3 		<= (others => '0');
		O_immediate 		<= (others => '0');
		O_pc 					<= (others => '0');
		O_pc4 				<= (others => '0');
		O_function7 		<= '0';
		O_add 				<= '0';
		O_alu_en 			<= '0';
		O_compare_en 		<= '0';
		O_jump 				<= '0';
		O_mem_en 			<= '0';
		O_wb_en 				<= '0';
		O_oper_selector	<= (others => '0');
		O_wb_selector 		<= (others => '0');
		O_stop				<= '0';

	elsif rising_edge(clk) and uut_decode_en = '1' then
		O_pc 				<= I_pc;
		O_pc4 			<= I_pc4;
		
		if opcode_i = "0110111" then -- LUI
			O_immediate 		<= immu;
			O_oper_selector 	<= "10";
			O_add 				<= '0';
			O_alu_en 			<= '0';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= (others => '0');
			O_function7 		<= '0';
	
		elsif opcode_i = "0010111" then -- AUIPC
			O_immediate 		<= immu;
			O_oper_selector 	<= "11";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= (others => '0');
			O_function7 		<= '0';
			
		elsif	opcode_i = "1101111" then -- JAL
			O_immediate 		<= immj;
			O_oper_selector 	<= "11";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '1';
			O_jump 				<= '1';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "10";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= (others => '0');
			O_function7 		<= '0';
			
		elsif	opcode_i = "1100111" then -- JALR
			O_immediate 		<= immi;	
			O_oper_selector 	<= "10";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '1';
			O_jump 				<= '1';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "10";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= O_function3_i;
			O_function7 		<= '0';
			
		elsif	opcode_i = "1100011" then -- br
			O_immediate 		<= immb;	
			O_oper_selector 	<= "11";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '1';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00"; -- no write back
			O_wb_en 				<= '0';
			O_rd_address 		<= (others => '0');
			O_function3 		<= O_function3_i;
			O_function7 		<= '0';
			
			
		elsif	opcode_i = "0100011" then -- st
			O_immediate 		<= imms;	
			O_oper_selector 	<= "10";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '1';
			O_wb_selector 		<= "00"; -- no write back
			O_wb_en 				<= '0';
			O_rd_address 		<= (others => '0');
			O_function3 		<= O_function3_i;
			O_function7 		<= '0';
			
		elsif opcode_i = "0000011" then -- LD
			O_immediate 		<= immi;	
			O_oper_selector 	<= "10";
			O_add 				<= '1';
			O_alu_en 			<= '1';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '1';
			O_wb_selector 		<= "01";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= O_function3_i;
			O_function7 		<= '0';
		
		elsif	opcode_i = "0010011" then -- ADDI
			O_immediate 		<= immi;	
			O_oper_selector 	<= "10";
			O_add 				<= '0';
			O_alu_en 			<= '1';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= O_function3_i;
			O_function7 		<= I_instruction(30);

			
		elsif opcode_i = "0110011"	then -- ADD
			O_immediate 		<= (others => '0');	
			O_oper_selector 	<= "00";
			O_add 				<= '0';
			O_alu_en 			<= '1';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00";
			O_wb_en 				<= '1';
			O_rd_address 		<= O_rd_address_i;
			O_function3 		<= O_function3_i;
			O_function7 		<= I_instruction(30);
			
			
		elsif	opcode_i = "1110011" then -- CSR
			if I_instruction = "00000000000100000000000001110011" then --ebreak
				O_stop <= '1';	
			else
				O_stop <= '0';
			end if;
			if O_function3_i(2) = '1' then
				O_immediate 	<= zimm;
			else
				O_immediate 	<= (others => '0');	
			end if;
			O_oper_selector 	<= "00";
			O_add 				<= '0';
			O_alu_en 			<= '0';
			O_compare_en 		<= '0';
			O_jump 				<= '0';
			O_mem_en 			<= '0';
			O_wb_selector 		<= "00";
			O_wb_en 				<= '0';
			O_rd_address 		<= (others => '0');
			O_function3 		<= O_function3_i;
			O_function7 		<= '0';
		end if;
	end if;
end process;
end rtl;
