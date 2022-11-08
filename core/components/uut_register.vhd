library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;
use work.registers.all;

 
entity uut_register is
port (
	clk					: in std_logic;
	uut_register_re_en: in std_logic;
	uut_register_wb_en: in std_logic;
	uut_register_re_clr	: in std_logic;
	uut_register_wb_clr	: in std_logic;
	I_wb_en				: in std_logic;
	I_wb_selector		: in std_logic_vector (1 downto 0);
	I_rd_address		: in std_logic_vector (4 downto 0);
	I_rs2_address		: in std_logic_vector (4 downto 0);
	I_rs1_address		: in std_logic_vector (4 downto 0);
	I_alu_output		: in std_logic_vector (31 downto 0);
	I_loaded_data		: in std_logic_vector (31 downto 0);
	I_pc4					: in std_logic_vector (31 downto 0);
	O_rs1					: out std_logic_vector (31 downto 0);
	O_rs2					: out std_logic_vector (31 downto 0);
	myreg					: out reg_array
);
end uut_register;
 
architecture rtl of uut_register is
signal registers : reg_array:= (others => (others => '0'));

begin

myreg <= registers;

process (clk,uut_register_wb_clr,uut_register_re_clr,uut_register_wb_en,I_wb_en,uut_register_re_en)
begin
	if uut_register_wb_clr = '1' then
		registers <= (others => (others => '0'));
	elsif rising_edge(clk) and uut_register_wb_en = '1' and I_wb_en = '1' then
		if I_rd_address = "00000" then
			registers(0) <= (others => '0');
		else	
			if I_wb_selector = "00" then
				registers(to_integer(unsigned(I_rd_address))) <= I_alu_output;
			elsif I_wb_selector = "01" then
				registers(to_integer(unsigned(I_rd_address))) <= I_loaded_data;
			else
				registers(to_integer(unsigned(I_rd_address))) <= I_pc4;
			end if;
		end if;
	end if;
	
	
	if uut_register_re_clr = '1' then
		O_rs1 <= (others => '0');
		O_rs2 <= (others => '0');
	elsif rising_edge(clk) and uut_register_re_en = '1'then
		O_rs1 <= registers(to_integer(unsigned(I_rs1_address)));
		O_rs2 <= registers(to_integer(unsigned(I_rs2_address)));
	end if;
end process;
end rtl;