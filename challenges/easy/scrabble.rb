class Scrabble
  SCORES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10,
  }

  attr_reader :word

  def initialize(word)
    @word = word.nil? ? '' : word.upcase
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    word.chars.map do |char|
      value = 0

      SCORES.each_pair do |arr, letter_val|
        if arr.include?(char)
          value = letter_val
          break
        end
      end

      value
    end.sum
  end
end