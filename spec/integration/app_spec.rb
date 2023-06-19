# frozen_string_literal: true

require 'account'
require 'deposit'
require 'withdrawal'

RSpec.describe('Bank tech test') do
  context('Deposit') do
    it('Returns balance of account correctly after 1 deposit') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '14/01/2023')
      client_account.apply_deposit(first_deposit)

      expect(client_account.balance).to eq(1000)
    end
  end

  context('Withdrawal') do
    it('Returns balance of account correctly after 1 deposit and 1 withdrawal') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '14/01/2023')
      client_account.apply_deposit(first_deposit)
      first_withdrawal = Withdrawal.new(500, '15/01/2023')
      client_account.apply_withdrawal(first_withdrawal)

      expect(client_account.balance).to eq(500)
    end
  end
end
