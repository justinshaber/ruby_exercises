# You are given array of integers, your task will be to count all pairs in that array and return their count.

# Notes:

# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# ...because there are 2 pairs: 2 and 5

# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
# ...because there are 4 pairs: 2, 20, 6 and 2 (again)

=begin
PROBLEM: Count all the pairs in an array

i: An array of integers
o: an integer representing the number of pairs in the array

examples/extras

[1,1,1, 1] is two pairs.
[1, 1, 1] is one pair.
[] or [n] == 0

Data Structures
Array
Hash

Algorithm:
Initialize a pair counter 
Make an array of uniq values
Iterate over the array of uniq values
get the count of each uniq value in the given array

If the count is a multiple of 2
  diviser, remainder = count.divmod(2)
  if remainder is 0, increase pair counter by diviser
    increase the pair counter by the multiple (4 => 2, 3 => 1, 2 => 1, 6 => 3)

=end

def pairs(arr)
  pair_counter = 0
  uniq_vals = arr.uniq
  
  uniq_vals.each do |uniq_num|
    count = arr.count(uniq_num)
    diviser = count / 2
    
    pair_counter += diviser
  end
  
  pair_counter
end