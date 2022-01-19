=begin
  ###Problem###
  : Given an array of string, return an array containing characters that
  are present in every string (including duplicates).

  input: array of strings
  output: array of characters

  ###examples/test cases###
  All strings are lower case.
  Duplicates are included. If a characters occurs three times in every string,
    it must be included in three times in the returned array

  p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
  p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
  p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
  p common_chars(["aabbaaaaa", "cccdddddd", "eeeffeee", "yyzzz"]) == []

  ###Data Structures###
    Arrays

  ###algorithm###
  Get an array of unique characters from the first string in the array
  iterate through each unique letter
    iterate through each string in the array
      count the occurances of the unique letter in each string
        if it is 0, then go to the next unique letter
        otherwise, add the count to an array
  
      take the minimum number in the occurances array, and add that number of unique
      letters to the final array

      if there are any 0, don't unclude it
      if 2 2 2, include 2
      if 1 2 2, include 1
      if 1 1 2, unclude 1
      if 1 1 1, include 1
      

  ###code###

=end


# def common_chars(strs_arr)
#   common_chars_arr = []
#   uniq_ltrs = strs_arr[0].chars.uniq

#   uniq_ltrs.each do |letter|
#     count_arr = []

#     strs_arr.each do |string|
#       count_arr << string.count(letter)
#     end

#     next if count_arr.any? { |num| num == 0 }
#     (count_arr.min).times { common_chars_arr << letter }
#   end

#   common_chars_arr
# end

=begin
  ###algorithm###
  Take the first word of the array.
  Set chars_arr equal to each character of the string.
  If it occurs in both of the other strings,
    remove it and add it to the final array
  Otherwise, move to the next iteration

  ###code###
  Use shift to remove the first word of the given array
  create chars_arr using String#chars
  Use `each` to iterate over the chars
  Use Array#all? to see if it occures in all of the other string elements
    If so, destructively remove the element and push it to the resulting array
    If not, move to the next iteration

  Change 
  Iterate through each word
    get the index of character
    delete that index


=end

def common_chars(arr)
  arr_copy = arr.map { |word| word.dup }

  chars_arr = arr_copy.shift.chars
  common_chars = []
  
  chars_arr.each do |char|
    next if arr_copy.any? { |string| string.count(char) == 0}
    common_chars << char
    arr_copy.each { |string| string.sub!(char, "")}
  end

  # chars_arr.select do |char|
  #   arr.all? { |word| word.sub!(char, "") }
  # end

  common_chars
end

arr = ["bella", "label", "roller"]

p common_chars(arr) == ["e", "l", "l"]
p arr
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaaa", "cccdddddd", "eeeffeee", "yyzzz"]) == []