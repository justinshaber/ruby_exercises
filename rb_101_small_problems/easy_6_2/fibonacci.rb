# 9:00
# 9:18


=begin
  Problem: Find the index of the first fibonacci number that has the number of digits as the given argument

  input: an integer - the number of digits in the target fib number
  output: an integer - the index of the target fib number

  Examples | Rules
  ex: The first fib number with two digits is 13. This is the 7th fibonacci number.
  explicit rules:
  First fib number has an index of 1

  Data structures:
  Array

  Algorithm:
  Initialize a counter to 1

  Find fibonacci numbers and for each fibonacci number:
    Check how many digits it has
    return the counter if it has the correct amount of digits
    Increase the counter if not

  Check how many digits a number has
    turn it to a string and return the size

  return


  Inialize an array with the first two fibonacci numbers
  begin iterating
    until the last number in the array has n digits
    push the next fibonacci number
      get the last two digits, add them together
    
  array.length
=end

def find_fibonacci_index_by_length(num)
  fib = [1, 1]

  until fib[-1].to_s.size == num
    fib << fib.last(2).sum
  end

  fib.length
end

# def count_digits(num)
#   num.to_s.size
# end

# def find_fibonacci_index_by_length(length)
#   counter = 3
#   first = 1
#   second = 1

#   loop do
#     next_fib = first + second

#     return counter if count_digits(next_fib) == length
#     first = second
#     second = next_fib
#     counter += 1
#   end
# end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847