
set_property -dict {PACKAGE_PIN AU19 IOSTANDARD LVDS} [get_ports {clk_p}];
set_property -dict {PACKAGE_PIN AV19 IOSTANDARD LVDS} [get_ports {clk_n}];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_p }];



set_property -dict {PACKAGE_PIN A22  IOSTANDARD POD12_DCI       } [get_ports led[0]          ]; # Bank 64 VCCO - VCC1V2 Net "SW_DP0"              - IO_L5P_T0U_N8_AD14P_64
set_property -dict {PACKAGE_PIN A23  IOSTANDARD POD12_DCI       } [get_ports led[1]          ]; # Bank 64 VCCO - VCC1V2 Net "SW_DP1"              - IO_L4N_T0U_N7_DBC_AD7N_64
set_property -dict {PACKAGE_PIN C23  IOSTANDARD POD12_DCI       } [get_ports led[2]          ]; # Bank 64 VCCO - VCC1V2 Net "SW_DP2"              - IO_L4P_T0U_N6_DBC_AD7P_64
set_property -dict {PACKAGE_PIN C24  IOSTANDARD POD12_DCI       } [get_ports led[3]          ]; # Bank 64 VCCO - VCC1V2 Net "SW_DP3"              - IO_L3N_T0L_N5_AD15N_64