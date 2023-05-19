# HDLBits - Verilog Practice
HDLBits is a collection of small circuit design exercises for practicing digital hardware design using Verilog Hardware Description Language(HDL). Earlier problems follow a tutorial style, while later problems will increasingly challenge your circuit design skills.

Each problem requires you to design a small circuit in Verilog. HDLBits gives you immediate feedback on the circuit module you submit. Your circuit is checked for correctness by simulating with a set of test vectors and comparing it to our reference solution.

## How to use HDLBits
1. Choose a problem: [Browse the problem set](https://hdlbits.01xz.net/wiki/Problem_sets) or [go to the first problem](https://hdlbits.01xz.net/wiki/step_one)
2. Write a solution in Verilog
3. Submit, simulate, and debug if necessary

If you want to [track your progress](https://hdlbits.01xz.net/wiki/Special:VlgStats/Me) or move to another browser, [create a username and password](https://hdlbits.01xz.net/wiki/Special:VlgProfile) so you can [log in](https://hdlbits.01xz.net/wiki/Special:VlgLogin) from elsewhere.

## Which exercises should I do?
The exercises are organized by topic and by approximately difficulty within each topic. Start first with the "Getting Started" section to get familiar with how to use HDLBits. Then start with the easier problems of each topic, and not in a strict top-to-bottom order. The "Verilog Language" section focuses more on using the Verilog syntax and language features, while the "Circuits" section focuses more on using Verilog to create circuits, so problems from these two categories should be done concurrently(practicing new language features while the circuits you create become more complex).

# Topics
## [Getting Started](https://hdlbits.01xz.net/wiki/Problem_sets#Getting_Started)
Using HDLBits
## [Verilog Language](https://hdlbits.01xz.net/wiki/Problem_sets#Verilog_Language)
Problems that focus on introducing Verilog language syntax and features.
## [Combinational Logic](https://hdlbits.01xz.net/wiki/Problem_sets#Combinational_Logic)
Logic gates, modules, vectors, combinational always blocks, k-maps, ...
## [Sequential Logic](https://hdlbits.01xz.net/wiki/Problem_sets#Sequential_Logic)
Flip-flops, counters, shift registers, finite-state machines
## [Reading Simulations](https://hdlbits.01xz.net/wiki/Problem_sets#Verification:_Reading_Simulations)
Finding bugs, creating circuits from waveforms.
## [Writing Testbenches](https://hdlbits.01xz.net/wiki/Problem_sets#Verification:_Writing_Testbenches)
Writing non-synthesizable Verilog testbenches

# Run a Simulation
You can run [Verilog simulations](https://hdlbits.01xz.net/wiki/Iverilog) using our web interface for lcarus Verilog. This is useful for creating shareable simulations of short bits of Verilog.

# Step one
Welcome to HDLBits!
Getting started in digital logic design can be overwhelming at first because you need to learn new concepts, a new Hardware Description Language(e.g.,Verilog), several new software packages, and often an FPGA board, all at the same time. HDLBits provides a way to practice designing and debugging simple circuits with a single click of "Simulate".
Designing a circuit requires several steps: Writing HDL(Verilog) code, compiling the code to produce a circuit, then simulating the circuit and fixing bugs.

Contents
1. [Writing Code](https://hdlbits.01xz.net/wiki/Step_one#Writing_Code)
2. [Compiling(Logic Synthesis)](https://hdlbits.01xz.net/wiki/Step_one#Compiling_.28Logic_Synthesis.29)
3. [Simulation](https://hdlbits.01xz.net/wiki/Step_one#Simulation)
4. [Final Status](https://hdlbits.01xz.net/wiki/Step_one#Final_Status)
5. [Problem Statement](https://hdlbits.01xz.net/wiki/Step_one#Problem_Statement)

## Writing Code
The easiest way to write your code is to do so in the code editor box below. For this problem, we have filled in most of the code for you already. Go ahead and finish the code for this circuit.
Click ```Simulate``` to compile and simulate your design.
## Compiling(Logic Synthesis)
Your code is compiled using Altera Quartus to produce a circuit. Quartus produces a large number of meassages. Click ```Show Quartus messages``` to show/hide them. It's good practice to reduce the number of warnings, but it is sometimes not practical to remove them all.
## Simulation
Your compiled circuit is simulated to test whether it functions correctly. HDLBits use ModelSim to simulate your circuit and our reference solution in parallel, then compares the outputs of the modules. The simulation reports back two things:
First, it reports whether your circuit matches the reference circuit exactly(zero "mismatches") or how many "mismatches" occurred. A mismatch is the number of samples where the output of your circuit does not match the reference output.
Second, it many produce timing diagrams that show your circuit outputs when running our test vectors. The simulation waveforms is grouped into three sections:"Inputs","Yours", and "Ref". In a correct circuit, "Your" outputs will be the same as the "Ref" outputs. The "Mismatch" signals tells you which samples have a mismatch.

    The module name and port names of the top_module must not be changed, or you will get a simulation error.

## Final Status
If you circuit was correct, you will see ```Status: Success!". There are a few other possibilities:
- Compile Error --- Circuit did not compile.
- Simulation Error --- Circuit compiled successfully, but simulation did not complete.
- Incorrect --- Circuit compiled and simulated, but the outputs did not match the reference.
- Success! --- Circuit was correct
You can track or share your progress on the [My Stats](https://hdlbits.01xz.net/wiki/Special:VlgStats/Me) page.
