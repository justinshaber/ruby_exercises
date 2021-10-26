def leading_substrings(str)
  sub_strs = []

  1.upto(str.size) do |count|
    sub_strs << str.slice(0, count)
  end

  sub_strs
end

def substrings(str)
  all_subs = []

  0.upto(str.size - 1) do |num|
    all_subs << leading_substrings(str[num..])
  end

  all_subs.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]