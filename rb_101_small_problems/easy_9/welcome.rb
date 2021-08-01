def greetings(arr, hash)
  str1 = "Hello, #{arr.join(" ")}!"
  str2 = "Nice to have a #{hash[:title]} #{hash[:occupation]}around."
  str1 + " " + str2
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })