force -freeze sim:/memory_interface/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/memory_interface/mem_en 1 0
force -freeze sim:/memory_interface/wb_en 0 0
force -freeze sim:/memory_interface/start 1 0
force -freeze sim:/memory_interface/function3 3'h2 0
force -freeze sim:/memory_interface/address 14'h0000 0
force -freeze sim:/memory_interface/write_data 32'h12345678 0