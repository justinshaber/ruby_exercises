require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register.rb'
require_relative 'transaction.rb'

class TransactionTest < Minitest::Test
  
  def test_prompt_for_payment
    transaction = Transaction.new(15)
    input = StringIO.new("20\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
 
    assert_equal(20, transaction.amount_paid)
  end
end