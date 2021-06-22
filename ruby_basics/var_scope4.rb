#WRONG. Numbers are not mutable, strings are. Especially using string[]
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts "My guess\nXyzzy"
puts a