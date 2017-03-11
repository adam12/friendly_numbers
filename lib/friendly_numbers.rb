require "friendly_numbers/version"
require "friendly_numbers/number_to_currency"
require "friendly_numbers/number_to_human_size"
require "friendly_numbers/number_to_percentage"

module FriendlyNumbers
  module_function

  # Convert a Number to a currency-formatted String
  #
  # Options:
  # precision:: number of decimal places
  # unit:: symbol to prefix value
  # separator:: symbol to separate thousands
  def number_to_currency(value, options = {})
    NumberToCurrency.convert(value, options)
  end

  # Convert a Number to a human-readable size of data
  #
  # Options:
  # precision:: number of decimal places
  # scales:: Array of abbreviations in order
  def number_to_human_size(bytes, options = {})
    NumberToHumanSize.convert(bytes, options)
  end

  # Convert a Number to a percentage
  #
  # Options:
  # precision:: number of decimal places
  def number_to_percentage(value, options = {})
    NumberToPercentage.convert(value, options)
  end
end

Friendly = FriendlyNumbers
