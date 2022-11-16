library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity memory_interface is 
port (
	clk 				: in std_logic;
	mem_en			: in std_logic;
	wb_en				: in std_logic;
	start				: in std_logic;
	function3		: in std_logic_vector (2 downto 0);
	address			: in std_logic_vector (13 downto 0);
	write_data		: in std_logic_vector (31 downto 0);
	read_data		: out std_logic_vector (31 downto 0);
	waitt				: out std_logic;
	done				: out std_logic
);
end memory_interface;

architecture rtl of memory_interface is
-- write operation takes 1 cycle
-- read operation takes 2 cycles after specifying the address
signal read_data_partial: std_logic_vector(23 downto 0):=(others => '0');
signal read_data_i,write_data_i: std_logic_vector(7 downto 0):=(others => '0');
signal read_en,write_en,wait_i,done_i: std_logic:='0';
signal address_selector: std_logic_vector(1 downto 0):= (others => '0');
signal address_i : std_logic_vector(13 downto 0):=(others => '0');
signal cycle_i: unsigned(2 downto 0):= "000";

type state is (idle_s,read_s,write_s);
signal current_state: state:= idle_s;

component ram is
	port (
		address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component ram;
	
begin	

u0 : component ram
	port map (
		address	 	=> address_i,
		clken	 		=> start,
		clock	 		=> clk,
		data	 		=> write_data_i,
		rden	 		=> read_en,
		wren	 		=> write_en,
		q	 			=> read_data_i
	);

process(address_selector,address)
begin
case address_selector is
 when "00" => address_i 	<= address;
 when "01" => address_i  	<= std_logic_vector(unsigned(address)+1);
 when "10" => address_i 	<= std_logic_vector(unsigned(address)+2);
 when others => address_i 	<= std_logic_vector(unsigned(address)+3);
end case;
end process;


process(clk,mem_en)
begin
	if mem_en = '0' then
		read_en <= '0';
		write_en <= '0';
		wait_i <= '0';
		done_i <= '0';
		cycle_i <= "000";
		current_state <= idle_s;
		
	elsif rising_edge(clk) then
		if current_state = idle_s then
			cycle_i <= "000";
			wait_i <= '0';
			address_selector <= "00";
			if done_i = '1' then
				current_state <= idle_s;
			else
				if wb_en = '0' then
					current_state <= write_s;
				elsif wb_en = '1' then
					current_state <= read_s;
				else
					current_state <= idle_s;
				end if;
			end if;
			
		elsif current_state = write_s then
			wait_i <= '1';
			if function3 = "000" then
				if cycle_i = "000" then
					address_selector <= "00";
					write_data_i <= write_data(7 downto 0);
					write_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "001" then
					write_en <= '0';
					done_i <= '1';
					current_state <= idle_s;
				end if;
				
			elsif function3 = "001" then
				if cycle_i = "000" then
					address_selector <= "00";
					write_data_i <= write_data(7 downto 0);
					write_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "001" then
					address_selector <= "01";
					write_data_i <= write_data(15 downto 8);
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "010" then
					write_en <= '0';
					done_i <= '1';
					current_state <= idle_s;
				end if;
				
			elsif function3 = "010" then
				if cycle_i = "000" then
					address_selector <= "00";
					write_data_i <= write_data(7 downto 0);
					write_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "001" then
					address_selector <= "01";
					write_data_i <= write_data(15 downto 8);
					cycle_i <= cycle_i + 1;					
				elsif cycle_i = "010" then
					address_selector <= "10";
					write_data_i <= write_data(23 downto 16);
					cycle_i <= cycle_i + 1;					
				elsif cycle_i = "011" then
					address_selector <= "11";
					write_data_i <= write_data(31 downto 24);
					cycle_i <= cycle_i + 1;					
				elsif cycle_i = "100" then
					write_en <= '0';
					done_i <= '1';
					current_state <= idle_s;
				end if;
				
			else
				done_i <= '1';
				current_state <= idle_s;
			end if;
			
		elsif current_state = read_s then
			wait_i <= '1';
			if function3 = "000" or function3 = "100" then
				if cycle_i = "000" then
					address_selector <= "00";
					read_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "011" then
					read_en <= '0';
					done_i <= '1';
					current_state <= idle_s;
					if function3 = "000" then
						read_data <= (31 downto 8 => read_data_i(7)) & read_data_i;
					else
						read_data <= (31 downto 8 => '0') & read_data_i;
					end if;
				else
					cycle_i <= cycle_i + 1;
				end if;
				
			elsif function3 = "001" or function3 = "101" then
				if cycle_i = "000" then
					address_selector <= "00";
					read_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "001" then
					address_selector <= "01";
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "011" then
					read_data_partial(7 downto 0) <= read_data_i;
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "100" then
					read_en <= '0';
					done_i <= '1';
					current_state <= idle_s;
					if function3 = "001" then
						read_data <= (31 downto 16 => read_data_i(7)) & read_data_i & read_data_partial(7 downto 0);
					else
						read_data <= (31 downto 16 => '0') & read_data_i & read_data_partial(7 downto 0);
					end if;
				else
					cycle_i <= cycle_i + 1;
				end if;
				
			elsif function3 = "010" then
				if cycle_i = "000" then
					address_selector <= "00";
					read_en <= '1';
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "001" then
					address_selector <= "01";
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "010" then
					address_selector <= "10";
					cycle_i <= cycle_i + 1;
				elsif cycle_i = "011" then
					address_selector <= "11";
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
				
			else
				done_i <= '1';
				current_state <= idle_s;
			end if;
		end if;
	end if;
end process;
	
done <= done_i;
waitt <= wait_i;
end rtl;
