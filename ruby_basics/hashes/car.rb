car = {
  type: "sedan",
  color: "blue",
  mileage: 80_000
}

p car
car[:year] = 2003
p car
car.delete(:mileage)
p car
puts car[:color]
car[:truck] = {type: "pickup", color: "red", year: 1998}
p car