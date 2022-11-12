vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/rom/rom.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/ram/ram.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/memory_interface.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/memory_interface_1.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/registers.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_fetch.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_decode.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_alu.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_mem.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/uut_register.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/control_unit.vhd
vcom -reportprogress 300 -work work /home/mj/Documents/uob/itce497/rvcore32/core/components/main.vhd
vsim -voptargs=+acc work.main
add wave -position insertpoint sim:/main/*
force -freeze sim:/main/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/main/start 1 0
