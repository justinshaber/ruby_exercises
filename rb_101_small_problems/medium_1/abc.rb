# Attempt: 1
# Start:  3:08
# End:    3:33
# Time:   25 minutes
=begin
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

B X D C N G R F J H V L Z
O K Q P A T E S W U I Y M

PROBLEM:
Write a method that returns true if the given word only uses a given block once, false if otherwise.

i: a string
o: boolean
-true if the word can be formed with each block being used only once
-false if any block is used more than once

EXAMPLES RULES
A block can only be used once.
A block can not be used twice.
case doesn't matter

Data Structures
Arrays

ALGORITHM:
Create two arrays, splitting the left and right sides of the blocks
Turn the string into an array of cased characters
  turn each letter into the index within the array
See if there are multiple of any numbers using uniq
=end

# LEFT = %w(B X D C N G R F J H V L Z)
# RIGHT = %w(O K Q P A T E S W U I Y M)

# def block_word?(string)
#   mapped_arr = string.upcase.chars.map do |letter|
#     LEFT.include?(letter) ? LEFT.index(letter) : RIGHT.index(letter)
#   end

#   mapped_arr == mapped_arr.uniq
# end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  string = string.upcase

  BLOCKS.none? { |block| string.count(block) >= 2 }
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('play') == false
p block_word?('PELOTA') == true
p block_word?('SPAZM') == false