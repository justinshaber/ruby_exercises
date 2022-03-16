# 8:22
# 8:37
# 15 minutes

=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
Your task is to process a string with "#" symbols.
Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""
=end

=begin
P: Given a string with "#", write a method that processes the string so that '#' is equal to a backspace.
  i: a string with various amounts of '#' and other characters
  o: the processed string.
E+R:
DS: Array, Strings
Approach:
  Iterate through EACH CHAR
    PUSH each character into a new array
      UNLESS it is a '#' in which case POP the previous char
      
Algo:
  INIT a results array
  ITERATE using each_char
    If (current char is not #)
      PUSH current char to results
    else
      pop previous char off results
  join the elements in results array
=end

def clean_string(str)
  results = []
  str.each_char do |char|
    char == '#' ? results.pop : results.push(char)
  end
  results.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
p clean_string('########') == ""
p clean_string('') == ""

##############################

=begin
  Given a string, reorder it according to the single digit that is in each word
=end

def order(str)

end

p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") ==  "Fo1r the2 g3ood 4of th5e pe6ople"

###############################

=begin
  The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

  Examples
  "din"      =>  "((("
  "recede"   =>  "()()()"
  "Success"  =>  ")())())"
  "(( @"     =>  "))((" 
=end

def duplicate_encode(str)

end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

###############################

=begin
  Write a method that finds that longest common prefix among an array of strings. If there is no common prefix, return an empty string
=end

p common_prefix(["flower", "flow", "fliwht"]) == "fl" 
p common_prefix(["dog", "racecar", "car"]) == "" 
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters" 
p common_prefix(["throne", "dungeon"]) == "" 
p common_prefix(["throne", "throne"]) == "throne" 

##############################

=begin
  Reverse and combine words 1 + 2, 3 + 4, 5 + 6, etc...
  If there is an odd number of words, reverse it, but don't combine it with anything else
  Repeat this process until only 1 "word" remains

  Example:
    Original String => "abc def gh34 434ff 55_eri 123 343"
                    => "cbafed 43hgff434 ire_55321 343"
                    => "defabc434ffgh34 12355_eri343"
                    => "43hgff434cbafed343ire_55321"
=end

p reverse_and_combine_text("abc def gh34 434ff 55_eri 123 343") == "43hgff434cbafed343ire_55321"
p reverse_and_combine_text("abc def ghi 123") == "defabc123ghi"
p reverse_and_combine_text("abc def") == "cbafed"

##############################

=begin
  Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.
=end

valid_parentheses("  (") == false
valid_parentheses(")test") == false
valid_parentheses("") == true
valid_parentheses("hi())(") == false
valid_parentheses("hi(hi)()") == true

#################################

=begin
Given a string, reverse the order of words and change all cases. Maintain multiple spaces

Handle multiple spaces:
  no - "word1***word2**word3*" => "WORD3***WORD2**WORD1*"
  yes - "word1***word2**word3*" => "*WORD3**WORD2***WORD1"


=end

p string_transformer("Hello World") == "wORLD hELLO"
p string_transformer("Hello   World  I   love you") == "YOU LOVE   I  wORLD   hELLO"
p string_transformer("       Hello   World  I   love you  ") == "  YOU LOVE   wORLD  hELLO       "
p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"