=begin
  PROBLEM: Given an array of strings, return an array with all the vowels removed
  input: array of strings
  output: array of strings with vowels removed

  Algorithm
  Iterate over the strings in the array with map
    Use gsub to replace any vowels with ''
=end

def remove_vowels(array)
  array.map do { |word| word.gsub(/[AEIOUaeiou]/, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']