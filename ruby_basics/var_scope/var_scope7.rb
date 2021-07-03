a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts "my guess\n7"
puts a

#After review - method invocation is not the same as method definition!
#Method definition restrics local variable scope
#Method invocation with a block has more open variable scope