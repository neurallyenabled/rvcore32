library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity uut_alu_tb is 
end uut_alu_tb;

architecture rtl of uut_alu_tb is

component uut_alu is 
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
end component uut_alu;


signal clk		: std_logic;
signal uut_alu_en	: std_logic;
signal uut_alu_clr	: std_logic;
signal I_function7	: std_logic;
signal I_alu_en		: std_logic;
signal I_compare_en	: std_logic;
signal I_add		: std_logic;
signal I_jump		: std_logic;
signal I_mem_en		: std_logic;
signal I_wb_en		: std_logic;
signal I_operand_selector: std_logic_vector(1 downto 0);
signal I_wb_selector	: std_logic_vector(1 downto 0);
signal I_function3 	: std_logic_vector(2 downto 0);
signal I_rd_address	: std_logic_vector(4 downto 0);
signal I_immediate	: std_logic_vector(31 downto 0);
signal I_pc		: std_logic_vector(31 downto 0);
signal I_rs1		: std_logic_vector(31 downto 0);
signal I_rs2		: std_logic_vector(31 downto 0);
signal I_pc4		: std_logic_vector(31 downto 0);
signal O_condition	: std_logic;
signal O_mem_en		: std_logic;
signal O_wb_en		: std_logic;
signal O_wb_selector	: std_logic_vector(1 downto 0);
signal O_function3	: std_logic_vector(2 downto 0);
signal O_rd_address	: std_logic_vector(4 downto 0);
signal O_rs2		: std_logic_vector(31 downto 0);
signal O_pc4		: std_logic_vector(31 downto 0);
signal O_alu_output	: std_logic_vector(31 downto 0);


signal stop_clk: boolean;
constant clk_period:time:= 50 ns;
constant clk_period_half:time:= 25 ns;

begin
clocking : PROCESS
  BEGIN
    WHILE NOT stop_clk LOOP
      clk <= '0', '1' AFTER clk_period_half;
      WAIT FOR clk_period;
    END LOOP;
    WAIT;
  END PROCESS;
  
checking_variables : process
begin
I_rs1 <= x"80000018";
I_rs2 <= x"00000008";

I_pc <= x"00000008";
I_immediate <= x"80000018";
I_add <= '0';
I_operand_selector <= "00";
I_alu_en <= '1';
uut_alu_en <= '1';
uut_alu_clr <= '0';
I_function3 <= "000";
I_function7 <= '0';

WAIT FOR clk_period;
--I_function3 <= "000"
--I_function7 <= '1';
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;
WAIT FOR clk_period;



-- stop test bench
stop_clk <= true;
wait;

end process;
end rtl;




