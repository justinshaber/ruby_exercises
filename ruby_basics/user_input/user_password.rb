REAL_NAME = "Waldo"
REAL_PASS = "HelloOo"

loop do
  puts ">>Please enter your username:"
  name = gets.chomp

  puts ">>Please enter your password:"
  password = gets.chomp

  break if password == REAL_PASS && name == REAL_NAME
  puts ">>Authorization Failed!"
end

puts "Welcome!"