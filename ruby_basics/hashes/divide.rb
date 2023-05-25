# use map to iterate over numbers and return an array with each number divided by 2.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

p numbers.map { |_,v| v / 2 }
