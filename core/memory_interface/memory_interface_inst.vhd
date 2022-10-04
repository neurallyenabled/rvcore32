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
	waitt: out std_logic
);
end memory_interface_inst;


architecture rtl of memory_interface_inst is

	signal read_data_i,write_data_i : std_logic_vector(31 downto 0):=(others => '0');
	signal read_i,write_i,wait_i,read_done_i: std_logic:='0';
	
	type state is (idle,busy);
	signal current_state: state:= idle;
	
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
			clock                   => clk,                   --    clk.clk
			reset_n                 => "not" (start),                 -- nreset.reset_n
			avmm_data_addr          => address,          --   data.address
			avmm_data_read          => read_i,          --       .read
			avmm_data_writedata     => write_data_i,     --       .writedata
			avmm_data_write         => write_i,         --       .write
			avmm_data_readdata      => read_data_i,      --       .readdata
			avmm_data_waitrequest   => wait_i,   --       .waitrequest
			avmm_data_readdatavalid => read_done_i, --       .readdatavalid
			avmm_data_burstcount    => "0001",    --       .burstcount
			avmm_csr_addr           => '0',           --    csr.address
			avmm_csr_read           => '0',           --       .read
			avmm_csr_writedata      => (others => '0'),      --       .writedata
			avmm_csr_write          => '0',          --       .write
			avmm_csr_readdata       => open        --       .readdata
		);
		
		
	process(clk)
	begin
		if rising_edge(clk) then
		
			if current_state = idle then
				waitt <= '0';
				read_i <= '0';
				write_i <= '0';
				if mem_en = '1' then
					current_state <= busy;
				else
					current_state <= idle;
				end if;	
				
			elsif current_state = busy then
				waitt <= '1';
				
				if wait_i = '0' then
					if mem_en = '1' and wb_en = '0' then -- write operation
						if function3 = "000" then
							write_data_i <= (31 downto 8 => '0') & write_data(7 downto 0);
							
						elsif function3 = "001" then
							write_data_i <= (31 downto 16 => '0') & write_data(15 downto 0);	
							
						elsif function3 = "010" then
							write_data_i <= write_data;	

						end if;
						write_i <= '1';
						current_state <= idle;
					
					elsif mem_en = '1' and wb_en = '1' then -- read operation
						read_i <= '1';
						if read_done_i = '1' then
							
							if function3 = "000" then
								read_data <= (31 downto 8 => read_data_i(7)) &  read_data_i(7 downto 0);
								
							elsif function3 = "001" then
								read_data <= (31 downto 16 => read_data_i(15)) & read_data_i(15 downto 0);	
								
							elsif function3 = "010" then
								read_data <= read_data_i;	
							
							elsif	function3 = "100" then
								read_data <= (31 downto 8 => '0') & read_data_i(7 downto 0);
								
							elsif function3 = "101"  then
								read_data <= (31 downto 16 => '0') & read_data_i(15 downto 0);	
								
							end if;
							current_state <= idle;
						else
							current_state <= busy;
						end if;	
						
					else 
						current_state <= idle;
					end if;
					
				else
					current_state <= busy;
				end if;	
			end if;
		end if;	
	end process;

end rtl;