def multiply_all_pairs(arr1, arr2)
  arr1.each_with_object([]) do |num, results|
    arr2.each { |num2| results << num * num2 }
  end.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]