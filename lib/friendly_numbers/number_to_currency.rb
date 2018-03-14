module FriendlyNumbers
  module NumberToCurrency
    DEFAULTS = {
      precision: 2,
      unit: "$",
      separator: ","
    }

    module_function

    def convert(value, options) # :nodoc:
      options = DEFAULTS.merge(options)

      whole, part = value.divmod(1)

      parted = partition(whole, options[:separator])

      if options[:precision].nonzero?
        decimal = sprintf("%.0#{options[:precision]}f", part.abs)[1..-1] # Strip leading 0
      end

      options[:unit] + parted + decimal.to_s
    end

    def partition(whole, separator)
      whole.to_s.chars.reverse
        .each_slice(3)
        .map(&:join)
        .join(separator)
        .reverse
    end
  end
end
