#!/bin/bash
cd /home/mj/Documents/uob/itce497/rvcore32/core/vsim/
/home/mj/intelFPGA_lite/21.1/questa_fse/bin/vsim -voptargs="+acc" -do "do cc.tcl"

