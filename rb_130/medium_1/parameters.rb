items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*first, last|
#   puts first.join(', ') # apples, corn, cabbage
#   puts last # wheat
# end

# gather(items) do |first, *middle, last|
#   puts first
#   puts middle.join(', ')
#   puts last
# end

# gather(items) do |first, *last|
#   puts first
#   puts last.join(', ')
# end

gather(items) do |a, b, c, d|
  puts "#{a}, #{b}, #{c}, and #{d}"
end
