#on my first guess I forgot to put in commas separating array values
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts "\nMy Guess:\n['abc', 'def', 'ghi,jkl', 'mno', 'pqr,stu', 'vwx', 'yz']"
puts s.split.inspect

puts "\nMy Guess:\n['abc def ghi', 'jkl mno pqr', 'stu vwx yz']"
puts s.split(',').inspect

puts "\nMy Guess:\n['abc def ghi', 'jkl mno pqr,stu vwx yz']"
puts s.split(',', 2).inspect