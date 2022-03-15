=begin
P: Reverse an array without using the built in reverse method
  i: array
  o: array (new and self) reversed
E+R:
Cannot use Array#reverse
%w(a b c d e f g) == %w(g f e d c b a)
DS: Array
Approach
Inplace
  INIT head to 0
  INIT tail to arr.size - 1
  LOOP (arr.size / 2) TIMES
    arr[head], arr[tail] = arr[tail], arr[head]
    head += 1
    tail -= 1
  RETURN arr

New array
  iterate through the array with object
    unshift each object
=end

def reverse(arr)
####IN PLACE
# head = 0
# tail = arr.size - 1

# (arr.size / 2).times do
#   arr[head], arr[tail] = arr[tail], arr[head]
#   head += 1
#   tail -= 1
# end
# arr

####RETURN A NEW ARRAY
arr.each_with_object([]) do |i, new_arr|
  new_arr.unshift(i)
end
end

p reverse(%w(a b c d e f g)) #== %w(g f e d c b a)
p reverse(%w(a b c d e f)) #== %w(f e d c b a)

