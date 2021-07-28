def integer_to_string(num)
  arr = []

  loop do
    num, remainder = num.divmod(10)
    arr.unshift(remainder)
    break if num == 0
  end

  arr.join
end

def signed_integer_to_string(num)
  result = integer_to_string(num.abs)

  case num <=> 0
  when -1 then "-" + result
  when 1 then "+" + result
  else result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'