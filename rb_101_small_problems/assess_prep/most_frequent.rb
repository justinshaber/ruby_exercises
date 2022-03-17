# 8:49
# 9:17
# 28 minutes

=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.
=end

=begin
P: Given a string, return an array of the top three occurring words in descending order of the number of occurances.
  i: string
  o: array - containing top 3 words in descending order of occurance.
E+R:
  matches are case insensitive
  words in the results array should be downcase
  return an empty array if the string is empty
  wont =! won't
DS: scan, split, arrays, strings
Approach:
  Iterate through an array of uniq words, group them by their occurance in the string, sort the hash in descending order of occurance, and return the most occuring words.

Algo:
  DELETE chars ^A-Za-z\'\-'
  RETURN [] if the contains no a-z chars
  SPLIT the string into a UNIQ array of words
  INIT hash = GROUP the words in the array by occurance in text
  SORT hash by size in descending order of key size
  RETURN the correct # of items
    get an array of all the values, return the first 3

  INIT str_arr
  INIT str_arr_uniq
  GROUP the uniq array by occurances of the word in the array of total words
  
=end

def top_3_words(str)
  str = str.gsub(/[^A-Z a-z\'\-]/, '').downcase
  return [] if str.count("a-z") == 0

  str_arr = str.split(" ")
  str_arr_uniq = str_arr.uniq
  hash = str_arr_uniq.group_by { |word| str_arr.count(word) }
  hash = hash.sort_by { |k, v| -k }.to_h
  
  hash.values.flatten[0, 3]
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
