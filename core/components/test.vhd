library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera;
use altera.altera_syn_attributes.all;


entity test is 
port (
		clk,start: in std_logic;
		IF_ID_instruction,IF_ID_pc,IF_ID_pc4: out std_logic_vector (31 downto 0)
);
end test;

architecture rtl of test is

signal IF_mem_en							: std_logic:= '0';
signal IF_done								: std_logic:= '0';
signal IF_pc_selector					: std_logic:= '0';
signal IF_pc_increment					: std_logic:= '0';
signal IF_wait								: std_logic:= '0';

signal uut_en								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_clr								: std_logic_vector (5 downto 0):= (others => '0');
signal uut_out								: std_logic_vector (5 downto 0):= (others => '0');


component uut_fetch is
port (
	clk					: in std_logic;
	start					: in std_logic;
	pc_selector			: in std_logic;
	pc_increment		: in std_logic;
	uut_fetch_en		: in std_logic;
	uut_fetch_clr		: in std_logic;
	uut_fetch_out		: in std_logic;
	fetch_en				: in std_logic;
	new_pc_in			: in std_logic_vector (31 downto 0);
	fetch_wait			: out std_logic;
	fetch_done			: out std_logic;
	instruction			: out std_logic_vector (31 downto 0);
	pc_out				: out std_logic_vector (31 downto 0);
	pc4_out				: out std_logic_vector (31 downto 0)
);
end component;



component control_unit is
port (
	clk			: in std_logic;
	start			: in std_logic;
	fetch_wait	: in std_logic;
	fetch_done	: in std_logic;
	mem_wait		: in std_logic;
	mem_done		: in std_logic;
	branch		: in std_logic;
	stall			: in std_logic;
	I_mem_en		: in std_logic;
	O_mem_en		: out std_logic;
	fetch_en		: out std_logic;
	pc_selector	: out std_logic;
	pc_increment: out std_logic;
	uut_out		: out std_logic_vector(5 downto 0);
	uut_en		: out std_logic_vector(5 downto 0);
	uut_clr		: out std_logic_vector(5 downto 0)
	);
end component;

attribute preserve: boolean; 
attribute preserve of rtl: architecture is true; 
begin

uut_fetch1: uut_fetch port map(
				clk 						=> clk,
				start						=> start,
				uut_fetch_en 			=> uut_en(0),
				uut_fetch_clr 			=> uut_clr(0),
				uut_fetch_out			=> uut_out(0),
				
				fetch_wait				=> IF_wait,
				fetch_en 				=> IF_mem_en,
				fetch_done				=> IF_done,
				
				pc_selector 			=> IF_pc_selector,
				pc_increment			=> IF_pc_increment,
				new_pc_in 				=> (others => '0'),

				instruction 			=> IF_ID_instruction,
				pc_out 					=> IF_ID_pc,
				pc4_out 					=> IF_ID_pc4
			   );


control_unit1: control_unit port map(
				clk 						=> clk,
				start 					=> start,
				branch 					=> '0',
				stall 					=> '0',
				uut_en 					=> uut_en,
				uut_clr 					=> uut_clr,
				uut_out					=> uut_out,
				pc_selector				=> IF_pc_selector,
				pc_increment			=> IF_pc_increment,
				fetch_en 				=> IF_mem_en,
				fetch_wait				=> IF_wait,
				fetch_done				=> IF_done,
				I_mem_en					=> '0',
				O_mem_en					=> open,
				mem_wait					=> '0',
				mem_done					=> '0'
				);	
end rtl;
