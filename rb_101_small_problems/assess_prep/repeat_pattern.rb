=begin
Problem:
  Check if a string can be recreated using a sub string within
  it, and appending that substring repeatedly until you get the original string

  input: string
  output: boolean

  test if the string is made up of the same characters

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

Test if all the characters are the same
  take the first character,
  using all? compare it to all the other characters

Code:
=end

# def repeat_sub(str)
#   return true if str.chars.all? { |letter| letter == str[0] }
#   return false if str.size.odd?

#   halfway = str.size / 2
#   half1 = str[0, halfway]
#   half2 = str[halfway..]

#   half1 == half2
# end

=begin
Algorithm
  Make an array of all possible substrings, up to half the size of the string
  For each substring,
    Check if the substring can be multiplied to equal the length of the og string
      multiplier is the length of the string divided by the substring length
      return true if the substring when multiplied is equal to the og string
  
  return false
=end

def get_subs(str)
  sub_strs_arr = []

  1.upto(str.size / 2) do |sub_str_length|
    sub_strs_arr << str[0, sub_str_length]
  end

  sub_strs_arr
end

def repeat_sub(str)
  sub_strs_arr = get_subs(str)

  sub_strs_arr.each do |sub_str|
    multiplier, remainder = (str.size).divmod(sub_str.size)
    return true if remainder == 0 && sub_str * multiplier == str
  end

  false
end

p repeat_sub("abab") == true
p repeat_sub("aba") == false
p repeat_sub("aabaaba") == false
p repeat_sub("abaababaab") == true
p repeat_sub("abcabcabcabc") == true
p repeat_sub("aaaaa") == true
