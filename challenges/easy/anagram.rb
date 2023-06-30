class Anagram
  attr_reader :str, :str_sorted

  def initialize(str)
    @str = str.downcase
    @str_sorted = sort_word(@str)
  end

  def match(array)
    array.select do |word|
      word = word.downcase
      anagram?(word) && str != word
    end
  end

  def anagram?(word)
    str_sorted == sort_word(word)
  end

  def sort_word(word)
    # hash = {}
    # uniq_chars = word.chars.uniq.sort
    # uniq_chars.each { |char| hash[char] = word.count(char) }
    # hash

    word.chars.sort.join
  end
end

