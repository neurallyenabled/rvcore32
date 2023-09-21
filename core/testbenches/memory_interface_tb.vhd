library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_interface_tb is
end memory_interface_tb;

architecture rtl of memory_interface_tb is
  component memory_interface is
    port
    (
      clk        : in std_logic;
      mem_en     : in std_logic;
      wb_en      : in std_logic;
      start      : in std_logic;
      function3  : in std_logic_vector (2 downto 0);
      address    : in std_logic_vector (13 downto 0);
      write_data : in std_logic_vector (31 downto 0);
      read_data  : out std_logic_vector (31 downto 0);
      waitt      : out std_logic;
      done       : out std_logic
    );
  end component memory_interface;

  signal clk, mem_en, wb_en, start, waitt, done : std_logic := '0';
  signal function3                              : std_logic_vector (2 downto 0);
  signal address                                : std_logic_vector (13 downto 0);
  signal write_data, read_data                  : std_logic_vector (31 downto 0);
  signal stop_clk                               : boolean;
  constant clk_period                           : time    := 50 ns;
  constant clk_period_half                      : time    := 25 ns;
  signal count                                  : integer := 0;

begin

  mem_int : memory_interface port map
    (clk, mem_en, wb_en, start, function3, address, write_data, read_data, waitt, done);

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
    -- read: 5 lb 000 lbu 100 lh 001 lhu 101 lw 010
    -- write 3 sw 010 sh 001 sb 000
    while count < 8 loop
      -- all cases
      if count = 0 then
        write_data <= "11001100100100100101101001010010";
        address    <= (others => '0');
        function3  <= "010";
        wb_en      <= '0';
      elsif count = 1 then
        wb_en <= '1';
      elsif count = 2 then
        write_data <= "00000000000000001101101001010010";
        address    <= std_logic_vector(unsigned(address) + 4);
        function3  <= "001";
        wb_en      <= '0';
      elsif count = 3 then
        wb_en <= '1';
      elsif count = 4 then
        function3 <= "101";
      elsif count = 5 then
        write_data <= "00000000000000000000000011010010";
        address    <= std_logic_vector(unsigned(address) + 4);
        function3  <= "000";
        wb_en      <= '0';
      elsif count = 6 then
        wb_en <= '1';
      elsif count = 7 then
        function3 <= "100";
      end if;

      wait for clk_period;

      -- wait until write/read operation is done
      while done /= '1' loop
        wait for clk_period;
      end loop;

      --move to next case
      count <= count + 1;
      if read_data = "00000000000000000000000000000000" then
        next;
      end if;
    end loop;
    -- stop test bench
    stop_clk <= true;
    wait;

  end process;
end rtl;