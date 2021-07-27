def power_to_n(x, n)
  if n == 1
    multiply(x,n)
  else
    multiply(x, power_to_n(x, (n-1)))
  end
end

def multiply(x, y)
  x * y
end

puts power_to_n(5, 4) == 5**4
puts power_to_n(-8, 4) == (-8)**4
puts power_to_n(2, 10) == 2**10