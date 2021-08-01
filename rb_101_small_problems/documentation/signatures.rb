a = %w(a b c d e)
# Error
#puts a.fetch(7)

# 'beats me'
puts a.fetch(7, 'beats me')

# 49
puts a.fetch(7) { |index| index**2 }