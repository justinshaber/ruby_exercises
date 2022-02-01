=begin
  problem: Given a hash and an array, write a method that takes information from each and outputs a greeting

  join the elements in the arr

=end

def greetings(arr, hash)
  full_name = arr.join(" ")
  full_title = hash.first[1] + " " + hash.fetch(:occupation)
  
  puts "Hello, #{full_name}! Nice to have a #{full_title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.