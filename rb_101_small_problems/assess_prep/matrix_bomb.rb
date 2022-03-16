# 1:53
# 2:05
# 12 mins

=begin
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.
=end

=begin
P: Given a 2d square made up of arrays, return the location of the 1
  i: an array - made up of sub_arrays
  o: array - [x,x]
    first elem: the row that the one is in
    second elem: the column
E+R:
  Only one 1
  Rows and columns are zero based
D: A
Approach
  row - index of the sub_array which contains the 1 within the passed arr
  column - index of the 1 within the sub_array

  INIT row, column = 0
  ITERATE through passed arr WITH INDEX
    for each sub_array
      next if it does not contain a 1 
      row = index
      column = index of the 1 within sub_array
      return [row, column]
=end

def mineLocation(arr)
  arr.each_with_index do |sub_arr, idx|
    next if sub_arr.sum == 0
    return [idx, sub_arr.index(1)]
  end
end



p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]