# Attempt: 1
# Start:  2:31
# End:    2:48
# Time:   17 minutes

=begin
PROBLEM: Write a program that will determine the kind of triangle represented by the given side lengths
If the triangle is invalid, say so.

i: three integers
o: a symbol which is the type of triangle

Examples Rules
- A valid triangle must have:
  - All sides must be great than zero
  - The two shortest sides must together be greater than the longest side
- Return a symbol

Data Structures
Array

Algorithm
- determine if the triangle is valid
  - check that all sides are > 0
  - sort by size
  - verify that the sum of first two elements is greater than the third
  - return a boolean
- return :invalid if it is not valid
- put the three arguments in an array and call Array#uniq and Array#size on it
  - Return :equilateral if return value is 1
  - Return :isosceles if return value is 2
  - Return :scalene if return value is 3

=end

def valid_tri?(s1, s2, s3)
  sides = [s1, s2, s3].sort
  sides[0] + sides[1] > sides[2]
end

def triangle(s1, s2, s3)
  return :invalid if !(valid_tri?(s1, s2, s3))

  uniq_sides = [s1, s2, s3].uniq.size

  case uniq_sides
    when 1 then :equilateral 
    when 2 then :isosceles
    when 3 then :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid