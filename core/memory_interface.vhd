library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory_interface is 
port (
			clk: in std_logic;
			address_bus,data_in: in std_logic_vector(31 downto 0);
			data_out: out std_logic_vector(31 downto 0);
			function3: in std_logic_vector(2 downto 0);
			mem_en,wb_en: in std_logic;
			wait_sig: out std_logic

);
end memory_interface;



architecture rtl of memory_interface is

signal address: Integer RANGE 0 to 65535 :=0;
signal RAM_data_out,RAM_data_in: std_logic_vector(31 downto 0);
signal done_i: std_logic;
signal we_32_i,re_32_i,we_16_i,re_16_i,we_8_i,re_8_i: std_logic;


begin
								 
								 
we_32_i <= mem_en and (not wb_en) and function3(1);
re_32_i <= mem_en and wb_en and function3(1);
we_16_i <= mem_en and (not wb_en) and function3(0);
re_16_i <= mem_en and wb_en and function3(0);
we_8_i <= mem_en and (not wb_en) and (not function3(0)) and (not function3(1));
re_8_i <= mem_en and wb_en and (not function3(0)) and (not function3(1));


								  
process (clk)
begin
	if rising_edge(clk) then
		 
		address <= to_Integer(unsigned(address_bus));
						
	end if;	
end process;


process (clk)
begin
	if rising_edge(clk) then

			if mem_en = '1' and wb_en = '0' then
			
					if function3 = "000" then
						RAM_data_in <= (31 downto 8 => '0') & data_in(7 downto 0);
						
					elsif function3 = "001" then
						RAM_data_in <= (31 downto 16 => '0') & data_in(15 downto 0);	
						
					elsif function3 = "010" then
						RAM_data_in <= data_in;	
	
					end if;
			
			elsif mem_en = '1' and wb_en = '1' then
					
				if function3 = "000" then
					data_out <= (31 downto 8 => RAM_data_out(7)) & RAM_data_out(7 downto 0);
					
				elsif function3 = "001" then
					data_out <= (31 downto 16 => RAM_data_out(15)) & RAM_data_out(15 downto 0);	
					
				elsif function3 = "010" then
					data_out <= RAM_data_out;	
				
				elsif	function3 = "100" then
					data_out <= (31 downto 8 => '0') & RAM_data_out(7 downto 0);
					
				elsif function3 = "101"  then
					data_out <= (31 downto 16 => '0') & RAM_data_out(15 downto 0);	
					
				end if;
				
			end if;
	
	end if;	
end process;

wait_sig <= not done_i;

end rtl;