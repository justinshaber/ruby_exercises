# INPUT: integer representing number of digits
# OUTPUT: index of first Fibonacci num with INPUT amount of digits

def find_fibonacci_index_by_length(num)
  counter = 2
  first_fib = 1
  second_fib = 1
  loop do
    counter += 1
    current_fib = first_fib + second_fib
    break if current_fib.to_s.size == num

    first_fib = second_fib
    second_fib = current_fib
  end
  counter
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847



# def how_many_digits?(num)
#   counter = 0
#   loop do
#     num = num / 10
#     if num == 1
#       counter += 2
#       break
#     elsif num == 0
#       counter += 1
#       break
#     else
#       counter += 1
#     end
#   end
#   counter
# end
