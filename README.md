# Layered-TB-for-SPC
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

![alt text](image.png)

## RTL 

![alt text](image-1.png)

## Waveform simulation done using parity_tb (behavioural testbench)

![alt text](image-2.png)