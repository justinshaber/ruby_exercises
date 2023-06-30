require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'boolean'

# Write a minitest assertion that will fail if the value.odd? is not true.

class ElementTest < MiniTest::Test
  def test_value_odd
    num = Element.new(5)
    num2 = Element.new(6)
    assert(num.value.odd?, 'value is not odd')
    refute(num2.value.odd?)
  end

  def test_value_downcase
    value = Element.new("XYZ")
    assert_equal('xyz', value.downcase)
  end

  def test_value_nil
    element = Element.new(nil)
    assert_nil(element.value)
  end

  def test_array
    element = Element.new([1,2,3])
    element2 = Element.new([])

    # assert_empty(element.value, 'array is not empty')
    assert_empty(element2.value)
  end

  def test_includes
    element = Element.new(['abc','gef','xyz'])
    element2 = Element.new([])

    assert_includes(element.value, 'xyz')
  end

  def test_experience
    element = Element.new('John')
    assert_raises(NoExperienceError) { element.hire }
  end

  def test_numeric
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end

  def test_kind_of
    value = 10
    assert_kind_of(Numeric, value)
    assert_kind_of(Integer, value)
  end

  def test_same
    list = List.new
    assert_same(list, list.process)
  end

  def test_doesnt_include
    element = Element.new(['abc','gef','zyx'])

    refute_includes(element.value, 'xyz')
  end
end

