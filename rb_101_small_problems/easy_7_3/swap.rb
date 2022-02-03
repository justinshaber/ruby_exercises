=begin
10:05
10:20
15 minutes

Problem: Given a string, return a new string with all the cases swapped

Algorithm:
Iterate through each character
Compare the upcased version of char to itself
  If it returns true, then the character is uppercase
    push a the opposite character into the new string
  If it is false then it is lowercase
    push a the opposite character into the new string

  
=end

def swapcase(string)
  # string.each_char.with_object("") do |char, new_str|
  #   new_str << (char == char.upcase ? char.downcase : char.upcase)
  # end

  # string.each_char.inject("") do |memo, char|
  #   memo << (char == char.upcase ? char.downcase : char.upcase)
  # end

  counter = 0
  new_str = ""

  until counter == string.size
    char = string[counter]
    new_str << (char == char.upcase ? char.downcase : char.upcase)
    counter += 1
  end

  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'