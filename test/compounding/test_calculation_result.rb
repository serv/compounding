require "test_helper"

class TestCompoundingCalculationResult < Minitest::Test
  # TODO
  def test_populate_periods
    cr = Compounding::CalculationResult.new(1000, 0.05, 4, 12)
    cr.populate_periods

    assert_equal(48, cr.periods.size)
    assert cr.periods[0].interest == 1000 * (0.05 / 12)
  end
end
