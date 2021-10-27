UPCASE = ("A".."Z").to_a

def swapcase(str)
  str.chars.map do |char|
    UPCASE.include?(char) ? char.downcase : char.upcase
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'