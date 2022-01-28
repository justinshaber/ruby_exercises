# Attempt: 1
# Start:  11:45
# End:    12:17
# Time:   32 minutes

=begin
  PROBLEM:
  Write a program that reads a text file, prints the longest sentence and returns it's length.

  Data Structures
  variables to store longest sentence and length
  array

  Algorithm:
  Initialize current_sent, long_sent, and long_sent_length
  Iterate over each character, putting each character in a current string variable.
  When there is a [ . ? or ! ]
    split the string by space, count the words.
    Compare the to the current longest length
      If it is bigger, reassign the longest sentence
      reassign the longest sentence length
    reassign the current string to ""

  Continue until the string.length
=end

def longest_sentence(string)
  current_sent = ""
  long_sent = ""
  long_sent_length = 0

  counter = 0
  key_chars = ["?", "!", "."]

  while counter < string.size
    current_sent << string[counter]

    if key_chars.include?(string[counter])
      current_sent_length = current_sent.split.size

      if current_sent_length > long_sent_length
        long_sent = current_sent
        long_sent_length = current_sent_length
      end

      current_sent = ""
    end

    counter += 1
  end

  puts "With #{long_sent_length} words, this is the longest sentence:"
  puts long_sent
end


# text_1 = File.read('four_score.txt')
# longest_sentence(text_1)

text_2 = File.read('frankenstein.txt')
longest_sentence(text_2)