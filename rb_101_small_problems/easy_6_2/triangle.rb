# 5:40
# 5:49


=begin
Problem: Given an integer, n, output a right triangle to the console whose sides all have n "*".
The hypotnuse should have one end at the lower left of the screen and one at the upper right.

input: integer
output: a triangle

Examples:
triangle(5)
    * (four spaces, one star)
   ** (three space, two stars)
  *** (two spaces, three stars)
 **** (one space, four stars)
***** (no spaces, 5 stars)

Algorithm
two counters, one for spaces, one for stars

loop until the number of stars is greater than the argument
  space string is counter * " "
  stars is count * "*"
  output the combination
  decrease spaces
  increase stars


=end



def triangle(num)
  num_spaces = num - 1
  num_stars = 1

  until num_stars > num
    puts (" " * num_spaces) + ("*" * num_stars)

    num_spaces -= 1
    num_stars += 1
  end
end

triangle(5)
triangle(9)