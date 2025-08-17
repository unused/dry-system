# frozen_string_literal: true

require_relative "../test"
require_relative "cycle_bar"

class Test::CycleFoo
  def initialize
    # This creates the cycle: CycleFoo -> CycleBar -> CycleFoo
    Test::CycleBar.new
  end
end
