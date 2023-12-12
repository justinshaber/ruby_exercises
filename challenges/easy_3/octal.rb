class Octal
  def initialize(octal_num)
    @octal_num = invalid_octal?(octal_num) ? "0" : octal_num
  end

  def to_decimal
    arr = @octal_num.chars.reverse
    arr.map.with_index do |char, index|
      char.to_i * (8**index)
    end.sum
  end

  def invalid_octal?(num)
    num =~ /[^0-7]/
  end
end
