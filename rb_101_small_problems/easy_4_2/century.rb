=begin
  P: Given a year, return the century with proper numerical endings st, nd, rd, or th
    i: integer - a year 2010
    o: string - the century "21st"
  E+R:
    A century starts at 01 - 1901...2000 is the 20th century
    5...1st century
    11200...112th century
    11201...113th century
  D:
  Approach:
    Get the century
      Divmod by 100
        century is the divisor (+1 if there is a remainder)
    Add the appropriate ending
      case statement
        If the if the second to last digit is a 1...it ends in 'th'
        ends in 1...'st'
        ends in 2...'nd'
        ends in 3...'rd'
        else     ...'th'
  Algo:
    century, remainder is year divmod 100
      add 1 to century unless remainder == 0
      CONVERT to string
    if the [-2] character is 1
      append 'th' to century
    elsif 
=end

def century(year)
  century, remainder = year.divmod(100)
  century += 1 unless remainder == 0
  century = century.to_s

  if century[-2] == "1"
    century << 'th'
  else
    case century[-1]
      when '1' then century << 'st' 
      when '2' then century << 'nd' 
      when '3' then century << 'rd'
      else          century << 'th'
    end
  end

  century
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'