def truncate(str)
  str = str.split
  arr = []
  arr[0] = str[]
  arr = str[0..10]
end

def print_in_box(str)
  str1 = str[0, 76]
  str2 = str[76..str.size]
  bun = "+-#{"-"*str1.size}-+"
  middle = "| #{" "*str1.size} |"
  extra = (str1.size - str2.size) / 2
  
  puts bun
  puts middle
  puts "| #{str1} |"
  puts "| #{' '*extra}#{str2}#{' '*extra} |"
  puts middle
  puts bun
end

print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')
print_in_box('For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')