=begin
  P: Given a string, return a new string with consecutive same characters collapsed to one. Do not use #squeeze
    i: string
    o: new string with repeating characters collapsed to one
  E+R: "ddaaiillyy" => "daily"
  D: strings
  Approach:
    Initialize a new string
    Iterate through each character
      If the previous character matches the current character, go to the next iteration
      If not, append it into the new string
    Return the string
  Algo:
    INIT crunched
    ITERATE through EACH CHAR
      next if (last character of crunched equals current char)
      PUSH current char to crunched
    RETURN crunched
=end

def crunch(str)
  # str.each_char.with_object("") do |char, crunched|
  #   next if crunched[-1] == char
  #   crunched << char
  # end

  index = 0
  crunched = ""
  while index <= str.length - 1
    crunched << str[index] unless crunched[-1] == str[index]
    index += 1
  end
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''