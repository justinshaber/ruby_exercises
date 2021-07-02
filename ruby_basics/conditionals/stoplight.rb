puts stoplight = ['green', 'yellow', 'red'].sample

=begin
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
=end

case stoplight
when 'green'  then puts 'Go!' 
when 'yellow' then puts 'Slow down!' 
else               puts 'Stop!' 
end

=begin
if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slowdown!'
else
  puts 'Stop!'
end
=end