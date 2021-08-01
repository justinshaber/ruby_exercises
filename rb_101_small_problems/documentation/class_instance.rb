
# File::path
#   class method that returns string representation of the path
# File#path
#   instance method that returns file name


p File.path("/dev/null") # calls File::path

f = File.new('my-file.txt') # calls File#path
puts f.path