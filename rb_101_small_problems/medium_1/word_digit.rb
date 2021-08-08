DIGITS = %w(zero one two three four five six seven eight nine ten)

def word_to_digit(str)
  DIGITS.each_with_index do |digit, index|
    str.gsub!(/\b#{digit}\b/, index.to_s)
  end

  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'