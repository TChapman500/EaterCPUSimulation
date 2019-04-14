# Ben Eater CPU Simulation
This is a simulation of [Ben Eater's Breadboard CPU](https://eater.net/8bit/) in Logisim.

In order for this simulation to run properly, you will need [Logisim Evolution Holy Cross Edition](https://github.com/kevinawalsh/logisim-evolution).  Once you have installed Logisim, you can open the "NearExact.circ" file from within the simulation.

## Notes
- This simulation will only work in Logisim Evolution Holy Cross Edition.
- The CPU is made to be as exact as possible given the limitations of the software used to make the simulation.
- The instruction set in this simulation may vary slightly from Ben Eater's instruction set.  Let me know if there are **ANY** descrepencies between the two instruction sets so that I can make the instructions exact to the original.
- Simulation performance will vary from user to user.  I was able to get a maximum clock frequency of just over 500 hZ.

## Sample Programs
Both Fibonacci and SmallCounter work as intended.

## Output Decoder
The OnesPlace, TensPlace and HundredsPlace files contain the respective data for each decimal place on the seven-segment display, just in case the simulation starts off without any data in the respective ROMS.

## Microcode
The Microcode ROM is a 16-bit ROM with bit 0 being for the Jump if Carry flag.  This is what makes the CPU Turing-complete.  Bits are Highest to lowest going from left to right.

## Permissions
- You have permission to fork this repository in order to help keep it up to date by creating pull requests.
  - Only create a pull request to update this simulation to match Ben Eater's CPU.
- You have permission to fork/clone this repository and do with the clone/fork as you please as long as you give me credit for the original simulation.
