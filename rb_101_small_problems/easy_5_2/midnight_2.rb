=begin
P: given the time in hh:mm, write two methods that return the number of minutes before and after midnight
  i: string time as hh:mm
  o: integer (number of minutes before or after midnight)
E:
  24 == 0
Aproach:
  Convert the string into integers
    split by ":", convert to integers
  multiply hours by 60, add the minutes
  subtract 1440 if result is >= 1440
Algo:
  SPLIT by ":"
  CONVERT to integers using Array#map and String#to_int
  INIT hours, mins using parallel assignment
  result = multiply hours by 60, add the minutes
  subtract 1440 if result is >= 1440
=end

def after_midnight(time_str)
  hours, mins = time_str.split(":").map(&:to_i)
  ((hours * 60) + mins) % 1440
end

def before_midnight(time_str)
  mins_after = after_midnight(time_str)
  (1440 - mins_after) % 1440
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0