#!/bin/sh


# Source vivado 
source /cluster/projects/itea_lille-ie-idi/opt/Xilinx/Vivado/default/settings64.sh 

cd ./working_example
# Run vivado in tcl mode
vivado -mode tcl -source flow.tcl 


uname -a
