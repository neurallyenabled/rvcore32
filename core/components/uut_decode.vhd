library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_decode is
  port
  (
    clk              : in std_logic;
    uut_decode_en    : in std_logic;
    uut_decode_clr   : in std_logic;
    I_branch         : in std_logic;
    I_start          : in std_logic;
    I_rd_address_alu : in std_logic_vector(4 downto 0);
    I_rd_address_mem : in std_logic_vector(4 downto 0);
    I_instruction    : in std_logic_vector(31 downto 0);
    I_pc             : in std_logic_vector(31 downto 0);
    I_pc4            : in std_logic_vector(31 downto 0);
    O_add            : out std_logic;
    O_alu_en         : out std_logic;
    O_compare_en     : out std_logic;
    O_jump           : out std_logic;
    O_mem_en         : out std_logic;
    O_wb_en          : out std_logic;
    O_stall          : out std_logic;
    O_stop           : out std_logic;
    O_function7      : out std_logic;
    O_oper_selector  : out std_logic_vector(1 downto 0);
    O_wb_selector    : out std_logic_vector(1 downto 0);
    O_function3      : out std_logic_vector(2 downto 0);
    O_rs1_address    : out std_logic_vector(4 downto 0);
    O_rs2_address    : out std_logic_vector(4 downto 0);
    O_rd_address     : out std_logic_vector(4 downto 0);
    O_immediate      : out std_logic_vector(31 downto 0);
    O_pc             : out std_logic_vector(31 downto 0);
    O_pc4            : out std_logic_vector(31 downto 0)
  );
end uut_decode;

architecture rtl of uut_decode is

  signal opcode_i          : std_logic_vector(6 downto 0) := (others => '0');
  signal O_add_i           : std_logic;
  signal O_alu_en_i        : std_logic;
  signal O_compare_en_i    : std_logic;
  signal O_jump_i          : std_logic;
  signal O_mem_en_i        : std_logic;
  signal O_wb_en_i         : std_logic;
  signal O_stop_i          : std_logic;
  signal O_function7_i     : std_logic;
  signal O_oper_selector_i : std_logic_vector(1 downto 0);
  signal O_wb_selector_i   : std_logic_vector(1 downto 0);
  signal O_function3_i     : std_logic_vector(2 downto 0);
  signal O_rs1_address_i   : std_logic_vector(4 downto 0);
  signal O_rs2_address_i   : std_logic_vector(4 downto 0);
  signal O_rd_address_i    : std_logic_vector(4 downto 0);
  signal O_immediate_i     : std_logic_vector(31 downto 0);

  component stall_logic is
    port
    (
      clk              : in std_logic;
      uut_decode_clr   : in std_logic;
      I_branch         : in std_logic;
      I_start          : in std_logic;
      I_rd_address_alu : in std_logic_vector(4 downto 0);
      I_rd_address_mem : in std_logic_vector(4 downto 0);
      I_rs1_address    : in std_logic_vector(4 downto 0);
      I_rs2_address    : in std_logic_vector(4 downto 0);
      I_opcode         : in std_logic_vector(6 downto 0);
      O_stall          : out std_logic
    );
  end component;

  component instruction_decoder is
    port
    (
      I_instruction   : in std_logic_vector(31 downto 0);
      O_add           : out std_logic;
      O_alu_en        : out std_logic;
      O_compare_en    : out std_logic;
      O_jump          : out std_logic;
      O_mem_en        : out std_logic;
      O_wb_en         : out std_logic;
      O_stop          : out std_logic;
      O_function7     : out std_logic;
      O_oper_selector : out std_logic_vector(1 downto 0);
      O_wb_selector   : out std_logic_vector(1 downto 0);
      O_function3     : out std_logic_vector(2 downto 0);
      O_rs1_address   : out std_logic_vector(4 downto 0);
      O_rs2_address   : out std_logic_vector(4 downto 0);
      O_rd_address    : out std_logic_vector(4 downto 0);
      O_opcode        : out std_logic_vector(6 downto 0);
      O_immediate     : out std_logic_vector(31 downto 0)
    );
  end component;

begin
  O_rs1_address <= O_rs1_address_i;
  O_rs2_address <= O_rs2_address_i;
  st1 : stall_logic port map
  (
    clk              => clk,
    uut_decode_clr   => uut_decode_clr,
    I_branch         => I_branch,
    I_start          => I_start,
    I_rd_address_alu => I_rd_address_alu,
    I_rd_address_mem => I_rd_address_mem,
    I_rs1_address    => O_rs1_address_i,
    I_rs2_address    => O_rs2_address_i,
    I_opcode         => opcode_i,
    O_stall          => O_stall
  );

  id1 : instruction_decoder port
  map(
  I_instruction   => I_instruction,
  O_add           => O_add_i,
  O_alu_en        => O_alu_en_i,
  O_compare_en    => O_compare_en_i,
  O_jump          => O_jump_i,
  O_mem_en        => O_mem_en_i,
  O_wb_en         => O_wb_en_i,
  O_stop          => O_stop_i,
  O_function7     => O_function7_i,
  O_oper_selector => O_oper_selector_i,
  O_wb_selector   => O_wb_selector_i,
  O_function3     => O_function3_i,
  O_rs1_address   => O_rs1_address_i,
  O_rs2_address   => O_rs2_address_i,
  O_rd_address    => O_rd_address_i,
  O_opcode        => opcode_i,
  O_immediate     => O_immediate_i
  );
  -- process for ID/ALU buffer output
  process (clk, uut_decode_en, uut_decode_clr)
  begin
    if uut_decode_clr = '1' then
      O_rd_address    <= (others => '0');
      O_function3     <= (others => '0');
      O_immediate     <= (others => '0');
      O_pc            <= (others => '0');
      O_pc4           <= (others => '0');
      O_function7     <= '0';
      O_add           <= '0';
      O_alu_en        <= '0';
      O_compare_en    <= '0';
      O_jump          <= '0';
      O_mem_en        <= '0';
      O_wb_en         <= '0';
      O_oper_selector <= (others => '0');
      O_wb_selector   <= (others => '0');
      O_stop          <= '0';

      -- output varies by instruction type
    elsif rising_edge(clk) and uut_decode_en = '1' then
      O_rd_address    <= O_rd_address_i;
      O_function3     <= O_function3_i;
      O_immediate     <= O_immediate_i;
      O_pc            <= I_pc;
      O_pc4           <= I_pc4;
      O_function7     <= O_function7_i;
      O_add           <= O_add_i;
      O_alu_en        <= O_alu_en_i;
      O_compare_en    <= O_compare_en_i;
      O_jump          <= O_jump_i;
      O_mem_en        <= O_mem_en_i;
      O_wb_en         <= O_wb_en_i;
      O_oper_selector <= O_oper_selector_i;
      O_wb_selector   <= O_wb_selector_i;
      O_stop          <= O_stop_i;
    end if;
  end process;
end rtl;