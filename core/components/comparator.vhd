library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparator is 
port (
	clk						: in std_logic;
	I_compare_en			: in std_logic;
	I_jump					: in std_logic;
	I_operand_selector	: in std_logic_vector (1 downto 0);
	I_function3 			: in std_logic_vector (2 downto 0);
	I_rs1						: in std_logic_vector (31 downto 0);
	I_rs2						: in std_logic_vector (31 downto 0);
	O_condition				: out std_logic
);
end comparator;

architecture rtl of comparator is

begin

process(clk)
begin
if rising_edge(clk) then
	if I_compare_en = '1' then
		if I_jump = '1' then
				O_condition <= '1';
				
		elsif I_function3 = "000" then
			if I_rs1 = I_rs2 then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
			
		elsif I_function3 = "001" then
			if I_rs1 /= I_rs2 then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
			
		elsif I_function3 = "100" then
			if (signed(I_rs1) < signed(I_rs2)) then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
			
		elsif I_function3 = "101" then
			if (signed(I_rs1) >= signed(I_rs2)) then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
			
		elsif I_function3 = "110" then
			if (unsigned(I_rs1) < unsigned(I_rs2)) then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
			
		elsif I_function3 = "111" then
			if (unsigned(I_rs1) >= unsigned(I_rs2)) then
				O_condition <= '1';
			else
				O_condition <= '0';
			end if;
		end if;
	else 
				O_condition <= '0';
	end if;
end if;
end process;
end rtl;