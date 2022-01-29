# Attempt: 1
# Start:  4:25
# End:    4:38
# Time:   13 minutes

=begin
PROBLEM: Write a method that takes an integer as an argument and returns the next featured
number that is greater than the argument. Return an error if there is none.

Examples / Rules
- A featured number is odd
- A multiple of 7
- Each digit occurs only once

Data Structures
Iteration

Algorithm
return an error if the number is greater than 9_999_999_999

Iterate from argument + 1 to 9_999_999_999
  - for each number
  - see if it's a featured number
    if so, return that number
    keep iterating if not

see if a number is a featured number
  - see if the number is odd
  - see if the number % 7 is 0
  - see if each digit occurs only once

    see if each digit occurs only once
          - convert it to an array of chars
          - call uniq and see if there is a difference


=end

def featured(num)
  return "ERROR" if num >= 9_876_543_210

  (num + 1).upto(9_876_543_210) do |int|
    next if int.even? || int % 7 != 0
    return int if int == int.to_s.chars.uniq.join.to_i
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements