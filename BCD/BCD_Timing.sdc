# Constrain clock port clk with a 10-ns requirement

create_clock -period 20 [get_ports clk_clk]
create_clock -name clk_intr -period 1000000 
derive_clock_uncertainty


# Automatically apply a generate clock on the output of phase-locked loops (PLLs) 
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks

# Constrain the input I/O path

set_input_delay -clock clk_clk -max 3 [all_inputs]

set_input_delay -clock clk_clk -min 2 [all_inputs]

# Constrain the output I/O path

set_output_delay -clock clk_intr -max 3 [all_outputs]

set_output_delay -clock clk_intr -min 2 [all_outputs]