def sum(num)
  str = num.to_s.chars
  sum = str.map(&:to_i).sum

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45