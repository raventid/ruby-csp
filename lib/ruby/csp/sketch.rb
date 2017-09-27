module CSP
  # How to deal with state machine creation without macro?
  # We can write a few small extensions for different Ruby implementations.
  # We are targeting MRI, so we can use only one thread at a time. So clojure's core async on JVM is not our best friend, but
  # ClojureScript might be best inspiration. But ideally it would be really awesome to use poll on JRuby and one thread on MRI
  class ThreadParker
    def initialize(pool)
      @pool = poll
    end

    private

    attr_reader :pool

    # We handle context of execution in fiber.
    # When the time is comming we activate this fiber and give it the time in according thread.
    def park(go_block)
      pool.prepared_thread << go_block
    end
  end

  class GoBlock
    def run
      ThreadParker.park(yield)
    end
  end
end
