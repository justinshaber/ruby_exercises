# Attempt: 1
# Start:  10:50
# End:    11:01
# Time:   11 minutes

=begin
PROBLEM: Create a method that returns boolean true or false depending on whether the parentheses are balanced

EXAMPLES RULES
- balanced pair starts with (, not )
- no () returns true

Data Structures
- Hash

Algorithm
Initalize a hash with keys for (), "", '', [], {}
  - Each value is an integer starting at 0

Iterate over the string
  - Identify if the character is special, and if it should increase/decrease the counter

    - If the character is an opening special character, increment the counter
    - If the character is a decreasing special character, decrease the counter
    - return false if any counter is ever < 0

return true if all the counters are 0

=end

# counter = 0
  
#   string.each_char do |char|
#     counter += 1 if char == "("
#     counter -= 1 if char == ")"
#     return false if counter < 0
#   end

# counter == 0

# SPEC_CHARS = {
#   parens: ['(', ')'],
#   quotes: ["'", "'"],
#   double_quotes: ['"', '"'],
#   sq_brack: ['[', ']'],
#   curly_brack: ['{', '}']
# }

def balanced?(string)
  hash = { parens: 0, quotes: 0, double_quotes: 0, sq_brack: 0, curly_brack: 0 }

  return false if string.count("'").odd?
  return false if string.count('"').odd?

  string.each_char do |char|
    next if char =~ /[^\(\)\[\]\{\}\"\']/
    hash[:parens] += 1 if char == '('
    hash[:parens] -= 1 if char == ')'
    hash[:sq_brack] += 1 if char == '['
    hash[:sq_brack] -= 1 if char == ']'
    hash[:curly_brack] += 1 if char == '{'
    hash[:curly_brack] -= 1 if char == '}'

    return false if hash.values.any? { |v| v < 0 }
  end

  hash.values.all? { |v| v == 0 }
end

p balanced?('What (is) this?') == true
p balanced?('What {is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true

p balanced?('Hey!)') == false
p balanced?('Hey!]') == false
p balanced?('Hey!}') == false
p balanced?('Hey!"') == false

p balanced?('(Hey!)') == true
p balanced?('[Hey!]') == true
p balanced?('{Hey!}') == true
p balanced?('"Hey!"') == true

p balanced?(')Hey!(') == false
p balanced?('([What] (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?('}Hey!{') == false
p balanced?('What ""is"" up"') == false