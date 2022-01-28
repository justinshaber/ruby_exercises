# Attempt: 1
# Start:  9:58
# End:    10:18
# Time:   20 min

=begin
PROBLEM: Write a method that finds the nth fibonacci number using recursion

Examples/Rules:
- use recursion
- the fibonacci sequence begins with 1 and 1. Each successive number is the sum
of the prvious two numbers

Data Structures
- Array?

Algorithm
- [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
144
f(12) == 144
f(12) => f(11) + f(10)
        f(11) => f(10) + f(9)
                 f(10) => f(9) + f(8)

Define a method fibonacci with takes one parameter (n) and returns the nth fibonacci
return 0 if n is equal to 0
return 1 if n is equal to 1
initialize the nth fibonacci number to return of calling fibonacci(n - 1) + fib(n - 2)


=end

def fibonacci(n)
  return n if n < 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

# def fibonacci_tail(nth, acc1, acc2)
#   if nth == 1
#     acc1
#   elsif nth == 2
#     acc2
#   else
#     fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#   end
# end

# def fibonacci(nth)
#   fibonacci_tail(nth, 1, 1)
# end

p fibonacci(0)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765