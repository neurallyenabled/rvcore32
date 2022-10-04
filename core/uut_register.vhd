library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
 
entity uut_register is
port (
	clk,uut_register_re_en,uut_register_wb_en,wb_en: in std_logic;
	rd_address,rs2_address,rs1_address : in  std_logic_vector(4 downto 0);
	alu_output,loaded_data,pc4: in std_logic_vector(31 downto 0);
	wb_selector: in std_logic_vector (1 downto 0);
	rs1,rs2: out std_logic_vector (31 downto 0)
);
 
end uut_register;
 
architecture rtl of uut_register is
 
type reg_array is array(31 downto 0) of std_logic_vector(31 downto 0); 
signal myreg : reg_array:= (others => (others => '0'));

begin

process (clk,uut_register_wb_en)
begin

	if rising_edge(clk) then

		if uut_register_wb_en = '1' and wb_en = '1' then
			if rd_address = "00000" then
				myreg(0) <= (others => '0');
			else	
				if wb_selector = "00" then
					myreg(to_integer(unsigned(rd_address))) <= alu_output;
				elsif wb_selector = "01" then
					myreg(to_integer(unsigned(rd_address))) <= loaded_data;
				else
					myreg(to_integer(unsigned(rd_address))) <= pc4;
				end if;
			end if;
			
		elsif uut_register_re_en = '1' then	
			rs1 <= myreg(to_integer(unsigned(rs1_address)));
			rs2 <= myreg(to_integer(unsigned(rs2_address)));
		end if;
		
	end if;
end process;
end rtl;