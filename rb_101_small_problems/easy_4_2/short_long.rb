def short_long_short(*strings)
  # if str1.size > str2.size
  #   "#{str2}#{str1}#{str2}"
  # else
  #   "#{str1}#{str2}#{str1}"
  # end

  short, long = strings.sort_by { |str| str.size }
  "#{short}#{long}#{short}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"