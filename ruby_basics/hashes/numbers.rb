numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k,v|
  puts "A #{k} number is #{v}."
end
puts "\n"

half_numbers = numbers.map { |key,num| num / 2 }
p half_numbers
puts "\n"

low_numbers = numbers.select { |k,v| v < 25 }
p low_numbers


