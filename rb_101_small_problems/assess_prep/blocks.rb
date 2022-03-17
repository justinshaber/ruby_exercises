# 2:40
# 2:52
# 12 minutes

=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.
=end

=begin
P: All letters in the alpha are paired into 13 blocks. Given a string,
return true or false if the word can be spelled from the blocks. Each block can only be used once.
  i: string
  o: boolean - true if the word does not reuse any blocks, false otherwise
E+R:
  case senstive, put everything into one case
  A block may only be used once
D: arr
Approach:
  An array of 13 sub_strings - a string with two letters
  ITERATE over the substrings
    if the count of the set of chars in the string > 1
      return false
    true 
=end

def block_word?(str)
  str = str.upcase
  block_arr = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  block_arr.all? { |block| str.count(block) < 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true