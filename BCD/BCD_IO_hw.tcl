# TCL File Generated by Component Editor 13.0sp1
# Wed Nov 01 21:19:30 IST 2017
# DO NOT MODIFY


# 
# BCD_IO "BCD_IO_Avalon" v1.0
# Doron K 2017.11.01.21:19:30
# BCD_Avalon_MM_Slave
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module BCD_IO
# 
set_module_property DESCRIPTION BCD_Avalon_MM_Slave
set_module_property NAME BCD_IO
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Doron K"
set_module_property DISPLAY_NAME BCD_IO_Avalon
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL BCD_Avalon_Top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file BCD_Avalon_Top.vhd VHDL PATH hdl/BCD_Avalon_Top.vhd TOP_LEVEL_FILE
add_fileset_file BCD_digit.vhd VHDL PATH hdl/BCD_digit.vhd
add_fileset_file BCD_top.vhd VHDL PATH hdl/BCD_top.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 50000000
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock
set_interface_property avalon_slave associatedReset reset_sink
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 111
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave avmm_address address Input 3
add_interface_port avalon_slave avmm_waitrequest waitrequest Output 1
add_interface_port avalon_slave avmm_read read Input 1
add_interface_port avalon_slave avmm_readdata readdata Output 32
add_interface_port avalon_slave avmm_write write Input 1
add_interface_port avalon_slave avmm_writedata writedata Input 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rstn reset_n Input 1


# 
# connection point BCD_IO_Pinout
# 
add_interface BCD_IO_Pinout conduit end
set_interface_property BCD_IO_Pinout associatedClock clock
set_interface_property BCD_IO_Pinout associatedReset reset_sink
set_interface_property BCD_IO_Pinout ENABLED true
set_interface_property BCD_IO_Pinout EXPORT_OF ""
set_interface_property BCD_IO_Pinout PORT_NAME_MAP ""
set_interface_property BCD_IO_Pinout SVD_ADDRESS_GROUP ""

add_interface_port BCD_IO_Pinout enable_pinout en Output 8
add_interface_port BCD_IO_Pinout bcd_pinout bcd Output 8


# 
# connection point error_conduit
# 
add_interface error_conduit conduit end
set_interface_property error_conduit associatedClock clock
set_interface_property error_conduit associatedReset reset_sink
set_interface_property error_conduit ENABLED true
set_interface_property error_conduit EXPORT_OF ""
set_interface_property error_conduit PORT_NAME_MAP ""
set_interface_property error_conduit SVD_ADDRESS_GROUP ""

add_interface_port error_conduit error error Output 1

