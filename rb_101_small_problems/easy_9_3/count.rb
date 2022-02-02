def sequence(num)
  # (1..num).to_a

  # (1..num).inject([], :push)

  (1..num).each_with_object([]) { |int, arr| arr << int }


  # arr = []
  # 1.upto(num) { |int| arr << int }
  # arr

end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]