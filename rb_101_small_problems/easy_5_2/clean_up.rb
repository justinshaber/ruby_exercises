=begin
  P: given a string, return the same string with all non alphabetical chars replaced by spaces
      The result should not have consecutive spaces.
  Approach
    Init an empty results string
    Iterate over each char in the string arg
      If it is a-z put it in the result string
      If it is not
        check if the last char in the result string is a " "
        if it is, go to the next char
        if it is not, add " " to the results string
=end

def cleanup(str)
  # str.gsub(/[^a-z]/, " ").squeeze(" ")

  result = ""

  str.each_char do |char|
    if char =~ /[A-Za-z]/
      result << char
    else
      next if result[-1] == " "
      result << " "
    end
  end

  result
end

p cleanup("---what's my +*& line?") == ' what s my line '