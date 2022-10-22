library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity uut_decode is 
port (
	clk					: in std_logic;
	uut_decode_en		: in std_logic;
	uut_decode_clr		: in std_logic;
	uut_decode_out		: in std_logic;
	rd_address_alu		: in std_logic_vector (4 downto 0);
	rd_address_mem		: in std_logic_vector (4 downto 0);
	instruction			: in std_logic_vector (31 downto 0);
	pc_in					: in std_logic_vector (31 downto 0);
	pc4_in				: in std_logic_vector (31 downto 0);
	add					: out std_logic;
	alu_en				: out std_logic;
	compare_en			: out std_logic;
	jump					: out std_logic;
	mem_en				: out std_logic;
	wb_en					: out std_logic;
	stall					: out std_logic;
	function7			: out std_logic;
	oper_selector		: out std_logic_vector (1 downto 0);
	wb_selector			: out std_logic_vector (1 downto 0);
	function3			: out std_logic_vector (2 downto 0);
	rs1_address			: out std_logic_vector (4 downto 0);
	rs2_address			: out std_logic_vector (4 downto 0);
	rd_address			: out std_logic_vector (4 downto 0);
	immediate			: out std_logic_vector (31 downto 0);
	pc_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0)
);
end uut_decode;

architecture rtl of uut_decode is
signal stall_rs1_i	: std_logic:= '0';
signal stall_rs2_i	: std_logic:= '0';
signal function3_i	: std_logic_vector (2 downto 0):= (others => '0');
signal rd_address_i	: std_logic_vector (4 downto 0):= (others => '0');
signal opcode_i		: std_logic_vector (6 downto 0):= (others => '0');
signal immu				: std_logic_vector (31 downto 0):= (others => '0');
signal immi				: std_logic_vector (31 downto 0):= (others => '0');
signal immb				: std_logic_vector (31 downto 0):= (others => '0');
signal imms				: std_logic_vector (31 downto 0):= (others => '0');
signal immj				: std_logic_vector (31 downto 0):= (others => '0');
signal zimm				: std_logic_vector (31 downto 0):= (others => '0');

begin

immi 				<= (31 downto 12 => instruction(31)) & instruction(31 downto 20);
immu 				<= instruction(31 downto 12) & (11 downto 0 => '0');
immj 				<= (31 downto 21 => instruction(31)) & instruction(31) & instruction(19 downto 12) & instruction(20) & instruction(30 downto 21) & '0';
immb 				<= (31 downto 13 => instruction(31)) & instruction(31) & instruction(7) & instruction(30 downto 25) & instruction(11 downto 8) & '0';
imms 				<= (31 downto 11 => instruction(31)) & instruction(30 downto 25) & instruction(11 downto 7);
zimm 				<= (31 downto 5 => '0') & instruction(19 downto 15);						
function3_i 	<= instruction(14 downto 12);
opcode_i 		<= instruction(6 downto 0);
rs1_address 	<= instruction(19 downto 15);
rs2_address 	<= instruction(24 downto 20);
rd_address_i 	<= instruction(11 downto 7);
stall_rs1_i		<= and_reduce(rs1_address xnor rd_address_alu) or and_reduce(rs1_address xnor rd_address_mem);
stall_rs2_i		<= and_reduce(rs2_address xnor rd_address_alu) or and_reduce(rs2_address xnor rd_address_mem);

