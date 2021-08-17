create_clock -name clk -period 20.000 [get_ports {clk}]
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty
set_output_delay -clock { clk } 2 [get_ports {dig[0] dig[1] dig[2] dig[3] seg[0] seg[1] seg[2] seg[3] seg[4] seg[5] seg[6] seg[7]}]