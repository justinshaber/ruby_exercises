require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!


require_relative 'boolean_2'

class BooleanTest < Minitest::Test
  def test_odd_value
    value = Address.new(10)
    refute(value.odd?)
    new_value = Address.new(11)
    assert_equal(true, new_value.odd?, 'Value is not odd')
  end

  def test_downcase
    value = Address.new("Carmel")
    assert_equal('carmel', value.downcase)
  end

  def test_nil
    home = Address.new(nil)
    assert_nil(home.value)
  end

  def test_empty
    home = Address.new("Carmel")
    assert_empty(home.list)
    assert_equal(true, home.empty?)
  end

  def test_list
    home = Address.new("Carmel")
    home << 'xyz'
    assert_includes(home.list, 'xyz')
  end

  def test_experience
    home = Address.new("Carmel")
    assert_raises(NoExperienceError) { home.clean }
  end

  def test_instance_of
    home = Address.new(Numeric.new)
    assert_instance_of(Numeric, home.value)
    # assert_instance_of(Comparable, home.value, "Not an instance of Numeric")
  end

  def test_instance_of_2
    home = Address.new(10)

    assert_kind_of(Numeric, home.value)
    assert_kind_of(Integer, home.value)
  end

  def test_same_object
    home = Address.new("Carmel")
    home << "Snickers"
    home << "Skittles"

    assert_same(home.list, home.process)
  end

  def test_refute
    home = Address.new("Carmel")
    refute_includes(home.list, 'xyz')
    home << 'xyz'
    assert_includes(home.list, 'xyz')
  end
end