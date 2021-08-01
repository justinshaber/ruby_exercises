def leading_substrings(str)
  sub_str = []
  # str = str.delete("^A_Za-z") --ignores non-alphanumeric chars

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

def palindromes(str)
  all_subs = substrings(str)
  all_subs.select { |sub_str| palindrome?(sub_str) }
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]