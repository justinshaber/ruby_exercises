a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

puts "My guess: 7"

=begin
We define method `my_value` with one parameter `b`. Within the method definition we reassign the variable `b` to its value plus 10.
When my_value is called on line 7, we pass in the integer referenced by variable 'a'. Because integers are immutable, when we call `puts a` on line 9, the integer 7 is printed to the console.
=end