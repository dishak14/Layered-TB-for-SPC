ok# Layered-TB-for-SPC
This project is a layered testbench for a serial parity checker.

## Description:
The Verilog module "parity" implements a simple serial parity checker circuit. It generates a parity bit (even or odd) based on the input data bit and outputs the result.

## Inputs:
x: Input data bit to be checked for parity.
clk: Clock signal for synchronous operation.

## Outputs:
y: Output representing the generated parity bit.

## Working:
At every positive edge of clock the input bit will be checked, the previous input is also considered while computing the output.

If there are odd number of 1s encountered, the output y=1.
If there are even number of 1s encountered, the output y=0.

## State Machine diagram

![image](https://github.com/dishak14/Layered-TB-for-SPC/assets/92496153/6f8e47a8-ce72-4c8f-807b-e744980eff94)


## RTL 

![image](https://github.com/dishak14/Layered-TB-for-SPC/assets/92496153/5ede4154-9b82-47c8-a418-02d8de2ce575)

## Waveform simulation done using parity_tb (behavioural testbench)

![image](https://github.com/dishak14/Layered-TB-for-SPC/assets/92496153/c193bd4f-ead3-467c-be94-79649c7c6964)


## Results after running the layered testbench 

