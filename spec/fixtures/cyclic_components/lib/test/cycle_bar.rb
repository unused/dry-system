# frozen_string_literal: true

require_relative "../test"
require_relative "cycle_foo"

class Test::CycleBar
  def initialize
    # This creates the cycle: CycleBar -> CycleFoo -> CycleBar
    Test::CycleFoo.new
  end
end
