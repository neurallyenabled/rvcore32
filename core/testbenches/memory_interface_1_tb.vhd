library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_interface_1_tb is
end memory_interface_1_tb;

architecture rtl of memory_interface_1_tb is
  component memory_interface_1 is
    port
    (
      clk       : in std_logic;
      mem_en    : in std_logic;
      start     : in std_logic;
      address   : in std_logic_vector (13 downto 0);
      read_data : out std_logic_vector (31 downto 0);
      waitt     : out std_logic;
      done      : out std_logic
    );
  end component memory_interface_1;

  signal clk, mem_en, start, waitt, done : std_logic                      := '0';
  signal address                         : std_logic_vector (13 downto 0) := (others => '0');
  signal read_data                       : std_logic_vector (31 downto 0);
  signal stop_clk                        : boolean;
  constant clk_period                    : time    := 50 ns;
  constant clk_period_half               : time    := 25 ns;
  signal count                           : integer := 0;

begin

  mem_int : memory_interface_1 port map
    (clk, mem_en, start, address, read_data, waitt, done);

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

    mem_en <= '0';
    start  <= '1';

    wait for clk_period;

    mem_en <= '1';
    while count < 3 loop
      -- all cases
      if count = 0 then
        address <= "00000000000100";
      elsif count = 1 then
        address <= (others => '0');
      elsif count = 2 then
        address <= "00000000001000";
      end if;

      wait for clk_period;

      -- wait until write/read operation is done
      while done /= '1' loop
        wait for clk_period;
      end loop;

      --move to next case
      count <= count + 1;
    end loop;
    -- stop test bench
    stop_clk <= true;
    wait;

  end process;
end rtl;