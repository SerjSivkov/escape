# frozen_string_literal: true

class SkypeEscape
  def initialize(skype:, symbol:)
    @skype = skype
    @symbol = symbol
  end

  def call
    skype.gsub(/(?<=skype:)[a-zA-Z0-9][-_.a-zA-Z0-9]{5,31}/, symbol)
  end

  private

  attr_reader :skype, :symbol
end

