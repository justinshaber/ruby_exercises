=begin
  returns true if all alphabetic characters are uppercase
  false if not


=end

def uppercase?(string)
  string.each_char.all? do |char|
    char == char.upcase
  end

  string == string.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true