def after_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  # return 0 if hours == 24 ---added % 1440 below to deal with this
  (hours * 60 + minutes) % 1440
end

def before_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  return 0 if hours == 0 && minutes == 0
  1440 - (hours * 60 + minutes)
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight("23:57") == 1437
p before_midnight("23:57") == 3
p after_midnight("00:35") == 35
p before_midnight("00:35") == 1405
p after_midnight("00:03") == 3
p before_midnight("00:03") == 1437