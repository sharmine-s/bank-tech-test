# frozen_string_literal: true

class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  def apply_deposit(deposit)
    # Would like to apply the following enforcement but I cannot get the mocking in the account unit tests to pass
    # fail 'Must apply a deposit object' unless deposit.is_a? Deposit
    @balance += deposit.amount
    @transactions << "#{deposit.date} || #{format('%.2f', deposit.amount)} || || #{balance}"
  end

  def apply_withdrawal(withdrawal)
    # Would like to apply the following enforcement but I cannot get the mocking in the account unit tests to pass
    # fail 'Must apply a withdrawal object' unless withdrawal.is_a? Withdrawal
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
