def compute(elem)
  block_given? ? yield(elem) : 'Does not compute.'
end

p compute(6) { |elem| elem + 5 + 3 } == 14
p compute('c') { |elem| elem + 'a' + 'b' } == 'cab'
p compute('whatever') == 'Does not compute.'