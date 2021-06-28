REAL_PASS = "HelloOo"

loop do
  puts ">>Please enter your password:"
  password = gets.chomp
  break if password == REAL_PASS
  puts ">>Invalid Password!"
end

puts "Welcome!"