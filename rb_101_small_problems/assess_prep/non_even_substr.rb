# 8:27
# 8:33
# 6 mins

=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.[b]

solve("1341") = 7. See test cases for more examples.
=end

=begin
P: Given a string of integers, return the number of odd_numbered substrings that can be formed
  i: stringed integer
  o: integer - number of odd_numbered substrings that can be formed
E+R:
D: Get every substring
  Arrays
Approach:
INIT a counter
ITERATE through every possible substring
  INCREASE the counter if (substring.to_i.odd?)
RETURN the counter
=end

def solve(str_num)
  counter = 0
  (0...str_num.size).each do |start|
    (1..str_num.size - start).each do |length|
      sub_str = str_num[start, length]
      counter += 1 if sub_str.to_i.odd?
    end
  end
  counter
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28