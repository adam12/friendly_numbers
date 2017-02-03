require "test_helper"

class NumberToCurrencyTest < Minitest::Test
  def test_default_precision
    assert_equal "$100.00", Friendly.number_to_currency(100)
  end

  def test_zero_precision
    assert_equal "$100", Friendly.number_to_currency(100, precision: 0)
  end
end
