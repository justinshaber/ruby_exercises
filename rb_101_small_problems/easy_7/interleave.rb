def interleave(arr1, arr2)
  counter = 0
  new_array = []
  #----------------------Brute forcey solution
  # loop do
  #   break if counter == arr1.size
  #   new_array << arr1[counter]
  #   new_array << arr2[counter]
  #   counter +=1
  # end
  # new_array
  #----------------------Solution with method
  # arr1.each_with_index do |element, index|
  #   new_array << element << arr2[index]
  # end
  # new_array
  #----------------------Solution with zip
  new_array = arr1.zip(arr2).flatten

end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']