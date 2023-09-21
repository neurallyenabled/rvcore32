library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is
  port
  (
    clk        : in std_logic;
    I_start    : in std_logic;
    I_IF_wait  : in std_logic;
    I_IF_done  : in std_logic;
    I_MEM_wait : in std_logic;
    I_MEM_done : in std_logic;
    I_branch   : in std_logic;
    I_stall    : in std_logic;
    I_stop     : in std_logic;
    I_MEM_en   : in std_logic;
    O_MEM_en   : out std_logic;
    O_IF_en    : out std_logic;
    uut_en     : out std_logic_vector(5 downto 0);
    uut_clr    : out std_logic_vector(5 downto 0)
  );
end control_unit;

architecture rtl of control_unit is
  -- for FSM states
  type state is (stop_s, start_s);
  signal current_state, next_state : state := stop_s;
  -- TODO replace cycle_i with states instead
  signal cycle_i : integer range 2 downto 0 := 0;
  -- signal to detect when memory fetches are done
  signal O_MEM_done_i, O_IF_done_i : std_logic := '0';
  -- signal for controlling the mem_en for the memory interface at the MEM stage
  signal O_MEM_en_i : std_logic := '0';

begin
  -- pass mem_en asynchronously
  O_mem_en <= O_MEM_en_i;

  -- process to control the switching between cycles, states, and whether the core is on/off
  process (clk, I_start, I_stop)
  begin
    -- turn off the core when either the core was turned off by the user or an ebreak instruction has been passed
    if I_start = '0' or I_stop = '1' then
      current_state <= stop_s;
      cycle_i       <= 0;
      -- move to the next state/cycle
    elsif rising_edge (clk) then
      -- move to the next state
      current_state <= next_state;
      -- move to the next cycle
      if current_state = start_s then
        -- if cycle = 0, move to cycle 1
        if cycle_i = 0 then
          cycle_i <= 1;
          -- if cycle = 1 and instruction fetch and memory fetch are done move to cycle 2, else stay in cycle 1
        elsif cycle_i = 1 then
          if O_IF_done_i = '1' and O_MEM_done_i = '1' then
            cycle_i <= 2;
          else
            cycle_i <= 1;
          end if;
          -- if cycle = 2, move to cycle 0
        else
          cycle_i <= 0;
        end if;
      end if;
    end if;
  end process;

  -- process to control state/cycle outputs
  process (all)
  begin
    -- if current state is stop, clear all the buffers and gate them, and turn off all memory interfaces
    if current_state = stop_s then
      uut_clr      <= "111111";
      uut_en       <= "000000";
      O_IF_en      <= '0';
      O_MEM_en_i   <= '0';
      O_MEM_done_i <= '0';
      O_IF_done_i  <= '0';
      -- if current state is start
    else
      -- when the buffers are open and their content are entering the stages(cycle 0)
      if cycle_i = 0 then
        -- reset the done signal for the memory interfaces
        O_MEM_done_i <= '0';
        O_IF_done_i  <= '0';
        -- check if the instruction at MEM stage requires memory access
        if I_mem_en = '1' then
          -- if it does set O_MEM_en_i = 1 which will be passed to the memory interface directly
          O_MEM_en_i <= '1';
        else
          -- else, set it to 0
          O_MEM_en_i <= '0';
        end if;
        -- open MEM/WB buffer for writeback
        uut_en <= "100000";
        -- if stall = 1
        if I_stall = '1' then
          -- clear the ID/ALU buffer to zero the following stages as the pipeline executes, and thus end the stalling condition
          uut_clr <= "000110";
          -- stop instruction fetch
          O_IF_en <= '0';
        else
          -- else, dont clear the buffers
          uut_clr <= "000000";
          -- start instruction fetch
          O_IF_en <= '1';
        end if;

        -- after 1 cycle of the stages executing their functions(cycle 1)
      elsif cycle_i = 1 then
        -- no instruction moves to next stage in this cycle
        uut_en <= "000000";
        -- if branch, condition = 1, occurred
        if I_branch = '1' then
          -- clear IF/ID and ID/ALU buffers
          uut_clr <= "000111";
        else
          -- else, dont clear when branch = '0'
          uut_clr <= "000000";
        end if;
        -- if stall = 1
        if I_stall = '1' then
          -- keep instruction fetch turned off
          O_IF_en <= '0';
        else
          -- else, start instruction fetch
          O_IF_en <= '1';
        end if;
        -- check if the instruction at MEM stage requires memory access
        if I_mem_en = '1' then
          -- if it does set O_MEM_en_i = 1 which will be passed to the memory interface directly
          O_MEM_en_i <= '1';
        else
          -- else, set it to 0
          O_MEM_en_i <= '0';
        end if;
        -- instruction fetch done signal logic
        if O_IF_en = '0' or (O_IF_en = '1' and I_IF_done = '1') then
          -- if instruction fetch = 0 or instruction fetch is finished, set IF_done_i = 1
          O_IF_done_i <= '1';
        else
          -- else, set it to 0
          O_IF_done_i <= '0';
        end if;
        -- memory fetch done signal logic
        if O_MEM_en_i = '0' or (O_MEM_en_i = '1' and I_MEM_done = '1') then
          -- if memory fetch = 0 or memory fetch is finished, set MEM_done_i = 1
          O_MEM_done_i <= '1';
        else
          -- else, set it to 0
          O_MEM_done_i <= '0';
        end if;
        -- when all stages finished execution(cycle 2)
      else
        -- turn off the memory interfaces
        O_MEM_en_i   <= '0';
        O_IF_en      <= '0';
        O_MEM_done_i <= '0';
        O_IF_done_i  <= '0';
        -- dont clear the buffers
        uut_clr <= "000000";
        -- check for stall
        if I_stall = '1' then
          -- if stall = 1, get new values for the ALU/MEM and MEM/WB buffers
          uut_en <= "111000";
        else
          -- else, get new values for all the buffers
          uut_en <= "111111";
        end if;
      end if;
    end if;

    -- next state logic
    if I_start = '1' then
      next_state <= start_s;
    else
      next_state <= stop_s;
    end if;
  end process;
end rtl;