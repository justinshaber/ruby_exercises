require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register.rb'
require_relative 'transaction.rb'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(100)
    transaction = Transaction.new(15)
    transaction.amount_paid = 20

    register.accept_money(transaction)
    assert_equal(120, register.total_money)
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(15)
    transaction.amount_paid = 20

    assert_equal(5, register.change(transaction))
  end

  def test_give_reciept
    register = CashRegister.new(100)
    transaction = Transaction.new(15)

    assert_output("You've paid $#{transaction.item_cost}.\n") do
      register.give_receipt(transaction)
    end
  end
end