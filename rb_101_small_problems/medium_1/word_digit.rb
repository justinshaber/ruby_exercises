DIGITS = %w(zero one two three four five six seven eight nine ten)

def word_to_digit(str)
  str = str.split(/[[:punct:]]/)
  # str.map do |word|
  #   DIGITS.include?(word) ? DIGITS.index(word) : word
  # end.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'