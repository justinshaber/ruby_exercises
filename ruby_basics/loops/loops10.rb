friends = ['Sarah', 'John', 'Hannah', 'Dave']

count = 0 

until count == friends.length
  puts "Hello, #{friends[count]}!"
  count += 1
end

#or more simply

for friend in friends
  puts "Hello, #{friend}!"
end