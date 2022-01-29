# Attempt: 1
# Start:  2:57
# End:    3:06
# Time:   9 minutes

=begin
PROBLEM: Given three degrees, determine if a triangle is valid, and what kind of triangle it is.

Examples / Rules
- Angles must sum to 180
- no angle can be 0

Algorithm
- Determine if the triangle is valid
  - see if any angle is 0
  - see if the sum of the angles equals 180

- get the max
- return :right if max is 90
- return :obtuse if max > 90
- else return acute
=end

def valid_tri?(sides)
  return false if sides.any? { |side| side == 0 }

  sides.sum == 180
end

def triangle(*sides)
  return :invalid if !valid_tri?(sides)

  max_angle = sides.max

  return :right  if max_angle == 90
  return :obtuse if max_angle > 90
  return :acute  if max_angle < 90
  
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid