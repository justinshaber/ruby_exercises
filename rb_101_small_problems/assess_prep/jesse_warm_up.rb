#  Given a string as input, find the longest substring that does not have any consecutive repeating characters.

# 10:14am
# 10:31
# 16mins

=begin
P: Given a string, find the longest substring that doesn't have any consecutive integers
  i: String
  o: substring - that longest w/o consecutive repeating characters
E+R:
  consecutive repeating
  substrings can be as small as 1
D: Strings, arrays, slices, and helper Method
Approach:
  Iterate through every possible subsstring, evaluate each with a helper Method,
  return the longest
Algo:
  DEF consec_chars?
    iterate from 0 to size of the str.size - 2 |idx|
      RETURN false if str[idx] == str[idx + 1]
    RETURN true
  INIT a longest
  ITERATE through every possible substring
    verify if it does not have any consecutive chars
      if it does not - check, compare, reassign the length
      if it does - go to next iteration
  RETURN longest

=end

def consec_char?(str)
#   (0..str.size - 2).each do |idx|
#     return true if str[idx] == str[idx + 1]
#   end
  # str.each_char.with_index do |char, idx|
  #   return true if char == str[idx + 1]
  # end
  # false
end

def find_longest_substring(str)
longest = ''

(0..str.size - 1).each do |start|
  (1..str.size - start).each do |length|
    sub_str = str[start, length]
    next if consec_char?(sub_str)
    longest = sub_str if length > longest.size
  end
end

longest
end

p find_longest_substring("aaaaa") == "a" 
p find_longest_substring('aaaaaazz') == 'az'
p find_longest_substring('bookkeeper') == "eper"
p find_longest_substring('leetucebox') == "etucebox"

##############################################################
##############################################################
##############################################################
##############################################################
##############################################################
##############################################################

# 8:39
# 8:59
# 20 mins

# Write a method same_char_collapse that takes in a string and 
# returns a collapsed version of the string. 

# To collapse the string, 
# we repeatedly delete 2 adjacent characters that are the same until 
# there are no such adjacent characters. If there are multiple pairs that 
# can be collapsed, delete the leftmost pair first before
# moving onto the next pair. 

# For example, we take the 
# following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

=begin
P: Collapse a string according to a specific set of rules.
  i: String
  o: string - collapsed in a certain way
E+R:
  repeatedly collapse consecutive chars into one.
  Start on the left
  One 'collapse' per iteration
D: strings, arrays
Approach/Algo: Start iterating through the string, if a 'collapse' needs to happen, do it. I want to continue this until there no collapses happen.
  INIT idx to 0
  LOOP
    BREAK IF we get to end of the String
    IF the char at current index and next index are EQUAL
      REMOVE those two chars
      RESET idx to 0
    ELSE
      INCREMENT idx by 1
  RETURN str
Code:
  INIT idx = 0
  LOOP
    break if idx == str.size - 1
    If the char[idx] == char[idx+1]
      str = str[0...idx] + str[idx+2..]
      idx = 0
    else
      idx += 1

 
      
=end

# def same_char_collapse(str)
#   idx = 0
#   loop do
#     break if idx == str.size - 1
#     if str[idx] == str[idx + 1]
#       # str = str[0...idx] + str[idx+2..]
#       # 2.times { str = str.sub(str[idx], '') }
#       str[idx] = ''
#       str[idx] = ''
#       idx = 0
#     else
#       idx += 1
#     end
#   end
#   str
# end

## SOLUTION 1

# def same_char_collapse(str)
#   reducible = true

#   while reducible
#     chars = str.split("")
#     reducible = false

#     chars.each.with_index do |char, i|
#       if chars[i] == chars[i + 1]
#         chars[i] = ""
#         chars[i + 1] = ""
#         reducible = true
#       end
#     end

#     str = chars.join("")
#   end

#   return str
# end

# p same_char_collapse("zzzxaaxy") == "zy"
# p same_char_collapse("uqrssrqvtt") == "uv"
# p same_char_collapse("aabcddce") == "be"
# p same_char_collapse("uqrssrqvtt") == "uv"

##############################################################
##############################################################
##############################################################
##############################################################
##############################################################
##############################################################

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.



# p alphabet_score('man i need a taxi up to ubud') == 'taxi'
# p alphabet_score('what time are we climbing up the volcano') == 'volcano'
# p alphabet_score('take me to semynak') == 'semynak'
# p alphabet_score('aa b') == 'aa'