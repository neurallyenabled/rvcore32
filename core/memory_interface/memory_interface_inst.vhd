library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
entity memory_interface_inst is 
port (
	clk,mem_en,wb_en,start: in std_logic;
	function3: in std_logic_vector (2 downto 0);
	address: in std_logic_vector (18 downto 0);
	write_data: in std_logic_vector (31 downto 0);
	read_data: out std_logic_vector (31 downto 0);
	waitt,done: out std_logic
);
end memory_interface_inst;

architecture rtl of memory_interface_inst is

signal ram_read_data_i,ram_write_data_i,csr_read_data_i,csr_write_data_i : std_logic_vector(31 downto 0):=(others => '0');
signal ram_read_i,ram_write_i,csr_read_i,csr_write_i,csr_address_i,wait_i,read_done_i,done_i: std_logic:='0';
signal burst_count_i: std_logic_vector(3 downto 0):= "0001";
signal ram_address_i : std_logic_vector(18 downto 0):=(others => '0');
signal write_op,read_op: std_logic:= '0';
signal cycle_i: unsigned(2 downto 0):= "000";

type state is (idle_s,read_s,write_s);
signal current_state: state:= idle_s;

component memory_interface is
	port (
		clock                   : in  std_logic                     := 'X';             -- clk
		reset_n                 : in  std_logic                     := 'X';             -- reset_n
		avmm_data_addr          : in  std_logic_vector(18 downto 0) := (others => 'X'); -- address
		avmm_data_read          : in  std_logic                     := 'X';             -- read
		avmm_data_writedata     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avmm_data_write         : in  std_logic                     := 'X';             -- write
		avmm_data_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
		avmm_data_waitrequest   : out std_logic;                                        -- waitrequest
		avmm_data_readdatavalid : out std_logic;                                        -- readdatavalid
		avmm_data_burstcount    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- burstcount
		avmm_csr_addr           : in  std_logic                     := 'X';             -- address
		avmm_csr_read           : in  std_logic                     := 'X';             -- read
		avmm_csr_writedata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avmm_csr_write          : in  std_logic                     := 'X';             -- write
		avmm_csr_readdata       : out std_logic_vector(31 downto 0)                     -- readdata
	);
end component memory_interface;
	
begin	

u0 : component memory_interface
	port map (
		clock                   => clk,                 --    clk.clk
		reset_n                 => "not" (start),       -- nreset.reset_n
		avmm_data_addr          => ram_address_i,       --   data.address
		avmm_data_read          => ram_read_i,          --       .read
		avmm_data_writedata     => ram_write_data_i,    --       .writedata
		avmm_data_write         => ram_write_i,         --       .write
		avmm_data_readdata      => ram_read_data_i,     --       .readdata
		avmm_data_waitrequest   => wait_i,   		--       .waitrequest
		avmm_data_readdatavalid => read_done_i, 	--       .readdatavalid
		avmm_data_burstcount    => burst_count_i,    	--       .burstcount
		avmm_csr_addr           => csr_address_i,       --    csr.address
		avmm_csr_read           => csr_read_i,          --       .read
		avmm_csr_writedata      => csr_write_data_i,    --       .writedata
		avmm_csr_write          => csr_write_i,         --       .write
		avmm_csr_readdata       => csr_read_data_i      --       .readdata
	);
	
done <= done_i;
write_op <= mem_en and not(wb_en);
read_op <= mem_en and wb_en;

process(clk,mem_en)
begin
if mem_en = '0' then
	current_state <= idle_s;
	waitt <= '0';
	ram_read_i <= '0';
	ram_write_i <= '0';
	cycle_i <= "000";
	done_i <= '0';

elsif rising_edge(clk) then
	if current_state = idle_s then
		waitt <= '0';
		ram_read_i <= '0';
		ram_write_i <= '0';
		cycle_i <= "000";
		done_i <= '0';
		if read_op = '1' then
			current_state <= read_s;
		elsif write_op = '1' then
			current_state <= write_s;
		else
			current_state <= idle_s;
		end if;	
	elsif current_state = read_s then
		waitt <= '1';
		if cycle_i = "000" then
			if wait_i = '0' then
				ram_read_i <= '1';
				ram_address_i <= std_logic_vector(unsigned(address)+ "1110000000000000000");
				burst_count_i <= "0001";
				cycle_i <= cycle_i + 1;
			end if;
		elsif cycle_i = "001" then
			ram_read_i <= '0';
			ram_address_i <= (others => '0');
			burst_count_i <= "0000";
			if read_done_i = '1' then
				done_i <= '1';
				current_state <= idle_s;
				if function3 = "000" then
					read_data <= (31 downto 8 => ram_read_data_i(7)) &  ram_read_data_i(7 downto 0);
				elsif function3 = "001" then
					read_data <= (31 downto 16 => ram_read_data_i(15)) & ram_read_data_i(15 downto 0);	
				elsif function3 = "010" then
					read_data <= ram_read_data_i;	
				elsif	function3 = "100" then
					read_data <= (31 downto 8 => '0') & ram_read_data_i(7 downto 0);
				elsif function3 = "101"  then
					read_data <= (31 downto 16 => '0') & ram_read_data_i(15 downto 0);	
				end if;
			end if;
		end if;

	elsif current_state = write_s then
		waitt <= '1';
		if cycle_i = "000" then
			csr_read_i <= '1';
			csr_address_i <= '1';
			cycle_i <= cycle_i +1;
		elsif cycle_i = "001" then
			csr_read_i <= '0';
			cycle_i <= cycle_i +1;
		elsif cycle_i = "010" then
			csr_write_i <= '1';
			csr_address_i <= '1';
			csr_write_data_i <= csr_read_data_i(31 downto 27) & '0' & csr_read_data_i(25 downto 0);
			cycle_i <= cycle_i +1;
		elsif cycle_i = "011" then
			csr_write_i <= '0';
			cycle_i <= cycle_i + 1;
			if wait_i = '0' then
				ram_write_i <= '1';
				ram_address_i <= std_logic_vector(unsigned(address)+ "1110000000000000000");
				burst_count_i <= "0001";
				if function3 = "000" then
					ram_write_data_i <= (31 downto 8 => '0') & write_data(7 downto 0);
				elsif function3 = "001" then
					ram_write_data_i <= (31 downto 16 => '0') & write_data(15 downto 0);	
				elsif function3 = "010" then
					ram_write_data_i <= write_data;	
				end if;
			end if;
		elsif cycle_i = "100" then
			csr_read_i <= '1';
			csr_address_i <= '0';
			cycle_i <= cycle_i + 1;
		elsif cycle_i = "101" then
			csr_read_i <= '0';
			if csr_read_data_i(1 downto 0) = "10" then
				cycle_i <= cycle_i - 1;
			elsif csr_read_data_i(3) = '1' then
				csr_write_i <= '1';
				csr_address_i <= '1';
				csr_write_data_i <= csr_read_data_i(31 downto 27) & '1' & csr_read_data_i(25 downto 0);
				done_i <= '1';
				current_state <= idle_s;
			end if;
		end if;
	end if;
end if;
end process;
end rtl;
