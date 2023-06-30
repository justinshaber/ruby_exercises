class DNA
  attr_accessor :dna

  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(other_dna)
    counter = 0
    point_mutations = 0

    dna_arr = dna.chars
    other_dna_arr = other_dna.chars
    min = [dna_arr.size, other_dna_arr.size].min

    while counter < min
      if dna_arr[counter] != other_dna_arr[counter]
        point_mutations += 1
      end
      counter += 1
    end

    point_mutations
  end
end