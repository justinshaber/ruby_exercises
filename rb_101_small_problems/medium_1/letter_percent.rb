# Attempt: 1
# Start:  4:44
# End:    5:11
# Time:   27 minutes

=begin
PROBLEM:
Given a string return a hash with
  - the percentage of characters that are uppercase
  - the percentage of characters that are lowercase
  - the percentage of characters that are neither

i: string
o: hash

EXAMPLES RULES:


DATA STRUCTURES:
Array

ALGORITHM:
Initialize an CONST array of upper case letter
iniitalize a hash with three keys (UP, down, neither) all with counts of 0
iterate over each letter in the array
  see if it is a letter
    if so, see if it is uppercased
      increment UP if so
      increment down if not
  increment neither if it is not a letter

When we are done map the hash, changing the value from totals to float percentages
    use the size of the string

Iterate through a hash changing the values from an integer to a float
    

=end

UP_ALPHA = ("A".."Z").to_a
DOWN_ALPHA = ("a".."z").to_a

def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0,  neither: 0 }
  
  0.upto(string.size - 1) do |idx|
    if UP_ALPHA.include?(string[idx])
      hash[:uppercase] += 1
      next
    elsif DOWN_ALPHA.include?(string[idx])
      hash[:lowercase] += 1
    else
      hash[:neither] += 1
    end
  end

  total = hash.values.sum
  hash.map { |k, v| [k, v = (v.to_f / total) * 100] }.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }