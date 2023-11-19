class Anagram
  attr_reader :og_word, :og_word_key

  def initialize(og_word)
    @og_word = og_word.downcase
    @og_word_key = create_hash(@og_word)
  end

  def match(arr)
    arr.select do |word|
      word = word.downcase
      anagram?(word) && og_word != word
    end
  end

  private

  def create_hash(string)
    hash = {}
    string.each_char do |char|
      if hash[char]
        hash[char] += 1
      else
        hash[char] = 1
      end
    end
    hash
  end

  def anagram?(other_word)
    other_word_key = create_hash(other_word)
    other_word_key == og_word_key
  end
end