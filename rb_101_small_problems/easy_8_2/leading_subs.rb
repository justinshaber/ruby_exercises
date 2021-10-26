def leading_substrings(str)
  sub_strs = []

  1.upto(str.size) do |count|
    sub_strs << str.slice(0, count)
  end

  sub_strs
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']