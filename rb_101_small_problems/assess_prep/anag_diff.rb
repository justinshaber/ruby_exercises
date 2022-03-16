=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.
=end

=begin
P: Given two words, how many letters must be removed from both to make them anagrams?
  i: two strings
  o: integer => the total number of words needed to be removed
E+R:
  ('a', 'aab') == 2
  ('ab', 'cd') == 4
  ('codewars', 'hackerrank') == 10
  4 + 6
  cear
  

  Handle duplicates
D: Strings, arrays
Approach
  INIT results str
  ITERATE through the alphabet
    count the occurance of the current char in both strings
      append that lower count of characters into the results str
  add size of both string
    subtract size of results string
=end

def anagram_difference(str1, str2)
  results = ''
  ("a".."z").each do |char|
    min = [str1.count(char), str2.count(char)].min
    min.times { results << char }
  end
  (str1.size + str2.size) - (results.size * 2)
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
