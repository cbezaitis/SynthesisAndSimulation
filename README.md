# Introduction

Point of this repo to:
1. Understand and remember how verilator works
2. Understand and remember how vivado non_project_mode works
   
# Install
1. Before installing vivado, install the following drivers
https://adaptivesupport.amd.com/s/question/0D52E00006hpmTmSAI/vivado-20183-final-processing-hangs-at-generating-installed-device-list-on-ubuntu-1904?language=en_US 

2. Artix 7 Seven Contraints file :
 https://github.com/Digilent/digilent-xdc/blob/master/Arty-A7-35-Master.xdc#L6

# Vivado 
TODO:

# Verilator
## Summary 

1. Have your two system verilog file, you want to simulate
2. The testbench is on "cpp", so you can use anything you want
3. Compile the cpp. Run the executable
4. the executable should produce the waveform file (*.vcd)
5. You can see the waveform with gtkwave


## Extra

```
verilator *
```
## Requirements

```
sudo apt-get install verilator
```

One also need gtkwave to run the things, possible with:

```
sudo apt-get install gtkwave
```


## Steps


1. Compile

```
verilator -sv --cc --trace --exe --build  -Wall andw_gate_tb.cpp and_gate.sv

```

2. Run, it should create a executable **Vand_gate**

```
cd ./obj_dir
Vand_gate
```

3. Open the gtkwave 

```
gtkwave waveform.vcd
```


