# frozen_string_literal: true

require 'account'
require 'deposit'

RSpec.describe('Bank tech test') do
  context('Accounts with deposits') do
    it('Returns balance of account correctly after 1 deposit') do
      client_account = Account.new
      first_deposit = Deposit.new(1000, '14/01/2023')
      client_account.add_deposit(first_deposit)

      expect(client_account.balance).to eq(1000)
    end
  end
end
