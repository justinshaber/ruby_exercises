def multisum(num)
  multiples = []

  1.upto(num) do |i|
    if i % 3 == 0 || i % 5 == 0
      multiples << i
    end
  end

  multiples.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20)
p multisum(1000) == 234168