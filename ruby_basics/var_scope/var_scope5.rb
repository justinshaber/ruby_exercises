#str[] mutates, str = is just assignment operator
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts "My guess:\nyzzyX"
puts a