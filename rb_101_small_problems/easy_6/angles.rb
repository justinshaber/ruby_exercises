=begin
PROBLEM: WRITE A METHOD that takes a floating point number
representing an angle between 0..360 degrees. Return a string
representing the angle in degrees, minutes and seconds

input: float
output: string
explicit info:
  1 degree = 60 minutes
  string format %(degree minute'second")

ALGORITHM: 
=end

DEGREE = "\xC2\xB0"

def dms(float)
  float = float % 360
  degree, degree_decimal = float.divmod(1)
  minute, minute_decimal = (60 * degree_decimal).divmod(1)
  second = 60 * minute_decimal

  format(%(#{degree}#{DEGREE}%02d'%02d"), minute, second)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
puts dms(436.73) == %(76°43'48")

