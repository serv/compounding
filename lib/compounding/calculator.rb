module Mortgagerb
  class Calculator
    def self.calculate(principal, rate, time, compounding_frequency)
      cr = CalculationResult.new(principal, rate, time, compounding_frequency)
      cr.calculate
      cr
    end
  end
end
