require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swap_2'
# require_relative 'sample.txt'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample.txt')
  end

  def test_swap
    original_text = @file.read
    @text = Text.new(original_text)

    swapped_text = @text.swap('a', 'e')
    refute_equal(original_text, swapped_text)
    assert_equal(true, original_text.include?('a'))
    assert_equal(false, swapped_text.include?('a'))
  end

  def test_word_count
    original_text = @file.read
    @text = Text.new(original_text)

    assert_equal(72, @text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end