class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(max)
    results = []
    (1...max).each do |num|
      results << num if any_multiples?(num)
    end
    results.sum
  end

  def self.to(max)
    new(3, 5).to(max)
  end

  def any_multiples?(num)
    @multiples.any? { |mult| num % mult == 0 }
  end
end
