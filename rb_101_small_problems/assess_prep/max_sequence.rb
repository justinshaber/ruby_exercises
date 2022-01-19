=begin
###problem###
Find the maximum sum of consecutive integers in an array of integers
Return 0 if the array is only negative numbers or is empty

input - an array of integers
output - an integer representing the max sum of consectutive integers or 0

###Examples###
p max_seq([]) == 0
p max_seq([11]) == 11
p max_seq([-32]) == 0
p max_seq([2, 1, 3, -4, 1, 2, 1, 5, 4]) == 23
p max_seq([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_seq([-2, 1, -7, 4, -10, 2, 1, 5, 4) == 12

###Data Structures###
Arrays

###algorithm###
Return 0 if the array is empty
Return the sum of the array if all integers are positive
Initialize a max number to 0
Starting with the first element in the array, get the sum of the first n elements
  for each sum, compare to the current max, and reassign to new max if higher
Then start with the second element in the array, so on and so on
Return max sum when done

###code###


=end

def max_seq(array)
  max_sum = 0

  0.upto(array.size - 1) do |start_elem|
    sub_arr = array[start_elem..]
    0.upto(sub_arr.size) do |consectutive_ints|
      current_sum = sub_arr[0..consectutive_ints].sum
      max_sum = current_sum if current_sum > max_sum
    end
  end

  max_sum
end

p max_seq([]) == 0
p max_seq([11]) == 11
p max_seq([-32]) == 0
p max_seq([2, 1, 3, 4, 1, 2, 1, 5, 4]) == 23
p max_seq([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_seq([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12