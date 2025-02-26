# frozen_string_literal: true

require_relative "compounding/version"

require_relative "compounding/calculator"
require_relative "compounding/calculation_result"

require_relative "compounding/dto/period"

module Compounding
  class Error < StandardError; end
  # Your code goes here...
end
