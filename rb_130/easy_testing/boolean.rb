# Write a minitest assertion that will fail if the value.odd? is not true.
class NoExperienceError < StandardError; end

class Element
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def downcase
    value.downcase
  end

  def hire
    raise NoExperienceError, 'no experience'
  end
end

class List
  def initialize
    list = Array.new
  end

  def process
    self
  end
end