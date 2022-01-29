# Attempt: 1
# Start:  
# End:    
# Time:    minutes

=begin
PROBLEM: Write a program that determines how many Friday the 13ths, occur in a given year

i: integer, a year
o: integer, the number of Friday the 13ths

Data Structures
???

ALgorithm:
Initialize a friday_13th to 0
Iterate from 1 to 12, representing the months
  for each month, call Time.local(year, month, 13).friday?
    increment the counter if so

return the counter

Iterate from 2000 to 2050
    for each year 
      Initialize a friday_13th to 0
      Iterate from 1 to 12, representing the months
        for each month, call Time.local(year, month, 13).friday?
          increment the counter if so
    output the stats for that year
=end

def find_fridays(year)
  friday_13th = 0

  1.upto(12) do |month|
    friday_13th += 1 if Time.local(year, month, 13).friday?
  end

  friday_13th
end

def friday_13th(year = 2000)
  num_friday_13 = []

  year.upto(3000) do |year|
    num_friday_13 << find_fridays(year)
    
      # puts "In #{year} there will be #{find_fridays(year)} friday the 13ths"
    
  end

  [1, 2, 3].each do |num|
    puts "#{num} : #{num_friday_13.count(num)}"
  end
  
end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
friday_13th
