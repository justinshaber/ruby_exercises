=begin


--------------------------PROBLEM----------------------------------------
Explicit Rules:

Write a method that takes one argument, the total number of switches, 
and returns an Array that identifies which lights are on after n repetitions.

All the switches start off
1 - all switches that are multiples of 1 are toggled
2 - all switches that are multiples of 2 are toggled
3 - all switches that are multiples of 3 are toggled
4 - all switches that are multiples of 4 are toggled
...
20 - all switches that are multiples of 20 are toggled
...
n - all switches that are multiples of n are toggled

Implicit Rules:
Questions:
--------------------------EXAMPLES---------------------------------------

switches(5) == [1,4]
switcches(10) == [1, 4, 9]

-----------------------DATA STRUCTURES-----------------------------------
Input: number
Output: an array
Additional DS Utilized:
hash with boolean values

----------------------------ALGO-----------------------------------------
Higher-Level ==> 
Programmatically initialize a hash with:
 keys numbered 1 to n
 each with value of 0
Iterate through numbers 1 to n
Increment by 1 every value in the hash that is divisible by the number
return an array of every key that has an odd number

Create an array with n 0's
Iterate through numbers 1 to (n+1)
Increment by 1 every value in the array whose (index + 1) is divisible by the number
return an array of every (index+1) that has an odd number



-- method --> 

=end

def switches(num)
  hash = {}
  1.upto(num) { |num_key| hash[num_key] = 0 }

  1.upto(num) do |divisor|
    hash.each do |key, value|
      hash[key] = (value + 1) if (key % divisor == 0)
    end
  end
  
  hash.select{ |key, value| value.odd? }.keys
end

p switches(5) == [1,4]
p switches(10) == [1, 4, 9]
p switches(1000)