require "test_helper"

class NumberToPercentageTest < Minitest::Test
  include FriendlyNumbers::NumberToPercentage

  def test_default_options
    assert_equal "75.23%", convert(0.752348, {})
  end

  def test_precision
    assert_equal "55%", convert(0.554, precision: 0)
  end
end
