## 
## Cadence First Encounter "v08.10-p004_1 ((32bit) 11/04/2008 14:34 (Linux 2.6))"
## Thu Sep 21 11:06:27 2023
## 
set sdc_version 1.4
current_design SYS_TOP
create_clock [get_ports {UART_CLK}]  -name UART_CLK -period 271.267 -waveform {0 135.633}
create_clock [get_ports {REF_CLK}]  -name REF_CLK -period 10 -waveform {0 5}
create_clock [get_ports {scan_clk}]  -name SCAN_CLK -period 100 -waveform {0 50}
set_propagated_clock  [get_ports {UART_CLK}]
set_propagated_clock  [get_ports {scan_clk}]
set_propagated_clock  [get_ports {REF_CLK}]
set_case_analysis 0 [get_ports {SE}]
set_case_analysis 1 [get_ports {test_mode}]
set_clock_uncertainty 0.1 -hold [get_clocks {UART_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {REF_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {REF_CLK}]
set_clock_uncertainty 0.1 -hold [get_clocks {SCAN_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {SCAN_CLK}]
set_clock_groups -name REF_CLK_1 -asynchronous  -group  [get_clocks {REF_CLK}] -group  [get_clocks {UART_CLK}] -group  [get_clocks {SCAN_CLK}]
