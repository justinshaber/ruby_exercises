# 3:35
# 3:58
# 23 mins

# Find all substrings that are palindromic whose size is a number in the fibonacci sequence greater than 1.
# Do not use the reverse method.

=begin
P: Given a string, find all substrings whose size is a number in the fibonacci sequence greater than 1. Do not use the reverse method.
  i: String
  o: an array of palindromic substring whose size is a number in the fibonacci sequence
E+R:
  Do not use the reverse method
D: Helper methods - reverse and verify a fibonacci, string
Approach:
  I want to iterate through all possible substrings greater than 1, selecting only valid substrings
Algo:
DEF palindrome? method with one param str
  INIT a results arr
  INIT an arr of chars in str
  LOOP str_arr.size - 1 times
  pop off the last element and push it into results
  JOIN the results arr
  COMPARE it to str
DEF fibonacci? method
DEF main_method
  INIT results array
  ITERATE through all substring
    results << sub_str if palindrome? && fibonacci?
  RETURN results
=end

=begin
P: Given a num return t/f if it a number in the fib sequence
A: begin iterating through the fibonacci sequence until we get to the number

=end

# def is_palindrome?(str)
#   (0..str.size / 2).each do |idx|
#     return false if str[idx] != str[-idx - 1]
#   end

#   true
# end 

# def is_pal?(str)
#   results = []
#   str_arr = str.chars
#   (str_arr.size).times do
#     results << str_arr.pop
#   end
#   results.join == str
# end

def is_pal?(str)
  (0...str.size / 2).all? { |idx| str[idx] == str[-idx - 1]}
end

def valid_fib?(num)
  fib = [1, 1]
  fib[0], fib[1] = fib[1], fib.sum until fib[1] >= num
  fib[1] == num
end

def palindromic_fib(str)
  results = []
  
  (0...str.size).each do |start|
    (2..str.size - start).each do |length|
      sub_str = str[start, length]
      results << sub_str if is_pal?(sub_str) && valid_fib?(length)
    end
  end

  results
end

p palindromic_fib('aba') == ['aba']
p palindromic_fib('a') == []
p palindromic_fib('') == []
p palindromic_fib('amadamimadama') == ['ama', 'amadamimadama', 'madam', 'ada', 'amima', 'mim', 'madam', 'ada', 'ama']
p palindromic_fib('tattarrattat') == ['tat', 'tt', 'ttarratt', 'rr', 'tt', 'tat']
p palindromic_fib('tacoocat') == ['tacoocat', 'oo']
p palindromic_fib('bcdefghijklkjihgfedcb') == ['bcdefghijklkjihgfedcb', 'fghijklkjihgf', 'jklkj', 'klk']