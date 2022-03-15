=begin
P: reverse and combine words
  i: a string of "words"
  o: one word that is all the words combined and reversed according to the rules
E+R:
  Reverse and combine 1 + 2, 3 + 4, 5 + 6, etc...
  If there is an odd number of words, reverse it, but don't combine it with anything else
  Repeat this process until only 1 "word" remains

  "abc def gh34 434ff 55_eri 123 343"
  "cbafed 43hgff434 ire_55321 343"
  "defabc434ffgh34 12355_eri343"
  "43hgff434cbafed343ire_55321"

DS: Arrays
Approach:
  Split string into an array of words

  Reverse each word
  shift first 2 element, combine them, push them into a new array
    repeat this step until the array is empty
  
  Repeat this process until the array has only 1 element
  Return the element

Algo:
  SPLIT string into words_array
  
  LOOP
    words_array = HELPER METHOD(words_array)
      INIT results array
      MAP over each element, REVERSING each word
      LOOP until words_array is empty
        shift 2 elements at a time, combine them, push them into results array
      return results array
    
    break if words_array.size == 1

  return word_array[0]
=end

def reverse_combine(arr)
  results = []

  arr.map!(&:reverse)
  results << arr.shift(2).join until arr.empty?
  
  results
end

def reverse_and_combine_text(str)
  words_array = str.split

  loop do
    words_array = reverse_combine(words_array)
    break if words_array.size == 1
  end

  words_array[0]
end

p reverse_and_combine_text("abc def gh34 434ff 55_eri 123 343") == "43hgff434cbafed343ire_55321"
p reverse_and_combine_text("abc def ghi 123") == "defabc123ghi"
p reverse_and_combine_text("abc def") == "cbafed"