=begin
PROBLEM: Given a string, write a method that returns a new string with the alphabetic
characters alternating upper and lower case. non alphabetic characters should be ignored.

input: string
output: new string with staggerd case (non-alpha ignored)

Examples/rules
Starts with uppercase

Algorithm
use a toggle
Set toggle to true

Iterate over the string with string object
  If the character is not A-Za-z, push the char and go to next iteration
  If the toggle is true
    push the uppercase version
    switch toggle to false
  else
    push the down case version
    switch toggle to true


=end

# def staggered_case(string)
#   toggle = true
#   new_str = ''

#   string.each_char do |char|
#     if char =~ /[A-Za-z]/
#       new_str += (toggle ? char.upcase : char.downcase)
#       toggle = !toggle
#     else
#       new_str += char
#     end
#   end 

#   new_str
# end

def staggered_case(string)
  toggle = true

  string.each_char.with_object('') do |char, new_str|
    if char =~ /[A-Za-z]/
      new_str << (toggle ? char.upcase : char.downcase)
      toggle = !toggle
    else
      new_str << char
    end
  end
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'