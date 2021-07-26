100.times do |num|
  puts num if num.odd?
end

arr = (1..99).select { |num| num.odd? }

puts arr

1.upto(99) { |num| puts num if num.odd? }

# -----------------------------

99.times do |num|
  puts num if num != 0 && num.even?
end

arr = (1..99).select { |num| num.even? }

puts arr

1.upto(99) { |num| puts num if num.even? }