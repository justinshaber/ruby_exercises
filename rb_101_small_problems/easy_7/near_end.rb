def penultimate(str)
  str_arr = str.split
  str_arr[-2]
end

def middle_word(str)
  str_arr = str.split
  mid = (str_arr.size / 2)

  str_arr.size.odd? ? str_arr[mid] : str_arr[(mid-1), 2]
end

p middle_word('last word') #== 'last'
p middle_word('Launch School is great!') #== 'is'
p middle_word('Write a method that returns the middle_word word of a phrase or sentence okay.')
p middle_word('It should handle all of the edge cases you thought of yes.')
p middle_word('The middle w0rd is the word')