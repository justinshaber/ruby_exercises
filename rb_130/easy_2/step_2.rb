# return the range. In this case 1..10

def step(start, finish, step)
  range = (start..finish)
  current = start

  while current <= finish
    yield(current)
    current += step
  end

  range
end

step(1, 10, 3) { |value| puts "value = #{value}" }