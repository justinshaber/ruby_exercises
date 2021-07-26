def stringy(size)
  result = []

  # (num / 2).times do
  #   result << 10
  # end
  # (num % 2).times do
  #   result << 1
  # end

  size.times do |digit|
    number = digit.even? ? 1 : 0
    result << number
  end

  result.join
end

puts stringy(0) == ''
puts stringy(1) == '1'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'