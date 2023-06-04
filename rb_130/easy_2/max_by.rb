def max_by(arr)
  max_block_value = nil
  max_elem = nil

  arr.each do |elem|
    return_value = yield(elem)
    if max_block_value.nil? || return_value > max_block_value
      max_block_value = return_value
      max_elem = elem
    end
  end
  max_elem
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil