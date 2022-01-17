=begin
Problem:
  Check if a string can be recreated using a sub string within
  it, and appending that substring repeatedly until you get the original string

  input: string
  output: boolean

Examples/Test cases
  All strings are lowercase letters
  A string with an off number of characters should return false

  p repeat_sub("abab") == true
  p repeat_sub("aba") == false
  p repeat_sub("aabaaba") == false
  p repeat_sub("abab") == true
  p repeat_sub("abaababaab") == true
  p repeat_sub("abcabcabcabc") == true

Data Structures
  Array

Algorithm
If the string is an odd size, return false
Split the string in half,
  Take the size of the string, and divide that number by 2.
  Then halfway = the size of the strind, divided by 2
and compare the two sides.
  If the two sides are unequal, then return false
  If the two sides are equal, return true

Code:
=end

def repeat_sub(str)
  return false if str.size.odd?

  halfway = str.size / 2
  half1 = str[0, halfway]
  half2 = str[halfway..]
  
  half1 == half2
end

p repeat_sub("abab") == true
p repeat_sub("aba") == false
p repeat_sub("aabaaba") == false
p repeat_sub("abaababaab") == true
p repeat_sub("abcabcabcabc") == true