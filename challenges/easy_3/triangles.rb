class Triangle
  def initialize(*sides)
    @sides = sides
    raise ArgumentError unless valid?
  end

  def kind
    case sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else        'scalene'
    end
  end

  private

  attr_reader :sides

  def valid?
    sides.all? { |x| x > 0 } &&
    sides[0] < sides[1] + sides[2] &&
    sides[1] < sides[2] + sides[0] &&
    sides[2] < sides[0] + sides[1]
  end
end