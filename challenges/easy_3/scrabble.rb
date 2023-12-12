class Scrabble
  ALPHA = {
    'AEIOULNRST' => 1,
    'DG' => 2,
    'BCMP' => 3,
    'FHVWY' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10
  }

  def initialize(word)
    @word = word || ''
  end

  def score
    @word.chars.map do |char|
      char.match(/[A-Za-z]/) ? value(char.upcase) : 0
    end.sum
  end

  def value(char)
    ALPHA.each_pair do |key, value|
      return value if key.include?(char)
    end
  end

  def self.score(word)
    new(word).score
  end
end
