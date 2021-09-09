=begin
Problem overview:
- We have a stack - which is a list of value that grows and shrinks in a FIFO way
- A register, which contains a value and is not part of the stack
- stack-and-register language - takes the topmost value from the stack, performs
an operation with the register value and replaces the old register value with the new.

Create a stack-and-register language with the following commands
  n Place a value n in the "register". Do not modify the stack.
  PUSH Push the register value on to the stack. Leave the value in the register.
  ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
  SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
  MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
  DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
  MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
  POP Remove the topmost item from the stack and place in register
  PRINT Print the register value





--------------------------PROBLEM----------------------------------------
Explicit Rules:
  - initialize register to 0
  -
Implicit Rules:
Questions:
--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: String commands
Output: only if there is a PRINT command
Additional DS Utilized:

Array for the stack
methods for commands

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

initialize register to 0, stack array
method with add, sub, mult, div, mod
method with push and pop
method with print

split string by spaces, put them into an array
iterate over the array
  for each string perform the aligning action

-- method --> 

=end
