def century(year)
  result = year % 10 == 0 ? (year/100) : ((year/100) + 1) 
  add_suffix(result)
end

def add_suffix(century)
  if (11..13) === century
    return century.to_s << "th"
  end

  if century > 100
    if (11..13) === century % 100
      return century.to_s << "th"
    end
  end

  case century % 10
    when 1
      century.to_s << "st"
    when 2
      century.to_s << "nd"
    when 3
      century.to_s << "rd"
    else
      century.to_s << "th"
  end
end


p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
p century(101213)
puts
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
