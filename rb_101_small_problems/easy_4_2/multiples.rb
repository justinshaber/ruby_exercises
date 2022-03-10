def multisum(num)
  # sum = 0

  # 1.upto(num) do |i|
  #   sum += i if i % 3 == 0 || i % 5 == 0
  # end

  # sum

  (1..num).inject(0) do |sum, elem|
    elem % 3 == 0 || elem % 5 == 0 ? sum += elem : sum
  end
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168