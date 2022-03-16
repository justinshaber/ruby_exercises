# 1:19
# 1:31
# 12 mins

=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
=end
=begin
P: Split the given string into pairs of characters. If there is an odd number of characters, append '_'.
  i: string
  o: array of two character sub strings
E+R:
  If the is an odd number of chars, append '_'
D: A,S
Approach
  APPEND '_' if odd number of chars
  INIT results = []
  INIT an array of chars
  LOOP until arr is empty
    results << unshift(2).join
  results
=end

def solution(str)
  str << '_'
  str.scan(/../)
  # return [] if str.empty?
  
  # str << '_' if str.size.odd?
  # results = []
  # str_arr = str.chars
  
  # loop do
  #   results << str_arr.shift(2).join
  #   break if str_arr.empty?
  # end
  
  # results
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
