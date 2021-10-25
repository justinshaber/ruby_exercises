=begin
Problem Overview:
Given an array of words, return separate arrays that contain
all the words that are anagrams

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  - anagrams are words that have the exact same letters
  - output separate arrays
Implicit Rules:
  - goes through the array first to last

Questions:
--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: array
Output: multiple arrays
Additional DS Utilized:
hashes

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

shift the first item of the array
  - put it's alphabetized version as a key in a hash with an empty array as value
  - put the word into value array
shift the next item of the array
  - check if an array of the keys contains newest alphabetized word
    - if so, add to the array in the value
    - if not...
      - put it's alphabetized version as a new key
      - put the word into a new array as a value

output the values to the screen

-- method --> 

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
  

def anagrams(list)
  words_hash = {}

  loop do
    break if list.length == 0
    current_word = list.shift
    alphabetized = current_word.chars.sort.join

    if words_hash.keys.include?(alphabetized)
      words_hash[alphabetized] << current_word
    else
      words_hash[alphabetized] = [current_word]
    end
  end

  words_hash.each_value do |v|
    p v
  end
end

anagrams(words)