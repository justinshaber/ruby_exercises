ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def swapcase(str)
  # str.split.map do |word|
  #   word.chars.map do |letter|
  #     ALPHABET.include?(letter) ? letter.upcase : letter.downcase
  #   end.join
  # end.join(" ")
  #------------------didn't need the outer .map
  str.chars.map do |char|
    ALPHABET.include?(char) ? char.upcase : char.downcase
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'