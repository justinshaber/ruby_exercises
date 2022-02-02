=begin
problem: Write a method that doubles the number unless the given number is a "double number".
a double number is a number whose digits on the left side are equal to the digits on the right side

convert the integer to a string
if the string is odd sized, return double the number

split the string in half, compare
  return double if not equal
  integer if equal
=end

def half(string)
  middle = string.size / 2 
  [string[0, middle], string[middle..]]
end

def twice(int)
  double = int*2
  return double if int.to_s.size.odd?

  # find the middle of a string
  first, second = half(int.to_s)

  p first
  p second

  int_str_arr = int.to_s.chars
  # first, second = int_str_arr.partition.with_index do |elem, idx|
  #   idx < (int_str_arr.size / 2)
  # end

  first == second ? int : double
end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10