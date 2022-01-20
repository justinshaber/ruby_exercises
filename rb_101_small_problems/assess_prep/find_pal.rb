=begin
###problem###
return the size of the longest palindrome substring within a given string

input - string
output - an integer representing the length of the longest substring

details -
if the length of the array is 0, return 0

###Examples###
p longest_pal("a") == 1
p longest_pal("aa") == 2
p longest_pal("aab") == 2
p longest_pal("baa") == 2
p longest_pal("baabcd") == 4
p longest_pal("baablkj12345432133d") == 9
p longest_pal("I like racecars that go fast") == 7

###Data Structures###
Arrays
Strings


###algorithm###
initialize the longest substring palindrome to 0
iterate through each character of the string.
  For each iteration, take substrings of increasing range starting with a length of 1.
    Check the substring to see if it is a palindrome.
    If it is, reassign the length of this substring to longest_sub_pal if it is greater
    move on if not.

return longest

###code###


=end

def is_pal?(string)
  string == string.reverse
end

def longest_pal(string)
  result = 0

  0.upto(string.size - 1) do |start|
    1.upto(string.size - start) do |substr_length|
      sub_str = string[start, substr_length]
      result = substr_length  if is_pal?(sub_str) && substr_length > result
    end
  end

  result
end

p longest_pal("a") == 1
p longest_pal("aa") == 2
p longest_pal("aab") == 2
p longest_pal("baa") == 2
p longest_pal("baabcd") == 4
p longest_pal("baablkj12345432133d") == 9
p longest_pal("I like racecars that go fast") == 7