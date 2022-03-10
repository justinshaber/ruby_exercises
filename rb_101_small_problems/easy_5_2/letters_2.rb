def word_sizes(str)
  # str = str.gsub(/[^A-Z a-z]/, "")
  # str_arr = str.split(" ")
  # str_arr.each_with_object(Hash.new(0)) do |word, hash|
  #   hash[word.size] += 1
  # end


  words_arr = str.split
  words_arr.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.delete('^A-Za-z').size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}