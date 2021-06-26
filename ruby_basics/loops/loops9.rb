for i in 1..100
  if i % 2 == 0
    next
  end
  puts i
end

#or more simply
for i in 1..100
  puts i if i.odd?
end