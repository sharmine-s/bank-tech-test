# frozen_string_literal: true

require 'deposit'

RSpec.describe('Deposit') do
  it('Returns correct amount and date') do
    deposit = Deposit.new(50, '01/01/2023')

    expect(deposit.amount).to eq(50)
    expect(deposit.date).to eq('01/01/2023')
  end
end
