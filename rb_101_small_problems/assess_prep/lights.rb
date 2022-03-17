# 1:28
# 1:55
# 28 minutes

=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=end

=begin
P: Given an integer, n, that represents the total number of lights and repititions, write a method that toggles the switches n times according to the pattern, and returns an array of switches that on after all repititions.
  i: integer - the number of lights and the number of repititions to complete
  o: an array of lights that are still on
E+R:
  lights begin counting at 1
  first iteration => flip every light
  second iteration => flip every second light
  third => flip every third light
  etc.
D: Arrays
Approach
  INIT an array of n 0s
  INIT a results array
  INIT a counter to 0
  LOOP n times from 1 to n
    start at (index - 1)
      if it is 0, make it 1
      if it is 1, make it 0
    increase the counter by n
  ITERATE over EACH with INDEX
    if the number is 1, PUSH the (index + 1) into results
=end

def toggle_switches(n)
  arr = [0] * n
  results = []

  (1..n).each do |step|
    idx = step - 1
    loop do
      break if arr[idx] == nil
      arr[idx] == 0 ? arr[idx] += 1 : arr[idx] -= 1
      idx += step
    end
  end

  arr.each_with_index do |switch, idx|
    results << (idx + 1) if switch == 1
  end
  
  results
end

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

p toggle_switches(5) == [1, 4]
p toggle_switches(10) == [1, 4, 9]