def buy_fruit(list)
  list.each_with_object([]) do |sub_list, results|
    item, count = sub_list
    count.times { results << item }
  end

  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]