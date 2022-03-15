# 1:55
# 2:11
# 16 minutes

=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

P: Write a method, that takes a number, and returns it's multi persistance. This is the number of time you must multiply the digits in num until you reach a single digit
  i: integer - starting number
  o: integer - the number of times we did the MP
E+R:
  39 return 3
  3*9 = 27 => 2*7 = 14 => 1*4 => 4
D: Array
Approach:
  INIT a counter
  LOOP until the number is only 1 digit
    Split the number into individual numbers
    Multiply them all
    increase the counter
Algo:
  INIT a counter
  UNTIL num.digits.size == 1
    INIT an array of DIGITS
    INJECT all digits in the array to get the product of all
    increase the counter
  counter
=end

# def persistence(num)
#   counter = 0
  
#   until num.digits.size == 1
#     num = num.digits.inject(&:*)
#     counter += 1
#   end

#   counter
# end

def persistence(num)
  return 0 if num < 10

  num = num.digits.inject(&:*)
  1 + persistence(num)
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
