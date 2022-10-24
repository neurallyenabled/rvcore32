library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity memory_interface_1 is 
port (
	clk 				: in std_logic;
	mem_en			: in std_logic;
	start				: in std_logic;
	address			: in std_logic_vector (13 downto 0);
	read_data		: out std_logic_vector (31 downto 0);
	waitt				: out std_logic;
	done				: out std_logic
);
end memory_interface_1;

architecture rtl of memory_interface_1 is
-- write operation takes 1 cycle
-- read operation takes 2 cycles after specifying the address
signal read_data_partial: std_logic_vector(23 downto 0):=(others => '0');
signal read_data_i: std_logic_vector(7 downto 0):=(others => '0');
signal read_en,wait_i,done_i: std_logic:='0';
signal address_i : std_logic_vector(13 downto 0):=(others => '0');
signal cycle_i: unsigned(2 downto 0):= "000";

type state is (idle_s,read_s);
signal current_state: state:= idle_s;

component rom is
	port (
		address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		rden		: IN STD_LOGIC  := '1';
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component rom;
	
begin	

u0 : component rom
	port map (
		address	 	=> address_i,
		clken	 		=> start,
		clock	 		=> clk,
		rden	 		=> read_en,
		q	 			=> read_data_i
	);

process(clk,mem_en)
begin
	if mem_en = '0' then
		read_en <= '0';
		wait_i <= '0';
		done_i <= '0';
		cycle_i <= "000";
		current_state <= idle_s;
		
	elsif rising_edge(clk) then
		if current_state = idle_s then
			cycle_i <= "000";
			wait_i <= '0';
			if done_i = '1' then
				current_state <= idle_s;
				done_i <= '0';
			else
				current_state <= read_s;
			end if;
			
		elsif current_state = read_s then
			wait_i <= '1';
			if cycle_i = "000" then
				address_i <= address;
				read_en <= '1';
				cycle_i <= cycle_i + 1;
			elsif cycle_i = "001" then
				address_i <= std_logic_vector(unsigned(address)+1);
				cycle_i <= cycle_i + 1;
			elsif cycle_i = "010" then
				address_i <= std_logic_vector(unsigned(address)+2);
				cycle_i <= cycle_i + 1;
			elsif cycle_i = "011" then
				address_i <= std_logic_vector(unsigned(address)+3);
				read_data_partial(7 downto 0) <= read_data_i;
				cycle_i <= cycle_i + 1;
			elsif cycle_i = "100" then
				read_data_partial(15 downto 8) <= read_data_i;	
				cycle_i <= cycle_i + 1;					
			elsif cycle_i = "101" then
				read_data_partial(23 downto 16) <= read_data_i;	
				cycle_i <= cycle_i + 1;					
			elsif cycle_i = "110" then
				read_en <= '0';
				done_i <= '1';
				current_state <= idle_s;
				read_data <= read_data_i & read_data_partial(23 downto 0);
			else
				cycle_i <= cycle_i + 1;
			end if;
		end if;
	end if;
end process;
	
done <= done_i;
waitt <= wait_i;
end rtl;
