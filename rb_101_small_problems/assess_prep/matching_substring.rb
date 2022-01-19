=begin
###problem###
Given two strings, find out if there is a sub string in common
  the substring must be 2 or more chars

input - two strings
output - boolean

details -
Case insensitive
Must be 2 or more characters
If either string is empty, it's false
Not just a-z

###Examples###

p substring_test("Something, "Fun") == false
p substring_test("Something, "Home") == true
p substring_test("Something, "") == false
p substring_test("", Something") == false
p substring_test("BANANA, "banana") == true
p substring_test("test, "lllt") == false
p substring_test("test, "lllst") == true
p substring_test("1234567, "541265") == true



###Data Structures###
Strings, array

###algorithm###
Get all possible two character substrings from the first string
iterate through the array of substrings, see if they exist in the second string
true if so
false if not

###code###


=end

def substring_test(string1, string2)
  substring_arr = []
  string1 = string1.downcase
  string2 = string2.downcase

  0.upto(string1.size - 2) do |start|
    substring_arr << string1[start, 2]
  end

  substring_arr.any? { |sub_str| string2.include?(sub_str) }
end

p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("test", "lllst") == true
p substring_test("1234567", "541265") == true