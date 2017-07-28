module CSP
  # How to deal with state machine creation without macro?
  # We can write a few small extensions for different Ruby implementations.
  class ThreadParker
    def initialize(pool)
      @pool = poll
    end

    private

    attr_reader :pool

    # We handle context of execution in fiber.
    # When the time is comming we activate this fiber and give it the time in according thread.
    def park(go_fiber)
      pool.prepared_thread << go_fiber
    end
  end
end
