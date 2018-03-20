require "test_helper"

class NumberToPhoneTest < Minitest::Test
  include FriendlyNumbers::NumberToPhone

  def test_default
    assert_equal "(905) 555-1212", convert("9055551212", {})
  end
end
