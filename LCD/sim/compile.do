set design_dir	../hdl

vlib work
vmap work work

set library_file_list {
                           design_library 
											{	
												LCD_DRIVER.vhd
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
puterr $library
      if [regexp {design_mf} $library] { 
	  set libdir $mf_dir
	  } elseif [regexp {design_library} $library] { 
	  set libdir $design_dir
	  }	else {
	  set libdir [pwd]
	  }
	  puterr $libdir
  vlib $library
  vmap work $library
  foreach file $file_list {
	set file $libdir/$file
    if { $last_compile_time < [file mtime $file] } {
      if [regexp {.vhdl?$} $file] {
				puterr $file
				vcom -2008 -work work $file    
		}
      set last_compile_time 0
    }
  }
}
vcom -2008 -work work $design_dir/LCD_DRIVER.vhd
vsim -t ns -quiet $top_level

add wave -group GENERAL * 
add wave -group Stimulus -position end sim:/testbench/stimulus_inst/*
add wave -group DUT -position end sim:/testbench/dut_inst/* 

run 4500 ns
