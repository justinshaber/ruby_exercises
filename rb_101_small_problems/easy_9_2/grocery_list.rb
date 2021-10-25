### PROBLEM ###
# write a method which takes an array of fruits with quantities
# and converts it to an array of the correct number of each fruit
### EXAMPLE ###
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
establish a new array
iterate over the array with each
  iterate over subarray
    -push the first item, x times into a new array
=end

# def buy_fruit(list)
#   basket = []

#   list.each do |item|
#     fruit, quantity = item
#     quantity.times { basket << fruit }
#   end

#   basket
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]