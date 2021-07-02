#this was my first try. It's way more complicated than the given solution
#however mine is more functional!

response = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def valid_string?(string)
  string.to_s == string
end

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    response = gets.chomp

    if valid_number?(response)
      response = response.to_i
      break if response >= 3
      puts ">> That's not enough lines."
    elsif valid_string?(response)
      break if response.downcase == 'q'
      puts ">>invalid response"
    end
  end

  response = response.to_s

  if valid_number?(response)
    response = response.to_i
    while response > 0
      puts 'Launch School is the best!'
      response -= 1
    end
  else
    break
  end

end