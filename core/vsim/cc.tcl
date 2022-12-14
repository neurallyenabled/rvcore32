vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/rom/rom.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/ram/ram.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/memory_interface.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/memory_interface_1.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/registers.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_fetch.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_decode.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/alu.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/comparator.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_alu.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_mem.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_register.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/control_unit.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/main.vhd
# vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/testbenches/main_tb.vhd
vsim -voptargs=+acc work.main
add wave -position insertpoint sim:/main/*
force -freeze sim:/main/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/main/start 1 0
run
# mem save -o /home/mj/Documents/uob/itce497/rvcore32/compliance/riscv-arch-test/riscv-test-suite/env/rvcore32.signature -f hex -wordsperline 8 /main_tb/main1/uut_mem1/mem1/u0/altsyncram_component/MEMORY/m_mem_data_a
# exit -force
