require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register_2'
require_relative 'transaction_2'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    reg = CashRegister.new(100)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10
    previous_amount = reg.total_money
    reg.accept_money(transaction)
    new_amount = reg.total_money
    assert_equal(previous_amount + 10, new_amount)
  end

  def test_change
    reg = CashRegister.new(100)
    transaction = Transaction.new(20)
    transaction.amount_paid = 30

    assert_equal(10, reg.change(transaction))
  end

  def test_give_receipt
    reg = CashRegister.new(100)
    transaction = Transaction.new(20)
    output = "You've paid $#{transaction.item_cost}.\n"
    assert_output(output) { reg.give_receipt(transaction) }
  end
end
