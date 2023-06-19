# frozen_string_literal: true

class Deposit
  def initialize(amount, date)
    fail 'Amount should be an integer' unless amount.is_a? Integer
    @amount = amount
    @date = date
  end

  def amount
    return @amount
  end

  def date
    return @date
  end
end
