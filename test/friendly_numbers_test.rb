require "test_helper"

class FriendlyNumbersTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FriendlyNumbers::VERSION
  end
end
