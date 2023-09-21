library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity alu is
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
end alu;

architecture rtl of alu is
  -- signals for alu operands
  signal oper1 : std_logic_vector (31 downto 0) := (others => '0');
  signal oper2 : std_logic_vector (31 downto 0) := (others => '0');

begin

  -- process to selects ALU operands
  process (I_operand_selector, I_pc, I_rs1, I_rs2, I_immediate)
  begin
    -- the first operand can be either PC or rs1
    case I_operand_selector(0) is
      when '1'    => oper1    <= I_pc;
      when others => oper1 <= I_rs1;
    end case;
    -- the second operand can be either an immediate value or rs2
    case I_operand_selector(1) is
      when '1'    => oper2    <= I_immediate;
      when others => oper2 <= I_rs2;
    end case;
  end process;

  -- process for ALU
  process (clk)
  begin
    if rising_edge(clk) then
      -- if alu_en = 1 then perform ALU operation, the signal I_add takes precedent over I_function3 and I_function7
      -- I_add for instructions that reqiure addition as part of their operation but don't have a function3 for the alu operation
      -- I_function3 decides the ALU operation, while I_function7 decides the sign of the operation
      -- else if alu_en = 0, bypass operand 2 as O_alu_output
      if I_alu_en = '1' then
        -- add
        if I_add = '1' or (I_function3 = "000" and I_function7 = '0') then
          O_alu_output <= std_logic_vector(unsigned(oper1) + unsigned(oper2));
          -- sub
        elsif I_function3 = "000" and I_function7 = '1' and I_operand_selector = "00" then
          O_alu_output <= std_logic_vector(unsigned(oper1) - unsigned(oper2));
          -- sll
        elsif I_function3 = "001" then
          O_alu_output <= std_logic_vector(unsigned(shift_left(unsigned(oper1), to_integer(unsigned(oper2(4 downto 0))))));
          -- slt
        elsif I_function3 = "010" then
          if (signed(oper1) < signed(oper2)) then
            O_alu_output <= (31 downto 1 => '0') & '1';
          else
            O_alu_output <= (31 downto 0 => '0');
          end if;
          -- sltu
        elsif I_function3 = "011" then
          if (unsigned(oper1) < unsigned(oper2)) then
            O_alu_output <= (31 downto 1 => '0') & '1';
          else
            O_alu_output <= (31 downto 0 => '0');
          end if;
          -- xor
        elsif I_function3 = "100" then
          O_alu_output <= oper1 xor oper2;
          -- sra
        elsif I_function3 = "101" and I_function7 = '1' then
          O_alu_output <= std_logic_vector(unsigned(shift_right(signed(oper1), to_integer(unsigned(oper2(4 downto 0))))));
          -- srl
        elsif I_function3 = "101" and I_function7 = '0' then
          O_alu_output <= std_logic_vector (unsigned(shift_right(unsigned(oper1), to_integer(unsigned(oper2(4 downto 0))))));
          -- or
        elsif I_function3 = "110" then
          O_alu_output <= oper1 or oper2;
          -- and
        elsif I_function3 = "111" then
          O_alu_output <= oper1 and oper2;
        end if;
        -- bypass
      else
        O_alu_output <= oper2;
      end if;
    end if;
  end process;
end rtl;