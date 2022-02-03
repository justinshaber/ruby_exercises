def interleave(arr1, arr2)
  # counter = 0
  # new_arr = []

  # until counter == arr1.size
  #   new_arr << arr1[counter]
  #   new_arr << arr2[counter]

  #   counter += 1
  # end

  # new_arr
  ###########################
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']