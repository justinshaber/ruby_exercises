class DNA
  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(other_dna)
    max = [@dna, other_dna].map(&:length).min
    mutations = 0
    increment = proc { mutations += 1 }
    not_equal = proc { |i| @dna[i] != other_dna[i] }

    max.times { |i| increment.call if not_equal.call(i) }

    mutations
  end
end