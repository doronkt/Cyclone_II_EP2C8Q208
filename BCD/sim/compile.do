set design_dir	../hdl
set mf_dir		../mf

vlib work
vmap work work

set library_file_list {
                           design_library 
											{	
												BCD_digit.vhd
												BCD_top.vhd
											}
                           test_library   
											{	
											testbench.vhd
											stimuli.vhd
											}
}
set top_level	testbench.vhd

proc r {} {uplevel #0 source compile.do}

proc rr {} {global last_compile_time
			set last_compile_time 00
			r
			}

proc q {}	{quit -force }

proc ctb {}	{
				vcom -work work -2008 -quiet $top_level
				vsim -t n -quiet $top_level
	
			}

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
  vlib $library
  vmap work $library
  foreach file $file_list {
	set file $libdir/$file
    if { $last_compile_time < [file mtime $file] } {
      if [regexp {.vhdl?$} $file] {
				puterr $file
				vcom -2008 $file    
		}
      set last_compile_time 0
    }
  }
}

#vcom BCD_digit.vhd
#vcom BCD_digit_tb.vhd
#vcom stimuli.vhd
#vsim stimuli

vcom -work work -2008 -quiet $top_level
vsim -t ns -quiet testbench

add wave -group GENERAL * 
#add wave -group DUT -position end sim:/BCD_digit_tb/dut/*

run 4 ms