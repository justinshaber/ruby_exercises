def buy_fruit(arr)
  arr.map do |item_arr| #use |fruit, quantity| to get variable directly
    full_list = []
    fruit, quantity = item_arr[0], item_arr[1]

    quantity.times { full_list << fruit }
    
    full_list
  end.flatten

  arr.map { |fruit, quantity| [fruit] * quantity }.flatten 
    # ["hello"] * 3 => ["hello", "hello", "hello"]
    # "hello" * 3 => "hellohellohello" 
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]