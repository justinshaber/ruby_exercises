# Attempt: 1
# Start:  10:30
# End:    10:55
# Time:   25 minutes

=begin
Problem: find the nth fibonacci number using a procedural appraoch (no recursion)
Examples/rules:
- f(0) == 0
- f(1) == 1
- f(2) == f(1) + f(0) ... 1
- f(3) == f(2) + f(1) ... 2
- f(4) == f(3) + f(2) ... 3
- f(5) == f(4) + f(3) ... 5
- f(6) == f(5) + f(4) ... 8

Algorithm

initialize prev_prev_fib to 0
initialize prev_fib to 1

iterate from 2 to the number
When we get a fibonacci number we save it to a variable n
when we start the next iteration, we reassign n - 1 to n, and n - 2 to n - 1
we then get the new n by summing the new n - 1 and n - 2

=end

# def fibonacci(n)
#   return n if n < 2

#   prev_prev_fib = 0
#   prev_fib = 1
#   fib = 1

#   (n-1).times do
#     fib = prev_fib + prev_prev_fib
    
#     prev_prev_fib = prev_fib
#     prev_fib = fib
#   end

#   fib
# end

def fibonacci(n)
  return n if n == 0

  num_1, num_2 = [1, 0]

  3.upto(n) do
    num_1, num_2 = [num_1 + num_2, num_1]
  end

  num_1 + num_2
end


p fibonacci(0)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075