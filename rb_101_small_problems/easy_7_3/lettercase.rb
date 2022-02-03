

def letter_case_count(string)
  # hash = { lowercase: 0, uppercase: 0, neither: 0 }

  # string.each_char do |char|
  #   hash[:lowercase] += 1 if char =~ /[a-z]/
  #   hash[:uppercase] += 1 if char =~ /[A-Z]/
  #   hash[:neither] += 1   if char =~ /[^A-Za-z]/
  # end

  # hash

  cases = { lowercase: "a-z", uppercase: "A-Z", neither: "^A-Za-z" }

  cases.each_with_object({}) { |(k, v), hash| hash[k] = string.count(v) }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }