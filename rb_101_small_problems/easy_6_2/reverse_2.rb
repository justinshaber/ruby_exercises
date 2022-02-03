=begin
  return a new array with all the values reversed. Do not modify the original array.

  input: Array
  output: new array with values reversed


=end

def reverse(arr)
  # arr.sort { 1 }
  ###########################
  # arr.sort_by.with_index { |_, idx| -idx }
  ###########################
  # arr.each_with_object([]) { |elem, new_arr| new_arr.unshift(elem) }
  ###########################
  # new_arr = []

  # first = 0
  # last = -1

  # until new_arr.size == arr.size
  #   new_arr[first] = arr[last]
  #   first += 1
  #   last -= 1
  # end

  # new_arr
  ###########################
  # arr.inject([], :unshift)

  ###########################
  # WRONG WRONG WRONG WRONG WRONG
  ###########################

  # arr.sort{ |a, b| arr.index(b) <=> arr.index(a) }

  # arr.sort do |a,b|
  #   arr.index(b) <=> arr.index(a)
  # end

  # arr.sort { |a, b| arr.index(b) <=> arr.index(a) }

  # arr.sort_by do |element|
  #   -arr.index(element)
  # end
  
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

p list = %w(a e b e d c)
p new_list = reverse(list)
# p reverse(list) == %w(c d e b e a) # true
# p list.object_id != new_list.object_id
# p list ==  %w(a e b e d c)# true
# p new_list == %w(c d e b e a)