puts ">> How many output lines do you want? Enter a number >= 3:"
count = gets.chomp.to_i

loop do
  break if count >= 3
  puts ">> That's not enough lines."
  count = gets.chomp.to_i
end

count.times do
  puts "Launch School is the best!"
end
