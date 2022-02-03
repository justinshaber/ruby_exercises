# 9:49
# 9:59


=begin
PROBLEM: Return a new string with the first character of each word capitalized.
input: string
output: new string with the same words capitalized

Examples/Rules:
It's only the first CHARACTER not letter
ie "quoted" => "quoted"

Data Structures
Array

Algorithm
Split the string into an array of words
Call map on it to return a new string and join it

Split into an array
iterate over with object
capitalize the first character


=end

def word_cap(string)
  # string.split.map(&:capitalize).join(" ")

  string.split.each_with_object([]) do |word, str_arr|
    str_arr << word[0].upcase + word[1..].downcase
  end.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'