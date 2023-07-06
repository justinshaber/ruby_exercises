class Clock
  attr_accessor :hours, :minutes

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes = 0)
    Clock.new(hours, minutes)
  end

  def +(minutes_to_add)
    self.hours = 24 if hours == 0
    total_minutes = (hours * 60) + minutes + minutes_to_add
    self.hours, self.minutes = total_minutes.divmod(60)
    self.hours = hours % 24
    Clock.new(hours, minutes)
  end

  def -(minutes_to_sub)
    self + (-minutes_to_sub)
  end

  def ==(other)
    self.to_s == other.to_s
  end

  def to_s
    format('%02d:%02d', hours, minutes)
  end
end