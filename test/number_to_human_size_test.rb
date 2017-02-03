require "test_helper"

class NumberToHumanSizeTest < Minitest::Test
  include FriendlyNumbers::NumberToHumanSize

  def test_default_options
    assert_equal convert(123, {}), "123 Bytes"
    assert_equal convert(1234, {}), "1.205 KB"
    assert_equal convert(12345, {}), "12.056 KB"
  end

  def test_precision
    assert_equal convert(1234567, precision: 2), "1.18 MB"
  end
end
