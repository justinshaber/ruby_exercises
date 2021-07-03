pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets.select { |pet| pets.index(pet) > 1 }
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"
#can use my_pets = pets[2..3]

my_pets.pop
puts "I have a pet #{my_pets[0]}"

my_pets << pets[1]
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"