def time_of_day(number)
  number = number % 1440
  
  hour, minute = number.divmod(60)
  # "#{"%02d" % hour}:#{"%02d" % minute}"
  format('%02d:%02d', hour, minute)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"