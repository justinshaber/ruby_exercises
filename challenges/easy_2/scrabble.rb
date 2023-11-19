ALPHA_VAL = {
  "a" => 1, "b" => 3,"c" => 3, "d" => 2, "e" => 1,
  "f" => 4, "g" => 2,"h" => 4, "i" => 1, "j" => 8,
  "k" => 5, "l" => 1,"m" => 3, "n" => 1, "o" => 1,
  "p" => 3, "q" => 10,"r" => 1, "s" => 1, "t" => 1,
  "u" => 1, "v" => 4,"w" => 4, "x" => 8, "y" => 4,
  "z" => 10
}

class Scrabble
  attr_reader :string_arr

  def initialize(string)
    string = '' if string.nil?
    @string_arr = convert(string.downcase)
  end

  def score
    return 0 if string_arr.size == 0
    string_arr.reduce(0) do |acc, current|
      acc + ALPHA_VAL[current]
    end
  end

  def self.score(string)
    Scrabble.new(string).score
  end

  private

  def convert(string)
    string.each_char.select { |char| char =~ /[a-z]/ }
  end
end

