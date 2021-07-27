array = []

def get_numbers(arr)
  numbers = %w(1st 2nd)
  2.times do |x|
    puts "Enter the #{numbers[x]} number:"

    response = gets.chomp.to_f
    arr << response
  end
end

get_numbers(array)

num1 = array[0]
num2 = array[1]

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"