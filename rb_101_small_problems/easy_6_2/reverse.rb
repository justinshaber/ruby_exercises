=begin
  PROBLEM: reverse an array in place without using Array#reverse or Array#reverse!
  input: an array
  output: same array with elements reversed

  Examples | Rules
  1. array[0], array[-1] = array[-1], array[0]
  2. array[1], array[-2] = array[-2], array[1]
  3. array[2], array[-3] = array[-3], array[3]

  Algorithm
  Initalize two counters for start and end indexes
  loop array.size / 2 times
    use parallel assignment to reassign elements at given indexes
    increase the start counter
    decrease the end counter
  arr

  first 2 = last 2?

=end

def reverse!(list)
  # start = 0
  # endex = -1

  # (list.size / 2).times do
  #   list[start], list[endex] = list[endex], list[start]
  #   start += 1
  #   endex -= 1
  # end

  # list

  # list.sort_by!.with_index { |_, idx | -idx }

  temp = []
  temp << list.pop until list.empty?
  temp.each { |element| list << element }

  list
end

##### WRONG #####
# Array#index returns the first instance of the object. 
# def reverse!(arr)
#   arr.sort!{ |a, b| arr.index(b) <=> arr.index(a) }
# end
##### WRONG #####

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a e b e d c)
p reverse!(list) #== ["c", "d", "e", "b", "e", "a"] # true
p list == ["c", "d", "e", "b", "e", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true