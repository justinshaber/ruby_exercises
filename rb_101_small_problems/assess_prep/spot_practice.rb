# Attempt: 1
# Start:  9:10
# End:    9:27
# Time:   17 minutes

# Given a string as input, find all substrings of at least 2 characters where the substring is
# adjacent to a substring that is the reverse of itself.

=begin
  PROBLEM: Given a string, find all substrings of at least 2 characters where the substring
  is adjacent to a substring that is the reverse of itself

  All even palindromes of at least 4 characters, split in half

  input: string
  output: array of substrings

  Example / Rules
  - must be adjacent
  - must be at least 2 chars, so the palidrome must be at least 4 characters
  - must be a palindrome that can be split in two
    - it must even in size
      "hellolleh" is a palidrome but cannot be split evenly to make two strings that reverse
      "helloolleh" would work

  Data Structures
  - Array

  Algorithm
  Initialize a sub_pal array
  -  Find all substrings within the string that are palindromes at least 4 characters long and even in size
    - beginning with the first character, iterate over the string
      - for each iteration take a substring of increasing size using slice
        - for each substring
          if it is a palidrome, at least 4 characters and even in size push it into a sub_pal array
  - for each palindrome, split it in half
    - using map take an array of strings and return a new array with each string split in half
  - call uniq to remove repeated strings

=end

def is_pal?(string)
  string == string.reverse 
end

def valid_pal?(string)
  string.size >= 4 && string.size.even?
end

def find_reverse_substrings(string)
  valid_sub_pals = []

  0.upto(string.size - 1) do |start|
    0.upto(string.size - start) do |length|
      sub_str = string[start, length]
      valid_sub_pals << sub_str if is_pal?(sub_str) && valid_pal?(sub_str)
    end
  end

  valid_sub_pals.map do |string|
    middle = string.size / 2
    [string[0, middle], string[middle..]]
  end.flatten.uniq
end

p find_reverse_substrings('1221345543') == ["12", "21", "345", "543", "45", "54"]
p find_reverse_substrings('beeekkeeper') == ["eek", "kee", "ek", "ke"]
p find_reverse_substrings('1111111') == ["11", "111"]
p find_reverse_substrings('hellolleh') == []
p find_reverse_substrings('testtsetsubjecttcejbus') == ["test", "tset", "est", "tse", "st", "ts", "subject", "tcejbus", "ubject", "tcejbu", "bject", "tcejb", "ject", "tcej", "ect", "tce", "ct", "tc"]