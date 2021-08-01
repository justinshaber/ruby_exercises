def sequence(num)
  return (1..num).to_a if num >=0
  (1..num.abs).to_a.map { |num| -num }
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)
p sequence(-3) 
p sequence(-1) 