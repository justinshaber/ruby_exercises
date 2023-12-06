class Element
  attr_reader :datum, :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def peek
    head.nil? ? nil : head.datum
  end

  def size
    return 0 if empty?
    counter = 0
    each { counter += 1 }
    counter
  end

  def push(datum)
    self.head = Element.new(datum, head)
  end

  def pop
    popped_datum = peek
    self.head = head.next
    popped_datum
  end

  def reverse
    new_list = self.class.new
    each { |val| new_list.push val }
    new_list
  end

  def to_a
    return [] if empty?

    results = []
    each { |val| results << val }
    results
  end

  def self.from_a(arr)
    new_list = self.new
    unless arr.nil? || arr.empty?
      arr.reverse.each { |elem| new_list.push(elem) }
    end
    new_list
  end

  def each
    current = head
    loop do
      yield(current.datum)
      break if current.tail?
      current = current.next
    end
    self
  end
  
  private
    attr_writer :head
end