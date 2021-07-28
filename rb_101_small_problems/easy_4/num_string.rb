#--------------------My first attempt
# def num_size(input)
#   output = 1
#   while input - (10**output) > 0
#     output += 1
#   end
#   output
# end

# def integer_to_string(num)
#   arr = []

#   num_size(num).times do |exp|
#     arr << num / (10**exp) % 10
#   end

#   arr.reverse.join
# end

#-------------------------------Second attempt
def integer_to_string(num)
  arr = []

  loop do
    num, remainder = num.divmod(10)
    arr.unshift(remainder)
    break if num == 0
  end

  arr.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'