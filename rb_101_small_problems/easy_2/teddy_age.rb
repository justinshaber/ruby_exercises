def teddy_age(name)
  puts "What is your name?"
  name = gets.chomp

  name = "Teddy" if name.empty? 
  
  puts "#{name} is #{rand(20..200)} years old!"
end

teddy_age