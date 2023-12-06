class Diamond
  def self.make_diamond(target)
    results = []
    alpha_arr = ('A'..target).to_a
    
    alpha_arr.each.with_index do |current_letter, index|
      results << generate_line(alpha_arr, current_letter, index)
    end

    (results + results[..-2].reverse).join
  end

  class << self
    private

    def create_blank_line(arr)
      " " * ((arr.size * 2) - 1)
    end

    def generate_line(arr, letter, index)
      new_str = create_blank_line(arr)
      new_str[arr.size - (index + 1)] = letter
      new_str[-(arr.size - index)] = letter
      new_str + "\n"
    end
  end
end