=begin
https://launchschool.com/exercises/383b2769 is an exercise in 'pass by reference value'
I understand what that any destructive changes to an object will also affect any references to the object.

To avoid this I have two solutions:
1. Don't use destructive methods unless I am aware of what I am modifiying.
2. Create a true copy by value using 'dup', '::new', or something similar.

My question is: Is there a better standard for dealing with alterations to an object without it affecting other references to the object? 
=end

# ----------------------------

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []

# array1.each { |value| array2 << value.dup }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

# p array1
# p array2

# ---------------------------

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each do |value|
  if value.start_with?('C', 'S')
    array2 << value.upcase
  else
    array2 << value
  end
end

p array1
p array2
