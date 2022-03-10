=begin
P: Given a string, return a hash that shows the number of words of different sizes
  i: string with words separated by spaces
  o: hash with size of word as key and number of words that are that size as value
E+R: Any character counts, words separated by spaces
D: Hash for results, Array for iterating through words
Approach:
  split the string into array of words, iterate through the words, initializing or updating a key during each iteration.
ALGO:
  SPLIT the string into array of words
  ITERATE through EACH (WITH {})
    GET the size of the word
    INCREMENT the key by one
=end

def word_sizes(str)
  # hash = {}
  # str_arr = str.split(" ")
  # str_arr.each do |word|
  #   hash[word.size] ? hash[word.size] += 1 : hash[word.size] = 1
  # end
  # hash

  str_arr = str.split(" ")
  str_arr.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}