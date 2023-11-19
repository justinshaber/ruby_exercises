class Triangle
  def initialize(*sides)
    @sides = sides
    raise ArgumentError unless valid_sides?
  end

  def valid_sides?
    @sides.min > 0 &&
    @sides[0] + @sides[1] > @sides[2] && 
    @sides[1] + @sides[2] > @sides[0] && 
    @sides[2] + @sides[0] > @sides[1]
  end

  def kind
    case @sides.uniq.size
    when 3 then 'scalene'
    when 2 then 'isosceles'
    when 1 then 'equilateral'
    end
  end
end
