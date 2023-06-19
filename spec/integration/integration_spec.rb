# frozen_string_literal: true

require 'account'
require 'deposit'
require 'withdrawal'

RSpec.describe('Integration tests') do
  context('Deposit') do
    it('Returns balance of account correctly after 1 deposit') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '14/01/2023')
      client_account.apply_deposit(first_deposit)

      expect(client_account.balance).to eq(format('%.2f', 1000))
    end
  end

  context('Withdrawal') do
    it('Returns balance of account correctly after 1 deposit and 1 withdrawal') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '14/01/2023')
      client_account.apply_deposit(first_deposit)
      first_withdrawal = Withdrawal.new(500, '15/01/2023')
      client_account.apply_withdrawal(first_withdrawal)

      expect(client_account.balance).to eq(format('%.2f', 500))
    end
  end

  context('Statement') do
    it('Prints statement correctly when there has been 1 deposit') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '10/01/2023')
      client_account.apply_deposit(first_deposit)

      expect { client_account.statement }.to output("10/01/2023 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end