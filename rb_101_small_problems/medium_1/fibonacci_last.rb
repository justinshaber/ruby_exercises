# Attempt: 1
# Start:  11:18
# End:    11:30
# Time:   12 minutes

=begin
PROBLEM: Find the last digit of the nth fibonacci number

Algorithm:
Find the fibonacci number
divmod by 10 to find the remainder and return the remainder



=end

# def fibonacci(n)
#   return n if n == 0

#   num_1, num_2 = [1, 0]

#   3.upto(n) do
#     num_1, num_2 = [num_1 + num_2, num_1]
#   end

#   num_1 + num_2
# end

# def fibonacci_last(n)
#   fibonacci = fibonacci(n)
  
#   fibonacci % 10
# end

def fibonacci_last(n)
  last_digits = [1, 1]

  3.upto(n) do
    last_digits = [last_digits.last, (last_digits.first + last_digits.last) % 10]
  end

  last_digits.last
end

p fibonacci_last(15) == 0 # (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5 #(the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5 #(the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1 #(this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 #(this is a 208989 digit number)
p fibonacci_last(123456789) == 4