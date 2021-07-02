name = 'Roger'
string = 'RoGeR'
string2 = 'DAVE'

puts name.downcase == string.downcase
puts name.downcase == string2.downcase

puts "\n"
puts name.casecmp(string) == 0
puts 'Roger'.casecmp('DAVE') == 0


