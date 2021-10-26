# def sum_of_sums(array)
#   multiplier = array.size
#   sum = 0
#   array.each do |num|
#     sum += num * multiplier
#     multiplier -= 1
#   end
#   sum
# end

# def sum_of_sums(array)
#   sum = 0
#   accumulator = 0

#   array.each do |num|
#     accumulator += num
#     sum += accumulator
#   end
#   sum
# end

def sum_of_sums(array)
  sum = 0
  1.upto(array.size) do |count|
    sum += array.slice(0,count).reduce(:+)
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35