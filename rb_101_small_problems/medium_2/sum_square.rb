# Attempt: 1
# Start:  6:00
# End:    6:07
# Time:   7 minutes

=begin
PROBLEM: Given an integer, n, write a method that returns the difference between
  - the sum of the squares of 1 to n
  - and square of the sum of 1 to n

Algorithm
  - initialize sum
  - sum_of_squares

  - iterate from 1 to the n
    - increase the sum by i
    - take the square of i and increase the sum_of_sqaureas
  
  sum**2 - sum_of_squares
=end

def sum_square_difference(num)
  sum = 0
  sum_of_squares = 0

  for int in (1..num)
    sum += int
    sum_of_squares += int**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150