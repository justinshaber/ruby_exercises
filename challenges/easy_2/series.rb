class Series
  attr_reader :string_num

  def initialize(string_num)
    @string_num = string_num
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > string_num.size
    string_num.chars.map(&:to_i).each_cons(slice_size).to_a

    # results = []
    # start_idx = 0

    # loop do
    #   results << string_num[start_idx, slice_size]
    #   break if string_num[start_idx..-1].size == slice_size
    #   start_idx += 1
    # end

    # results.map do |sub_string|
    #   sub_string.chars.map(&:to_i)
    # end
  end
end