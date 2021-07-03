require 'pry'
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    return input.to_i if valid_number?(input)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

number1 = nil
number2 = nil

loop do
  number1 = read_number
  number2 = read_number
  break if number1 * number2 < 0
  puts ">> Sorry. One integer must be positive, one must be negative.\n>> Please start over."
end

sum = number1 + number2

puts "#{number1} + #{number2} = #{sum}"

