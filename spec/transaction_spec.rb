# frozen_string_literal: true

require 'transaction'

RSpec.describe('Transaction') do
  it('Returns correct amount and date') do
    withdrawal = Transaction.new(-50, '01/01/2023')

    expect(withdrawal.amount).to eq(-50)
    expect(withdrawal.date).to eq('01/01/2023')
  end
  it('Fails if amount is not an integer') do
    expect { Transaction.new('hello', '02/02/2023') }.to raise_error('Amount should be an integer')
  end
end
