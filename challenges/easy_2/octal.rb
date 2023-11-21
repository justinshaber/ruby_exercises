class Octal
  def initialize(str_int)
    @str_int = str_int
  end

  def to_decimal
    char_arr = @str_int.chars.reverse
    return 0 unless char_arr.all? { |char| ("0".."7").include? char }

    char_arr.map.with_index { |str_int, idx| str_int.to_i * (8**idx) }.sum
  end
end

# p Octal.new("123abc").to_decimal
# p Octal.new("123").to_decimal