items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

# gather(items) { |items| puts "#{items.join(', ')}" }
# gather(items) { |items| puts "#{items.join('/')}" }

# gather(items) do |*first_items, last |
#   puts "#{first_items.join(', ')}"
#   puts last
# end

# gather(items) do | first, *middle_items, last |
#   puts first
#   puts "#{middle_items.join(', ')}"
#   puts last
# end

# gather(items) do | first, *last_items |
#   puts first
#   puts "#{last_items.join(', ')}"
# end

gather(items) do | first, second, third, fourth |
  puts "#{first}, #{second}, #{third} and #{fourth}"
end