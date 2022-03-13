=begin
P: Given a string, reverse the order of words and change all cases. Maintain
  i: Sting
  o: new string
E+R:
  Handle multiple spaces...which could mean:
  no - "word1***word2**word3*" => "WORD3***WORD2**WORD1*"
  yes - "word1***word2**word3*" => "*WORD3**WORD2***WORD1"

  Should handle multiple spaces -
  Original:    "You Know When  THAT  Hotline Bling"
  Expected:    "bLING hOTLINE  that  wHEN kNOW yOU"
  instead got: "bLING hOTLINE that  wHEN  kNOW yOU"
Approach
  To get the words in the right order with swapped case
    => String#swapcase, String#split, Array#reverse
  Preserve spaces
    Turn each space into the number of spaces
      Iterate through the string
        If current char is a space, push it into a new string
        If current char is not a space
          iterate until the following character is not a space
          then put in the first modified word
Algo:
  INIT an array of the case swapped words
  INIT a results string
  ITERATE through EACH CHAR WITH INDEX of the given str
    if the current char is a space
      push it into a new string
      next
    if the current char is not a space
      next iteration if the char at the next idx is NOT a space
      pop a word out of the case swapped array, push it into the results string
  RETURN results string


=end



def string_transformer(str)
  swapped = str.swapcase.split(" ")
  result = ''
  str = str.reverse
  str.each_char.with_index do |char, idx|
    if char == " "
      result << char
      next
    end
    next unless str[idx + 1] == " " || str[idx + 1] == nil
    result << swapped.pop
  end
  
  result
end

p string_transformer("Hello World") #== "wORLD hELLO"
p string_transformer("Hello   World  I   love you") #== "YOU   LOVE  i   wORLD hELLO"
p string_transformer("       Hello   World  I   love you  ") #== "       YOU   LOVE  i   wORLD hELLO  "
p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"

