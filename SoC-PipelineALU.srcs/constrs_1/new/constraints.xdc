## Differential Clock Input Pins
set_property PACKAGE_PIN AB2 [get_ports diff_clock_rtl_0_clk_p]
set_property PACKAGE_PIN AC2 [get_ports diff_clock_rtl_0_clk_n]
set_property IOSTANDARD LVDS [get_ports diff_clock_rtl_0_clk_p]
set_property IOSTANDARD LVDS [get_ports diff_clock_rtl_0_clk_n]
set_property DIFF_TERM TRUE [get_ports diff_clock_rtl_0_clk_p]
set_property DIFF_TERM TRUE [get_ports diff_clock_rtl_0_clk_n]

## Reset Pin
set_property PACKAGE_PIN A10 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS25 [get_ports reset_rtl_0]
set_property PULLTYPE PULLUP [get_ports reset_rtl_0]
set_false_path -through [get_ports reset_rtl_0]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
