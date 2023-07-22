class Element
  attr_reader :datum, :next

  def initialize(e1, e2=nil)
    @datum = e1
    @next = e2
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

  def size
    return 0 if empty?

    current = head
    counter = 1

    until current.tail? do
      counter += 1
      current = current.next
    end

    counter
  end

  def empty?
    head.nil?
  end

  def push(elem)
    @head = Element.new(elem, head)
  end

  def peek
    empty? ? nil : head.datum
  end

  def pop
    current = head
    @head = head.next
    current.datum
  end

  def self.from_a(arr)
    new_list = SimpleLinkedList.new
    arr.reverse.each {|datum| new_list.push datum} unless arr.nil?
    new_list
  end

  def to_a
    return [] if empty?

    current = head
    arr = []

    loop do
      arr << current.datum
      break if current.tail?
      current = current.next
    end

    arr
  end

  def reverse
    arr = self.to_a
    self.class.from_a(arr.reverse)
  end
end

# class SimpleLinkedList
#   def initialize
#     @list = []
#   end

#   def empty?
#     @list.empty?
#   end

#   def size
#     @list.size
#   end

#   def push(new_e)
#     elem = Element.new(new_e)
#     @list.push elem
#     elem.next = @list[-2] unless @list[-2].nil?
#   end

#   def head
#     @list.last
#   end

#   def peek
#     empty? ? nil : head.datum
#   end

#   def pop
#     @list.pop.datum
#   end

#   def self.from_a(arr)
#     new_list = SimpleLinkedList.new
#     arr.reverse.each {|datum| new_list.push datum} unless arr.nil?
#     new_list
#   end

#   def to_a
#     @list.map { |elem| elem.datum }.reverse
#   end

#   def reverse
#     SimpleLinkedList.from_a(self.to_a.reverse)
#   end
# end