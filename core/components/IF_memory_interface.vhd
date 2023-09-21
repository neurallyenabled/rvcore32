library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_memory_interface is
  port
  (
    clk       : in std_logic;
    mem_en    : in std_logic;
    start     : in std_logic;
    address   : in std_logic_vector(13 downto 0);
    read_data : out std_logic_vector(31 downto 0);
    waitt     : out std_logic;
    done      : out std_logic
  );
end IF_memory_interface;

architecture rtl of IF_memory_interface is
  -- write operation takes 1 cycle
  -- read operation takes 2 cycles after specifying the address
  -- signal for the 8-bit data being read from memory
  signal read_data_i : std_logic_vector(7 downto 0) := (others => '0');
  -- control signals used during fetch
  signal read_en, wait_i, done_i : std_logic := '0';
  -- address signal
  signal address_i : std_logic_vector(13 downto 0) := (others => '0');
  -- TODO replace cycle with states
  signal cycle_i : unsigned(2 downto 0) := "000";
  -- signal for selecting 1 of 4 possible addresses to assemble the 32-bit instruction
  signal address_selector : std_logic_vector(1 downto 0) := (others => '0');
  -- signal for holding 24-bit of the instruction before outputting it to the core
  signal read_data_23 : std_logic_vector(23 downto 0) := (others => '0');
  -- signals for states
  type state is (idle_s, read_s);
  signal current_state, next_state : state := idle_s;
  -- the underlying IP used is 1-port on-chip ROM
  component rom is
    port
    (
      address : in std_logic_vector (13 downto 0);
      clken   : in std_logic := '1';
      clock   : in std_logic := '1';
      rden    : in std_logic := '1';
      q       : out std_logic_vector (7 downto 0));
  end component rom;

begin
  -- ROM port map
  u0 : component rom port map
    (address_i, start, clk, read_en, read_data_i);
  -- sending wait and done signals asynchronously to the control unit
  done  <= done_i;
  waitt <= wait_i;

  -- process for controlling the memory interface and state switching
  process (clk, mem_en)
  begin
    -- if mem_en = 0, turn off the control unit
    if mem_en = '0' then
      current_state <= idle_s;
      -- move to next state/cycle
    elsif rising_edge (clk) then
      -- move to next state
      current_state <= next_state;
      -- move to next cycle
      if current_state = idle_s then
        -- move to the starting cycle
        cycle_i <= "000";
      else
        -- remain at cycle 6 until the control unit turn off the memory interface
        if cycle_i = "110" then
          cycle_i <= "110";
          -- otherwise, move to the next cycle
        else
          cycle_i <= cycle_i + 1;
        end if;
      end if;
    end if;
  end process;

  -- a switch for address selection
  process (address_selector, address)
  begin
    case address_selector is
      when "00"   => address_i   <= address;
      when "01"   => address_i   <= std_logic_vector(unsigned(address) + 1);
      when "10"   => address_i   <= std_logic_vector(unsigned(address) + 2);
      when others => address_i <= std_logic_vector(unsigned(address) + 3);
    end case;
  end process;

  -- process for FSM outputs
  process (all)
  begin
    -- if state is idle
    if current_state = idle_s then
      -- reset all the signals
      address_selector <= "00";
      read_data_23     <= (others => '0');
      wait_i           <= '0';
      read_en          <= '0';
      done_i           <= '0';
      if done_i = '1' then
        -- remain at this cycle for one more cycle to allow time for the control unit to turn off the memory interface
        next_state <= idle_s;
      else
        -- go to the read state to start the fetching process
        next_state <= read_s;
      end if;
      -- if state is read
    else
      -- wait is set throughout the whole fetching process
      wait_i <= '1';
      if cycle_i = "000" then
        -- request the first 8-bits of the instruction
        address_selector <= "00";
        read_en          <= '1';
        done_i           <= '0';
        read_data_23     <= (others => '0');
        next_state       <= read_s;

      elsif cycle_i = "001" then
        -- request the second 8-bits of the instruction
        address_selector <= "01";
        read_en          <= '1';
        done_i           <= '0';
        read_data_23     <= (others => '0');
        next_state       <= read_s;

      elsif cycle_i = "010" then
        -- request the third 8-bits of the instruction
        address_selector <= "10";
        read_en          <= '1';
        done_i           <= '0';
        -- read the first 8-bits of the instruction
        if rising_edge(clk) then
          read_data_23(7 downto 0) <= read_data_i;
        end if;
        next_state <= read_s;

      elsif cycle_i = "011" then
        -- request the fourth 8-bits of the instruction
        address_selector <= "11";
        read_en          <= '1';
        done_i           <= '0';
        -- read the second 8-bits of the instruction
        if rising_edge(clk) then
          read_data_23(15 downto 8) <= read_data_i;
        end if;
        next_state <= read_s;

      elsif cycle_i = "100" then
        -- no change of signals
        address_selector <= "11";
        read_en          <= '1';
        done_i           <= '0';
        -- read the third 8-bits of the instruction
        if rising_edge(clk) then
          read_data_23(23 downto 16) <= read_data_i;
        end if;
        next_state <= read_s;

      else -- cycle_i = "101" then
        -- send a done signal
        address_selector <= "11";
        read_en          <= '1';
        done_i           <= '1';
        -- read the final 8-bits of the instructions & and output the instruction
        if rising_edge(clk) then
          read_data <= read_data_i & read_data_23(23 downto 0);
        end if;
        next_state <= idle_s;
      end if;
    end if;
  end process;
end rtl;