# Attempt: 1
# Start:  4:50
# End:    5:11
# Time:   21 minutes

=begin
PROBLEM:
Write my own bubble sort method that sorts a given array in place

input: array of integers or string
output: the SAME array, sorted low to high

Examples | Rules
- Bubble sort iterates through an array comparing each element to the following element
  - If the first element is greater than the secone, a swap is made
- Iteration continues until a full pass is made with no swaps
- In this example, the array must sorted in place

Data Structures
Arrays

Algorithm

loop do
  set a swap switch to false

  Iterate from 0 to array.size - 1
    - for each iteration compare array[n] and array[n+1]
    - if array[n] is greater
      - flip swap switch to true
      - array[n], array[n+1] = [n+1, n]

  if swap switch is false, return the array

  ##Optimization - after each pass, it is no longer necessary to check the last index
    because the largest will be there
=end

def bubble_sort!(array)
  n = array.size
  loop do
    swap_switch = false

    0.upto(n - 2) do |idx|
      if array[idx] > array[idx+1]
        array[idx], array[idx+1] = array[idx+1], array[idx]
        swap_switch = true
      end
    end
    
    n -= 1
    break unless swap_switch
  end
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)