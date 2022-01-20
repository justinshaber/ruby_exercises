=begin
###problem###
return the size of the longest palidrome substring within a given string

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
iterate through the string. For each iteration, take substrings of increasing
  range starting with a length of 1.
  Check each of these substrings to see if they are palindromes.
  If they are, replace the longest sub_pal if it greater, move on if not.

###code###


=end

def is_pal?(string)
  string == string.reverse
end

def longest_pal(string)
  longest = 0

  0.upto(string.size - 1) do |start|
    1.upto(string.size - start) do |sub_str_length|
      sub_str = string[start, sub_str_length]
      longest = sub_str_length if is_pal?(sub_str) && sub_str_length > longest
    end
  end

  longest
end

p longest_pal("a") == 1
p longest_pal("aa") == 2
p longest_pal("aab") == 2
p longest_pal("baa") == 2
p longest_pal("baabcd") == 4
p longest_pal("baablkj12345432133d") == 9
p longest_pal("I like racecars that go fast") == 7