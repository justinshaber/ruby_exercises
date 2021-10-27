# UPCASE = ("A".."Z").to_a
# DOWNCASE = ("a".."z").to_a

# def letter_case_count(str)
#   results = { lowercase: 0, uppercase: 0, neither: 0 }

#   str.chars.each do |char|
#     if UPCASE.include?(char)
#       results[:uppercase] += 1
#     elsif DOWNCASE.include?(char)
#       results[:lowercase] += 1
#     else
#       results[:neither] += 1
#     end
#   end
  
#   results
# end

def letter_case_count(str)
  results = { lowercase: 0, uppercase: 0, neither: 0 }

  results[:uppercase] = str.count "A-Z"
  results[:lowercase] = str.count "a-z"
  results[:neither] = str.count "^A-Za-z"

  results
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }