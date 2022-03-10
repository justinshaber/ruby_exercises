=begin
  P: convert a string to a number without using a built in methods
    i: string of digits
    o: number
  D: array CONST to store strings
  Approach:
    Init a CONST array "0"-"9"
    Init a counter to str.size - 1
    init a sum
    
    loop through each char
      get it's index in the array
      multiply that number by 10**(counter)
      add that to sum
      decrease counter

    return the sum


  1 10**0
  10 10**1
  100 10**2
  1000 10**3
=end

NUMS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(str)
  exponent = str.size - 1
  sum = 0

  str.each_char do |char|
    num = NUMS.index(char)
    sum += num * (10**exponent)
    exponent -= 1
  end

  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570