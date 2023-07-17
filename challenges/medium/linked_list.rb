require 'pry'

class Element

  def initialize(e1, e2=nil)
    @e1 = e1
    @e2 = e2
  end

  def datum
    @e1
  end

  def next
    @e2
  end

  def next=(next_e)
    @e2 = next_e
  end

  def tail?
    @e2.nil?
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def empty?
    @list.empty?
  end

  def size
    @list.size
  end

  def push(new_e)
    # elem = Element.new(new_e)
    # @list.push elem
    # elem.next = @list[-2] unless @list[-2].nil?

    elem = Element.new(new_e)
    @list.unshift elem
    elem.next = @list[1] unless @list[1].nil?
  end

  def head
    # @list.last

    @list.first
  end

  def peek
    empty? ? nil : head.datum
  end

  def pop
    # @list.pop.datum

    @list.unshift.datum
  end

  def self.from_a(arr)
    # new_list = SimpleLinkedList.new
    # arr.reverse.each {|datum| new_list.push datum} unless arr.nil?
    # new_list

    new_list = SimpleLinkedList.new
    arr.each {|datum| new_list.push datum} unless arr.nil?
    new_list
  end

  def to_a
    # @list.map { |elem| elem.datum }.reverse

    @list.map { |elem| elem.datum }
  end

  def reverse
    # SimpleLinkedList.from_a(self.to_a.reverse)

    SimpleLinkedList.from_a(self.to_a.reverse)
  end
end