process(clk,uut_decode_en,uut_decode_clr,opcode_i,stall_rs1_i,stall_rs2_i)
begin
	if uut_decode_clr = '1' then
		rd_address 		<= (others => '0');
		function3 		<= (others => '0');
		immediate 		<= (others => '0');
		pc_out 			<= (others => '0');
		pc4_out 			<= (others => '0');
		function7 		<= '0';
		add 				<= '0';
		alu_en 			<= '0';
		compare_en 		<= '0';
		jump 				<= '0';
		mem_en 			<= '0';
		wb_en 			<= '0';
		oper_selector 	<= (others => '0');
		wb_selector 	<= (others => '0');
		stall 			<= '0';

	elsif rising_edge(clk) and uut_decode_en = '1' then
		
		if uut_decode_out = '1' then
			pc_out 		<= pc_in;
			pc4_out 		<= pc4_in;
			
			if opcode_i = "0110111" then -- LUI
				immediate 		<= immu;
				oper_selector 	<= "10";
				add 				<= '0';
				alu_en 			<= '0';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= (others => '0');
				function7 		<= '0';
		
			elsif opcode_i = "0010111" then -- AUIPC
				immediate 		<= immu;
				oper_selector 	<= "11";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= (others => '0');
				function7 		<= '0';
				
			elsif	opcode_i = "1101111" then -- JAL
				immediate 		<= immj;
				oper_selector 	<= "11";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '1';
				jump 				<= '1';
				mem_en 			<= '0';
				wb_selector 	<= "10";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= (others => '0');
				function7 		<= '0';
				
			elsif	opcode_i = "1100111" then -- JALR
				immediate 		<= immi;	
				oper_selector 	<= "10";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '1';
				jump 				<= '1';
				mem_en 			<= '0';
				wb_selector 	<= "10";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= function3_i;
				function7 		<= '0';
				
			elsif	opcode_i = "1100011" then -- br
				immediate 		<= immb;	
				oper_selector 	<= "11";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '1';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00"; -- no write back
				wb_en 			<= '0';
				rd_address 		<= (others => '0');
				function3 		<= function3_i;
				function7 		<= '0';
				
				
			elsif	opcode_i = "0100011" then -- st
				immediate 		<= imms;	
				oper_selector 	<= "10";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '1';
				wb_selector 	<= "00"; -- no write back
				wb_en 			<= '0';
				rd_address 		<= (others => '0');
				function3 		<= function3_i;
				function7 		<= '0';
				
			elsif opcode_i = "0000011" then -- LD
				immediate 		<= immi;	
				oper_selector 	<= "10";
				add 				<= '1';
				alu_en 			<= '1';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '1';
				wb_selector 	<= "01";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= function3_i;
				function7 		<= '0';
			
			elsif	opcode_i = "0010011" then -- ADDI
				immediate 		<= immi;	
				oper_selector 	<= "10";
				add 				<= '0';
				alu_en 			<= '1';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= function3_i;
				function7 		<= instruction(30);

				
			elsif opcode_i = "0110011"	then -- ADD
				immediate 		<= (others => '0');	
				oper_selector 	<= "00";
				add 				<= '0';
				alu_en 			<= '1';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00";
				wb_en 			<= '1';
				rd_address 		<= rd_address_i;
				function3 		<= function3_i;
				function7 		<= instruction(30);
				
				
			elsif	opcode_i = "1110011" then -- CSR
				if function3_i(2) = '1' then
					immediate 	<= zimm;
				else
					immediate 	<= (others => '0');	
				end if;
				oper_selector 	<= "00";
				add 				<= '0';
				alu_en 			<= '0';
				compare_en 		<= '0';
				jump 				<= '0';
				mem_en 			<= '0';
				wb_selector 	<= "00";
				wb_en 			<= '0';
				rd_address 		<= (others => '0');
				function3 		<= function3_i;
				function7 		<= '0';
			end if;
		end if;
	end if;
	
	-- stall logic
	if opcode_i = "1100011" or opcode_i = "0100011" or opcode_i = "0110011" or opcode_i = "1110011" then
		if (rs1_address /= "00000" and stall_rs1_i = '1') or (rs2_address /= "00000" and stall_rs2_i = '1') then
			stall 	<= '1';
		else
			stall 	<= '0';
		end if;
	elsif opcode_i = "1100111" or opcode_i = "0000011" or opcode_i = "0010011" then
		if rs1_address /= "00000" and stall_rs1_i = '1' then
			stall 	<= '1';
		else
			stall 	<= '0';
		end if;
	else
			stall 	<= '0';
	end if;
end process;
end rtl;
