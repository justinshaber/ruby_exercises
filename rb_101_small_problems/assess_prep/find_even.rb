=begin
###problem###
Given an array of integers, write a method that finds the position of the array where
the sum of the integers to the left and to the right of the position are equal. The integer
at position N is not counted in the sum.

input - array of integers
output - index at position N where the sum of integers to the left and right are equal

###Examples/Rules###
An empty Array has sum 0
return -1 if no equal sums exist

###Data Structures###
Arrays


###algorithm###
Iterate over the array with index
For each iteration,
  take an array of integers to the left
    if the index is zero, left sum is 0
    using range array[0..num - 1]
  take an array of integers to the right
    using range N+1..
  compare the sum of each
  return the index of the current element if the sums are the same
  continue iteration if not

return -1
###code###
=end

def find_even_index(array)
  array.each_with_index do |elem, idx|
    left_arr = array[0..(idx-1)]
    left_arr = [] if idx == 0

    right_arr = array[(idx+1)..]

    return idx if left_arr.sum == right_arr.sum
  end

  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3