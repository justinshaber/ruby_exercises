WEEKDAYS = %w(monday tuesday wednesday thursday friday saturday sunday)

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
    @results = []
  end

  def day(weekday, descriptor)
    collect_weekdays(weekday)
    
    case descriptor.downcase
    when 'first'  then @results[0]
    when 'second' then @results[1]
    when 'third'  then @results[2]
    when 'fourth' then @results[3]
    when 'fifth'  then fifth?
    when 'last'   then @results[-1]
    when 'teenth' then teenth?
    end
  end

  private

  def fifth?
    @results.size == 5 ? @results[-1] : nil
  end

  def teenth?
    @results.each do |date|
      return date if (13..19).include?(date.day)
    end
  end

  def collect_weekdays(weekday)
    weekday_int = convert_weekday(weekday)

    (1..31).each do |day|
      break unless Date.valid_date?(@year, @month, day)
      date = Date.new(@year, @month, day)
      @results << date if date.cwday == weekday_int
    end
  end

  def convert_weekday(weekday)
    WEEKDAYS.index(weekday.downcase) + 1
  end
end

