set_global_assignment -entity "bcd" -library "lib_bcd" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "bcd" -library "lib_bcd" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "bcd" -library "lib_bcd" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_bcd" -name SPD_FILE [file join $::quartus(sip_path) "../../bcd.spd"]
set_global_assignment -library "lib_bcd" -name MISC_FILE [file join $::quartus(sip_path) "../../bcd.qsys"]

set_global_assignment -library "lib_bcd" -name MISC_FILE [file join $::quartus(sip_path) "bcd.vhd"]
set_global_assignment -library "lib_bcd" -name MISC_FILE [file join $::quartus(sip_path) "submodules/bcd_master_0.vhd"]
