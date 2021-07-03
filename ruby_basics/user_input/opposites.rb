require 'pry'
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
integer1 = nil
integer2 = nil
#can create a method instead of repeating nested loops
loop do
  loop do
    puts ">> Please enter a positive or negative integer:"
    integer1 = gets.chomp
    if valid_number?(integer1)
      integer1 = integer1.to_i
      break
    end
    puts ">> Invalid input. Only non-zero integers are allowed." 
  end

  loop do
    puts ">> Please enter a positive or negative integer:"
    integer2 = gets.chomp

    if valid_number?(integer2)
      integer2 = integer2.to_i
      break
    end
    puts ">> Invalid input. Only non-zero integers are allowed."
  end

#break if (integer1 > 0 || integer2 > 0) && (integer1 < 0 || integer2 < 0)
break if integer1 * integer2 < 0
puts ">> Sorry. One integer must be positive, one must be negative.\n>> Please start over."
end

sum = integer1 + integer2

puts "#{integer1} + #{integer2} = #{sum}"

