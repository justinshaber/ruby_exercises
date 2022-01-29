# Attempt: 1
# Start:  10:40
# End:    11:09
# Time:   29 minutes

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

split string by spaces, put them into an array
iterate over the array
  for each string perform the aligning action

brute force each operation
ex: if 'PUSH' then stack.push(reg_val)

-- method --> 

=end

def minilang(string)
  reg_val = 0
  stack = []

  string.split(" ").each do |command|
    case command
      when 'ADD'   then reg_val += stack.pop
      when 'SUB'   then reg_val -= stack.pop
      when 'MULT'  then reg_val *= stack.pop
      when 'DIV'   then reg_val /= stack.pop
      when 'MOD'   then reg_val %= stack.pop
      when 'PUSH'  then stack << reg_val
      when 'POP'   then reg_val = stack.pop
      when 'PRINT' then puts reg_val
      else              reg_val = command.to_i
    end
    # puts "reg_val = #{reg_val}" 
    # puts "stack = #{stack}"
  end
end

p (3 + (4 * 5) - 7) / (5 % 3)

=begin
  result of (3 + (4 * 5) - 7) / result of (5 % 3)
  16 / 2
  reg = 16
  stack = 2

  3 + (4 * 5) - 7
  3 + 20 - 7
  23 - 7
  16
  reg = reg - stack
  16 = 23 - 7


  3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH... DIV PRINT
=end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
# minilang(' DIV PRINT')

# minilang('PRINT')
# # 0
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# minilang('5 PUSH POP PRINT')
# # 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
# minilang('-3 PUSH 5 SUB PRINT')
# # 8
# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)