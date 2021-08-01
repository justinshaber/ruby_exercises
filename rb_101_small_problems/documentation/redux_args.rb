require 'date'
puts "Today's date"
puts Date.civil
puts "First day of 2016"
puts Date.civil(2016)
puts "First day of May 2016"
puts Date.civil(2016, 5)
puts "May 13th 2016"
puts Date.civil(2016, 5, 13)

