set_property SRC_FILE_INFO {cfile:/home/amd/training/clk_resources/lab/SCU035/verilog/wave_gen.srcs/constrs_1/imports/wave_gen_timing_us_clk_resources.xdc rfile:../../../wave_gen.srcs/constrs_1/imports/wave_gen_timing_us_clk_resources.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_samp -source [get_pins {clk_gen_i0/BUFGCE_clk_samp_i0/I}] -divide_by 32 [get_pins {clk_gen_i0/BUFGCE_clk_samp_i0/O}]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 5 -from [get_clocks -of [get_nets clk_rx] ] -to [get_clocks -of [get_nets clk_tx] ] -datapath_only
