module FriendlyNumbers
  module NumberToCurrency
    extend self

    DEFAULTS = {
      precision: 2,
      unit: "$",
      separator: ","
    }

    def convert(value, options) # :nodoc:
      options = DEFAULTS.merge(options)

      whole, part = value.divmod(1)

      parted = partition(whole, options[:separator])

      options[:unit] +
        parted +
        format("%.#{options[:precision]}f", part)[1..-1] # Strip leading 0
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
