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
signal read_data_part: std_logic_vector(7 downto 0):=(others => '0');
signal read_en,wait_i,done_i: std_logic:='0';
signal address_i : std_logic_vector(13 downto 0):=(others => '0');
signal cycle_i: unsigned(2 downto 0):= "000";
signal address_selector: std_logic_vector(1 downto 0):= (others => '0');
signal read_data_i: std_logic_vector(31 downto 0):= (others => '0');
type state is (idle_s,read_s);
signal current_state,next_state: state:= idle_s;

component rom is
	port (
		address	: in STD_LOGIC_VECTOR (13 DOWNTO 0);
		clken		: in STD_LOGIC  := '1';
		clock		: in STD_LOGIC  := '1';
		rden		: in STD_LOGIC  := '1';
		q			: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end component rom;
	
begin	

u0 : component rom port map (address_i,start,clk,read_en,read_data_part);

done <= done_i;
waitt <= wait_i;

process(clk,mem_en)
begin
	if mem_en = '0' then
		current_state 			<= idle_s;
	elsif rising_edge (clk) then 		
		current_state 			<= next_state;
		if done_i = '1' then
			read_data <= read_data_i;
		end if;
		if current_state = idle_s then
			cycle_i <= "000";
		else
			if cycle_i = "110" then
				cycle_i <= "110";
			else
				cycle_i <= cycle_i + 1;
			end if;
		end if;
	end if;
end process;

process(address_selector,address)
begin
case address_selector is
 when "00" => address_i 	<= address;
 when "01" => address_i  	<= std_logic_vector(unsigned(address)+1);
 when "10" => address_i 	<= std_logic_vector(unsigned(address)+2);
 when others => address_i 	<= std_logic_vector(unsigned(address)+3);
end case;
end process;
	
process(all)
begin
	if current_state = idle_s then
		address_selector 		<= "00";
		read_data_i 			<= (others => '0');
		wait_i 					<= '0';
		read_en 					<= '0';
		done_i 					<= '0';
		if done_i = '1' then
			next_state 			<= idle_s;
		else
			next_state 			<= read_s;
		end if;
		
	else --current_state = read_s
		wait_i 					<= '1';
		if cycle_i = "000" then
			address_selector 	<= "00";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (others => '0');
			next_state 			<= read_s;
			
		elsif cycle_i = "001" then
			address_selector 	<= "01";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (others => '0');
			next_state 			<= read_s;
			
		elsif cycle_i = "010" then
			address_selector 	<= "10";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (others => '0');
			next_state 			<= read_s;
			
		elsif cycle_i = "011" then
			address_selector 	<= "11";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (31 downto 8 => '0') & read_data_part;
			next_state 			<= read_s;
			
		elsif cycle_i = "100" then
			address_selector 	<= "11";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (31 downto 16 => '0') & read_data_part & read_data_i(7 downto 0);
			next_state 			<= read_s;
			
		elsif cycle_i = "101" then
			address_selector 	<= "11";
			read_en 				<= '1';
			done_i 				<= '0';
			read_data_i 		<= (31 downto 24 => '0') & read_data_part & read_data_i(15 downto 0);
			next_state 			<= read_s;
			
		else -- cycle_i = "110" then
			address_selector 	<= "11";
			read_en 				<= '0';
			done_i 				<= '1';
			read_data_i 		<= read_data_part & read_data_i(23 downto 0);
			next_state 			<= idle_s;			
		end if;
	end if;
end process;
end rtl;
