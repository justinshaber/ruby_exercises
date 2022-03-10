=begin
  P: Given a string, output the string in a box in your terminal window
    i: string
    o: a box with the string properly fitted inside
  E+R:
    +--------------------------------------------+
    |                                            |
    | To boldly go where no one has gone before. |
    |                                            |
    +--------------------------------------------+
  D: Strings
  Approach:
    Brute force top/bottom, space, main text
  Algo:
    border = "-" * size of string plus 2, delimited by "+-"
    buffer = size of string plus 2, delimited by "|"
    text = "| " + text + " |"

    p border
    p buffer
    p text
    p buffer
    p border

=end

def print_in_box(str)
  border = "+-" + ("-" * str.size) + "-+"
  buffer = "| " + (" " * str.size) + " |"
  text = "| " + str + " |"

  puts border
  puts buffer
  puts text
  puts buffer
  puts border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Hello world!')