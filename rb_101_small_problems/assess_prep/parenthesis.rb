# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))((" 

# 9:40
# 9:53

=begin
PROBLEM: given a string, return a new string with each character that occurs only once replaced with a "(", and each char that occurs more than once replaced with a ")"

input: a string
output: a new string with chars replaced by "(" or ")"

Rules
every character counts (white spaces, special chars, etc.)

Approach
initialize a new string
iterate over each character, if the character occurs more than once in the string, concat a "(" to the new string, otherwise concat ")"

return the new string


Algorithm
INIT new_str

ITERATE over EACH CHAR
  COUNT the occurences of each CHAR in the STR
  IF it appears more than one APPEND ")" to new_str
  ELSE append ")" to new_str

return the new_str

=end

def duplicate_encode(str)
  str = str.downcase
  
  str.chars.each_with_object("") do |char, new_str|
    new_str << (str.count(char) > 1 ? ")" : "(")
  end
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("