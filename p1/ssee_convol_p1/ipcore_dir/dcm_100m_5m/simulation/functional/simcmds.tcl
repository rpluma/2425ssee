# file: simcmds.tcl

# create the simulation script
vcd dumpfile isim.vcd
vcd dumpvars -m /dcm_100m_5m_tb -l 0
wave add /
run 50000ns
quit
