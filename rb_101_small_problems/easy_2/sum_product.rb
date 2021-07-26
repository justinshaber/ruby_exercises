puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

sum_result = 0
product_result = 1

if action == 's'
  1.upto(num) { |i| sum_result += i }
  puts "The sum of the integers between 1 and #{num} is #{sum_result}."
elsif action == 'p'
  1.upto(num) { |i| product_result *= i }
  puts "The product of the integers between 1 and #{num} is #{product_result}."
else
  puts "Invalid response"
end