require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text_swap'

class TextSwapTest < Minitest::Test
  def setup
    @file = File.open('sample.txt')
  end

  def test_swap
    text1 = @file.read
    text2 = Text.new(text1)

    expected_text = text1.gsub('a','e')
    actual_text = text2.swap('a', 'e')

    assert_equal(expected_text, actual_text)
  end

  def test_word_count
    text = Text.new(@file.read)
    assert_equal(72, text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end