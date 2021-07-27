def palindrome?(item)
  item == item.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?([2, 3, 4, 5, 6]) == false
p palindrome?([1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]) == true
p palindrome?(['abc', 'def', 'abc']) == true
p palindrome?([123]) == true
p palindrome?([]) == true