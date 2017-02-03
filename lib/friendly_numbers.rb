require "friendly_numbers/version"
require "friendly_numbers/number_to_currency"
require "friendly_numbers/number_to_human_size"

module FriendlyNumbers
  def number_to_currency(value, options = {})
    NumberToCurrency.convert(value, options)
  end
  module_function :number_to_currency

  def number_to_human_size(bytes, options = {})
    NumberToHumanSize.convert(bytes, options)
  end
  module_function :number_to_human_size
end

Friendly = FriendlyNumbers
