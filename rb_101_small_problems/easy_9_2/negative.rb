=begin
Problem Overview:
Write a method that takes a number as a argument.
If the number is positive return it as negative.
If the number is less than or equal to zero return the original

--------------------------PROBLEM----------------------------------------
Explicit Rules:
Implicit Rules:
Questions:
--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: number
Output: same number or negative
Additional DS Utilized:

----------------------------ALGO-----------------------------------------
Higher-Level ==> 
Return the number if it is equal to or less than zero
Return the negative 

-- method --> 

=end

def negative(num)
  num <= 0 ? num : -num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby