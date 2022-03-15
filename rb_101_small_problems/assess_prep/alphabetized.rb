def alphabetized(s)
  s = s.delete("^A-Za-z")
  
  results = Hash.new('')
  s.each_char { |char| results[char.downcase] += char }

  results.values.sort_by(&:downcase).join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p (alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ")