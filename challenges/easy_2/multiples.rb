class SumOfMultiples
  def initialize(*set_nums)
    @set_nums = set_nums
  end

  def to(target)
    multiples_arr = []
    @set_nums.each do |current_set_num|
      counter = 1
      loop do
        multiple = counter * current_set_num
        break if multiple >= target
        multiples_arr << multiple
        counter += 1
      end
    end
    multiples_arr.uniq.sum
  end

  def self.to(target)
    SumOfMultiples.new(3,5).to(target)
  end
end