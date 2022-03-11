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

