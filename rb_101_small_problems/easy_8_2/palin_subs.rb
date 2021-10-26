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

def palindromes(str)
  all_sub_strs = substrings(str)

  all_sub_strs.select do |sub_str|
    sub_str.size > 1 && sub_str == sub_str.reverse
  end
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]