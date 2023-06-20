# frozen_string_literal: true

require 'transaction'

class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  def apply_transaction(transaction)
    raise 'Must use a Transaction object' unless transaction.is_a? Transaction

    @balance += transaction.amount

    if transaction.amount > 0
      @transactions << "#{transaction.date} || #{format('%.2f', transaction.amount.abs)} || || #{balance}"
    else
      @transactions << "#{transaction.date} || || #{format('%.2f', transaction.amount.abs)} || #{balance}"
    end
  end

  def balance
    return format('%.2f', @balance)
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.reverse_each { |transaction| puts transaction }
  end
end
