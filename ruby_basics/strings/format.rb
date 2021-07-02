state = 'tExAs'

state.capitalize!
puts state

greeting = 'Hello'

#greeting.replace "Goodbye!" <<wasn't destructive
greeting.gsub!('Hello', 'Goodbye!')
puts greeting

