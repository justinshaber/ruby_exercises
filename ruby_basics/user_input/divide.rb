def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = nil
denominator = nil

loop do
  puts ">>Please enter a numerator"
  numerator = gets.chomp
  if valid_number?(numerator)
    numerator = numerator.to_i
    break
  else
    puts ">>Invalid input. Only integers allowed."
  end
end


loop do
  puts ">>Please enter a denominator"
  denominator = gets.chomp
  if valid_number?(denominator)
    denominator = denominator.to_i
    if denominator == 0
      puts ">> Invalid input. A denominator of 0 is not allowed."
      next
    else
      break
    end
  else
    puts ">>Invalid input. Only integers allowed."
  end
end

puts "#{numerator} / #{denominator} is #{numerator / denominator}"
