def rotate_array(arr)
  new_arr = arr.map { |item| item }

  temp = new_arr.shift
  new_arr.push(temp)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p x
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x
p x == [1, 2, 3, 4]                 # => true