loop do
  puts 'Just keep printing...'
  break
end

loop do
  number = rand(100)
  puts number
  break if number <= 10
end
