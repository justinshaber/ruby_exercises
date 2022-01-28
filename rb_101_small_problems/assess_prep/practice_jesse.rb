=begin
You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
=end

p likes([]) == "no one p likes this"
p likes(["Peter"]) == "Peter p likes this"
p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
p likes(["Max", "John", "Mark"]) == "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"

########################################################################
########################################################################
########################################################################

=begin
#Find the missing letter

Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'
["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"

=end

p missing_letter(['a','b','c','d','f']) == 'e'
p missing_letter(['O','Q','R','S']) == 'P'
p missing_letter(["a","b","c","d","f"]) == "e"
p missing_letter(["O","Q","R","S"]) == "P"

########################################################################
########################################################################
########################################################################

=begin
Write a function 

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0

Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2
=end

=begin
PROBLEM: Write a method that checks if there is a straight triple in the first number, and a straight double in the second number. Return 1 if so, 0 if no.

i: two integers
o: 1 or 0. 1 - if there is a straight triple in the num1 AND straight double in num2

Examples/extras
There cannot be a double in the first and triple in the second

Data structures
Array

Algorithm
Convert the integer into an array of string representations of the integers
counter = 0
compare triples
  iterate up to the size of the array - 2
  compare n, n + 1, n + 2
    if equal there's a triple, return n
    if not, move on
    If it gets to array.size - 2, there is no triple, return false

compare double of the same number!
  iterate up to the size of the array - 1
    compare n, n + 1 if n == tripled_num
      if equal there's a double of the same num, return true
      if not, move on
      If it gets to array.size - 2, there is no double, return false
      
if there is a triple and a double of the same num return 1, return 0 if not



=end

def has_triple?(num)
  num_array = num.to_s.chars
  
  0.upto(num_array.size - 2) do |idx|
    if num_array[idx] == num_array[idx + 1]
      if num_array[idx] == num_array[idx + 2]
        return num_array[idx]
      end
    end
  end
  
  false
end

def has_same_double?(num, tripled_num)
  num_array = num.to_s.chars
  
  0.upto(num_array.size - 1) do |idx|
    if num_array[idx] == tripled_num && num_array[idx] == num_array[idx + 1]
      return true
    end
  end
  
  false
end

def triple_double(num1, num2)
  tripled_num = has_triple?(num1)
  
  tripled_num && has_same_double?(num2, tripled_num) ? 1 : 0
end


p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0

########################################################################
########################################################################
########################################################################

=begin
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
=end
p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
p duplicate_count("1235567789aa") == 3

