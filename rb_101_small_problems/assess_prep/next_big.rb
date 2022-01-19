=begin
###problem###
Write a method that takes a positive integer and returns the next bigger number
formed by the same digits. If no next bigger number is possible, return -1.

input - positive integer
output - also an integer. The next bigger number using the same digits or -1

###Examples###

p next_big(12) == 21
p next_big(513) == 531
p next_big(2017) == 2071
p next_big(9) == -1
p next_big(111) == -1
p next_big(531) == -1

###Data Structures###
Array
sort_by

###algorithm###
Convert the number to an array of integers
sort the integers to get the maximum possible permutation
If the passed integer is the maximum, then return -1
Otherwise, iterate from the current number to the max
check if the current iteration has the same integers
return the first number that has the same integers

###code###
Convert number to array of integers using to_s, chars, map & to_i
get the max using sort
Compare the passed integer to the max
  return -1 if the same
Count from the passed integer to the max
  Convert number to array of integers using to_s, chars, map & to_i
  get the max using sort_by
  compare it to the original array signature
  return if it is the same

=end

def get_max(int)
  int.to_s.chars.sort.reverse.join.to_i
end

def next_big(int)
  max = get_max(int)
  return -1 if max == int

  (int + 1).upto(max) do |current_int|
    return current_int if get_max(current_int) == max
  end

end

p next_big(12) == 21
p next_big(513) == 531
p next_big(2017) == 2071
p next_big(2071) == 2107
p next_big(2710) == 7012
p next_big(9) == -1
p next_big(111) == -1
p next_big(531) == -1
p next_big(123456789) == 123456798