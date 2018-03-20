set design_dir	../hdl
set mf_dir ../mf

vlib work
vmap work work

set library_file_list {
							package_library {
											uart_pkg.vhd
											}
                           design_library 
											{	
												RX_MACHINE.vhd
												TX_MACHINE.vhd
												UART_module.vhd
											}
                           test_library   
											{	
											stimulus.vhd
											testbench.vhd
											}
}
set top_level	testbench


set time_now [clock seconds]
if [catch {set last_compile_time}] {
  set last_compile_time 0
}

#compile project files
foreach {library file_list} $library_file_list {
echo "Library:"
puterr $library
      if [regexp {design_mf} $library] { 
		set libdir $mf_dir
	  } elseif [regexp {design_library} $library] { 
		set libdir $design_dir
	  } elseif [regexp {package_library} $library] {
		set libdir	$design_dir
	  } else {
	  set libdir [pwd]
	  }
	  echo "Library directory:"
	  puterr $libdir
	  
  #vlib $library
  #vmap work $library
  foreach file $file_list {
	set file $libdir/$file
    if { $last_compile_time < [file mtime $file] } {
      if [regexp {.vhdl?$} $file] {
				echo "File:"
				puterr $file
				#vcom -2008 -work $library $file
				vcom -2008 $file
		}
      set last_compile_time 0
    }
  }
}
#vcom -2008 -work work $design_dir/UART.vhd
vsim -t ns -quiet -novopt $top_level

add wave -group GENERAL * 
add wave -group Stimulus -position end sim:/testbench/stimulus_inst/*
add wave -group DUT -position end sim:/testbench/dut_inst/* 
add wave -group TX_MACHINE -position end sim:/testbench/dut_inst/tx_0/*
add wave -group RX_MACHINE -position end sim:/testbench/dut_inst/rx_0/*


run 700 us