=begin
###problem###
Write a method that finds that longest common prefix among an array of strings
If there is no common prefix, return an empty string

input - an array of strings
output - a string that is the longest common prefix

###Examples###

p common_prefix(["flower", "flow", "flight"]) == "fl" 
p common_prefix(["dog", "racecar", "car"]) == "" 
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters" 
p common_prefix(["throne", "dungeon"]) == "" 
p common_prefix(["throne", "throne"]) == "throne"  

###Data Structures###
Array

###algorithm###
initialize the longest prefix to ""
compare the first character of each string
shift the first string from the array,
iterate through the characters in that string
see if all other string in the array have the same character


  if they are equal, reassign longest prefix and go to next character
  if they are not equal return the longest prefix



###code###


=end

def common_prefix(array)
  longest_prefix = ''
  first_string = array.shift

  0.upto(first_string.size - 1) do |char|
    current_char = first_string[char]
    if array.all? { |string| current_char == string[char] }
      longest_prefix << current_char
    else
      return longest_prefix
    end
  end

  longest_prefix
end

p common_prefix(["flower", "flow", "fliwht"]) == "fl" 
p common_prefix(["dog", "racecar", "car"]) == "" 
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters" 
p common_prefix(["throne", "dungeon"]) == "" 
p common_prefix(["throne", "throne"]) == "throne"  