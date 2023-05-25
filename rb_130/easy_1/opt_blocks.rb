=begin
Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply return the String 'Does not compute.'.

Modify the compute method so it takes a single argument and yields that argument to the block. Provide at least 3 examples of calling this new version of compute, including a no-block call.
=end

def compute(item = nil)
  block_given? ? yield(item) : 'Does not compute.'
end

p compute(5) { |item| item + 3 } == 8
p compute('a') { |item| item + 'b' } == 'ab'
p compute == 'Does not compute.'