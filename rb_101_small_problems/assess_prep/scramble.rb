=begin
###problem###
Write a method that returns true if a portion of the first string
can be rearranged to match the second string. Return false, otherwise.


input - two strings
output - boolean

###Examples###
no need to worry about case


###Data Structures###
Array
Strings


###algorithm###
create an array of characters for the second string
iterate through the characters
Use sub, to see if a letter is removed.
  
  If so, go to the next letter
  If not, return false
Return true if iteration goes through the entire second word

find the unique letters in the second string
iterate through those letters
see if the count of each letter in each string is at least the same
  return true if so
  false if not


###code###


=end

def scramble(str1, str2)
  str2_arr = str2.chars.uniq
  str2_arr.all? { |char| str2.count(char) <= str1.count(char) }
end

p scramble('javaass', 'jjss') == false
p scramble('rkqoodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true