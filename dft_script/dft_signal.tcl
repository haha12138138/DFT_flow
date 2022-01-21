# set_dft_signal -view existing -type scanclock -port clk -active_state 1 -timing {45 55}
# set_dft_signal -view existing -type Reset -port reset -active_state 0 
# set_dft_signal -view spec -type ScanEnable -port scan_enable -active_state 1
# set_dft_signal -view spec -type constant -port TEST_MODE -active_state 1
