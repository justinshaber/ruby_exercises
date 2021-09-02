=begin

Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  - Display a 4-pointed diamond in an n x n grid
  - write a method
Implicit Rules:
  - arguments will always be odd
Questions:

Input: number - n
Output:
  - a diamond with n rows. Each row contains asterix.
  - Number of  asterix ascends from 1 to n, then decends back to 1.
--------------------------EXAMPLES---------------------------------------


-----------------------DATA STRUCTURES-----------------------------------



----------------------------ALGO-----------------------------------------
Higher-Level ==> 

increment by 2 from 1 up to n.
"- - - - * - - - -" ==> 1 star, 8 spaces
"- - - * * * - - -" ==> 3 star, 6 spaces
"- - * * * * * - -" ==> 5 star, 4 spaces
"- * * * * * * * -" ==> 7 star, 2 spaces
"* * * * * * * * *" ==> 9 star, 0 spaces

1. Create two strings - stars and spaces
2. First amount of spaces is num / 2
3. First amount of stars is 1
4. Start a loop
5. Print spaces + stars + spaces
6. increment stars by 2
7. reduce spaces by 1
8. Go to step 5 until the number of stars is equal to num. 

Need a new way to solve this

something to do with the middle of the string
two methods
  acending
  descending



-- method --> 

=end

def set_row(spaces, length)
  str = "*" * (length-(spaces * 2))
  str.center(length)
end

def diamond(num)

  space_count = num / 2

  space_count.downto(0) do |num_spaces|
    puts set_row(num_spaces, num)
  end
  1.upto(space_count) do |num_spaces|
  puts set_row(num_spaces, num)
  end
  # spaces = num / 2
  
  # 1.step(9, 2) do |step|
  #   puts (" " * spaces) + ('*' * step)
  #   spaces -= 1
  # end

  # spaces += 1

  # 7.step(1, -2) do |step| 
  #   spaces += 1
  #   puts (" " * spaces) + ("*" * step)
  # end

end

diamond(9)

# STAR = "*"
# SPACE = " "

# def diamond(num)
#   num_stars = 1
#   num_spaces = num / 2

#   # It doesn't work with 1
#   if num == 1
#     puts STAR
#     return
#   end

#   loop do
#     spaces = SPACE * num_spaces
#     stars = STAR * num_stars

#     puts spaces + stars + spaces
#     num_stars += 2
#     num_spaces -= 1
#     break if num_stars == num
#   end

#   loop do
#     spaces = SPACE * num_spaces
#     stars = STAR * num_stars

#     puts spaces + stars + spaces
#     num_stars -= 2
#     num_spaces += 1
#     break if num_stars < 0
#   end

# end



#diamond(1)