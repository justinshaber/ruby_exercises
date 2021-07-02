sun = ['visible', 'hidden'].sample

=begin
if sun == 'visible'
  puts sun
  puts "The sun is so bright!"
else
  puts sun
  puts "The sun is gone!"
end
=end
puts sun
puts "The clouds are blocking the sun!" unless sun == 'visible'
puts "The sun is so bright!" if sun == 'visible'