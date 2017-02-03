module FriendlyNumbers
  module NumberToCurrency
    extend self

    def convert(value, options)
      options = {
        precision: 2,
        unit: "$"
      }.merge(options)

      format("%s%.#{options[:precision]}f", options[:unit], value)
    end
  end
end
