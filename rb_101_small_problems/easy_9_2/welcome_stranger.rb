=begin

Create a method that takes two arguments - an array and a hash, and outputs a greeting.
The array contains a name, the hash contains a title and occupation.


--------------------------PROBLEM----------------------------------------
Explicit Rules:
  Names separated by a space
  Use full name
Implicit Rules: 
Questions:
--------------------------EXAMPLES---------------------------------------
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

-----------------------DATA STRUCTURES-----------------------------------
Input: Array and hash
Output: Greeting to screen
Additional DS Utilized:

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

-- method --> 

Interpolation

=end

def greetings(arr, hsh)
  full_name = arr.join(" ")
  full_job = "#{hsh[:title]} #{hsh[:occupation]}"
  
  puts "Hello, #{full_name}! Nice to have a #{full_job} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })