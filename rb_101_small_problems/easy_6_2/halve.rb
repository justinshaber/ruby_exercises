def halvsies(arr)
  # half = (arr.size / 2.0).round
  # [arr[0, half], arr[half..]]
  ##############################
  arr.partition.with_index { |_, idx| idx < arr.size / 2.0 }
end

p halvsies([4, 4, 1, 2, 3, 4]) == [[4, 4, 1], [2, 3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]