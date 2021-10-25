=begin
Problem Overview:
Write a method than returns 2 times the number provided unless
that number is a double number.


--------------------------PROBLEM----------------------------------------
Explicit Rules:
  Double number - A number with an even number of digits
  whose left side is equal to the right
Implicit Rules:
Questions:
--------------------------EXAMPLES---------------------------------------
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
-----------------------DATA STRUCTURES-----------------------------------
Input: number
Output: same number or number doubled
Additional DS Utilized:

----------------------------ALGO-----------------------------------------
Higher-Level ==> 
Convert numbers to strings.
Return two times the number if string is an odd length

If even length, split the num_string in half, compare the two sides
and return either the unchanged number or the doubled number.

-- method -->

Convert num into a string num_strings
If num_strings is odd length, return num * 2

initialize middle using division and num_string size
If first half is same as second half, return num
If it is different, return num * 2

=end

def twice(num)
  num_string = num.to_s
  return (num * 2) if num_string.size.odd?

  middle = num_string.size / 2
  left_side = num_string[0, middle]
  right_side = num_string[middle..]

  left_side == right_side ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10