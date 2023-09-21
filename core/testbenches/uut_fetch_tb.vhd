library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uut_fetch_tb is
end uut_fetch_tb;

architecture rtl of uut_fetch_tb is
  component uut_fetch is
    port
    (
      clk           : in std_logic;
      I_start       : in std_logic;
      I_pc_selector : in std_logic;
      uut_fetch_en  : in std_logic;
      uut_fetch_clr : in std_logic;
      uut_fetch_out : in std_logic;
      I_fetch_en    : in std_logic;
      I_alu_output  : in std_logic_vector (31 downto 0);
      O_fetch_wait  : out std_logic;
      O_fetch_done  : out std_logic;
      O_instruction : out std_logic_vector (31 downto 0);
      O_pc          : out std_logic_vector (31 downto 0);
      O_pc4         : out std_logic_vector (31 downto 0)
    );
  end component uut_fetch;

  signal clk, start, pc_selector, uut_fetch_en, uut_fetch_clr, uut_fetch_out, fetch_en, fetch_wait, fetch_done : std_logic := '0';
  signal new_pc_in, instruction, pc_out, pc4_out                                                               : std_logic_vector (31 downto 0);
  signal stop_clk                                                                                              : boolean;
  constant clk_period                                                                                          : time := 50 ns;
  constant clk_period_half                                                                                     : time := 25 ns;

begin

  uut1 : uut_fetch port map
    (clk, start, pc_selector, uut_fetch_en, uut_fetch_clr, uut_fetch_out, fetch_en, new_pc_in, fetch_wait, fetch_done, instruction, pc_out, pc4_out);

  clocking : process
  begin
    while not stop_clk loop
      clk <= '0', '1' after clk_period_half;
      wait for clk_period;
    end loop;
    wait;
  end process;

  checking_variables : process
  begin
    for i in 1 to 10 loop
      start         <= '1';
      pc_selector   <= '0';
      uut_fetch_en  <= '1';
      uut_fetch_clr <= '0';
      uut_fetch_out <= '0';
      fetch_en      <= '1';

      wait until fetch_done = '1';
      wait for clk_period;

      fetch_en      <= '0';
      uut_fetch_out <= '1';

      wait for clk_period;

      uut_fetch_out <= '0';

      wait for clk_period;
    end loop;

    -- stop test bench
    stop_clk <= true;
    wait;

  end process;
end rtl;