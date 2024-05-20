# Introduction

Point of this repo to understand and remember how verilator works

# Summary 

1. Have your two system verilog file, you want to simulate
2. The testbench is on "cpp", so you can use anything you want
3. Compile the cpp. Run the executable
4. the executable should produce the waveform file (*.vcd)
5. You can see the waveform with gtkwave


# Extra

```
verilator *
```
# Requirements

```
sudo apt-get install verilator
```

One also need gtkwave to run the things, possible with:

```
sudo apt-get install gtkwave
```


# Steps


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