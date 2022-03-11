=begin
P: Given an integer, convert it to a string without the use of any helper methods
  i: number as integer
  o: same number as string
E+R:
  4321 => '4321'
D: Arrays
Approach:
  INIT array of string numbers "0".."9"
  INIT results array
  LOOP until diviser == 0
    divmod to get individual digits
    push each individual to a results array
  MAP over the array
    RETURN value of block is the string at idx of the current number
  JOIN
Algo:
  INIT array "0".."9"
  # INIT empty array results
  # while (condition)
  #   divisor, remainder is the argument DIVMOD 10
  #   UNSHIFT remainder into results
  call DIGITS on the arg and REVERSE
  MAP over array
    RETURN value of block is the string at idx of the current number


  Retreive each individual digit of a number
    divisor, remainder is the argument DIVMOD 10
    
=end

DIGITS = ("0".."9").to_a

def get_digits(num)
  divisor, remainder = num.divmod(10)
  return remainder if divisor == 0

  [remainder].unshift(get_digits(divisor))
end

def integer_to_string(num)
  # num.digits.reverse.map { |i| DIGITS[i] }.join
  #------------------------------
  # num_str = ''

  # loop do
  #   num_arr.prepend(DIGITS[num % 10])
  #   num /= 10
  #   break if num == 0
  # end

  # num_str
  #------------------------------Not a very good recursion method. Does not work with 0
  return DIGITS[num] if num == 0
  num_arr = get_digits(num).flatten
  num_arr.map { |i| DIGITS[i] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'