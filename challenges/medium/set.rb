class CustomSet
  attr_reader :set

  def initialize(arr = [])
    @set = arr
  end

  def empty?
    set.empty?
  end

  def contains?(int)
    set.include?(int)
  end

  def subset?(other)
    return true if empty?

    results = []
    other.set.each_cons(set.size) { |e| results.push e }
    results.include?(set)
  end

  def eql?(other)
    set.sort.uniq == other.set.sort.uniq
  end

  def add(int)
    set << int unless set.include? int
    self
  end

  def ==(other)
    eql?(other)
  end

  def intersection(other_set)
    arr = set.each_with_object([]) do |e, arr|
            arr << e if other_set.contains? e
          end

    CustomSet.new(arr)
  end

  def difference(other_set)
    arr = set.each_with_object([]) do |e, arr|
      arr << e if !other_set.contains? e
    end

    CustomSet.new(arr)
  end

  def union(other)
    other.set.each { |e| add(e) }
    self
  end

  def disjoint?(other)
    set.none? { |e| other.contains? e }
  end
end