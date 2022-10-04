set_global_assignment -entity "memory_interface" -library "lib_memory_interface" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "memory_interface" -library "lib_memory_interface" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "memory_interface" -library "lib_memory_interface" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_memory_interface" -name SPD_FILE [file join $::quartus(sip_path) "../memory_interface.spd"]
set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "../../memory_interface.qsys"]

set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "memory_interface.vhd"]
set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_util.v"]
set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash.v"]
set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_avmm_data_controller.v"]
set_global_assignment -library "lib_memory_interface" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_avmm_csr_controller.v"]
