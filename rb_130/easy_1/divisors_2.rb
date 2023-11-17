def divisors(num)
  results = []
  return [1] if num == 1

  1.upto(Math.sqrt(num)) do |divisor|
    if num % divisor == 0
      results << num/divisor
      results << divisor
    end
  end

  results.sort
end

p divisors(1) == [1]
p divisors(2) == [1,2]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]
# p divisors(999962000357854) == [1, 2, 137, 274, 3649496351671, 7298992703342, 499981000178927, 999962000357854]