# 3:09
# 3:26
# 17 mins

# Capitalize every alphabetical character of a given string whose position within the string is a prime number.
# Spaces and commas should not be included towards alphabetical conut
# For example, for the string “sunday blues” == “sUNdAy BlueS” because all
# alphabetical characters whose alpha count falls on prime numbers are as follows: 2, 3, 5, 7 and 11.

=begin
P: Given a string, capitalize each alphabetical char, whose index is a prime number
  i: string
  o: the same string - chars upcased whose position in the string is prime
E+R:
  1 based counting
  only A-Za-z are counted. " ", punctuation, etc do not increase the count
D: Strings, iteration
Approach:
  INIT a counter to 1
  ITERATE over each_char
    next if current char is not valid
    if the count is prime upcase the character
    counter += 1
  RETURN str
=end

def is_prime?(num)
  return false if num < 2
  (2..Math.sqrt(num)).none? { |divisor| num % divisor == 0 }
end

def prime_cap(str)
  counter = 1
  # str.each_char.with_index do |char, idx|
  #   next if char =~ /[^A-Za-z]/
  #   # str[idx] = str[idx].upcase if is_prime?(counter)
  #   char = char.upcase if is_prime?(counter)
  #   counter += 1
  # end

  str_arr = str.chars

  str_arr.each do |char|
    next if char =~ /[^A-Za-z]/
    # char = char.upcase if is_prime?(counter) # THIS DOES NOT WORK
    char.upcase! if is_prime?(counter) # THIS WORKS...why?

    counter += 1
  end
  
  str_arr.join
end

p prime_cap('the') == 'tHE'
p prime_cap('heresjohnny') == 'hEReSjOhnnY'
p prime_cap('') == ''
p prime_cap('sunday blues') == 'sUNdAy BlueS'
p prime_cap('there is more beauty in truth, even if it is a dreadful beauty') == 'tHErE iS morE bEautY iN truTh, even If It is a dReadFuL beaUty'
p prime_cap(' d i s c o ,, i s ,, c o m i n g ,, b a c k') == ' d I S c O ,, i S ,, c o m I n G ,, b a c K'