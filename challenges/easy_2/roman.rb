ROMAN_NUM = [%w(I II III IV V VI VII VIII IX),
             %w(X XX XXX XL L LX LXX LXXX XC),
             %w(C CC CCC CD D DC DCC DCCC CM),
             %w(M MM MMM)]

class RomanNumeral
  def initialize(num)
    @num = num
  end

  def to_roman
    @num.digits.map.with_index do |current_num, idx|
      current_num == 0 ? '' : ROMAN_NUM[idx][current_num - 1]
    end.reverse.join
  end
end