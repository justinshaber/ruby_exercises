def uppercase?(str)
  str = str.delete("^A-Za-z")
  str.chars.all? { |char| char =~ /[A-Z]/ }

  # str == str.upcase --Simpler solution
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true