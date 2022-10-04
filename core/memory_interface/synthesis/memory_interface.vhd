-- memory_interface.vhd

-- Generated using ACDS version 18.1 646

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memory_interface is
	port (
		clock                   : in  std_logic                     := '0';             --    clk.clk
		avmm_csr_addr           : in  std_logic                     := '0';             --    csr.address
		avmm_csr_read           : in  std_logic                     := '0';             --       .read
		avmm_csr_writedata      : in  std_logic_vector(31 downto 0) := (others => '0'); --       .writedata
		avmm_csr_write          : in  std_logic                     := '0';             --       .write
		avmm_csr_readdata       : out std_logic_vector(31 downto 0);                    --       .readdata
		avmm_data_addr          : in  std_logic_vector(18 downto 0) := (others => '0'); --   data.address
		avmm_data_read          : in  std_logic                     := '0';             --       .read
		avmm_data_writedata     : in  std_logic_vector(31 downto 0) := (others => '0'); --       .writedata
		avmm_data_write         : in  std_logic                     := '0';             --       .write
		avmm_data_readdata      : out std_logic_vector(31 downto 0);                    --       .readdata
		avmm_data_waitrequest   : out std_logic;                                        --       .waitrequest
		avmm_data_readdatavalid : out std_logic;                                        --       .readdatavalid
		avmm_data_burstcount    : in  std_logic_vector(3 downto 0)  := (others => '0'); --       .burstcount
		reset_n                 : in  std_logic                     := '0'              -- nreset.reset_n
	);
end entity memory_interface;

architecture rtl of memory_interface is
	component altera_onchip_flash is
		generic (
			INIT_FILENAME                       : string  := "";
			INIT_FILENAME_SIM                   : string  := "";
			DEVICE_FAMILY                       : string  := "Unknown";
			PART_NAME                           : string  := "Unknown";
			DEVICE_ID                           : string  := "Unknown";
			SECTOR1_START_ADDR                  : integer := 0;
			SECTOR1_END_ADDR                    : integer := 0;
			SECTOR2_START_ADDR                  : integer := 0;
			SECTOR2_END_ADDR                    : integer := 0;
			SECTOR3_START_ADDR                  : integer := 0;
			SECTOR3_END_ADDR                    : integer := 0;
			SECTOR4_START_ADDR                  : integer := 0;
			SECTOR4_END_ADDR                    : integer := 0;
			SECTOR5_START_ADDR                  : integer := 0;
			SECTOR5_END_ADDR                    : integer := 0;
			MIN_VALID_ADDR                      : integer := 0;
			MAX_VALID_ADDR                      : integer := 0;
			MIN_UFM_VALID_ADDR                  : integer := 0;
			MAX_UFM_VALID_ADDR                  : integer := 0;
			SECTOR1_MAP                         : integer := 0;
			SECTOR2_MAP                         : integer := 0;
			SECTOR3_MAP                         : integer := 0;
			SECTOR4_MAP                         : integer := 0;
			SECTOR5_MAP                         : integer := 0;
			ADDR_RANGE1_END_ADDR                : integer := 0;
			ADDR_RANGE2_END_ADDR                : integer := 0;
			ADDR_RANGE1_OFFSET                  : integer := 0;
			ADDR_RANGE2_OFFSET                  : integer := 0;
			ADDR_RANGE3_OFFSET                  : integer := 0;
			AVMM_DATA_ADDR_WIDTH                : integer := 19;
			AVMM_DATA_DATA_WIDTH                : integer := 32;
			AVMM_DATA_BURSTCOUNT_WIDTH          : integer := 4;
			SECTOR_READ_PROTECTION_MODE         : integer := 31;
			FLASH_SEQ_READ_DATA_COUNT           : integer := 2;
			FLASH_ADDR_ALIGNMENT_BITS           : integer := 1;
			FLASH_READ_CYCLE_MAX_INDEX          : integer := 4;
			FLASH_RESET_CYCLE_MAX_INDEX         : integer := 29;
			FLASH_BUSY_TIMEOUT_CYCLE_MAX_INDEX  : integer := 112;
			FLASH_ERASE_TIMEOUT_CYCLE_MAX_INDEX : integer := 40603248;
			FLASH_WRITE_TIMEOUT_CYCLE_MAX_INDEX : integer := 35382;
			PARALLEL_MODE                       : boolean := true;
			READ_AND_WRITE_MODE                 : boolean := true;
			WRAPPING_BURST_MODE                 : boolean := false;
			IS_DUAL_BOOT                        : string  := "False";
			IS_ERAM_SKIP                        : string  := "False";
			IS_COMPRESSED_IMAGE                 : string  := "False"
		);
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
	end component altera_onchip_flash;

begin

	onchip_flash_0 : component altera_onchip_flash
		generic map (
			INIT_FILENAME                       => "memory_interface_onchip_flash_0.hex",
			INIT_FILENAME_SIM                   => "memory_interface_onchip_flash_0.dat",
			DEVICE_FAMILY                       => "MAX 10",
			PART_NAME                           => "10M50DAF484C7G",
			DEVICE_ID                           => "50",
			SECTOR1_START_ADDR                  => 0,
			SECTOR1_END_ADDR                    => 8191,
			SECTOR2_START_ADDR                  => 8192,
			SECTOR2_END_ADDR                    => 16383,
			SECTOR3_START_ADDR                  => 16384,
			SECTOR3_END_ADDR                    => 114687,
			SECTOR4_START_ADDR                  => 114688,
			SECTOR4_END_ADDR                    => 188415,
			SECTOR5_START_ADDR                  => 188416,
			SECTOR5_END_ADDR                    => 360447,
			MIN_VALID_ADDR                      => 0,
			MAX_VALID_ADDR                      => 360447,
			MIN_UFM_VALID_ADDR                  => 0,
			MAX_UFM_VALID_ADDR                  => 114687,
			SECTOR1_MAP                         => 1,
			SECTOR2_MAP                         => 2,
			SECTOR3_MAP                         => 3,
			SECTOR4_MAP                         => 4,
			SECTOR5_MAP                         => 5,
			ADDR_RANGE1_END_ADDR                => 360447,
			ADDR_RANGE2_END_ADDR                => 360447,
			ADDR_RANGE1_OFFSET                  => 2048,
			ADDR_RANGE2_OFFSET                  => 0,
			ADDR_RANGE3_OFFSET                  => 0,
			AVMM_DATA_ADDR_WIDTH                => 19,
			AVMM_DATA_DATA_WIDTH                => 32,
			AVMM_DATA_BURSTCOUNT_WIDTH          => 4,
			SECTOR_READ_PROTECTION_MODE         => 0,
			FLASH_SEQ_READ_DATA_COUNT           => 4,
			FLASH_ADDR_ALIGNMENT_BITS           => 2,
			FLASH_READ_CYCLE_MAX_INDEX          => 5,
			FLASH_RESET_CYCLE_MAX_INDEX         => 29,
			FLASH_BUSY_TIMEOUT_CYCLE_MAX_INDEX  => 139,
			FLASH_ERASE_TIMEOUT_CYCLE_MAX_INDEX => 40600000,
			FLASH_WRITE_TIMEOUT_CYCLE_MAX_INDEX => 35380,
			PARALLEL_MODE                       => true,
			READ_AND_WRITE_MODE                 => true,
			WRAPPING_BURST_MODE                 => false,
			IS_DUAL_BOOT                        => "False",
			IS_ERAM_SKIP                        => "True",
			IS_COMPRESSED_IMAGE                 => "False"
		)
		port map (
			clock                   => clock,                   --    clk.clk
			reset_n                 => reset_n,                 -- nreset.reset_n
			avmm_data_addr          => avmm_data_addr,          --   data.address
			avmm_data_read          => avmm_data_read,          --       .read
			avmm_data_writedata     => avmm_data_writedata,     --       .writedata
			avmm_data_write         => avmm_data_write,         --       .write
			avmm_data_readdata      => avmm_data_readdata,      --       .readdata
			avmm_data_waitrequest   => avmm_data_waitrequest,   --       .waitrequest
			avmm_data_readdatavalid => avmm_data_readdatavalid, --       .readdatavalid
			avmm_data_burstcount    => avmm_data_burstcount,    --       .burstcount
			avmm_csr_addr           => avmm_csr_addr,           --    csr.address
			avmm_csr_read           => avmm_csr_read,           --       .read
			avmm_csr_writedata      => avmm_csr_writedata,      --       .writedata
			avmm_csr_write          => avmm_csr_write,          --       .write
			avmm_csr_readdata       => avmm_csr_readdata        --       .readdata
		);

end architecture rtl; -- of memory_interface