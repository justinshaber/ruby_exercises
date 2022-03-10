=begin
  P: Sort the numbers 1 to 19 alphabetically by their english names.
    i: array
    o: sorted array, numbers are still in numerical form
  E+R: 1 => "one"
  D: Array, CONST
  Approach: Map over the array, change the values from integers to strings, then sort
  Algo:
    INIT CONST arr of english numbers one...nineteen
    MAP WITH INDEX over the numerical array
      return value of block is string number at same index
    SORT
=end

STR_NUM = %w(zero, one, two, three, four, five, six, 
              seven, eight, nine, ten, eleven, twelve, 
              thirteen, fourteen, fifteen, sixteen, 
              seventeen, eighteen, nineteen)

def alphabetic_number_sort(num_arr)
  # num_arr.sort_by { |num| STR_NUM[num] }
  num_arr.sort do |a, b|
    STR_NUM[a] <=> STR_NUM[b]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]