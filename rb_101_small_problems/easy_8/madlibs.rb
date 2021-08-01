GRAMMAR = ['a noun', 'a verb', 'an adjective', 'an adverb']


def prompt
  answers = {}

  4.times do |i|
    puts "Enter #{GRAMMAR[i]}:"
    answers[GRAMMAR[i]] = gets.chomp
  end
  answers
end

def create_madlib
  hash = prompt
  
  story = "I like to #{hash["a verb"]} the #{hash["an adjective"]} #{hash["a noun"]} #{hash["an adverb"]}. Haha!"

  puts story
end

create_madlib