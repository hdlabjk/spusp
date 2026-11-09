vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_15
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_15 modelsim_lib/msim/fifo_generator_v13_2_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../../../../../../../../opt/amd/2026.1/data/rsb/busdef" \
"/opt/amd/2026.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/amd/2026.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/amd/2026.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_15 -64 -incr -mfcu  "+incdir+../../../../../../../../../../../opt/amd/2026.1/data/rsb/busdef" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_15 -64 -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_vh_sim_rfs.vhd" \

vlog -work fifo_generator_v13_2_15 -64 -incr -mfcu  "+incdir+../../../../../../../../../../../opt/amd/2026.1/data/rsb/busdef" \
"../../../ipstatic/hdl/fifo_generator_v13_2_vl_sim_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../../opt/amd/2026.1/data/rsb/busdef" \
"../../../../wave_gen.gen/sources_1/ip/char_fifo/sim/char_fifo.v" \

vlog -work xil_defaultlib \
"glbl.v"

