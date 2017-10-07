require "test_helper"

class Ruby::CspTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ruby::Csp::VERSION
  end

  # Here will be a place to write general specs to check:
  # 1) Infrastructure
  # 2) Settings
  # 3) Runtime options
  # 4) Only integration specs I guess
  def test_it_should_respond_to_custom_backend
    assert true
  end
end
