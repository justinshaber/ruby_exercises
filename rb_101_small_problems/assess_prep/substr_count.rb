# 8:09
# 8:16
# 7mins


=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

P: Given a string and a substring, return the number the times the substring is found within the full text
  i: two string
  o: integer - count of occurences of string2 within string 1
Approach
  INIT a counter
  ITERATE through every possible substring
    INCREASE counter if the substring == search_text
  RETURN counter
=end

def solution(str1, str2)
  counter = 0
  (0...str1.size).each do |start|
    (1..str1.size - start).each do |length|
      sub_str = str1[start, length]
      counter += 1 if sub_str == str2
    end
  end
  counter

  str1.scan(str2).size
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1