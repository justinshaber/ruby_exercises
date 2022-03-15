=begin
P: select an element out of an array if its index is a fibonacci number
  i: array
  o: new array with elements for which their index in the given array is a fib num
E+R:
A fibonacci number is the sum of the previous two numbers.
The sequence starts with 1 and 1
  fib num at position n = (n - 1) + (n - 2)
DS: Arrays
Approach
The maximum possible number will be the index of the last element. (array.size - 1)
I'll iterate with select and index
  pass the index to a helper method that returns a boolean if it is a fib num or not

P: write a method that return a boolean if the given number is a fibonacci number or not
  i: number
  o: boolean
E+R:
  39
  calculate fibonacci numbers, putting each one in a variable
    until the fibonnaci number is greater than or equal to the passed number
  
Approach:
  calculate fibonacci numbers, putting each one in a variable
    until the fibonnaci number is greater than or equal to the passed number
  if the number in the variable is equal - it's a fibonacci number
    otherwise it is not

ALGO:
  fib_nums = [1, 1]
  UNTIL last fib_num is >= argument
    first fib_num is the last fib_num
    last fib_num is the sum of the two numbers
  ARG == last fib_num?
=end

# def fib_nums(n)
#   fib_nums = [1, 1]

#   loop do
#     sum = fib_nums[-1] + fib_nums[-2]
#     fib_nums.push(sum)
#     break if fib_nums.size == n
#   end

#   fib_nums
# end

def is_fib_num?(num)
  fib_nums = [1, 1]

  loop do
    break if fib_nums.last >= num
    sum = fib_nums.sum
    fib_nums[0], fib_nums[1] = fib_nums[1], sum
  end

  fib_nums[1] == num
end

def select_fib(arr)
  arr.select.with_index { |_, idx| is_fib_num?(idx) }
end

=begin
P: select an element out of an array if its index is a fibonacci number

=end

p select_fib(("a".."z").to_a)
p select_fib((0..1000).to_a)