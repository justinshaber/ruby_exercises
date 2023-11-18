ALPHABET = ("A".."Z").to_a

class Diamond
  def self.make_diamond(apex)
    set_values(apex)

    while @@current_letter_index >= 0
      str = " " * @@length
      current_letter = ALPHABET[@@current_letter_index]

      str[@@left_counter] = current_letter
      str[@@right_counter] = current_letter
      @@results.unshift str

      increment_values
    end

    build_final_str
  end

  class << self
    private
    
    def set_values(apex)
      @@results = []
      @@left_counter = 0
      @@right_counter = -1
      @@length = ((ALPHABET.index(apex) + 1) * 2) - 1
      @@current_letter_index = ALPHABET.index(apex)
    end

    def increment_values
      @@left_counter += 1
      @@right_counter -= 1
      @@current_letter_index -= 1
    end

    def build_final_str
      @@results[..-2].reverse.each { |str| @@results << str }
      @@results.join("\n") + "\n"
    end
  end
end

ALPHABET.each { |l| puts Diamond.make_diamond(l) }