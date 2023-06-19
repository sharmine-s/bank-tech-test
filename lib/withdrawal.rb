# frozen_string_literal: true

class Withdrawal
  def initialize(amount, date)
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