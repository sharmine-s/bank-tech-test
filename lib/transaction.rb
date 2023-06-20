# frozen_string_literal: true

class Transaction
  def initialize(amount, date)
    raise 'Amount should be an integer' unless amount.is_a? Integer

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
