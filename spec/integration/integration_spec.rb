# frozen_string_literal: true

require 'account'
require 'transaction'

RSpec.describe('Integration tests') do
  context('Deposit') do
    it('Returns balance of account correctly after 1 deposit') do
      client_account = Account.new
      first_deposit = Transaction.new(1000, '14/01/2023')
      client_account.apply_transaction(first_deposit)

      expect(client_account.balance).to eq(format('%.2f', 1000))
    end
  end

  context('Withdrawal') do
    it('Returns balance of account correctly after 1 deposit and 1 withdrawal') do
      client_account = Account.new
      first_deposit = Transaction.new(1000, '14/01/2023')
      client_account.apply_transaction(first_deposit)
      first_withdrawal = Transaction.new(-500, '15/01/2023')
      client_account.apply_transaction(first_withdrawal)

      expect(client_account.balance).to eq(format('%.2f', 500))
    end
  end

  context('Statement') do
    it('Prints statement correctly when there has been 1 deposit') do
      client_account = Account.new
      first_deposit = Transaction.new(1000, '10/01/2023')
      client_account.apply_transaction(first_deposit)

      expect { client_account.print_statement }.to output("date || credit || debit || balance\n10/01/2023 || 1000.00 || || 1000.00\n").to_stdout
    end
    it('Prints full statement correctly for full requirements') do
      client_account = Account.new
      first_deposit = Transaction.new(1000, '10/01/2023')
      client_account.apply_transaction(first_deposit)
      second_deposit = Transaction.new(2000, '13/01/2023')
      client_account.apply_transaction(second_deposit)
      first_withdrawal = Transaction.new(-500, '14/01/2023')
      client_account.apply_transaction(first_withdrawal)

      expect { client_account.print_statement }.to output("date || credit || debit || balance\n14/01/2023 || || 500.00 || 2500.00\n13/01/2023 || 2000.00 || || 3000.00\n10/01/2023 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
