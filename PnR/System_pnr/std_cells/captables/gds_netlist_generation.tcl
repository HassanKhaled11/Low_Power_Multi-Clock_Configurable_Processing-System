
########### Reports & Netlist & GDS Generation ############

# Generate Post-PNR Gate Level Netlist
saveNetlist export/${top_cell}.v 

# Generate Post-PNR Gate Level Netlist with PG Pins
saveNetlist export/${top_cell}_pg.v -includePowerGround

# Generate SDF File
delayCal -sdf export/${top_cell}.sdf -version 3.0

#report power
report_power -outfile report/power.rpt

# Generate GDS File
streamOut export/${top_cell}.gds -mapFile gds2InLayer -libName DesignLib -stripes 1 -units 2000 -mode ALL
