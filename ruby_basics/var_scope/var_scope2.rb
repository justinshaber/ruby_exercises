#I got this wrong. Need to revisit this.
a = 7

def my_value(a)
  a += 10
end

puts my_value(a)
puts "My guess:\n17"
puts a

#answer: 7
#after review, I understant that the variable defined in the method
#is not the same as the global variable, despite the same name