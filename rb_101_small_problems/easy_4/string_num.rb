
# PROBLEM: convert a string to a number with using to_i or Integer

# INPUT: string
# OUTPUT: integer

# ALGORITHM - store k,v of 0-9 in a hash
# turn the string into an array of individual string chars
# replace each string char with it's integer
# concat the items in the array

NUMBERS = {
  "0": 0, "1": 1, "2": 2, "3": 3, "4": 4,
  "5": 5, "6": 6, "7": 7, "8": 8, "9": 9,
  "A": 10, "B": 11, "C": 12, "D": 13, "E": 14, "F": 15
}

def string_to_integer(str)
  str = str.chars.map { |str_num| NUMBERS[str_num.to_sym] }
  str.inject {|memo, num| memo*10 + num}
end

def hex_to_i(str)
  str = str.upcase.chars.map { |str_num| NUMBERS[str_num.to_sym] }
  sum = 0
  str.reverse.each_with_index do |num, index|
    sum += num*(16**index)
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p hex_to_i('4D9f') == 19871
p hex_to_i('37') == 55
p hex_to_i('F74C6') == 1_012_934



