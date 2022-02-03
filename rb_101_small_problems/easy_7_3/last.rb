# def penultimate(string)
#   string.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

=begin
PROBLEM: Write a method that returns the middle word of a sentence.
  Output the two middle words if there are two.

input: string
output: the middle word or words

Examples / Rules

p middle_word("") == ''
p middle_word("test") == 'test'
p middle_word("test word") == 'test word'
p middle_word("test this word") == 'this'
p middle_word("test this word again") == 'this word'
p middle_word("test this word yet again") == 'word'

Data Structures
Arrays

Algorithm
split the string into an array

if the array contains less than three words, return the string
If the array is an odd size, return the word at index length / 2 
if the array is an even size, return the word at index length / 2 and the one before it

=end

# def middle_word(string)
#   str_arr = string.split
#   middle = (str_arr.length / 2)
  
#   return string if string.split.size < 3

#   if str_arr.size.odd?
#     str_arr[middle]
#   else 
#     str_arr[middle - 1] + " " + str_arr[middle] 
#   end
# end

def middle_word(string)
  str_arr = string.split
  return '' if str_arr.empty?

  middle = (str_arr.size / 2.0).ceil - 1
  num_words = str_arr.size.even? ? 2 : 1
  str_arr[middle, num_words].join(" ")
end

p middle_word("") == ''
p middle_word("test") == 'test'
p middle_word("test word") == 'test word'
p middle_word("test this word") == 'this'
p middle_word("test this word again") == 'this word'
p middle_word("test this word yet again") == 'word'