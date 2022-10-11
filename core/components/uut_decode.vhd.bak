library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_decode is 
port (
	instruction,pc_in,pc4_in: in std_logic_vector (31 downto 0);
	clk,uut_decode_en,uut_decode_clr: in std_logic;
	rd_address_alu,rd_address_mem: in std_logic_vector(4 downto 0);
	function3: out std_logic_vector(2 downto 0);
	function7: out std_logic;
	immediate,pc_out,pc4_out: out std_logic_vector (31 downto 0);
	oper_selector,wb_selector: out std_logic_vector (1 downto 0);
	add,alu_en,compare_en,jump,mem_en,wb_en,stall: out std_logic;
	rs1_address,rs2_address,rd_address: out std_logic_vector(4 downto 0)
);
end uut_decode;

architecture rtl of uut_decode is

signal immu,immi,immb,imms,immj,zimm: std_logic_vector (31 downto 0):= (others => '0');
signal opcode_i: std_logic_vector(6 downto 0):= (others => '0');
signal rs1_address_i,rs2_address_i,rd_address_i: std_logic_vector(4 downto 0):= (others => '0');
signal function3_i: std_logic_vector(2 downto 0):= (others => '0');


begin
immi <= (31 downto 12 => instruction(31)) & instruction(31 downto 20);
immu <= instruction(31 downto 12) & (11 downto 0 => '0');
immj <= (31 downto 21 => instruction(31)) & instruction(31) & instruction(19 downto 12) & instruction(20) & instruction(30 downto 21) & '0';
immb <= (31 downto 13 => instruction(31)) & instruction(31) & instruction(7) & instruction(30 downto 25) & instruction(11 downto 8) & '0';
imms <= (31 downto 11 => instruction(31)) & instruction(30 downto 25) & instruction(11 downto 7);

zimm <= (31 downto 5 => '0') & instruction(19 downto 15);						
function3_i <= instruction(14 downto 12);
opcode_i <= instruction(6 downto 0);
rs1_address_i <= instruction(19 downto 15);
rs2_address_i <= instruction(24 downto 20);
rd_address_i <= instruction(11 downto 7);



process(clk,uut_decode_en,uut_decode_clr)
begin
	if uut_decode_clr = '1' then
		rd_address <= (others => '0');
		rs1_address <= (others => '0');
		rs2_address <= (others => '0');
		function3 <= (others => '0');
		immediate <= (others => '0');
		pc_out <= (others => '0');
		pc4_out <= (others => '0');
		function7 <= '0';
		add <= '0';
		alu_en <= '0';
		compare_en <= '0';
		jump <= '0';
		mem_en <= '0';
		wb_en <= '0';
		oper_selector <= (others => '0');
		wb_selector <= (others => '0');
		stall <= '0';


	elsif rising_edge(clk) and uut_decode_en = '1' then
		pc_out <= pc_in;
		pc4_out <= pc4_in;
		
		
		if opcode_i = "0110111" then -- LUI
			immediate <= immu;
			oper_selector <= "10";
			add <= '0';
			ALU_en <= '0';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00";
			rd_address <= rd_address_i;
			rs1_address <= (others => '0');
			rs2_address <= (others => '0');
			function3 <= (others => '0');
		   function7 <= '0';
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
	
		elsif opcode_i = "0010111" then -- AUIPC
			immediate <= immu;
			oper_selector <= "11";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00";
			rd_address <= rd_address_i;
			rs1_address <= (others => '0');
			rs2_address <= (others => '0');
			function3 <= (others => '0');
		   function7 <= '0';
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
			
		elsif	opcode_i = "1101111" then -- JAL
			immediate <= immj;
			oper_selector <= "11";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '1';
			jump <= '1';
			mem_en <= '0';
			wb_selector <= "10";
			rd_address <= rd_address_i;
			rs1_address <= (others => '0');
			rs2_address <= (others => '0');
			function3 <= (others => '0');
		   function7 <= '0';
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
			
		elsif	opcode_i = "1100111" then -- JALR
			immediate <= immi;	
			oper_selector <= "10";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '1';
			jump <= '1';
			mem_en <= '0';
			wb_selector <= "10";
			rd_address <= rd_address_i;
			rs1_address <= rs1_address_i;
			rs2_address <= (others => '0');
			function3 <= function3_i;
		   function7 <= '0';
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
			
		elsif	opcode_i = "1100011" then -- br
			immediate <= immb;	
			oper_selector <= "11";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '1';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00"; -- no write back
			wb_en <= '0';
			rd_address <= (others => '0');
			rs1_address <= rs1_address_i;
			rs2_address <= rs2_address_i;
			function3 <= function3_i;
		   function7 <= '0';
			
			
		elsif	opcode_i = "0100011" then -- st
			immediate <= imms;	
			oper_selector <= "10";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '1';
			wb_selector <= "00"; -- no write back
			wb_en <= '0';
			rd_address <= (others => '0');
			rs1_address <= rs1_address_i;
			rs2_address <= rs2_address_i;
			function3 <= function3_i;
		   function7 <= '0';
			
		elsif opcode_i = "0000011" then -- LD
			immediate <= immi;	
			oper_selector <= "10";
			add <= '1';
			ALU_en <= '1';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '1';
			wb_selector <= "01";
			rd_address <= rd_address_i;
			rs1_address <= rs1_address_i;
			rs2_address <= (others => '0');
			function3 <= function3_i;
		   function7 <= '0';
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
		
		elsif	opcode_i = "0010011" then -- ADDI
			immediate <= immi;	
			oper_selector <= "10";
			add <= '0';
			ALU_en <= '1';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00";
			rd_address <= rd_address_i;
			rs1_address <= rs1_address_i;
			rs2_address <= (others => '0');
			function3 <= function3_i;
		   function7 <= instruction(30);
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
			
		elsif opcode_i = "0110011"	then -- ADD
			immediate <= (others => '0');	
			oper_selector <= "00";
			add <= '0';
			ALU_en <= '1';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00";
			rd_address <= rd_address_i;
			rs1_address <= rs1_address_i;
			rs2_address <= rs2_address_i;
			function3 <= function3_i;
		   function7 <= instruction(30);
			
			if rd_address_i = "00000" then
				wb_en <= '0';
			else
				wb_en <= '1';
			end if;
			
			
		elsif	opcode_i = "1110011" then -- CSR
			
			oper_selector <= "00";
			add <= '0';
			ALU_en <= '0';
			compare_en <= '0';
			jump <= '0';
			mem_en <= '0';
			wb_selector <= "00";
			wb_en <= '0';
			rd_address <= (others => '0');
			rs1_address <= (others => '0');
			rs2_address <= (others => '0');
			function3 <= function3_i;
		   function7 <= '0';
		
			if function3_i(2) = '1' then
				immediate <= zimm;
			else
				immediate <= (others => '0');	
			end if;	
	
		end if;	
		
		if rs1_address_i = rd_address_alu or rs1_address_i = rd_address_mem 
		or rs2_address_i = rd_address_alu or rs2_address_i = rd_address_mem then 
			stall <= '1';
		else
			stall <= '0';
		end if;
	end if;	
		
end process;

end rtl;
