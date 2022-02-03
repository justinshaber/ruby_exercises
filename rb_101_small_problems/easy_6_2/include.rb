def include?(arr, obj)
  # arr << obj
  # arr != arr.uniq

  # arr.any? { |num| num == obj }

  # !!arr.index(obj)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false