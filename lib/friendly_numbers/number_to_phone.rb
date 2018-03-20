# frozen-string-literal: true

module FriendlyNumbers
  module NumberToPhone

    module_function

    def convert(value, options) # ;nodoc:
      value.to_s.sub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
    end
  end
end
