module FriendlyNumbers
  module NumberToPercentage
    DEFAULTS = {
      precision: 2
    }

    module_function

    def convert(value, options) # :nodoc:
      options = DEFAULTS.merge(options)

      format("%.#{options[:precision]}f\%", value * 100)
    end
  end
end
