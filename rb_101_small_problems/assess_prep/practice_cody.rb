=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the percentage of characters in the string that are lowercase letters, 
one the percentage of characters that are uppercase letters, 
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples



letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=end

################################################################################################
################################################################################################
################################################################################################

=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
and whose digits occur exactly once each.
So, for example, 49 is a featured number, but 98 is not (it is not odd),
97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.
Return an error message if there is no next featured number.

examples

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

=end