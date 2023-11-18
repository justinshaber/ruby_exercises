# def zip(arr1, arr2)
#   index = 0
#   results = []

#   while index < arr1.size
#     results << [arr1[index], arr2[index]]
#     index += 1
#   end

#   results
# end

def zip(arr1, arr2)
  arr1.each_with_index.with_object([]) do |(item, idx), result|
    result << [item, arr2[idx]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]