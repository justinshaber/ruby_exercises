DIGITS = ("0".."9").to_a

def integer_to_string(num)
  num_str = ''

  loop do
    num_str.prepend(DIGITS[num % 10])
    num /= 10
    break if num == 0
  end

  num_str
end

def signed_integer_to_string(num)
  num_str = integer_to_string(num.abs)
  return "+" + num_str if num > 0
  return "-" + num_str if num < 0
  num_str
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'