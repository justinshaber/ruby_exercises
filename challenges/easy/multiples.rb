=begin
PROBLEM
  given a set of numbers (3 and 5 default), return the sum of the multiples up to the given number.
=end

class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples.empty? ? [3,5] : multiples
  end

  def self.to(limit)
    SumOfMultiples.new().to(limit)
  end

  def to(limit)
    results = []

    multiples.each do |num|
      num.step(limit-1, num) do |step|
        results << step unless results.include?(step)
      end
    end

    results.sum
  end
end