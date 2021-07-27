str = ""

def get_numbers(str)
    puts "Write a word or a sentence."

    response = gets.chomp
    str << response
end

get_numbers(str)
num_chars = str.delete(" ").size

puts "There are #{num_chars} characters in '#{str}'."