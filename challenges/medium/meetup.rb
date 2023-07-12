require 'date'

class Meetup
  WEEKDAYS = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
  def initialize(year, month)
    @year = year
    @month = month
    @possible_weekdays = []
  end

  def day(weekday, descriptor)
    weekday = weekday.downcase
    descriptor = descriptor.downcase

    day = 1

    until Date.valid_date?(year,month,day) == false do
      date = Date.new(year,month,day)
      possible_weekdays << date if date.cwday == (WEEKDAYS.index(weekday) + 1)
      day += 1
    end

    select_weekday(descriptor)
  end

  def select_weekday(descriptor)
    case descriptor
    when 'first'  then possible_weekdays.first
    when 'second' then possible_weekdays[1]
    when 'third'  then possible_weekdays[2]
    when 'fourth' then possible_weekdays[3]
    when 'fifth'  then fifth_weekday
    when 'last'   then possible_weekdays.last
    when 'teenth' then teenth_weekday
    end
  end

  def fifth_weekday
    possible_weekdays.size == 5 ? possible_weekdays[4] : nil
  end

  def teenth_weekday
    possible_weekdays.select {|weekday| (13..19).include?(weekday.day)}.first
  end

  private

  attr_reader :year, :month, :possible_weekdays
end