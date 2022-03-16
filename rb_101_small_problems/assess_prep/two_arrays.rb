# 10:39
# 10:49
# 10 mins

=begin
Complete the function that accepts two integer arrays of equal length compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2
=end

=begin
P: Given to arrays of integers, iterate through both, manipulate elements at the same index
  - get the difference
  - get the absolute value
  - square it
  - put this number in a new array
  - get the average of all the numbers in the new array
  i: two arrays of equal length
  o: an integer - the average of the numbers in the new array

E+R:
  The answer should show a single decimal point if it not a whole number
D: Arrays
Approach
  INIT results_arr
  ITERATE over arr1 WITH INDEX
    DIFFERENCE of numbers at index in both passed arrays
    ABS
    SQUARE
    PUSH this number into results_arr
  AVG of results_arr
    sum / arr.size
  FORMAT
=end

def solution(arr1, arr2)
  results_arr = []

  arr1.each_with_index do |el, idx|
    results_arr << ((arr1[idx] - arr2[idx]).abs)**2
  end

  average = results_arr.sum / (results_arr.size * 1.0)
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
