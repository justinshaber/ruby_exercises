=begin
P: Given a string, return a new string in which the first and last letter of each word are swapped
  i: string
  o: new string with each word's first and last letters swapped
E:
  'a' == 'a'
  'it' == 'ti'
  'Hello' == 'oellH'
  Preserve capitalization
Approach
  Split the string into an array
  Map over the array
  Use parrallel reasignment
  join
=end

def swap(str)
  str.split(" ").map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'