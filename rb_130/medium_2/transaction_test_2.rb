require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register_2'
require_relative 'transaction_2'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    breakfast = Transaction.new(20)
    assert_equal(0, breakfast.amount_paid)
    input = StringIO.new("20\n")
    output = StringIO.new
    
    breakfast.prompt_for_payment(input: input, output: output)
    assert_equal(20, breakfast.amount_paid)

    # This also worked. Remove output arg/parameter
    # capture_io do
    #   breakfast.prompt_for_payment(input: input)
    # end
  end
end