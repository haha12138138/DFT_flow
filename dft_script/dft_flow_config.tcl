# This file sets global variables and select steps
#
set stage "until_rtl_chk" #  util_post_dft util_finish
set test_config_name "TEST_1"
set hdlin_enable_rtldrc_info true
set enable_auto_fix 0
source ./dft_signal.tcl
#----------------------- before cmompile ---------------------------
if {[ $stage == "until_rtl_chk" ]} {
	puts "starting dft rtl check"
    # read_veriog 
	source ./dft_rtl_chk.tcl
	if {$enable_auto_fix == 1} {
		source ./dft_auto_fix.tcl
	}
	puts "storing test protocol"
	# store_test_config_proc($test_config_name)
	puts "finish"
}else{
#-------------- after compile --------------------------------------
# load_test_config_proc($test_config_name)
source ./dft_scan_config.tcl
source ./dft_stitch.tcl 
}

