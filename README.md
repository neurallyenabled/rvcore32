# rvcore32
Is a five-stage pipelined processor that supports the RISC-V ISA. 

This Project was done as a part of the senior project at the University of Bahrain of the academic semester 2022/2023 first semester. And won the third place in the Computer Engineering senior project exhibition.

## Environment
- We used Intel Quartus IDE 22.01 as an IDE and Questa to simulate the the design.
- We also used the [riscv-gnu-toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain#risc-v-gnu-compiler-toolchain) to compile the test programs
## Structure
1. the core/components folder contains the processor design files
2. the core/testbenches folder contains testbenches used to test the processor logic
3. the programs folder contains test assembly and C programs used to verify the processor design, additionally some scripts to automate the testing process, the scripts may need to be modified to fit your needs.
