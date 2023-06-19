# frozen_string_literal: true

require 'deposit'

RSpec.describe('Deposit') do
  it('Returns correct amount and date') do
    deposit = Deposit.new(50, '01/01/2023')

    expect(deposit.amount).to eq(50)
    expect(deposit.date).to eq('01/01/2023')
  end
  it('Fails if amount is not an integer') do
    expect { Deposit.new('hello', '02/02/2023') }.to raise_error('Amount should be an integer')
  end
end
