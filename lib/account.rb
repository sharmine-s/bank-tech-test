# frozen_string_literal: true

class Account
  def initialize
    @balance = 0
    @deposits = []
    @withdrawals = []
  end

  def apply_deposit(deposit)
    @deposits << deposit
    @balance += deposit.amount
  end

  def apply_withdrawal(withdrawal)
    @withdrawals << withdrawal
    @balance -= withdrawal.amount
  end

  def balance
    return @balance
  end
end
