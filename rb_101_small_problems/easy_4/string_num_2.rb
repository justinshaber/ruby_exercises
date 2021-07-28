
NUMBERS = {
  "0": 0, "1": 1, "2": 2, "3": 3, "4": 4,
  "5": 5, "6": 6, "7": 7, "8": 8, "9": 9,
}

def string_to_integer(str)
  str = str.chars.map { |str_num| NUMBERS[str_num.to_sym] }
  str.inject {|memo, num| memo*10 + num}
end

def string_to_signed_integer(str)
  sign = str[0] == "-" ? -1 : 1
  str = str.delete("+-")
  string_to_integer(str) * sign
end

# def string_to_signed_integer(str)
#   str = str.chars

#   sign = ''
#   if str[0] == '+' || str[0] == '-'
#     sign = str.shift
#   end

#   str = str.map { |str_num| NUMBERS[str_num.to_sym] }
#   str = str.inject {|memo, num| memo*10 + num}

#   sign == "-" ? -str : str

# end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100



