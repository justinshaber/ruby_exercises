def leading_substrings(str)
  sub_str = []

  (str.size).times do |i|
    sub_str << str[0..i]
  end
  
  sub_str
end

def substrings(str)
  all_subs = []

  (str.size).times do |i|
    all_subs << leading_substrings(str[i..])
  end

  all_subs.flatten
end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]