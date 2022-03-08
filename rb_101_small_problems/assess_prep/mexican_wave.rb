# 8:49
# 9:16


=begin

# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

#  1.  The input string will always be lower case but maybe empty.

#  2.  If the character in the string is whitespace then pass over it as if it was an empty seat

PROBLEM: given a string, return an array that contains a "mexican wave". The array contains the same number of alphabetical characters in the string, with the first letter of the first instance capitalized, the second letter of the second element capitalized and so forth until the end.

input: a string
output: an array, same number of element as alpha characters, different capitalization

Rules
skip over white spaces
Capitalization is successive - "Hello", "hEllo", "heLlo", "helLo", "hellO"

Approach:
Initialize a results array
Iterate over each character in the string, with index
  If there is a white space, go to the next iteration
  If not, push a copy of the word with the character at the current index capitalized
  
Return the results array

Algorithm:
INIT results

ITERATE over EACH CHAR WITH INDEX
  IF CHAR =~ [^A-Za-z] go to next iteration
  replace the current char with it's upcased version
    Take the characters before the special char
    concat the special character
    concat the rest of the string
    
    str[0...3] + char.upcase + str[(str + 1)..] 
  
  
  PUSH modified word into results
  
RETURN results

=end

def wave(str)
  results = []
  
  str.chars.each_with_index do |char, idx|
    next if char =~ /[^A-Za-z]/
    
    wave = str.downcase
    wave[idx] = char.upcase
    results << wave

    # modified_word = str[0...idx] + char.upcase + str[(idx + 1)..]
    # results << modified_word
  end

  results
end



p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

p wave("") == []

p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]