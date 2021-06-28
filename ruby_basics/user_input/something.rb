#second attempt
#follows a formula: use a loop until we solicit input, then exit only
#when we have a valid response

choice = ""
puts ">>Do you want me to print something? (y/n)"

loop do
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts ">> Invalid input! Please enter y or n"
end

puts "something" if choice == 'y'

#this was my first attempt

=begin
 loop do 
  puts ">>Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase

  if answer == 'y' 
    puts "something"
    break
  elsif answer == 'n'
    break
  else
    "Invalid input! Please enter y or n"
  end
end
=end