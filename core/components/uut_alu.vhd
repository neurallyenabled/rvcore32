library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity uut_alu is
  port
  (
    clk                : in std_logic;
    uut_alu_en         : in std_logic;
    uut_alu_clr        : in std_logic;
    I_function7        : in std_logic;
    I_alu_en           : in std_logic;
    I_compare_en       : in std_logic;
    I_add              : in std_logic;
    I_jump             : in std_logic;
    I_mem_en           : in std_logic;
    I_wb_en            : in std_logic;
    I_stop             : in std_logic;
    I_operand_selector : in std_logic_vector(1 downto 0);
    I_wb_selector      : in std_logic_vector(1 downto 0);
    I_function3        : in std_logic_vector(2 downto 0);
    I_rd_address       : in std_logic_vector(4 downto 0);
    I_immediate        : in std_logic_vector(31 downto 0);
    I_pc               : in std_logic_vector(31 downto 0);
    I_rs1              : in std_logic_vector(31 downto 0);
    I_rs2              : in std_logic_vector(31 downto 0);
    I_pc4              : in std_logic_vector(31 downto 0);
    O_condition        : out std_logic;
    O_mem_en           : out std_logic;
    O_wb_en            : out std_logic;
    O_stop             : out std_logic;
    O_wb_selector      : out std_logic_vector(1 downto 0);
    O_function3        : out std_logic_vector(2 downto 0);
    O_rd_address       : out std_logic_vector(4 downto 0);
    O_rs2              : out std_logic_vector(31 downto 0);
    O_pc4              : out std_logic_vector(31 downto 0);
    O_alu_output       : out std_logic_vector(31 downto 0)
  );
end uut_alu;

architecture rtl of uut_alu is

  signal O_condition_i  : std_logic                     := '0';
  signal O_alu_output_i : std_logic_vector(31 downto 0) := (others => '0');

  component alu is
    port
    (
      clk                : in std_logic;
      I_function7        : in std_logic;
      I_alu_en           : in std_logic;
      I_add              : in std_logic;
      I_operand_selector : in std_logic_vector (1 downto 0);
      I_function3        : in std_logic_vector (2 downto 0);
      I_immediate        : in std_logic_vector (31 downto 0);
      I_pc               : in std_logic_vector (31 downto 0);
      I_rs1              : in std_logic_vector (31 downto 0);
      I_rs2              : in std_logic_vector (31 downto 0);
      O_alu_output       : out std_logic_vector (31 downto 0)
    );
  end component;

  component comparator is
    port
    (
      clk          : in std_logic;
      I_compare_en : in std_logic;
      I_jump       : in std_logic;
      I_function3  : in std_logic_vector (2 downto 0);
      I_rs1        : in std_logic_vector (31 downto 0);
      I_rs2        : in std_logic_vector (31 downto 0);
      O_condition  : out std_logic
    );
  end component;

begin

  alu1 : alu port map
  (
    clk                => clk,
    I_function7        => I_function7,
    I_alu_en           => I_alu_en,
    I_add              => I_add,
    I_operand_selector => I_operand_selector,
    I_function3        => I_function3,
    I_immediate        => I_immediate,
    I_pc               => I_pc,
    I_rs1              => I_rs1,
    I_rs2              => I_rs2,
    O_alu_output       => O_alu_output_i
  );

  comp1 : comparator port
  map(
  clk          => clk,
  I_compare_en => I_compare_en,
  I_jump       => I_jump,
  I_function3  => I_function3,
  I_rs1        => I_rs1,
  I_rs2        => I_rs2,
  O_condition  => O_condition_i
  );

  process (clk, uut_alu_en, uut_alu_clr)
  begin
    if uut_alu_clr = '1' then
      O_condition   <= '0';
      O_mem_en      <= '0';
      O_wb_en       <= '0';
      O_stop        <= '0';
      O_wb_selector <= (others => '0');
      O_function3   <= (others => '0');
      O_rd_address  <= (others => '0');
      O_rs2         <= (others => '0');
      O_pc4         <= (others => '0');
      O_alu_output  <= (others => '0');

    elsif rising_edge(clk) and uut_alu_en = '1' then
      O_rd_address  <= I_rd_address;
      O_rs2         <= I_rs2;
      O_pc4         <= I_pc4;
      O_mem_en      <= I_mem_en;
      O_wb_selector <= I_wb_selector;
      O_wb_en       <= I_wb_en;
      O_function3   <= I_function3;
      O_alu_output  <= O_alu_output_i;
      O_stop        <= I_stop;
      if I_compare_en = '1' and I_pc4 = O_alu_output_i then
        O_condition <= '0';
      else
        O_condition <= O_condition_i;
      end if;
    end if;
  end process;
end rtl;