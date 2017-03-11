module FriendlyNumbers
  module NumberToPercentage
    DEFAULTS = {
      precision: 2
    }

    def convert(value, options) # :nodoc:
      options = DEFAULTS.merge(options)

      format("%.#{options[:precision]}f\%", value * 100)
    end
    module_function :convert
  end
end
