# frozen_string_literal: true

class EmailEscape
  def initialize(email:, symbol:)
    @email = email
    @symbol = symbol
  end

  def call
    email.gsub(/^[\w\-.]+/) { |email_name| symbol * email_name.size }
  end

  private

  attr_reader :email, :symbol
end

