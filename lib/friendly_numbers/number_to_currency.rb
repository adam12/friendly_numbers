module FriendlyNumbers
  module NumberToCurrency
    extend self

    DEFAULTS = {
      precision: 2,
      unit: "$"
    }

    def convert(value, options) # :nodoc:
      options = DEFAULTS.merge(options)
      format("%s%.#{options[:precision]}f", options[:unit], value)
    end
  end
end
