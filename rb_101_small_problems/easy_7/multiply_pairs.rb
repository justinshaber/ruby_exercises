def multiply_all_pairs(arr1, arr2)
  arr1.map do |multiplier|
    arr2.map do |value|
      value * multiplier
    end
  end.flatten.sort
  #-------------Complex 1-liner
  arr1.product(arr2).map { |inner_arr| inner_arr.reduce(:*) }.sort
end
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]