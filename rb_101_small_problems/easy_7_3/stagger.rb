def staggered_case(string)
  # string.chars.map.with_index do |char, idx|
  #   idx.even? ? char.upcase : char.downcase
  # end.join

  index = 0
  new_str = ""

  until index == string.size
    char = string[index]
    new_str << (index.even? ? char.upcase : char.downcase )

    index += 1
  end

  new_str
  
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'