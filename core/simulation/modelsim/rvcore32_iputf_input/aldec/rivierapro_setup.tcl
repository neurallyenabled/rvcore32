

vlog -v2k5 "/home/mj/Documents/uob/itce497-senior-project/rvcore32/core/ram/simulation/submodules/altera_onchip_flash_util.v"                 -work onchip_flash_0
vlog -v2k5 "/home/mj/Documents/uob/itce497-senior-project/rvcore32/core/ram/simulation/submodules/altera_onchip_flash.v"                      -work onchip_flash_0
vlog -v2k5 "/home/mj/Documents/uob/itce497-senior-project/rvcore32/core/ram/simulation/submodules/altera_onchip_flash_avmm_data_controller.v" -work onchip_flash_0
vlog -v2k5 "/home/mj/Documents/uob/itce497-senior-project/rvcore32/core/ram/simulation/submodules/altera_onchip_flash_avmm_csr_controller.v"  -work onchip_flash_0
vcom       "/home/mj/Documents/uob/itce497-senior-project/rvcore32/core/ram/simulation/ram.vhd"                                                                   
