#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Sep 21 09:49:34 2023                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP_func.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
addRing -spacing_bottom 0.5 -width_left 2 -width_bottom 2 -width_top 2 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 2 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
floorPlan -d 240.47 240.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.5 -width_left 2 -width_bottom 2 -width_top 2 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 2 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
zoomBox 259.067 239.745 195.328 193.137
zoomBox 248.150 239.184 228.356 227.812
zoomBox 241.978 238.619 234.322 234.748
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 7 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
zoomBox -11.426 226.201 125.613 108.284
zoomBox -17.937 213.770 55.939 158.896
zoomBox -12.857 202.944 36.976 175.094
zoomBox -5.955 197.911 22.021 181.511
setDrawView fplan
panPage -1 0
panPage 1 0
setDrawView place
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
setDrawView fplan
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
selectObject Module Reg_file_dut
deselectAll
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView fplan
uiSetTool obstruct
createObstruct 241.538 1.123 243.531 239.745
createObstruct 243.531 -0.869 245.124 238.550
createObstruct 245.124 -0.869 256.677 236.161
createObstruct 256.677 48.529 303.286 238.152
createObstruct 255.083 100.715 276.595 224.608
zoomBox 253.091 232.974 278.587 99.918
createObstruct 264.136 120.758 301.207 213.136
createObstruct 265.338 130.577 283.974 202.114
uiSetTool obstruct
createObstruct 281.369 108.134 288.182 224.157
createObstruct 234.368 136.568 339.537 200.706
zoomBox 289.741 235.762 188.555 91.154
zoomBox 291.525 211.806 213.776 125.564
zoomBox 275.964 197.649 256.352 185.050
createObstruct 243.132 1.123 247.514 239.745
createObstruct 237.953 1.123 247.115 234.168
zoomBox 298.107 238.949 75.418 105.894
zoomBox 295.070 216.707 110.716 147.173
setLayerPreference allM6 -isSelectable 0
setLayerPreference allM6 -isSelectable 1
setLayerPreference allM6 -isVisible 0
zoomBox 261.400 199.842 235.436 182.177
uiSetTool select
selectObstruct 234.1100 135.3000 240.2600 201.3100 defObstructName
deleteSelectedFromFPlan
selectObstruct 237.8000 0.4100 240.2600 232.8800 defObstructName
uiSetTool stretchWire
deselectAll
selectObstruct 237.8000 0.4100 240.2600 232.8800 defObstructName
deselectAll
selectObstruct 237.8000 0.4100 240.2600 232.8800 defObstructName
uiSetTool move
setObjFPlanBox LayerShape (475600,820,480520,465760) 237.853 0.8355 240.313 233.3055
setObjFPlanBox LayerShape (475600,820,480520,465760) 239.626 0.410 240.260 232.880
zoomBox 285.359 236.161 104.898 145.332
zoomBox 264.687 229.459 199.984 207.298
panPage 0 1
setObjFPlanBox LayerShape (478880,820,480520,465760) 239.440 0.410 240.260 240.007
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
uiSetTool obstruct
createObstruct 0.525 1.521 3.313 238.550
zoomBox -4.654 240.941 88.564 100.317
zoomBox -3.896 239.246 56.886 160.887
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
zoomBox -2.477 237.948 19.001 210.215
uiSetTool move
uiSetTool select
uiSetTool move
setObjFPlanBox LayerShape (478880,820,480520,477240) 238.9805 0.953 239.8005 239.163
setObjFPlanBox LayerShape (820,820,6560,477240) 0.410 0.410 1.349 238.620
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
uiSetTool obstruct
zoomBox -24.174 16.261 202.897 -28.357
panPage 1 0
createObstruct 1.819 -0.061 237.980 0.961
panPage -1 0
zoomBox 47.963 12.059 104.621 -19.921
uiSetTool move
setObjFPlanBox LayerShape (478060,820,479700,477240) 239.7525 0.94 240.5725 239.15
deselectAll
selectObstruct 1.8190 0.0000 237.9800 0.9610 defObstructName
setObjFPlanBox LayerShape (3638,0,475960,1922) 2.2045 0.1925 238.3655 1.1535
panPage 1 0
setObjFPlanBox LayerShape (3638,0,475960,1922) 1.819 0.000 237.980 6.087
zoomBox -18.198 248.510 403.675 198.316
zoomBox -9.787 251.086 385.498 213.103
uiSetTool obstruct
createObstruct 2.669 233.365 236.536 239.212
zoomBox 56.052 257.260 216.708 205.403
zoomBox 120.934 246.725 179.514 204.675
zoomBox 3.712 12.277 69.841 54.903
zoomBox 13.671 12.675 188.953 -11.625
zoomBox 78.824 4.357 142.850 -21.907
group
group
zoomBox 109.005 -12.728 109.210 -12.687
createObstruct 105.382 -12.720 109.103 -8.776
group
zoomBox 33.988 15.464 244.725 -28.357
zoomBox 107.441 21.200 178.319 -22.439
zoomBox 133.646 11.210 202.785 -17.312
setDrawView place
setLayerPreference allM6 -isVisible 1
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
zoomBox -11.027 239.347 101.710 162.462
zoomBox -9.139 235.989 24.093 215.379
deselectAll
selectWire 7.6500 0.8250 8.6500 238.9250 6 VDD
deleteSelectedFromFPlan
selectWire 6.1500 3.3250 7.1500 236.4250 6 VSS
deleteSelectedFromFPlan
selectWire 3.3250 3.3250 5.3250 236.4250 6 VSS
deselectAll
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
zoomBox -25.768 251.299 348.301 146.129
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
zoomBox -39.711 237.356 309.659 96.731
zoomBox 266.971 221.415 141.602 134.690
zoomBox 282.969 78.008 -26.166 -8.040
zoomBox 270.445 57.050 81.981 9.935
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
zoomBox -20.588 238.152 269.026 111.073
zoomBox 256.944 213.272 113.406 173.273
setDrawView ameba
setDrawView fplan
setDrawView place
zoomBox -24.971 226.998 171.823 111.073
zoomBox -5.923 209.714 60.943 149.482
verifyGeometry -noMinArea
zoomBox -24.572 245.721 177.799 105.894
zoomBox -16.570 219.188 131.891 143.799
zoomBox 7.761 211.581 58.512 164.577
zoomBox 12.431 204.998 40.110 179.797
zoomBox 12.322 204.011 27.883 187.654
zoomBox 16.124 201.966 24.697 191.694
zoomBox 14.756 201.208 22.321 193.705
zoomBox 15.505 200.507 21.120 194.587
zoomBox 15.767 199.571 19.699 195.781
selectMarker 17.7350 197.3150 17.9350 197.5150 2 1 6
deselectAll
selectMarker 17.7350 198.9550 17.9350 199.1550 2 1 6
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
deselectAll
selectWire 14.8650 197.3150 21.6250 197.5150 3 CLK_DIV_RX_dut/N60
deselectAll
selectMarker 17.7350 198.9550 17.9350 199.1550 2 1 6
deselectAll
selectMarker 17.7350 198.9550 17.9350 199.1550 2 1 6
deselectAll
selectWire 17.7350 191.1650 17.9350 200.3850 2 FE_OFN20_SE
deselectAll
selectMarker 17.7350 198.9550 17.9350 199.1550 2 1 6
deselectAll
selectMarker 17.7350 198.9550 17.9350 199.1550 2 1 6
zoomBox -20.190 86.772 104.898 -11.625
zoomBox -14.180 78.918 37.093 21.273
zoomBox -6.471 74.490 17.056 34.989
zoomBox -2.054 69.671 9.189 45.221
zoomBox -4.920 64.700 8.005 52.217
zoomBox -0.779 62.858 4.014 54.548
zoomBox -1.468 61.294 2.224 56.588
deselectAll
selectWire -0.1000 60.0000 0.3050 60.2000 2 UART_CLK
panCenter 0.275 59.756
deselectAll
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
setNanoRouteMode -quiet -routeTopRoutingLayer 6
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort max
routeDesign -globalDetail -viaOpt -wireOpt
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
setNanoRouteMode -droutePostRouteSwapVia true
globalDetailRoute
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
zoomBox 7.696 121.032 237.555 22.236
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
checkFiller -highlight true
zoomBox -72.377 190.348 209.270 32.992
group
setDrawView ameba
setDrawView place
zoomBox 8.891 215.047 181.783 133.780
zoomBox -48.474 55.699 173.816 15.464
zoomBox -9.020 74.608 187.540 16.855
zoomBox -66.002 84.382 179.791 -17.601
zoomBox -8.239 53.708 161.864 -21.585
panPage 0 1
panPage 0 -1
zoomBox -20.588 66.057 96.930 -4.853
zoomBox -24.174 92.349 138.361 -4.455
zoomBox 166.645 205.885 261.058 71.236
setDrawView ameba
setDrawView place
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference metalFill -isVisible 1
setLayerPreference phyCell -isVisible 1
zoomBox -28.556 245.721 279.781 88.764
zoomBox -15.626 242.412 241.793 130.131
uiSetTool stretchWire
uiSetTool stretchWire
uiSetTool stretchWire
uiSetTool stretchWire
saveDesign /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc
saveDesign /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.enc
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference coverCell -isVisible 0
setLayerPreference layerBlk -isVisible 1
setLayerPreference layerBlk -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
