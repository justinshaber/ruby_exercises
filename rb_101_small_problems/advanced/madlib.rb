=begin
PROBLEM: write a program that reads a text file and randomly inputs words of the correct type

i: text from a file
0: the same text with words randomly filled in

Examples | Rules
ex: must read a text file
im: preserve lines

example text:
The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

Data structures
Hash

Algorithm
Initialize a hash with the word types and words

strip the text of %, {, }

split the text into an array of lines
  iterate over the array with map
    for each string, split into an array by " "
      iterate over the array with map
        if it is a keyword, replace it with a random keyword
        otherwise return the word
  join the array with spaces
join the string with new lines
output the string

#deal with commas

=end

KEYWORDS = {
  adjective: %w(hungry sexy sleepy ugly),
  noun: %w(bubbles dolphin pillow slimeball),
  verb: %w(farts honks bites licks),
  adverb: %w(easily lazily noisily excitedly)
}

KEYWORDS.each do | pair |
  p pair
end

# def madlib(text)
#   text = text.gsub(/[\%\{\}\,]/, "")
#   line_arr = text.split(/\n/)

#   line_arr.map! do |line|
#     line.split(" ").map do |word|
#       if KEYWORDS[word.to_sym]
#         KEYWORDS[word.to_sym].sample
#       else
#         word
#       end
#     end.join(" ")
#   end

#   puts line_arr.join("\n")
# end

# file = File.read('madlib.txt')
# madlib(file)