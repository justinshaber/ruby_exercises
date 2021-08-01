words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# array with unique alphabetical sort values -- ie "diet" and "tide" both have alphabetical value of "deit"
sort_values = words.map {|word| word.chars.sort }.uniq

# iterate through unique alphabetical values
# then return array of all words with matching sort value
sort_values.each do |sort_value|
  p words.select { |word| word.chars.sort == sort_value }
end

# ---------------------
# I was so close! I had the right idea...but the wrong data structure.
# The following is the LS solution

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.values.each do |arr|
  p arr
end





