=begin
P: Given an integer, return the time of day in HH:MM. The integer represents the number of minutes
before or after midnight.
  i: integer
  o: "hh:mm" string
E:
  If the integer is 3...3 minutes after midnight => 00:03
  If the integer is -3...3 minutes before midnight => 11:57
  If the integer is 1500...1500 minutes after midnight => 01:00
  -1500...
  1237...
Approach
  Get the minutes under 1440 (b/c it just repeats after 1440)
  Divmod to get the hh and mm
    If it's negative...subtract the divisor by 24.
  Convert to proper format
ALGO
  hours, mins = INT % 1440.divmod(60)
  if the argument is < 0
    subtract from 24
  return an interpolated string
=end

MIN_PER_DAY = 1440
MIN_PER_HOUR = 60

def time_of_day(int)
  int += MIN_PER_DAY while int < 0
  hours, mins = (int % MIN_PER_DAY).divmod(MIN_PER_HOUR)
  format("%02d:%02d", hours, mins)
end

p time_of_day(0)== "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

