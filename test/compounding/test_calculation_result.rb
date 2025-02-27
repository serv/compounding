require "test_helper"

class TestCompoundingCalculationResult < Minitest::Test
  def test_populate_periods_just_principal
    cr = Compounding::CalculationResult.new(1000, 0, 0.05, 4, 12)
    cr.populate_periods

    assert_equal(48, cr.periods.size)
    assert cr.periods[0].interest == 1000 * (0.05 / 12)
  end

  def test_populate_periods_periodic_contribution
    cr = Compounding::CalculationResult.new(1000, 100, 0.05, 4, 12)
    cr.populate_periods

    assert_equal(48, cr.periods.size)
    assert cr.periods[0].interest == 1000 * (0.05 / 12)
    assert cr.periods[1].interest.round(2) == (cr.periods[1].previous_total_full * (0.05 / 12)).round(2)
  end
end
