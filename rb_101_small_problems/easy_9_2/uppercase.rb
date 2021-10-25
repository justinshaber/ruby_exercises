=begin
Problem Overview:
Write a method that takes a string argument and return true
if all A-Z chars are uppercase, flase if not.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  Ignore nonA-Z
Implicit Rules:
Questions:
--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: 
Output: 
Additional DS Utilized:

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

-- method --> 

=end

def uppercase?(str)
  str == str.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
