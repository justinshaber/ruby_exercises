# 9:33
# 10:11
# 38 minutes

=begin
  PROBLEM: Write a method that takes a float which reprents an angle between 0-360
  and return a string representing the angle in degrees, minutes, and seconds.

  input: floating point number
  output: formatting string

  Examples | Rules
  360 degrees is either 360 or 0
  0 degrees is 0
  1 degree = 60 minutes
  1 min = 60 seconds

  ex: 254.6
  254 degrees
  60 * .6 = 36.0 minutes

  ex2: 93.034773
  93 degrees
  60 * 0.034773 = 2.08638 => 2 minutes
  60 * 0.08638 = 5.1828 => 5 seconds

  Data structures
  No array or hashes
  Format

  Algortithm
  If the number is a whole number
    degrees is the numner
    minutes and seconds are both 0

  separate decimals from the whole number
    num - num.to_i

  get degrees using num.to_i
  get the decimals and multiply by 60
    the minutes are the whole numbers of the result
  get the decimals and multiply by 60
    the seconds are the whole numbers of the result

  Format
=end

DEGREE = "\xC2\xB0"

# def dms(angle)
#   degree = angle.floor
#   min_sec = 60 * (angle - angle.floor)

#   minutes = min_sec.floor
#   seconds = (60 * (min_sec - min_sec.floor)).floor

#   minutes = sprintf("%02d", minutes)
#   seconds = sprintf("%02d", seconds)

#   "#{degree}#{DEGREE}#{minutes}'#{seconds}\""
# end

def dms(angle)
  angle = angle % 360

  degree, degree_decimal = angle.divmod(1)
  minutes, minutes_decimal = (degree_decimal * 60).divmod(1)
  seconds = (minutes_decimal * 60).floor

  %(#{degree}#{DEGREE}#{"%02d" % minutes}'#{"%02d" % seconds}")
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")