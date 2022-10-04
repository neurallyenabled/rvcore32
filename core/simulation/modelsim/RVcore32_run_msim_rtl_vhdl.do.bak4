transcript on
if ![file isdirectory RVcore32_iputf_libs] {
	file mkdir RVcore32_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib RVcore32_iputf_libs/onchip_flash_0
vmap onchip_flash_0 ./RVcore32_iputf_libs/onchip_flash_0
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "C:/Users/DELL/Desktop/RVcore32/memory_interface/simulation/submodules/altera_onchip_flash_util.v"                 -work onchip_flash_0
vlog "C:/Users/DELL/Desktop/RVcore32/memory_interface/simulation/submodules/altera_onchip_flash.v"                      -work onchip_flash_0
vlog "C:/Users/DELL/Desktop/RVcore32/memory_interface/simulation/submodules/altera_onchip_flash_avmm_data_controller.v" -work onchip_flash_0
vlog "C:/Users/DELL/Desktop/RVcore32/memory_interface/simulation/submodules/altera_onchip_flash_avmm_csr_controller.v"  -work onchip_flash_0
vcom "C:/Users/DELL/Desktop/RVcore32/memory_interface/simulation/memory_interface.vhd"                                                      

vcom -93 -work work {C:/Users/DELL/Desktop/RVcore32/memory_interface/memory_interface_inst.vhd}

