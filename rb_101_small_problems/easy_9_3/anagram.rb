# 8:40
# 8:56
# 16 minutes


=begin
PROBLEM: write a program that groups words that are anagrams.

input: array of words
output: arrays of words that are anagrams

Examples | Rules
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Data Structures
Hash to store a sorted word as a key
Sub arrays with matching anagrams

Algorithm
Initialize a results hash
Iterate over each word
Sort the word and see if the sorted word is a key in hash
  If it is not, initialize the key with an array pushing the unsorted word in it
  If it is, push the unsorted word to the value array.

Iterate over the values, printing each array to the console.

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

results = {}

words.each do |word|
  sorted = word.chars.sort.join

  if results[sorted]
    results[sorted] << word
  else
    results[sorted] = [word]
  end
end

results.each_value { |value| p value }