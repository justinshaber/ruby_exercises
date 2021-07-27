array = []

def greeting(arr)
  numbers = %w(1st 2nd 3rd 4th 5th)
  5.times do |x|
    puts "Enter the #{numbers[x]} number"

    response = gets.chomp.to_i
    arr << response
  end
end

greeting(array)

puts "Enter the last number: "
last_num = gets.chomp.to_i

yes_or_no = array.include?(last_num) ? "appears" : "does not appear"

puts "The number #{last_num} #{yes_or_no} in #{array}"