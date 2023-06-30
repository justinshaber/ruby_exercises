class Triangle
  attr_reader :sides

  def initialize(*sides)
    @sides = sides
    raise ArgumentError.new 'Invalid Triangle Lengths' unless valid?
  end

  def kind
    case sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else        'scalene'
    end
  end

  private

  def valid?
    sides.all? do |side| 
      side > 0 && sides.sum - side > side
    end
  end
end