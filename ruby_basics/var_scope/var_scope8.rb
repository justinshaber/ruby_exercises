array = [1, 2, 3]

array.each do |element|
  a = element
end

puts "my guess\n3"
puts a

#Actual answer - throws an error
#variable declaration within a block does not have global scope