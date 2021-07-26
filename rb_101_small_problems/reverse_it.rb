def reverse_sentence(string)
  new_string = []

  string.split.each do |word|
    new_string.unshift(word)
  end

  new_string.join(" ")

  # string.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''