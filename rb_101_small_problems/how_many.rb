def count_occurrences(array)
  array.uniq.each do |vehicle|
    puts "#{vehicle} => #{array.count(vehicle)}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)