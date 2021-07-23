def digit_list(number)
  number.to_s.chars.map {|char| char.to_i} #.map(&:to_i)

  # arr = number.to_s.chars
  # arr_2 = []

  # arr.each do |num_str|
  #   arr_2 << num_str.to_i
  # end

  # arr_2 
end

p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true