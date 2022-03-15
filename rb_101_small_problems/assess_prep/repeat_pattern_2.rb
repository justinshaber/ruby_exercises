# 1:28

=begin
P: Given a string, see if it can be formed by taking a sub-string and appending multiples of the substring together
  i: str
  o: boolean
    true - can be constructed using a substring
E+R:
  String will not be empty
  "abab" is "ab" * 2
  "aaaaa" is "a" * 5
D: Arrays and strings
Approach:
  Get every possible substring that is less than half the size string argument
  Iterate through each 
=end

p repeat_sub("abab") == true
p repeat_sub("aba") == false
p repeat_sub("aabaaba") == false
p repeat_sub("abaababaab") == true
p repeat_sub("abcabcabcabc") == true
p repeat_sub("aaaaa") == true