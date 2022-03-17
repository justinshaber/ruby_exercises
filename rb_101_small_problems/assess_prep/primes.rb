#4:40

# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. 
# Prime number is an integer greater than 1 and only divisible by itself and 1.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2




=begin
###problem###
Given a number, X, find how many positive integers less than or equal to X are odd and not prime.

Prime number is an integer greater than 1 and only divisible by itself and 1.

input - integer
output - integer representing the number of positive integers that
  - are less than or equal to X
  - are odd
  - are not prime

###Examples###



###Data Structures###
Arrays


###algorithm###
Store all the odd integers from 1 to the number (including) in an array
iterate over this array
  - select numbers that are not prime
      see if any number from 3 to (number / 2) go into the number w/o remainder
return the size of the filtered array


###code###


=end

=begin
  to see if a number is prime
  it must be greater than 1
  it can only be divisible by itself and 1
  so if it is divisble by any number between 2 - (num / 2) it is not prime
  
  prime = true
  
  iterate from 2 to (num / 2)
    divide the odd_number by the number. and if there is a remainder
      prime = false
    
  prime
    
=end

###use select
# odd_nums = []
  # 1.upto(num) do |int|
  #   odd_nums << int if int.odd?
  # end

###use select
# selected_nums = []
  # odd_nums.each do |odd_num|
  #   selected_nums << odd_num if is_prime?(odd_num)
  # end
  
# selected_nums.size

### (2..num/2).none? { |diviser| num % diviser == 0 }
# prime = true

  # 2.upto(num/2) do |diviser|
  #   prime = false if num % diviser == 0
  # end

# prime

def is_prime?(num)
  return false if num < 2
  (2..Math.sqrt(num)).none? { |diviser| num % diviser == 0 }
end

def odd_not_prime(num)
  (1..num).select { |i| i.odd? && !(is_prime?(i)) }.size
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

