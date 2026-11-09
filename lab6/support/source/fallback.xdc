set_property IOSTANDARD LVCMOS33 [get_ports {led0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led1_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led2_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led3_tri_o[0]}]
set_property PACKAGE_PIN AB18 [get_ports {led0_tri_o[0]}]
set_property PACKAGE_PIN V17 [get_ports {led1_tri_o[0]}]
set_property PACKAGE_PIN AA22 [get_ports {led2_tri_o[0]}]
set_property PACKAGE_PIN V19 [get_ports {led3_tri_o[0]}]


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.EAM.CCU_BAD_PR_FORMAT ERROR_OUT [current_design]
set_property BITSTREAM.EAM.CCU_CRC_ERR ERROR_OUT [current_design]