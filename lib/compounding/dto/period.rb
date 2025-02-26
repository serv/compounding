module Compounding
  module DTO
    class Period
      attr_reader :period_id, :previous_total, :interest, :total

      def initialize(period_id, previous_total, interest, total)
        @period_id = period_id
        @previous_total = previous_total
        @interest = interest
        @total = total
      end
    end
  end
end
