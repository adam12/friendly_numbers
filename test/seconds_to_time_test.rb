require "test_helper"
require "friendly_numbers/seconds_to_time"

class SecondsToTimeTest < Minitest::Test
  include FriendlyNumbers::SecondsToTime

  def test_friendly_method
    assert_equal "59s", FriendlyNumbers.seconds_to_time(59)
  end

  def test_default_formatter
    assert_equal "59s", convert(59, {})
    assert_equal "1m 2s", convert(62, {})
  end

  def test_custom_formatter
    assert_equal "1:02", convert(62, { format: ->(_hours, minutes, seconds) {
      format("%<minutes>d:%02<seconds>d", { minutes: minutes, seconds: seconds })
    }})
  end

  def test_float_values
    assert_equal "59s", convert(59.03432, {})
  end
end
