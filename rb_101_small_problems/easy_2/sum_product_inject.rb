def sum(num)
  (1..num).inject { |sum, n| sum + n }
end

def product(num)
  (1..num).reduce(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

if action == 's'
  sum_result = sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum_result}."
elsif action == 'p'
  product_result = product(number)
  puts "The product of the integers between 1 and #{number} is #{product_result}."
else
  puts "Invalid response"
end