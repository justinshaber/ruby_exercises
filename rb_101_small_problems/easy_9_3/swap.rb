def swap_name(string)
  first, last = string.split

  "#{last}, #{first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'