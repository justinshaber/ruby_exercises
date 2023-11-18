class Triangle
  def initialize(*sides)
    @sides = sides
  end

  def kind
    case @sides.uniq.size
    when 3 then 'scalene'
    when 2 then 'isosceles'
    when 1 then 'equilateral'
    end
  end
end
