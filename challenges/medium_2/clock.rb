class Clock
  attr_accessor :hours, :minutes
  
  def initialize(hours, minutes = 0)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes = 0)
    self.new(hours, minutes)
  end

  def +(minutes_to_add)
    add_hours, new_minutes = minutes_to_add.divmod(60)
    new_hours = (add_hours + hours) % 24
    new_minutes += minutes

    self.class.new(new_hours, new_minutes)
  end

  def -(minutes_to_sub)
    total_minutes = (hours * 60) + minutes - minutes_to_sub
    new_hours, new_minutes = total_minutes.divmod(60)
    new_hours %= 24

    self.class.new(new_hours, new_minutes)
  end

  def to_s
    # "#{"%02d" % hours}:#{"%02d" % minutes}"
    format("%02d:%02d", hours, minutes)
  end

  def ==(other_clock)
    hours == other_clock.hours &&
    minutes == other_clock.minutes
  end
end