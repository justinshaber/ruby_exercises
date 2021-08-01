def swap_name(str)
  first, last = str.split
  "#{last}, #{first}"

  # str.split.reverse.join(', ') ----Another solution
end

p swap_name('Joe Roberts') == 'Roberts, Joe'