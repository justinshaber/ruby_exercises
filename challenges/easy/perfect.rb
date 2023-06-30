class PerfectNumber
  def self.classify(num)
    raise StandardError.new if num < 1
    aliquot_sum = divisors(num).sum

    case
    when aliquot_sum < num then 'deficient'
    when aliquot_sum > num then 'abundant'
    else                        'perfect'
    end
  end

  class << self
    private

    def divisors(num)
      (1..num/2).to_a.each_with_object([]) do |divisor, arr|
        arr << divisor if num % divisor == 0
      end
    end
  end
end