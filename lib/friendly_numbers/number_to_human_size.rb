module FriendlyNumbers
  module NumberToHumanSize
    DEFAULTS = {
      precision: 3,
      scales: %w(Bytes KB MB GB TB PB EB ZB YB)
    }

    module_function

    def convert(bytes, options) # :nodoc:
      options = DEFAULTS.merge(options)

      value, scale = calculate_smallest_value_with_scale(bytes)
      precision = zero_precision_for_zero_remainder(value, options[:precision])

      format("%.#{precision}f %s", value, options[:scales][scale])
    end

    def calculate_smallest_value_with_scale(value) # :nodoc:
      scale = 0
      while value >= 1024
        value /= 1024.0
        scale += 1
      end
      [value, scale]
    end

    def zero_precision_for_zero_remainder(value, default_precision = 0) # :nodoc:
      if (value % 1).zero?
        0
      else
        default_precision
      end
    end
  end
end
