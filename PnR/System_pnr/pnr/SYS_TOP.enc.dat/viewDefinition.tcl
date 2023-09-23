create_library_set -name max_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib]
create_library_set -name typ_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib]
create_library_set -name min_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib]
create_rc_corner -name RCcorner\
   -cap_table ../std_cells/captables/tsmc13fsg.capTbl\
   -default_res_factor 1\
   -detailed_res_factor 1\
   -default_cap_factor 1\
   -detailed_cap_factor 1\
   -xcap_factor 1\
   -detailed_clock_cap_factor 1
create_delay_corner -name min_corner\
   -library_set min_library\
   -rc_corner RCcorner
create_delay_corner -name max_corner\
   -library_set max_library\
   -rc_corner RCcorner
create_constraint_mode -name capture_mode\
   -sdc_files\
    [list /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc.dat/mmmc/modes/capture_mode/capture_mode.sdc]
create_constraint_mode -name func_mode\
   -sdc_files\
    [list /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc.dat/mmmc/modes/func_mode/func_mode.sdc]
create_constraint_mode -name scan_mode\
   -sdc_files\
    [list /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc.dat/mmmc/modes/scan_mode/scan_mode.sdc]
create_analysis_view -name hold3_analysis_view -constraint_mode scan_mode -delay_corner min_corner
create_analysis_view -name setup2_analysis_view -constraint_mode capture_mode -delay_corner max_corner
create_analysis_view -name setup3_analysis_view -constraint_mode scan_mode -delay_corner max_corner
create_analysis_view -name hold1_analysis_view -constraint_mode func_mode -delay_corner min_corner
create_analysis_view -name hold2_analysis_view -constraint_mode capture_mode -delay_corner min_corner
create_analysis_view -name setup1_analysis_view -constraint_mode func_mode -delay_corner max_corner
set_analysis_view -setup [list setup1_analysis_view setup2_analysis_view setup3_analysis_view] -hold [list hold1_analysis_view hold2_analysis_view hold3_analysis_view]
