class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(arr)
    arr.select { |other_word| anagram?(other_word.downcase) }
  end

  def anagram?(other_word)
    @word.chars.sort == other_word.chars.sort &&
    @word != other_word
  end
end