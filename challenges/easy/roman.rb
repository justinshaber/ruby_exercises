class RomanNumeral
  NUMERALS = [
    %w(I X C M),
    %w(II XX CC MM),
    %w(III XXX CCC MMM),
    %w(IV XL CD),
    %w(V L D),
    %w(VI LX DC),
    %w(VII LXX DCC),
    %w(VIII LXXX DCCC),
    %w(IX XC CM)
  ]

  attr_reader :int

  def initialize(integer)
    @int = integer
  end

  def to_roman
    digits_arr = int.digits
    result = ''

    digits_arr.each_with_index do |num, i|
      next if num == 0
      result.prepend(NUMERALS[num - 1][i])
    end

    result
  end
end
