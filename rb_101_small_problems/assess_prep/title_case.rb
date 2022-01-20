###Google doc no.19

# A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

# Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

# First argument (required): the original string to be converted.
# Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.
# ###Example

=begin
###problem###
Write to a function that takes a string and returns the same string in english Title Case. That is, minor words are not capitalized unless they are the first word in the title. A list of minor words will be optionally provided as a second argument as a space delimited string.

input - One or two strings
output - The first string in title case

###Examples/Rules###
Empty string returns empty
Case of the minor words does not matter in the second string
The minor words must be lower case in the first string unless they are the first word of the title.


###Data Structures###
Arrays
Strings

###algorithm###
put both strings into lowercase
Split the words in both strings into two arrays
Iterate over the elements in the first array
  - Capitalize the first letter of the string element unless that word appears in the second array
   
Capitalize the first word, join, and return

###code###

###CW answers###

def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end


def title_case(title, minor_words='')
  title.capitalize.split(' ').map do | word |
    minor_words.downcase.split(' ').include?(word) ? word : word.capitalize
  end.join(' ')
end

###Sofia's answer###

def title_case(title, minor_words = '')
  if title.empty?
    title
  else
    result = title.split.map do |word| 
      minor_words.downcase.split.include?(word.downcase) ? word.downcase : word.capitalize
    end
    result[0].capitalize!
    result.join(' ')
  end
end

=end

def title_case(title, minor_words = '')
  return title if title.empty?
  
  title_arr = title.downcase.split
  minor_words_arr = minor_words.downcase.split
  
  title_arr = title_arr.map do |word|
    minor_words_arr.include?(word) ? word : word.capitalize
  end
  
  # title_arr[0] = title_arr[0].capitalize
  
  title_arr[0].capitalize!
  
  title_arr.join(" ")
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'