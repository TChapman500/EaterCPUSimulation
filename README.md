# Ben Eater CPU Simulation
This is a simulation of [Ben Eater's Breadboard CPU](https://eater.net/8bit/) in Logisim.

In order for this simulation to run properly, you will need [Logisim Evolution Holy Cross Edition](https://github.com/kevinawalsh/logisim-evolution).  Once you have installed Logisim, you can open the "NearExact.circ" file from within the simulation.

## Notes
- This simulation will only work in Logisim Evolution Holy Cross Edition.
- The CPU is made to be as exact as possible given the limitations of the software used to make the simulation.
  - Also, some signal flags were added into the circuit before Ben Eater added them to his breadboard processor.  So the control word differs a bit.
- Simulation performance will vary from user to user.  I was able to get a maximum clock frequency of just over 500 Hz.

## Sample Programs
- SmallCounter will count from 0 to 255 and then wrap back around to zero.
- Fibonacci will count the fibonacci number from 1 to 255 and then restart.

## Output Decoder
The OnesPlace, TensPlace and HundredsPlace files contain the respective data for each decimal place on the seven-segment display, just in case the simulation starts off without any data in the respective ROMS.

## Microcode
The Microcode ROM is a 17-bit ROM with bit 0 being for the Jump if Carry flag.  This is what makes the CPU Turing-complete.  Bits are Highest to lowest going from left to right.

## Permissions
- You have permission to fork this repository in order to help keep it up to date by creating pull requests.
  - Only create a pull request to update this simulation to match Ben Eater's CPU.
- You have permission to fork/clone this repository and do with the clone/fork as you please as long as you give me credit for the original simulation.

# Instruction Set
The instruction set of this simulated processor is exactly the same as Ben Eater's processor.  The upper half of the opcode (bits 4-7) is the instruction code.  The lower half of the opcode is a 4-bit address or 4-bit number.  The opcode listing is in hexadecimal notation.

| Instruction | Opcode | Description |
| ----------- | ------ | ----------- |
| `NOP` | `0x` | Do nothing.  Operand `x` is ignored. |
| `LDA x` | `1x` | Loads the A register from address `x`. |
| `ADD x` | `2x` | Loads the value at address `x` into the B register, adds B to A, and stores the result in the A register.  Sets or clears the carry and zero flags. |
| `SUB x` | `3x` | Loads the value at address `x` into the B register, subtracts B from A, and stores the result in the A register.  Sets or clears the carry and zero flags. |
| `STA x` | `4x` | Stores the contents of the A register into memory at address `x`. |
| `LDI x` | `5x` | Loads `x` into the lower half of the A register. |
| `JMP x` | `6x` | Unconditionally jumps to address `x` and continues execution from there. |
| `JC x` | `7x` | Jumps to address `x` if the carry flag is set and continues execution from there. |
| `JZ x` | `8x` | Jumps to address `x` if the zero flag is set and continues execution from there. |
| `OUT` | `Ex` | Copies the contents of the A register into the output register.  Operand `x` is ignored. |
| `HLT` | `Fx` | Halts execution of the processor until a reset signal is received.  Operand `x` is ignored. |
