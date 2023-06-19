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
    @transactions << "#{deposit.date} || #{format('%.2f', deposit.amount)} || || #{balance}"
  end

  def apply_withdrawal(withdrawal)
    @withdrawals << withdrawal
    @balance -= withdrawal.amount
    @transactions << "#{withdrawal.date} || || #{format('%.2f', withdrawal.amount)} || #{balance}"
  end

  def balance
    return format('%.2f', @balance)
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.reverse_each { |transaction| puts transaction }
  end
end
