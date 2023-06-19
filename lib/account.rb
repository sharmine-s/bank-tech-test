# frozen_string_literal: true

class Account
  def initialize
    @balance = 0
    @deposits = []
  end

  def add_deposit(deposit)
    @deposits << deposit
    @balance += deposit.amount
  end

  def balance
    return @balance
  end
end
