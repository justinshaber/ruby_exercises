class DNA
  def initialize(strand1)
    @strand1 = strand1
  end

  def hamming_distance(strand2)
    length = [@strand1.size, strand2.size].min
    index = 0
    mutations = 0

    while index < length
      mutations += 1 if @strand1[index] != strand2[index]
      index += 1
    end

    mutations
  end
end