module Compounding
  class CalculationResult
    attr_reader :principal, :rate, :time, :compounding_frequency, :periods, :interest, :total

    # time can be any unit of time, e.g. years, months, days, etc.
    def initialize(principal, rate, time, compounding_frequency)
      @principal = principal
      @rate = rate
      @time = time
      @compounding_frequency = compounding_frequency
      @periods = nil
    end

    def calculate
      @interest = (1 + @rate / @compounding_frequency)**(@compounding_frequency * @time)
      @total = @principal + @interest
      populate_periods
    end

    def populate_periods
      total_number_of_periods = @compounding_frequency * @time
      @periods = []
      previous_total_full = @principal
      previous_total = @principal
      total_full = @principal

      for n in 1..total_number_of_periods
        period_interest = previous_total_full * @rate / @compounding_frequency
        total_full += period_interest
        total = total_full.round(2)

        @periods.push(DTO::Period.new(n, previous_total_full, previous_total, period_interest, total_full, total))

        previous_total_full = total_full
        previous_total = total
      end

      @periods
    end
  end
end
