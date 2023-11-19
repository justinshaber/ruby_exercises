class PerfectNumber
  def self.classify(number)
    @number = number
    raise StandardError if number < 1

    divisors = get_divisors
    aliquot_sum = divisors.sum

    case
    when aliquot_sum == number then 'perfect'
    when aliquot_sum > number then 'abundant'
    when aliquot_sum < number then 'deficient'
    end
  end

  class << self
    private

    def get_divisors
      (1..@number/2).select { |divisor| @number % divisor == 0 }
    end
  end
end

