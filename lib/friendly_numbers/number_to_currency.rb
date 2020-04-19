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

      value = value.truncate(options[:precision]).to_f.to_s + ("0" * options[:precision].to_i)
      whole, part = value.split(".", 2)

      parted = whole.reverse.gsub(/...(?!-)(?=.)/, '\&,').reverse

      if options[:precision].nonzero?
        options[:unit] + parted + "." + part[0, options[:precision]]
      else
        options[:unit] + parted
      end
    end
  end
end
