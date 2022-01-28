=begin
initialize a lower case CONSTANT alphabet array
take the first and last element of the given array
get the index of each
get the range from the CONST
combine both array
delete duplicates
=end

ALPHA = ("a".."z").to_a

def missing_letter(array)
  first_idx = ALPHA.index(array[0].downcase)
  last_idx = ALPHA.index(array[array.size - 1].downcase)
  result = ''

  ALPHA[first_idx..last_idx].each_with_index do |char, idx|
    if char != array[idx].downcase
      result = char
      break
    end
  end

  return result.upcase if array[0] == array[0].upcase
  result
end

p missing_letter(['a','b','c','d','f']) == 'e'
p missing_letter(['O','Q','R','S']) == 'P'
p missing_letter(['u','w','x','y','z']) == 'v'
p missing_letter(['H','J','K','L']) == 'I'