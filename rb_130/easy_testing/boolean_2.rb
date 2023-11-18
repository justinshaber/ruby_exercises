class NoExperienceError < StandardError
end

class Address
  attr_reader :value, :list
  
  def initialize(value)
    @value = value
    @list = []
  end

  def odd?
    @value.odd?
  end

  def downcase
    @value.downcase
  end

  def empty?
    list.empty?
  end

  def <<(item)
    @list << item
  end

  def clean
    raise NoExperienceError
  end

  def process
    @list
  end
end