# 10:59
# 11:23
# 24 mins

=begin
Write a method that takes a string as an argument and groups the number of time each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=end

=begin
P: Given a string, write a method that groups the characters alphabetically by count in a hash. The hash should be sorted by occurance high to low
  i: string
  o: a hash with keys sorted high to low
    key - number of occurences
    value - an array the character that occurs that number of times
E+R:
  Hash is sorted high to low
  characters are sorted alphabetically within array value
  case insenstive, special characters
Approach
  Iterate through the string, collect the information in a hash, then sort the keys and the values in the hash

Algo:
  clean the string
  GSUB anything that is not A-Za-z0-9
  DOWNCASE the string
  INIT an array of UNIQ chars and SORT by occurance high to low
  
  INIT a hash default value as an array
  
  ITERATE through array of UNIQ chars
    create a k-v pair in hash
      k - the occurance of the char in the string
      v - an array, push char into it

  ITERATE through the value arrays
    SORT them alphabetically
    EACH_VALUE
      reassign the array
  RETURN hash
=end

def get_char_count(str)
  str = str.gsub(/[^A-Za-z0-9]/, '').downcase
  uniq_chars = str.chars.uniq
  uniq_chars.sort! do |a, b|
    str.count(b) <=> str.count(a)
  end

  # hash = Hash.new([])
  # uniq_chars.each do |char|
  #   hash[str.count(char)] += [char]
  # end

  # hash.each_pair do |key, val|
  #   hash[key] = val.sort
  # end

  # hash.map { |k,v| [k, v.sort] }.to_h

  p str.chars.group_by(&:itself)
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}