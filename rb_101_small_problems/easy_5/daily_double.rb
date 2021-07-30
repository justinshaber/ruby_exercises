def crunch(str)
  new_str = []
  str = str.chars
  str.each do |letter|
    new_str << letter unless new_str.last == letter
  end

  new_str.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''