=begin
  P: given a year greater than zero, return true or false depending on if it is a leap year
    i: year greater than 0
    o: boolean
  E+R:
    If the year is divisible by 4 it is a leap year
    UNLESS it is also divisble by 100
      In which case it it only a leap year if it also divisible by 400
  Algo:
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          return true
        else
          return false
        end
      end
      return true
    end
    false
=end

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  year % 4 == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true