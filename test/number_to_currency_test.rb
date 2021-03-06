require "test_helper"

class NumberToCurrencyTest < Minitest::Test
  def test_default_precision
    assert_equal "$100.00", Friendly.number_to_currency(100)
  end

  def test_zero_precision
    assert_equal "$100", Friendly.number_to_currency(100, precision: 0)
  end

  def test_default_separator
    assert_equal "$1,204.00", Friendly.number_to_currency(1204)
  end

  def test_negative_decimal_value
    assert_equal "$-10.00", Friendly.number_to_currency(-10.0)
  end

  def test_floating_point_value
    assert_equal "$11.23", Friendly.number_to_currency(11.23)
  end

  def test_three_decimal_precision
    assert_equal "$3.141", Friendly.number_to_currency(Math::PI, precision: 3)
  end

  def test_large_negatives
    assert_equal "$-456,789.01", Friendly.number_to_currency(-456_789.01)
  end
end
