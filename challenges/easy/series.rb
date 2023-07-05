class Series
  attr_reader :num_str

  def initialize(num_str)
    @num_str = num_str
  end

  def slices(slice_size)
    raise ArgumentError.new if slice_size > num_str.size

    results = []
    char_arr = num_str.chars.map(&:to_i)

    char_arr.each_with_index do |start, idx|
      break if char_arr[idx+slice_size-1].nil?
      results << char_arr[idx, slice_size]
    end

    results
  end
end