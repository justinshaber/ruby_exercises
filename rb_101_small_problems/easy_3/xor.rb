def xor?(x, y)
  !(x && y || !x && !y) # my solution. harder to read.
  # return true if value1 && !value2
  # return true if value2 && !value1
  # false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false