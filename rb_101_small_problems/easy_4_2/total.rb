=begin
Approach:

=end

def running_total(arr)
  # new_arr = []
  # arr.inject(0) do |sum, elem|
  #   new_arr << (sum += elem)
  #   sum
  # end
  # new_arr
# _______________
  # sum = 0
  # arr.map { |elem| sum += elem }
# _______________
  # arr.map.with_index { |elem, idx| arr[0..idx].sum }
# _______________
end

# This is a recursive solution that I did not come up with. It is brilliant!
# def running_total(arr)
#   return [] if arr.empty?

#   running_total(arr[0..-2]) + [arr[0..-1].sum]
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []