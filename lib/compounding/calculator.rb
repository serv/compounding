module Compounding
  class Calculator
    def self.calculate(principal, period_contribution, rate, time, compounding_frequency)
      cr = CalculationResult.new(principal, period_contribution, rate, time, compounding_frequency)
      cr.calculate
      cr
    end
  end
end
