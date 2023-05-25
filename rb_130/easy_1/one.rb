=begin
Write a method called one? that behaves similarly for Arrays. It should take an Array as an argument, and a block. It should return true if the block returns true for exactly one of the element values. Otherwise, it should return false.

Your method should stop processing elements of the Array as soon as the block returns true a second time.

If the Array is empty, one? should return false, regardless of how the block is defined.

Your method may not use any standard ruby method that is named all?, any?, none?, or one?.
=end

def one?(arr)
  true_count = 0
  arr.each do |elem|
    true_count += 1 if yield(elem)
    return false if true_count > 1
  end
  true_count == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? } == true    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false    # -> false
p one?([2, 4, 6, 8]) { |value| value.even? } == false   # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true # -> true
p one?([1, 3, 5, 7]) { |value| true } == false         # -> false
p one?([1, 3, 5, 7]) { |value| false } == false         # -> false
p one?([]) { |value| true } == false                    # -> false