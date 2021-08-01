# def multiply_list(arr1, arr2)
#   products = []
#   arr1.each_with_index do |element, index|
#     new_arr << element*arr2[index]
#   end
#   products
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |in_arr| in_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]