Johnson Counter using Verilog HDL

📌 Introduction

A Johnson Counter, also called a Twisted Ring Counter, is a shift-register counter in which the inverted output of the last flip-flop is connected back to the input of the first flip-flop.

For an N-bit Johnson Counter, there are 2N unique states.

This project implements a 4-bit Johnson Counter using Verilog HDL.

🎯 Objectives

- Design a 4-bit Johnson Counter.
- Implement the counter using Verilog HDL.
- Create a Verilog testbench.
- Verify all counter states through simulation.
- Observe the counter sequence using a waveform viewer.

⚙️ Working Principle

For a 4-bit Johnson Counter:

Q3 → Q2 → Q1 → Q0
↑              |
└──── NOT Q0 ──┘

The inverted value of the last flip-flop is fed back to the first flip-flop.

Starting from "0000", the counter follows this sequence:

0000
1000
1100
1110
1111
0111
0011
0001
0000

Thus, a 4-bit Johnson Counter has 8 unique states.

📋 Truth Table

Clock| Q3 Q2 Q1 Q0
0| 0000
1| 1000
2| 1100
3| 1110
4| 1111
5| 0111
6| 0011
7| 0001
8| 0000

🛠️ Tools Required

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave (for waveform simulation)
- GitHub

📂 Files

"johnson_counter.v"

Contains the design implementation of the 4-bit Johnson Counter.

"johnson_counter_tb.v"

Contains the testbench used to verify the counter.

"simulation/simulation_output.txt"

Contains the expected simulation results.

▶️ Simulation using Icarus Verilog

Compile the design and testbench:

iverilog -o johnson_sim johnson_counter.v johnson_counter_tb.v

Run the simulation:

vvp johnson_sim

Generate a waveform:

vvp johnson_sim

Then open the generated VCD file using GTKWave:

gtkwave johnson_counter.vcd

📊 Expected Result

The output should follow:

0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → 0000

✅ Conclusion

The 4-bit Johnson Counter was successfully designed and verified using Verilog HDL. The simulation confirms that the counter generates 8 unique states, which is twice the number of flip-flops.


