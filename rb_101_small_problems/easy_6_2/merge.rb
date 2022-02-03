# def merge(*arrays)
#   arrays.flatten.uniq
# end

# def merge(array1, array2)
#   array1 | array2
# end

def merge(*arrays)
  arrays.inject(:|)
end

p merge([1, 3, 5], [3, 6, 9], [1, 3]) == [1, 3, 5, 6, 9]