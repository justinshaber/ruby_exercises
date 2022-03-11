# 9:41
# 9:55
# 14 minutes

=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,
solve(["abode","ABc","xyzD"]) = [4, 3, 1]
=end

=begin
P: Given an array of words, return a new array of the number of letters in the word that have the same position as in the alphabet
  i: array of words
  o: array of integers - the number of letters in the word...same position in alph
E+R:
  Case insensitive
  "abode" => 4 a is first position in alphabet and word
DS: Array for the alphabet
Approach
  Define a CONST that is the alphabet
  MAP over the array
    ITERATE through EACH CHAR WITH INDEX
      increase a counter if the index is the same in the alphabet and word
    return value of map's block value is the counter
Algo:
  DEFINE CONST alpha
  MAP over the array
    INIT counter
    ITERATE through EACH CHAR WITH INDEX of the downcased word
      counter += 1 if (index == alpha.index(char))
    counter
=end

ALPHA = ("a".."z").to_a

def solve(arr)
  arr.map do |word|
    counter = 0

    word.downcase.each_char.with_index do |char, idx|
      counter += 1 if idx == ALPHA.index(char)
    end

    counter
  end
end



p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
   