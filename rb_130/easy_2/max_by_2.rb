def max_by(arr)
  return nil if arr.empty?

  max_item = arr[0]
  max_value = yield(max_item)

  arr[1..-1].each do |item|
    current_value = yield(item)
    if current_value > max_value
      max_item = item
      max_value = current_value
    end
  end

  max_item
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil