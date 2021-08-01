# def sum_of_sums(arr)
#   counter = 0
#   multiplier = arr.size
#   sum_sum = 0
#   loop do
#     sum_sum += (arr[counter] * multiplier)
#     break if multiplier == 1
#     counter += 1
#     multiplier -= 1
#   end
#   sum_sum
# end

def sum_of_sums(arr)
  sum_sum = 0
  (arr.size).times do |i|
    sum_sum += arr[0..i].sum
  end
  sum_sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35