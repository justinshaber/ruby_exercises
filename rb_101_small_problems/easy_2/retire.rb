puts "How old are you?"
age = gets.chomp.to_i

puts "At what age do you want to retire?"
retirement = gets.chomp.to_i

current_year = Time.now.year
work_left = retirement - age
retire_year = current_year + work_left

puts "It's #{current_year}. You will retire in #{retire_year}"
puts "You have only #{work_left} years of work to go!"