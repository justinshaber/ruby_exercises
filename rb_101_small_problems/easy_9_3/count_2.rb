=begin
problem: given two integer arguments, count and first, return an array with:
count number of elements, with each element being a multiple of the starting number

iterate count times with index
  multiply each index by count


=end

  # arr = []
  
  # 1.upto(count) do |multiplier|
  #   arr << first * multiplier
  # end

  # arr
##############
  # (1..count).each_with_object([]) do |mult, arr|
  #   arr << first * mult
  # end
##############


def sequence(count, first)
  p (1..count).map { |num| num * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []