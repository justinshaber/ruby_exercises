=begin
P: Write a method that determines if the given string is a palindrome, without using #reverse
  i: string
  o: boolean (true if palindrome, false if not)
E+R:
  Cannot use #reverse
  Case matters
D: Arrays
Approach:
  Turn the string into an array of chars, imperatively reverse it, join it as a new string
  Compare the passed string with the new string

ALGO:
  INIT arr of CHARS
  REVERSE
    ITERATE through arr WITH OBJECT
      unshift each object

    INIT head to 0
    INIT tail to arr.size - 1
    LOOP arr.size / 2 TIMES
      arr[head], arr[tail] = arr[tail], arr[head]
      head += 1
      tail -= 1

  new_str = JOIN
  COMPARE str == new_str
=end

def palindrome?(str)
  str_arr = str.chars

  str_arr = str_arr.each_with_object([]) do |i, arr|
    arr.unshift(i)
  end
  
  # head = 0
  # tail = str_arr.size - 1

  # (str_arr.size / 2).times do
  #   str_arr[head], str_arr[tail] = str_arr[tail], str_arr[head]
  #   head += 1
  #   tail -= 1
  # end

  str_arr.join == str
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true