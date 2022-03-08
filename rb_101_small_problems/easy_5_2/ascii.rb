=begin
P: Write a method that returns the ASCII value of the given string
  i: string
  o: ascii value of the string
E:
  ascii value of the string is the ascii value all characters summed together
Approach:
  Iterate through each char, get the ascii value using #ord, and add it to a memo
Algo:
  INIT a counter to 0
  ITERATE through EACH_CHAR
    ADD the ascii value of the current char
  RETURN the counter
=end

def ascii_value(string)
  string.each_char.inject(0) { |memo, char| memo + char.ord }
  # string.codepoints.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0