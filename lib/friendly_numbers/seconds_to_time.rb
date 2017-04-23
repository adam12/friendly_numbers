module FriendlyNumbers
  module SecondsToTime
    DEFAULTS = {
      format: ->(hours, minutes, seconds) {
        fields = []
        fields.push("#{hours}h") unless hours.zero?
        fields.push("#{minutes}m") unless minutes.zero?
        fields.push("#{seconds}s") if seconds

        fields.join(" ")
      }
    }

    module_function

    def convert(seconds, options) # :nodoc:
      options = DEFAULTS.merge(options)

      minutes, seconds  = seconds.divmod(60)
      hours, minutes    = minutes.divmod(60)

      if options[:format].respond_to?(:call)
        options[:format].call(hours, minutes, seconds)
      end
    end
  end
end
