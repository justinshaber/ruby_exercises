# def halvsies(arr)
#   arr1 = []
#   loop do
#     break if arr.empty?
#     arr1 << arr.shift
#     break if arr1.size >= arr.size
#   end

#   [arr1, arr]
# end

# Doesn't mutate. Better solution
# def halvsies(arr)
#   middle = (arr.size / 2.0).ceil
#   first = arr.slice(0, middle)
#   second = arr.slice(middle..)
#   [first, second]
# end

# Another solution...so pretty!!
def halvsies(arr)
  arr.partition do |element|
    arr.index(element) < (arr.size / 2.0).ceil
  end
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]