#  250 MHz
create_clock -period 4.0 [get_ports clk]


set_property PACKAGE_PIN PIN_X [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN PIN_Y [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN PIN_Z [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN PIN_W [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]