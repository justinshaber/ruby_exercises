# Problem: 
#   write method that takes an Array of numbers
#   return an array with same number of elements
#   each element is the total of the previous original array elements

# INPUT: array
# OUTPUT: array

def running_total(array)
  new_array = []
  # -------------------Initial solution
  # i = 0
  # sum = 0
  
  # while i < array.size
  #   sum += array[i]
  #   new_array << sum
  #   i += 1
  # end
  # -------------------Attempt with inject
  array.inject(0) do |memo, num| 
    new_array << memo + num
    memo + num                  
  end

  new_array
  # -------------------Simple solution
  # sum = 0
  # array.map{ |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# p running_total([2, 5, 13])
# p running_total([14, 11, 7, 15, 20])
# p running_total([3])
# p running_total([])