def leading_substrings(str)
  sub_str = []
  (str.size).times do |i|
    sub_str << str[0..i]
  end
  sub_str
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']