library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparator is
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
end comparator;

architecture rtl of comparator is

begin
  -- process for the comparator
  process (clk)
  begin
    if rising_edge(clk) then
      -- when I_compare_en = 1, then perform the comparsion specified by the signals I_jump and I_function3
      -- comparison between rs1 and rs2
      -- I_jump takes precedent over I_function3
      -- I_jump outputs 1 as the condition, this signal is used for jump instructions
      -- I_function3 specify the branch condition
      -- else if I_compare_en = 0, output 0 as the condition
      if I_compare_en = '1' then
        -- jump always
        if I_jump = '1' then
          O_condition <= '1';
          -- equal
        elsif I_function3 = "000" then
          if I_rs1 = I_rs2 then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- not equal
        elsif I_function3 = "001" then
          if I_rs1 /= I_rs2 then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- signed less than
        elsif I_function3 = "100" then
          if (signed(I_rs1) < signed(I_rs2)) then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- signed larger than
        elsif I_function3 = "101" then
          if (signed(I_rs1) >= signed(I_rs2)) then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- unsigned less than
        elsif I_function3 = "110" then
          if (unsigned(I_rs1) < unsigned(I_rs2)) then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- unsigned larger than
        elsif I_function3 = "111" then
          if (unsigned(I_rs1) >= unsigned(I_rs2)) then
            O_condition <= '1';
          else
            O_condition <= '0';
          end if;
          -- for illegal I_function3 = 000
        else
          O_condition <= '0';
        end if;
        -- when compare_en = 0
      else
        O_condition <= '0';
      end if;
    end if;
  end process;
end rtl;