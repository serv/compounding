module Compounding
  module DTO
    class Period
      # previous_total_full and total_full contain number that's not rounded
      attr_reader :period_id, :period_contribution,
                  :previous_total_full, :previous_total, :interest, :total_full, :total

      def initialize(period_id, period_contribution, previous_total_full, previous_total, interest, total_full, total)
        @period_id = period_id
        @period_contribution = period_contribution
        @previous_total_full = previous_total_full
        @previous_total = previous_total
        @interest = interest
        @total_full = total_full
        @total = total
      end
    end
  end
end
