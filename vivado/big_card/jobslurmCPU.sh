#!/bin/sh

#SBATCH --partition=CPUQ
#SBATCH --account=ie-idi
#SBATCH --time=20:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=40000
#SBATCH --job-name="synthesis"
## SBATCH --output=workspace.out
#SBATCH --mail-user=charalabo@ntnu.no
#SBATCH --mail-type=ALL




# Source vivado 
source /cluster/projects/itea_lille-ie-idi/opt/Xilinx-2024/Vivado/2024.2/settings64.sh 



# Run vivado in tcl mode

vivado -mode tcl -source flow.tcl 


uname -a
