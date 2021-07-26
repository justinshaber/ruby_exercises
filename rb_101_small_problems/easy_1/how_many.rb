def count_occurrences(array)
  array.map! { |item| item.downcase }
  array.uniq.each do |vehicle|
    puts "#{vehicle} => #{array.count(vehicle)}"
  end
end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)