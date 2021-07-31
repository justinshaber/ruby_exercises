def reverse(arr)
  # arr.sort{ |a, b| arr.index(b) <=> arr.index(a) }
  #-------------------------Brute force-y
  # new_arr = []
  # counter = (arr.size - 1)
  # until counter < 0
  #   new_arr << arr[counter]
  #   counter -= 1
  # end

  # new_arr
  #-------------------------Third way I found
  new_arr = []
  arr.each { |element| new_arr.unshift(element) }
  new_arr
  #-------------------------Attempty with #inject
  arr.inject([], :unshift)
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true