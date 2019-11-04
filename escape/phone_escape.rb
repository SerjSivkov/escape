# frozen_string_literal: true

class PhoneEscape
  def initialize(phone:, symbol:, count: 3)
    @phone = phone
    @symbol = symbol
    @count = count
  end

  def call
    phone.reverse.gsub(/\d/) do |number|
      next number if count.zero?
      @count -= 1
      symbol
    end.reverse
  end

  private

  attr_reader :phone, :symbol, :count
end

