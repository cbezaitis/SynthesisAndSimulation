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


# load the correct module that libtinfo.so.6 exists
module add ncurses/6.2-GCCcore-10.2.0

# Source vivado 
source /cluster/projects/itea_lille-ie-idi/opt/Xilinx/Vivado/default/settings64.sh 


# make a symlink for libtinfo.so.5 according to https://adaptivesupport.amd.com/s/question/0D52E00006iHpeSSAS/librdicommontasksso-and-libtinfoso5-are-not-being-loaded-when-i-start-vivado-and-so-vivado-fails-to-run?language=en_US
# I had the same issue after installing vivado 2019.2 in Ubuntu 20.04 and this solves the issue
# $ cd /lib/x86_64-linux-gnu/
# $ sudo ln -s libtinfo.so.6 libtinfo.so.5
# According to what I understand Vivado needs version 5 but Ubuntu has version 6, and luckily both can be used.

# the result after the symlink command should be the file "libtinfo.so.5"
# run ls -la 
# GET
# libtinfo.so.5 -> /cluster/apps/eb/software/ncurses/6.2-GCCcore-10.2.0/lib/libtinfo.so.6

# Load the path that your symlink file exists, in my case this directory
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/cluster/home/charalab/vivado/SynthesisAndSimulation/vivado"


cd ./working_example
# Run vivado in tcl mode

vivado -mode tcl -source flow.tcl 


uname -a
