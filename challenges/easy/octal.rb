class Octal
  attr_reader :num

  def initialize(num_str)
    @num = valid_octal?(num_str) ? num_str.to_i : 0
  end

  def to_decimal
    digits_arr = num.digits

    digits_arr.each_with_index.reduce(0) do |acc, (digit, index)|
      acc + digit*(8**index)
    end
  end

  private

  def valid_octal?(str)
    str.chars.all? { |char| char =~ /[0-7]/ }
  end
end