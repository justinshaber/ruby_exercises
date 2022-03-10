NUMS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(str)
  exponent = str.size - 1
  sum = 0

  str.each_char do |char|
    num = NUMS.index(char)
    sum += num * (10**exponent)
    exponent -= 1
  end

  sum
end

def string_to_signed_integer(str)
  str.prepend("+") if str[0] =~ /[0-9]/
  number = string_to_integer(str[1..])
  str[0] == "-" ? -number : number
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100