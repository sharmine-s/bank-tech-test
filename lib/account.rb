# frozen_string_literal: true

class Account
  def initialize
    @balance = 0
    @deposits = []
    @withdrawals = []
    @transactions = []
  end

  def apply_deposit(deposit)
    @deposits << deposit
    @balance += deposit.amount
    @transactions << "#{deposit.date} || #{'%.2f' % deposit.amount} || || #{balance}"
  end

  def apply_withdrawal(withdrawal)
    @withdrawals << withdrawal
    @balance -= withdrawal.amount
  end

  def balance
    return format('%.2f', @balance)
  end

  def statement
    puts @transactions
  end
end
