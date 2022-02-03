
def multiply_list(arr1, arr2)
  # counter = 0
  # new_arr = []

  # until counter == arr1.size
  #   new_arr << arr1[counter] * arr2[counter]

  #   counter += 1
  # end

  # new_arr

  # arr1.each_with_index.with_object([]) do |(num, idx), new_arr|
  #   new_arr << num * arr2[idx]
  # end
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]