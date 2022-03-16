# 9:09
# 9:18
# 9 minutes

=begin
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.
=end
=begin
P: Create a power method that returns the first integer arg, raised to the second int arg, without using **
  i: two integers
  o: first int^second int
E+R:
  if the second integer is < 0, return nil
  Cannot use **
D:
Approach
  RETURN nil if int2 < 0
  INIT a results array
  LOOP second int TIMES
    push the first integer in an array
  return 1 if the array is EMPTY
  INJECT all integers to get the product
=end

def power(base, exp)
  return nil if exp < 0
  results = []

  exp.times do
    results << base
  end
  
  return 1 if results.empty?
  results.inject(&:*)
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil


