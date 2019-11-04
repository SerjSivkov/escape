# frozen_string_literal: true

class Service
  def self.call(input_string:, symbol:, count: nil)
    case input_string
    when /skype/
      SkypeEscape.new(skype: input_string, symbol: symbol).call
    when /@/
      EmailEscape.new(email: input_string, symbol: symbol).call
    when /\+/
      PhoneEscape.new(phone: input_string, symbol: symbol, count: count).call
    end
  end
end

