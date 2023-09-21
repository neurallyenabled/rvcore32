library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.std_logic_misc.all;

entity stall_logic is
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
end stall_logic;

architecture rtl of stall_logic is
  -- signal for determining whether stalling is needed for a register
  signal stall_rs1_i : std_logic := '0';
  signal stall_rs2_i : std_logic := '0';
begin
  -- process for deteremining whether a stall is needed
  process (clk, uut_decode_clr, I_branch, I_start, I_opcode, I_rs1_address, I_rs2_address, I_rd_address_alu, I_rd_address_mem, stall_rs1_i, stall_rs2_i)
  begin
    -- check whether the operand register is the destination register of an instruction currently executing
    -- stall_rs1_i		<= (and (I_rs1_address xnor I_rd_address_alu)) or (and (I_rs1_address xnor I_rd_address_mem));
    -- stall_rs2_i		<= (and (I_rs2_address xnor I_rd_address_alu)) or (and (I_rs2_address xnor I_rd_address_mem));
    if (I_rs1_address xnor I_rd_address_alu) = "11111" or (I_rs1_address xnor I_rd_address_mem) = "11111" then
      stall_rs1_i <= '1';
    else
      stall_rs1_i <= '0';
    end if;

    if (I_rs2_address xnor I_rd_address_alu) = "11111" or (I_rs2_address xnor I_rd_address_mem) = "11111" then
      stall_rs2_i <= '1';
    else
      stall_rs2_i <= '0';
    end if;
    -- if the ID/ALU buffer is being cleared due to a branch or for stopping the core, reset the stall signal
    -- else if the instruction utilizes both rs1 & rs2 check if they are being used as rd registers
    -- and check that they are not the zero register, if one of the registers fulfill both conditions stall
    -- else, dont stall
    -- else if, the same as above but only for instructions using the rs1 register
    -- else, dont stall
    if uut_decode_clr = '1' and (I_branch = '1' or I_start = '0') then
      O_stall <= '0';
    elsif rising_edge(clk) then

      if I_opcode = "1100011" or I_opcode = "0100011" or I_opcode = "0110011" or I_opcode = "1110011" then
        if (I_rs1_address /= "00000" and stall_rs1_i = '1') or (I_rs2_address /= "00000" and stall_rs2_i = '1') then
          O_stall <= '1';
        else
          O_stall <= '0';
        end if;

      elsif I_opcode = "1100111" or I_opcode = "0000011" or I_opcode = "0010011" then
        if I_rs1_address /= "00000" and stall_rs1_i = '1' then
          O_stall <= '1';
        else
          O_stall <= '0';
        end if;

      else
        O_stall <= '0';
      end if;
    end if;
  end process;
end rtl;